lbl_80946DD4:
/* 80946DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80946DD8  7C 08 02 A6 */	mflr r0
/* 80946DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80946DE0  7C 64 1B 78 */	mr r4, r3
/* 80946DE4  38 64 06 20 */	addi r3, r4, 0x620
/* 80946DE8  A0 A4 09 1C */	lhz r5, 0x91c(r4)
/* 80946DEC  38 C0 00 00 */	li r6, 0
/* 80946DF0  38 E0 00 00 */	li r7, 0
/* 80946DF4  4B 90 31 9C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80946DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80946DFC  7C 08 03 A6 */	mtlr r0
/* 80946E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80946E04  4E 80 00 20 */	blr 
