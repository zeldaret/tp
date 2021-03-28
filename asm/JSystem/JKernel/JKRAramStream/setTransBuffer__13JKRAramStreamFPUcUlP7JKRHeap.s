lbl_802D4034:
/* 802D4034  38 E0 00 00 */	li r7, 0
/* 802D4038  90 ED 8E 8C */	stw r7, transBuffer__13JKRAramStream(r13)
/* 802D403C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 802D4040  38 06 80 00 */	addi r0, r6, 0x8000 /* 0x00008000@l */
/* 802D4044  90 0D 8E 90 */	stw r0, transSize__13JKRAramStream(r13)
/* 802D4048  90 ED 8E 94 */	stw r7, transHeap__13JKRAramStream(r13)
/* 802D404C  28 03 00 00 */	cmplwi r3, 0
/* 802D4050  41 82 00 10 */	beq lbl_802D4060
/* 802D4054  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D4058  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 802D405C  90 0D 8E 8C */	stw r0, transBuffer__13JKRAramStream(r13)
lbl_802D4060:
/* 802D4060  28 04 00 00 */	cmplwi r4, 0
/* 802D4064  41 82 00 0C */	beq lbl_802D4070
/* 802D4068  54 80 00 34 */	rlwinm r0, r4, 0, 0, 0x1a
/* 802D406C  90 0D 8E 90 */	stw r0, transSize__13JKRAramStream(r13)
lbl_802D4070:
/* 802D4070  28 05 00 00 */	cmplwi r5, 0
/* 802D4074  4D 82 00 20 */	beqlr 
/* 802D4078  28 03 00 00 */	cmplwi r3, 0
/* 802D407C  4C 82 00 20 */	bnelr 
/* 802D4080  90 AD 8E 94 */	stw r5, transHeap__13JKRAramStream(r13)
/* 802D4084  4E 80 00 20 */	blr 
