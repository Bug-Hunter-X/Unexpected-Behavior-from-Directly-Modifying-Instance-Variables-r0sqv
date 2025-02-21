# Unexpected Behavior from Directly Modifying Instance Variables in Ruby

This repository demonstrates a potential issue in Ruby when directly manipulating instance variables using `instance_variable_set` outside the defined methods of a class.

## The Problem

Directly modifying instance variables bypasses any potential validation, checks, or side effects that might be associated with the normal methods of the class.  This can lead to inconsistencies and unexpected behavior, especially in more complex classes.

The `bug.rb` file shows a simple example where setting an instance variable directly using `instance_variable_set` works, but it could break the encapsulation and intended functionality of the class if there were any associated method that relied on a certain internal state before modification.

## The Solution

The preferred way to modify the internal state of an object is through well-defined methods. The `bugSolution.rb` demonstrates this approach by adding a `setValue` method that allows modifying `@value` while potentially adding validation or side effects within the method.