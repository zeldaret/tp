lbl_802FF4E0:
/* 802FF4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF4E4  7C 08 02 A6 */	mflr r0
/* 802FF4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF4EC  7C 88 23 78 */	mr r8, r4
/* 802FF4F0  7C A0 2B 78 */	mr r0, r5
/* 802FF4F4  7C C7 33 78 */	mr r7, r6
/* 802FF4F8  38 80 00 00 */	li r4, 0
/* 802FF4FC  7D 05 43 78 */	mr r5, r8
/* 802FF500  7C 06 03 78 */	mr r6, r0
/* 802FF504  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF508  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 802FF50C  7D 89 03 A6 */	mtctr r12
/* 802FF510  4E 80 04 21 */	bctrl 
/* 802FF514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF518  7C 08 03 A6 */	mtlr r0
/* 802FF51C  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF520  4E 80 00 20 */	blr 
