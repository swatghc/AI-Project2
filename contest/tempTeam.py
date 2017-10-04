# myTeam.py
# ---------
# Licensing Information:  You are free to use or extend these projects for
# educational purposes provided that (1) you do not distribute or publish
# solutions, (2) you retain this notice, and (3) you provide clear
# attribution to UC Berkeley, including a link to http://ai.berkeley.edu.
#
# Attribution Information: The Pacman AI projects were developed at UC Berkeley.
# The core projects and autograders were primarily created by John DeNero
# (denero@cs.berkeley.edu) and Dan Klein (klein@cs.berkeley.edu).
# Student side autograding was added by Brad Miller, Nick Hay, and
# Pieter Abbeel (pabbeel@cs.berkeley.edu).

from captureAgents import CaptureAgent
import random, time, util
from game import Directions
import game

#################
# Team creation #
#################



def createTeam(firstIndex, secondIndex, isRed,
               first = 'concreteAgent', second = 'DefenceAgent'):
  """
  This function should return a list of two agents that will form the
  team, initialized using firstIndex and secondIndex as their agent
  index numbers.  isRed is True if the red team is being created, and
  will be False if the blue team is being created.
  As a potentially helpful development aid, this function can take
  additional string-valued keyword arguments ("first" and "second" are
  such arguments in the case of this function), which will come from
  the --redOpts and --blueOpts command-line arguments to capture.py.
  For the nightly contest, however, your team will be created without
  any extra arguments, so you should make sure that the default
  behavior is what you want for the nightly contest.
  """

  # The following line is an example only; feel free to change it.
  return [eval(first)(firstIndex), eval(second)(secondIndex)]

##########
# Agents #
##########

class AdversarialAgent(CaptureAgent):
  """
   A base class for  agents that chooses score-maximizing actions
   """

  def registerInitialState(self, gameState):
    self.start = gameState.getAgentPosition(self.index)
    self.searchDepth = 6
    self.bagCapacity = 4
    CaptureAgent.registerInitialState(self, gameState)

  def chooseAction(self, gameState):
    """
    Picks among the actions with the highest Q(s,a).
    """
    actions = gameState.getLegalActions(self.index)
    values = [self.evaluate(gameState, a) for a in actions]

    maxValue = max(values)
    bestActions = [a for a, v in zip(actions, values) if v == maxValue]

    foodLeft = len(self.getFood(gameState).asList())

    if foodLeft <= 2 or gameState.getAgentState(self.index).numCarrying>self.bagCapacity:
      bestDist = 9999
      for action in actions:
        successor = self.getSuccessor(gameState, action, self.index)
        pos2 = successor.getAgentPosition(self.index)
        dist = self.getMazeDistance(self.start, pos2)
        if dist < bestDist:
          bestAction = action
          bestDist = dist
      return bestAction

    return random.choice(bestActions)


  def getSuccessor(self, gameState, action, index):
    successor = gameState.generateSuccessor(index, action)
    postion = successor.getAgentState(index).getPosition()
    if postion != util.nearestPoint(postion):
        # Only half a grid position was covered
        return successor.generateSuccessor(index, action)
    else:
        return successor

  def evaluate(self, gameState, action):

    util.raiseNotDefined()


