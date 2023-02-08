lbl_802A4900:
/* 802A4900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4904  7C 08 02 A6 */	mflr r0
/* 802A4908  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A490C  7C 80 23 78 */	mr r0, r4
/* 802A4910  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A4914  7C A4 2B 78 */	mr r4, r5
/* 802A4918  7C 05 03 78 */	mr r5, r0
/* 802A491C  48 00 12 69 */	bl newVoiceBank__10JAUSectionFUlUl
/* 802A4920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4924  7C 08 03 A6 */	mtlr r0
/* 802A4928  38 21 00 10 */	addi r1, r1, 0x10
/* 802A492C  4E 80 00 20 */	blr 
