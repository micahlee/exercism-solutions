package gigasecond

import (
	"time"
)

// AddGigasecond adds a gigasecond (10^9 seconds) to the provided input
func AddGigasecond(t time.Time) time.Time {
	return t.Add(1e9 * time.Second)
}
