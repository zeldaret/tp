lbl_805D02F8:
/* 805D02F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D02FC  7C 08 02 A6 */	mflr r0
/* 805D0300  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D0304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D0308  7C 7F 1B 78 */	mr r31, r3
/* 805D030C  88 83 08 59 */	lbz r4, 0x859(r3)
/* 805D0310  28 04 00 FF */	cmplwi r4, 0xff
/* 805D0314  41 82 00 4C */	beq lbl_805D0360
/* 805D0318  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D031C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D0320  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805D0324  7C 05 07 74 */	extsb r5, r0
/* 805D0328  4B A6 4F 89 */	bl offSwitch__10dSv_info_cFii
/* 805D032C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D0330  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805D0334  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D0338  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805D033C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D0340  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805D0344  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D0348  3C 80 00 04 */	lis r4, 4
/* 805D034C  38 A0 00 1F */	li r5, 0x1f
/* 805D0350  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D0354  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 805D0358  7D 89 03 A6 */	mtctr r12
/* 805D035C  4E 80 04 21 */	bctrl 
lbl_805D0360:
/* 805D0360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D0364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D0368  7C 08 03 A6 */	mtlr r0
/* 805D036C  38 21 00 10 */	addi r1, r1, 0x10
/* 805D0370  4E 80 00 20 */	blr 
