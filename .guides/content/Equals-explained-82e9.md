The 'equals' condition is a little strange in Java.

Take a look at the Flode chart on the left. Below is the Java code.

```javs
if ( input0 == 100 ) {
    System.out.println("is 100");
}
else {
    System.out.println("is not 100");
}
```

## Why ==
The key thing to notice here is that you need to use `==` and **not** =.

Below is the explanation of why you need to use `==`. For now, just remember that in %99.999 of cases, you should always use `==`.

The reason for this is that `=` is the *assignment operator*. This means it would set `input0` to be 100 and would then result in the condition being true, regardless of what the value of `100` was beforehand.
