pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id; // uint = int that can't be negative
        string content;
        bool completed;
    }

    // unit: data type for ID
    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("Cehck our dappuniversity.com");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content,false);
    }

}
