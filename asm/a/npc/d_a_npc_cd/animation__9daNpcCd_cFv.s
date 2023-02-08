lbl_80156DBC:
/* 80156DBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80156DC0  7C 08 02 A6 */	mflr r0
/* 80156DC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80156DC8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80156DCC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80156DD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80156DD4  7C 7F 1B 78 */	mr r31, r3
/* 80156DD8  80 63 05 8C */	lwz r3, 0x58c(r3)
/* 80156DDC  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 80156DE0  38 80 00 00 */	li r4, 0
/* 80156DE4  38 A0 00 00 */	li r5, 0
/* 80156DE8  4B EB A2 C9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80156DEC  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80156DF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80156DF4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80156DF8  40 80 00 0C */	bge lbl_80156E04
/* 80156DFC  38 7F 09 C8 */	addi r3, r31, 0x9c8
/* 80156E00  4B FF 65 49 */	bl func_8014D348
lbl_80156E04:
/* 80156E04  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80156E08  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80156E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80156E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80156E14  7C 08 03 A6 */	mtlr r0
/* 80156E18  38 21 00 20 */	addi r1, r1, 0x20
/* 80156E1C  4E 80 00 20 */	blr 
