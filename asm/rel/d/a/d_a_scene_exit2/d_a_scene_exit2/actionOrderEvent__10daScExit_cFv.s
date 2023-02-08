lbl_8059E408:
/* 8059E408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E40C  7C 08 02 A6 */	mflr r0
/* 8059E410  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E418  7C 7F 1B 78 */	mr r31, r3
/* 8059E41C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8059E420  28 00 00 02 */	cmplwi r0, 2
/* 8059E424  40 82 00 28 */	bne lbl_8059E44C
/* 8059E428  38 00 00 02 */	li r0, 2
/* 8059E42C  98 1F 05 7B */	stb r0, 0x57b(r31)
/* 8059E430  48 00 00 D9 */	bl demoProc__10daScExit_cFv
/* 8059E434  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059E438  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059E43C  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8059E440  64 00 04 00 */	oris r0, r0, 0x400
/* 8059E444  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8059E448  48 00 00 2C */	b lbl_8059E474
lbl_8059E44C:
/* 8059E44C  A8 9F 05 78 */	lha r4, 0x578(r31)
/* 8059E450  88 BF 05 7A */	lbz r5, 0x57a(r31)
/* 8059E454  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8059E458  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8059E45C  38 E0 00 00 */	li r7, 0
/* 8059E460  39 00 00 01 */	li r8, 1
/* 8059E464  4B A7 D2 19 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8059E468  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8059E46C  60 00 00 02 */	ori r0, r0, 2
/* 8059E470  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_8059E474:
/* 8059E474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E47C  7C 08 03 A6 */	mtlr r0
/* 8059E480  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E484  4E 80 00 20 */	blr 
