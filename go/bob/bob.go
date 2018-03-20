package bob

import (
	"strings"
)

// Hey causes bob to respond to your input
func Hey(remark string) string {
	remark = strings.TrimSpace(remark)

	isQuestion := IsQuestion(remark)
	isShouting := IsShouting(remark)

	switch {
	case IsEmpty(remark):
		return "Fine. Be that way!"
	case isShouting && isQuestion:
		return "Calm down, I know what I'm doing!"
	case isShouting:
		return "Whoa, chill out!"
	case isQuestion:
		return "Sure."
	default:
		return "Whatever."
	}
}

// IsEmpty returns true if the input is empty or all whitespace
func IsEmpty(remark string) bool {
	return remark == ""
}

// IsQuestion returns true if the input ends in '?'
func IsQuestion(remark string) bool {
	return strings.HasSuffix(remark, "?")
}

// IsShouting returns true if the input is ALL CAPS
func IsShouting(remark string) bool {
	return strings.ToUpper(remark) == remark &&
		strings.ToLower(remark) != remark
}
