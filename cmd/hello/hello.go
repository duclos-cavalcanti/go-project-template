// Package hello is bla bla bla
package hello

import "fmt"

// HelloWorld is a function and this is an example of godoc/comment documentation
// Returns "Hello, World!"
func HelloWorld() {
	// Return a greeting that embeds the name in a message.
	fmt.Println("Hello, World!")
}

func Dummy(n int) int {
	var ret = n + 1
    return ret
}
