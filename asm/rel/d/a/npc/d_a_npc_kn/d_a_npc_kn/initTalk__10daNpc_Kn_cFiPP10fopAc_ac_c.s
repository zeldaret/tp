lbl_80A3B3E8:
/* 80A3B3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3B3EC  7C 08 02 A6 */	mflr r0
/* 80A3B3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3B3F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3B3F8  7C 7F 1B 78 */	mr r31, r3
/* 80A3B3FC  7C 80 23 78 */	mr r0, r4
/* 80A3B400  7C A7 2B 78 */	mr r7, r5
/* 80A3B404  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80A3B408  7F E4 FB 78 */	mr r4, r31
/* 80A3B40C  7C 05 03 78 */	mr r5, r0
/* 80A3B410  38 C0 00 00 */	li r6, 0
/* 80A3B414  4B 80 EB 7D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80A3B418  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A3B41C  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A3B420  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A3B424  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A3B428  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A3B42C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A3B430  38 60 00 01 */	li r3, 1
/* 80A3B434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3B438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3B43C  7C 08 03 A6 */	mtlr r0
/* 80A3B440  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3B444  4E 80 00 20 */	blr 
