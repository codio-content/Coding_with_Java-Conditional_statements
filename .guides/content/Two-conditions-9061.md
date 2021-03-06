Now let's look at another example. We can see a Flode chart on the bottom left and the equivalent Java code on the top left which asks:

> If the number is less than or equal to 100, output 'Small’. If the number is larger than 100 then if it is also larger than 200, output ‘Huge’ otherwise output 'Big’.

## else if
Notice that we are handling the second condition using this statement

```java
else if (input0 > 200) {
```

This line will only execute if the first `if` condition was `false`.

Here is the general way Java evaluates its `if` statements.

```java
if ( condition1) {
    do something
}
else if ( condition2 ) {
    do something else
}
else if ( condition3 ) {
    do something else
}
else {
    otherwise do this
}
```

- The first `if` condition is evaluated. If it is true, then its code block will execute and execution will then jump to the end of all the `if / else` statements.
- If it was false, then all `else if` conditions will be evaluated in turn until one of them has a `true` condition.
- If none of the `if` or `else if` conditions evaluate to `true`, then the `else` code block will automatically execute (if it is used).
