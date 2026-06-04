SELECT S.Date , COUNT(A.Action) / COUNT(S.Action) :: DECIMAL
FROM fb_friend_requests as S
LEFT JOIN 
fb_friend_requests as A
ON 
S.user_id_sender = A.user_id_sender
AND 
S.user_id_receiver = A.user_id_receiver
AND
A.action = 'accepted'
WHERE 
S.action = 'sent'
GROUP By S.Date;
