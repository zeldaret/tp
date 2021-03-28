lbl_80D5502C:
/* 80D5502C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55030  7C 08 02 A6 */	mflr r0
/* 80D55034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55038  7C 66 1B 78 */	mr r6, r3
/* 80D5503C  7C 80 23 78 */	mr r0, r4
/* 80D55040  7C A7 2B 78 */	mr r7, r5
/* 80D55044  38 66 05 8C */	addi r3, r6, 0x58c
/* 80D55048  7C C4 33 78 */	mr r4, r6
/* 80D5504C  7C 05 03 78 */	mr r5, r0
/* 80D55050  38 C0 00 00 */	li r6, 0
/* 80D55054  4B 4F 4F 3C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D55058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5505C  7C 08 03 A6 */	mtlr r0
/* 80D55060  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55064  4E 80 00 20 */	blr 
