select distinct hackers.hacker_id , hackers.name from
submissions inner join challenges on submissions.challenge_id=challenges.challenge_id
inner join difficulty on challenges.difficulty_level=difficulty.difficulty_level
inner join hackers on submissions.hacker_id=hackers.hacker_id
where submissions.challenge_id=challenges.challenge_id and challenges.difficulty_level=difficulty.difficulty_level and submissions.score=difficulty.score
group by hackers.hacker_id, hackers.name
having count(submissions.challenge_id)>1
order by count(submissions.challenge_id) desc ,hackers.hacker_id asc; 

-- hackers                   hacker_id name
-- difficulty                difficulty_level score
-- challenges                challenge_id, hacker_id, difficulty_level
-- submissions               submission_id, hacker_id, challenge_id, score
--
--
-- select distinct hackers.hacker_id , hackers.name from
-- submissions inner join challenges on submissions.challenge_id=challenges.challenge_id
-- inner join difficulty on challenges.difficulty_level=difficulty.difficulty_level
-- inner join hackers on submissions.hacker_id=hackers.hacker_id
-- where submissions.challenge_id=challenges.challenge_id and challenges.difficulty_level=difficulty.difficulty_level and submissions.score=difficulty.score
-- group by hackers.hacker_id, hackers.name
-- order by hackers.hacker_id asc,count(submissions.challenge_id) desc ;
-- -- and
-- -- count(submissions.hacker_id)>1
-- -- group by submissions.hacker_id;
--
--
--
--
-- select submissions.hacker_id, submissions.challenge_id, submissions.score, '-', challenges.difficulty_level, '-',difficulty.score from
-- submissions inner join challenges on submissions.challenge_id=challenges.challenge_id
-- inner join difficulty on challenges.difficulty_level=difficulty.difficulty_level
-- inner join hackers on submissions.hacker_id=hackers.hacker_id
-- where challenges.difficulty_level=difficulty.difficulty_level  and submissions.score=difficulty.score
-- group by hackers.hacker_id, hackers.name, submissions.challenge_id, submissions.score,challenges.difficulty_level
-- order by hackers.hacker_id asc,count(submissions.challenge_id);
--
--
--
--
--
--
--
--
--
-- select submissions.hacker_id,  count(submissions.submission_id),hackers.name,submissions.challenge_id, submissions.score, '-', challenges.difficulty_level, '-',difficulty.score from
-- submissions inner join challenges on submissions.challenge_id=challenges.challenge_id
-- inner join difficulty on challenges.difficulty_level=difficulty.difficulty_level
-- inner join hackers on submissions.hacker_id=hackers.hacker_id
-- where challenges.difficulty_level=difficulty.difficulty_level  and submissions.score=difficulty.score
-- group by hackers.hacker_id, hackers.name, submissions.challenge_id, submissions.score,challenges.difficulty_level
-- order by count(submissions.submission_id) desc,hackers.hacker_id asc;
