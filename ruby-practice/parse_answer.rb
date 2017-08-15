def parse_answer(answer, kind="string")
	answer = answer.to_i if kind == "number"
	return answer
end

answer = parse_answer(21)

# answer is being 'passed' in as there is no 'standard input'. 