class concreteAgent(AdversarialAgent):

    def evaluate(self, gameState, action):

        evaluatePoint = 0
        successor = self.getSuccessor(gameState, action, self.index)
        # evaluatePoint = self.evaluateSuccessor(searchDepth,successor,False)
        evaluatePoint = self.alphabetaSearch(0,successor)
        return evaluatePoint


    def alphabetaSearch(self,depth,gameState):
        return self.min_value(gameState,999999,999999,depth)

    def max_value(self,gameState, alpha,beta,depth):
        if depth == self.searchDepth:
            return self.evaluateCurrentSuccessor(gameState)
        v = -999999
        actions = gameState.getLegalActions(self.index)

        opponentList = self.getOpponents(gameState)
        opponent1 = opponentList[0]
        opponent2 = opponentList[1]
        opponentCount = 0
        for opponent in opponentList:
            if gameState.getAgentPosition(opponent):
                opponentCount = opponentCount + 1


        for action in actions:
            successor = self.getSuccessor(gameState, action, self.index)
            v = max(v,self.min_value(successor,alpha,beta,depth+1))
            if v >= beta:
                return v
                alpha = max(alpha, v)
        return v




    def min_value(self,gameState,alpha,beta,depth):
        if depth ==self.searchDepth:
            return self.evaluateCurrentSuccessor(gameState);
        v = 999999
        opponentList = self.getOpponents(gameState)
        opponent1 = opponentList[0]
        opponent2 = opponentList[1]
        opponentCount = 0
        for opponent in opponentList:
            if gameState.getAgentPosition(opponent):
                opponentCount = opponentCount + 1

        if opponentCount == 2 :
            print opponentCount
            for opponent in opponentList:
                print opponent,"!!!"

            for action in gameState.getLegalActions(opponentList[opponentCount-1]):
                if opponentCount == 0 :
                    successor = self.getSuccessor(gameState,action,opponentList[opponentCount-1])
                    # successor = gameState.generateSuccessor(opponentList[opponentCount-1],action)
                    v = min(v,self.max_value(successor,alpha,beta,depth + 1))
                else:
                    opponentCount = opponentCount-2;
                    # successor = gameState.generateSuccessor(opponentList[opponentCount - 1], action)
                    successor = self.getSuccessor(gameState, action,opponentList[opponentCount - 1])
                    v = min(v,self.min_value(successor,alpha,beta,depth+1))

                if v <= alpha:
                    return v
                beta = min(beta, v)
                print "fff"
            return v

        if gameState.getAgentPosition(opponent1) != None:
            actions = gameState.getLegalActions(opponent1)
            for action in actions:
                successor = self.getSuccessor(
                    gameState, action, opponentList[0])
                v = min(v, self.max_value(successor, alpha, beta, depth + 1))
                if v <= alpha:
                    return v
                    beta = min(beta, v)
            return v

        if gameState.getAgentPosition(opponent2) != None:
            actions = gameState.getLegalActions(opponent2)
            for action in actions:
                successor = self.getSuccessor(
                    gameState, action, opponentList[1])
                v = min(v, self.max_value(successor, alpha, beta, depth + 1))
                if v <= alpha:
                    return v
                    beta = min(beta, v)
            return v

        v = min(v, self.max_value(gameState, alpha, beta, depth + 1))

        if v <= alpha:
            return v
            beta = min(beta, v)
            print 123
        return v
    def evaluateCurrentSuccessor1(self, gameState):
        foodList = self.getFood(gameState).asList()
        foodScore = -len(foodList)

        if len(foodList) > 0:  # This should always be True,  but better safe than sorry
            myPos = gameState.getAgentState(self.index).getPosition()
            minDistance = min([self.getMazeDistance(myPos, food) for food in foodList])
            distanceToFood = minDistance

        opponentList = self.getOpponents(gameState)
        closeGhost = []
        for opponent in opponentList:
            if gameState.getAgentState(opponent).isPacman:
                continue
            # check whether the ghost is scared
            # print gameState.getAgentState(opponent).scaredTimer > 0
            if gameState.getAgentState(opponent).scaredTimer > 0:
                continue

            if gameState.getAgentPosition(opponent) != None:
                ghostPos = gameState.getAgentState(opponent).getPosition()
                currentPos = gameState.getAgentState(self.index).getPosition()

                if self.getMazeDistance(ghostPos, currentPos) <= 1:
                    closeGhost.append(opponent)

        if len(closeGhost) > 0:
            ghostScore = 1
        else:
            ghostScore = 0

    # def evaluateCurrentSuccessor(self, gameState):
    #     foodList = self.getFood(gameState).asList()
    #     food_distences = []
    #     ghostScore = 0
    #     score = 0
    #
    #     currentPos = gameState.getAgentState(self.index).getPosition()
    #     for food in foodList:
    #         food_distences += [self.getMazeDistance(currentPos, food)]
    #
    #     inverse_food_distences = 0;
    #     if len(food_distences) > 0 and min(food_distences) > 0:
    #         inverse_food_distences = 1.0 / min(food_distences)
    #
    #     opponentList = self.getOpponents(gameState)
    #     closeGhost = []
    #     ghost_distances = []
    #     for opponent in opponentList:
    #       if gameState.getAgentState(opponent).isPacman:
    #         continue
    #
    #       if gameState.getAgentState(opponent).scaredTimer > 0:
    #         continue
    #
    #       if gameState.getAgentPosition(opponent)!=None:
    #         ghostPos = gameState.getAgentState(opponent).getPosition()
    #         currentPos = gameState.getAgentState(self.index).getPosition()
    #
    #         if self.getMazeDistance(ghostPos,currentPos)<=6:
    #           # ghostScore = ghostScore+self.getMazeDistance(ghostPos,currentPos)
    #           print self.getMazeDistance(ghostPos,currentPos)
    #           ghost_distances += [self.getMazeDistance(ghostPos,currentPos)]
    #           closeGhost.append(opponent)
    #
    #     if len(closeGhost) > 0:
    #       min_ghost_distances =  min(ghost_distances)
    #       if min_ghost_distances==0:
    #           score  = score + inverse_food_distences
    #       else:
    #           score = score+min_ghost_distances*(float(inverse_food_distences))
    #     else:
    #         score = inverse_food_distences
    #
    #     return self.getScore(gameState)+score

    def evaluateCurrentSuccessor(self,gameState):
        foodList = self.getFood(gameState).asList()
        gameScore = -len(foodList)
        minDistance = None
        ghostScore = None

        if len(foodList)>0:
            currentPos = gameState.getAgentState(self.index).getPosition()
            minDistance = min([self.getMazeDistance(currentPos, food) for food in foodList])

        opponentList = self.getOpponents(gameState)
        closeGhost = []
        for opponent in opponentList:
          if gameState.getAgentState(opponent).isPacman:
            continue

          if gameState.getAgentState(opponent).scaredTimer > 0:
            continue

          if gameState.getAgentPosition(opponent)!=None:
            ghostPos = gameState.getAgentState(opponent).getPosition()
            currentPos = gameState.getAgentState(self.index).getPosition()

            if self.getMazeDistance(ghostPos,currentPos)<=3:
              closeGhost.append(opponent)

        if len(closeGhost)>0:
          ghostScore = 1
        else:
          ghostScore = 0


        return 100*gameScore+(-1*minDistance)+(-2000*ghostScore)





