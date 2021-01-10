/* setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap __ct__13JKRAramStreamFl::setTransBuffer(unsigned char *, unsigned long, JKRHeap *) */
/* JKRAramStream_NS_setTransBuffer */
/* 802D4034 002D0F74  38 E0 00 00 */	li r7, 0
/* 802D4038 002D0F78  90 ED 8E 8C */	stw r7, transBuffer__13JKRAramStream-_SDA_BASE_(r13)
/* 802D403C 002D0F7C  3C C0 00 01 */	lis r6, 0x00008000@ha
/* 802D4040 002D0F80  38 06 80 00 */	addi r0, r6, 0x00008000@l
/* 802D4044 002D0F84  90 0D 8E 90 */	stw r0, transSize__13JKRAramStream-_SDA_BASE_(r13)
/* 802D4048 002D0F88  90 ED 8E 94 */	stw r7, transHeap__13JKRAramStream-_SDA_BASE_(r13)
/* 802D404C 002D0F8C  28 03 00 00 */	cmplwi r3, 0
/* 802D4050 002D0F90  41 82 00 10 */	beq lbl_802D4060
/* 802D4054 002D0F94  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D4058 002D0F98  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 802D405C 002D0F9C  90 0D 8E 8C */	stw r0, transBuffer__13JKRAramStream-_SDA_BASE_(r13)
lbl_802D4060:
/* 802D4060 002D0FA0  28 04 00 00 */	cmplwi r4, 0
/* 802D4064 002D0FA4  41 82 00 0C */	beq lbl_802D4070
/* 802D4068 002D0FA8  54 80 00 34 */	rlwinm r0, r4, 0, 0, 0x1a
/* 802D406C 002D0FAC  90 0D 8E 90 */	stw r0, transSize__13JKRAramStream-_SDA_BASE_(r13)
lbl_802D4070:
/* 802D4070 002D0FB0  28 05 00 00 */	cmplwi r5, 0
/* 802D4074 002D0FB4  4D 82 00 20 */	beqlr
/* 802D4078 002D0FB8  28 03 00 00 */	cmplwi r3, 0
/* 802D407C 002D0FBC  4C 82 00 20 */	bnelr
/* 802D4080 002D0FC0  90 AD 8E 94 */	stw r5, transHeap__13JKRAramStream-_SDA_BASE_(r13)
/* 802D4084 002D0FC4  4E 80 00 20 */	blr
