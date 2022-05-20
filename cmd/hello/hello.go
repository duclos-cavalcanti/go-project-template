package hello

import "fmt"

func HelloWorld() {
	// Return a greeting that embeds the name in a message.
	fmt.Println("Hello, World!")
}

func Dummy(n int) int {
	var ret = n + 1
    return ret
}
