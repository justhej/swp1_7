```Swift
// 1.7.1 
// V1

func navigateAroundWall() {
    if isBlockedRight {
        moveForward()
    }  else {
        turnRight()
        moveForward()
    }
}
    
while !isOnGem {
    navigateAroundWall()
    if isOnGem{
        collectGem()
        turnLeft()
        turnLeft()
    }
    if isOnClosedSwitch{
        toggleSwitch()
        break
    }
}
 
///////////////////////////////////


```

```Swift
// 1.7.1 
// V2

while isBlockedRight{
    moveForward()
    if !isBlockedRight{
        turnRight()
        moveForward()
    }
    if isOnGem{
        collectGem()
        turnRight()
        turnRight()
    }
    if isOnClosedSwitch{
        toggleSwitch()
        break
    }
}
//////////////////////////
```

```Swift
// 1.7.1
// V3

while !isOnClosedSwitch{
    while isBlockedRight{
        moveForward()
        if !isBlockedRight{
            turnRight()
            moveForward()
        }
        if isOnGem{
            collectGem()
            turnRight()
            turnRight()    
            }
        }
    }
toggleSwitch()

//////////////////////////
```
### 1.7.2 Adjusting your algorithm

```Swift
// 1.7.2
// V0 

func nav() {
    if isBlockedRight && !isBlocked {
        moveForward()
    } else if isBlocked && isBlockedRight {
        turnLeft()
    }  else {
        turnRight()
        moveForward()
    }
}

while !isOnClosedSwitch{
    nav()
    if isOnGem{
        collectGem()
        turnLeft()
        moveForward()
        turnLeft()
    }
}
toggleSwitch()


//////////////////////////

```

```Swift
// 1.7.2
// V1

while !isOnClosedSwitch{
    moveForward()
    if !isBlockedRight{
        turnRight()
    }
    else if isBlocked{
        turnLeft()
    }
    if isOnGem{
        collectGem()
        turnLeft()
    }
}

toggleSwitch()


//////////////////////////

```

```Swift
// 1.7.2
// V2 

while !isOnClosedSwitch {
    moveForward()
    isOnGem ? collectGem()        : ()
    !isBlockedRight ? turnRight() : ()
    isBlocked ?       turnLeft()  : ()
}

toggleSwitch()

//////////////////////////

```



### 1.7.3 Conquering a maze

```Swift
// 1.7.3
// V1



moveForward()
while !isOnGem{
    moveForward()
    if isBlockedRight && isBlocked && !isBlockedLeft{
        turnLeft()
    }
    else if isBlockedLeft && !isBlockedRight{
        turnRight()
    }
    else if isBlocked && !isBlockedRight && !isBlockedLeft{
        turnRight()
    }
    else if isBlockedRight && isBlockedLeft && isBlocked{
        turnLeft()
        turnLeft()
    }
}

collectGem()


//////////////////////////

```

```Swift
// 1.7.3
// V2


func nav() {
    if isBlockedRight && !isBlocked {
        moveForward()
    } else if isBlocked && isBlockedRight {
        turnLeft()
    }  else {
        turnRight()
        moveForward()
    }
}

while !isOnGem{
    nav()
    
}
collectGem()



//////////////////////////

```

### 1.7.4 Which way to turn?  

```Swift
// 1.7.4
// V1

while !isOnGem{
    while !isBlocked && !isOnGem {
        moveForward()
        if isOnClosedSwitch && !isBlocked {
            toggleSwitch()
            turnRight()
        }
        
    }
    
    while isBlocked{
        if isOnClosedSwitch{
            toggleSwitch()
            turnLeft()
        }
    }
}
collectGem()


//////////////////////////

```

```Swift
// 1.7.4
// V2


while !isOnGem{
    moveForward()
    if isOnClosedSwitch && !isBlocked {
        toggleSwitch()
        turnRight()
    }

    else if isOnClosedSwitch && isBlocked {
        toggleSwitch()
        turnLeft()
    }
}


collectGem()

//////////////////////////

```

```Swift
// 1.7.4
// V3

while !isOnGem{
    moveForward()
  if isOnClosedSwitch{
    toggleSwitch()
    isBlocked ? turnLeft() : turnRight()
  }
}
collectGem()


//////////////////////////

```

### 1.7.5 Roll right, roll left

```Swift
// 1.7.5
// V0

func specialToggle(){
    toggleSwitch()
    moveForward()
    toggleSwitch()
    moveForward()
}
func pat() {
    if isBlocked && isOnGem {
        collectGem()
        turnRight()
    } else if isOnGem{
        collectGem()
    } else if isBlocked && isBlockedRight{
        turnLeft()
        if isOnClosedSwitch{
            specialToggle()
        }
    } else if isBlocked && isBlockedLeft{
        turnRight()
        if isOnGem{
            collectGem()
            moveForward()
        }
    }  else if isBlocked{
        turnLeft()
        if isOnClosedSwitch{
            specialToggle()
        }
    }
}
while !isOnOpenSwitch{
    moveForward()
    pat()
}
//////////////////////////
```

```Swift
// 1.7.5
// V1

var gems = 0
while isBlockedLeft || isBlockedRight {
    moveForward()
    if isBlocked && isBlockedLeft{
        turnRight()
    }
    if isBlocked && !isBlockedLeft{
        turnLeft()
    }
    if isOnGem{
        collectGem()
        gems += 1
    }
    if isOnClosedSwitch{
        toggleSwitch()
    }
    if isOnOpenSwitch && gems >= 8 {
        break
    }
}



//////////////////////////

```

```Swift
// 1.7.5
// V2

func clear(){
    while !isBlocked{
        isOnGem ? collectGem() : ()
        isOnClosedSwitch ? toggleSwitch() : ()
        moveForward()
    }
}

func steerLeft(){
    turnLeft()
    moveForward()
    turnLeft()  
}

func steerRight(){
    turnRight()
    moveForward()
    turnRight()
}

func pattern(){
    clear()
    steerLeft()
    clear()
    steerRight()
}

moveForward()
turnRight()



for k in 1...3{
    pattern()
}

clear()

//////////////////////////

```




