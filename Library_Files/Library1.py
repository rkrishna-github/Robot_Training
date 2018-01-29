class Library1:
    
    ROBOT_LIBRARY_SCOPE = 'TEST CASE'

    def __init__(self):
        self._counter = 0

    def count(self):
        self._counter += 1
        print self._counter
