lbl_80658558:
/* 80658558  3C C0 80 66 */	lis r6, __global_destructor_chain@ha
/* 8065855C  84 06 34 58 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80658560  90 05 00 00 */	stw r0, 0(r5)
/* 80658564  90 85 00 04 */	stw r4, 4(r5)
/* 80658568  90 65 00 08 */	stw r3, 8(r5)
/* 8065856C  90 A6 00 00 */	stw r5, 0(r6)
/* 80658570  4E 80 00 20 */	blr 
