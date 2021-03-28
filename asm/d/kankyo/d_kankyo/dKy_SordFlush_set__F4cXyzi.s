lbl_801A8484:
/* 801A8484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A8488  7C 08 02 A6 */	mflr r0
/* 801A848C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A8490  39 61 00 20 */	addi r11, r1, 0x20
/* 801A8494  48 1B 9D 49 */	bl _savegpr_29
/* 801A8498  7C 7D 1B 78 */	mr r29, r3
/* 801A849C  7C 9E 23 78 */	mr r30, r4
/* 801A84A0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A84A4  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 801A84A8  48 00 40 D5 */	bl dKy_darkworld_check__Fv
/* 801A84AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A84B0  40 82 00 70 */	bne lbl_801A8520
/* 801A84B4  88 1F 0E D5 */	lbz r0, 0xed5(r31)
/* 801A84B8  28 00 00 0A */	cmplwi r0, 0xa
/* 801A84BC  40 80 00 18 */	bge lbl_801A84D4
/* 801A84C0  C0 3F 0E DC */	lfs f1, 0xedc(r31)
/* 801A84C4  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A84C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A84CC  4C 40 13 82 */	cror 2, 0, 2
/* 801A84D0  40 82 00 50 */	bne lbl_801A8520
lbl_801A84D4:
/* 801A84D4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A84D8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A84DC  88 03 07 A4 */	lbz r0, 0x7a4(r3)
/* 801A84E0  28 00 00 00 */	cmplwi r0, 0
/* 801A84E4  40 82 00 2C */	bne lbl_801A8510
/* 801A84E8  38 00 00 01 */	li r0, 1
/* 801A84EC  98 03 07 A4 */	stb r0, 0x7a4(r3)
/* 801A84F0  93 C3 07 A8 */	stw r30, 0x7a8(r3)
/* 801A84F4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 801A84F8  D0 03 07 AC */	stfs f0, 0x7ac(r3)
/* 801A84FC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 801A8500  D0 03 07 B0 */	stfs f0, 0x7b0(r3)
/* 801A8504  C0 1D 00 08 */	lfs f0, 8(r29)
/* 801A8508  D0 03 07 B4 */	stfs f0, 0x7b4(r3)
/* 801A850C  48 00 00 14 */	b lbl_801A8520
lbl_801A8510:
/* 801A8510  28 00 00 02 */	cmplwi r0, 2
/* 801A8514  40 82 00 0C */	bne lbl_801A8520
/* 801A8518  38 00 00 04 */	li r0, 4
/* 801A851C  98 03 07 A4 */	stb r0, 0x7a4(r3)
lbl_801A8520:
/* 801A8520  39 61 00 20 */	addi r11, r1, 0x20
/* 801A8524  48 1B 9D 05 */	bl _restgpr_29
/* 801A8528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A852C  7C 08 03 A6 */	mtlr r0
/* 801A8530  38 21 00 20 */	addi r1, r1, 0x20
/* 801A8534  4E 80 00 20 */	blr 