class DummyAgent(CaptureAgent):
  """
  A Dummy agent to serve as an example of the necessary agent structure.
  You should look at baselineTeam.py for more details about how to
  create an agent as this is the bare minimum.
  """

  def registerInitialState(self, gameState):
    """
    This method handles the initial setup of the
    agent to populate useful fields (such as what team
    we're on).
    A distanceCalculator instance caches the maze distances
    between each pair of positions, so your agents can use:
    self.distancer.getDistance(p1, p2)
    IMPORTANT: This method may run for at most 15 seconds.
    """

    '''
    Make sure you do not delete the following line. If you would like to
    use Manhattan distances instead of maze distances in order to save
    on initialization time, please take a look at
    CaptureAgent.registerInitialState in captureAgents.py.
    '''
    CaptureAgent.registerInitialState(self, gameState)

    '''
    Your initialization code goes here, if you need any.
    '''


  def chooseAction(self, gameState):
    """
    Picks among actions randomly.
    """
    actions = gameState.getLegalActions(self.index)

    '''
    You should change this in your own agent.
    '''

    return random.choice(actions)

class ReflexCaptureAgent(CaptureAgent):
    """
    A base class for reflex agents that chooses score-maximizing actions
    """

    def registerInitialState(self, gameState):
      self.start = gameState.getAgentPosition(self.index)
      CaptureAgent.registerInitialState(self, gameState)

    def chooseAction(self, gameState):
      """
      Picks among the actions with the highest Q(s,a).
      """
      actions = gameState.getLegalActions(self.index)

      # You can profile your evaluation time by uncommenting these lines
      # start = time.time()
      values = [self.evaluate(gameState, a) for a in actions]
      # print 'eval time for agent %d: %.4f' % (self.index, time.time() - start)

      maxValue = max(values)
      bestActions = [a for a, v in zip(actions, values) if v == maxValue]

      foodLeft = len(self.getFood(gameState).asList())

      if foodLeft <= 2:
        bestDist = 9999
        for action in actions:
          successor = self.getSuccessor(gameState, action)
          pos2 = successor.getAgentPosition(self.index)
          dist = self.getMazeDistance(self.start, pos2)
          if dist < bestDist:
            bestAction = action
            bestDist = dist
        return bestAction

      return random.choice(bestActions)

    def getSuccessor(self, gameState, action):
      """
      Finds the next successor which is a grid position (location tuple).
      """
      successor = gameState.generateSuccessor(self.index, action)
      pos = successor.getAgentState(self.index).getPosition()
      if pos != util.nearestPoint(pos):
        # Only half a grid position was covered
        return successor.generateSuccessor(self.index, action)
      else:
        return successor

    def evaluate(self, gameState, action):
      """
      Computes a linear combination of features and feature weights
      """
      features = self.getFeatures(gameState, action)
      weights = self.getWeights(gameState, action)
      return features * weights

    def getFeatures(self, gameState, action):
      """
      Returns a counter of features for the state
      """
      features = util.Counter()
      successor = self.getSuccessor(gameState, action)
      features['successorScore'] = self.getScore(successor)
      return features

    def getWeights(self, gameState, action):
      """
      Normally, weights do not depend on the gamestate.  They can be either
      a counter or a dictionary.
      """
      return {'successorScore': 1.0}


