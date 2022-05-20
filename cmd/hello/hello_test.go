package hello

import "testing"

func TestDummy(t *testing.T) {
    cases := []struct {
        in, out int
    } {
        { 1, 2 }, // pass
        { 1, 1 }, // fail
    }

    for i, c := range cases {
        got := Dummy(c.in)
        if got != c.out {
            t.Errorf("Test[%d]: Dummy(%d) == %d, want %d", i + 1, c.in, got, c.out)
        }
    }
}