# class DefensiveReflexAgent(ReflexCaptureAgent):
#     """
#     A reflex agent that keeps its side Pacman-free. Again,
#     this is to give you an idea of what a defensive agent
#     could be like.  It is not the best or only way to make
#     such an agent.
#     """
#
#     def getFeatures(self, gameState, action):
#       features = util.Counter()
#       successor = self.getSuccessor(gameState, action)
#
#       myState = successor.getAgentState(self.index)
#       myPos = myState.getPosition()
#
#       # Computes whether we're on defense (1) or offense (0)
#       features['onDefense'] = 1
#       if myState.isPacman: features['onDefense'] = 0
#
#       # Computes distance to invaders we can see
#       enemies = [successor.getAgentState(i) for i in self.getOpponents(successor)]
#       invaders = [a for a in enemies if a.isPacman and a.getPosition() != None]
#       features['numInvaders'] = len(invaders)
#       if len(invaders) > 0:
#         dists = [self.getMazeDistance(myPos, a.getPosition()) for a in invaders]
#         features['invaderDistance'] = min(dists)
#
#       if action == Directions.STOP: features['stop'] = 1
#       rev = Directions.REVERSE[gameState.getAgentState(self.index).configuration.direction]
#       if action == rev: features['reverse'] = 1
#
#       return features
#
#     def getWeights(self, gameState, action):
#       return {'numInvaders': -1000, 'onDefense': 100, 'invaderDistance': -10, 'stop': -100, 'reverse': -2}

class DefenceAgent(ReflexCaptureAgent):
    def chooseAction(self, gameState):
        """
        Picks among the actions with the highest Q(s,a).
        """
        actions = gameState.getLegalActions(self.index)

        # You can profile your evaluation time by uncommenting these lines
        # start = time.time()
        values = [self.evaluate(gameState, a) for a in actions]
        # print 'eval time for agent %d: %.4f' % (self.index, time.time() - start)

        maxValue = max(values)
        bestActions = [a for a, v in zip(actions, values) if v == maxValue]

        return random.choice(bestActions)

    def getFeatures(self, gameState, action):
        features = util.Counter()
        successor = self.getSuccessor(gameState, action)

        myState = successor.getAgentState(self.index)
        myPos = myState.getPosition()

        # Computes whether we're on defense (1) or offense (0)
        features['onDefense'] = 1
        if myState.isPacman: features['onDefense'] = 0

        # Computes distance to invaders we can see
        enemies = [successor.getAgentState(i) for i in self.getOpponents(successor)]
        invaders = [a for a in enemies if a.isPacman and a.getPosition() != None]
        features['numInvaders'] = len(invaders)
        if len(invaders) > 0:
            dists = [self.getMazeDistance(myPos, a.getPosition()) for a in invaders]
            features['invaderDistance'] = min(dists)

        if action == Directions.STOP: features['stop'] = 1
        rev = Directions.REVERSE[gameState.getAgentState(self.index).configuration.direction]
        if action == rev: features['reverse'] = 1

        return features

    def getWeights(self, gameState, action):
        return {'numInvaders': -1000, 'onDefense': 100, 'invaderDistance': -10, 'stop': -100, 'reverse': -2}
