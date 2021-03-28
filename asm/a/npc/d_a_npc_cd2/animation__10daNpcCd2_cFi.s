lbl_80158E28:
/* 80158E28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80158E2C  7C 08 02 A6 */	mflr r0
/* 80158E30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80158E34  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80158E38  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80158E3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80158E40  93 C1 00 08 */	stw r30, 8(r1)
/* 80158E44  7C 7E 1B 78 */	mr r30, r3
/* 80158E48  7C 9F 23 78 */	mr r31, r4
/* 80158E4C  80 03 05 90 */	lwz r0, 0x590(r3)
/* 80158E50  28 00 00 00 */	cmplwi r0, 0
/* 80158E54  41 82 00 60 */	beq lbl_80158EB4
/* 80158E58  38 7E 0A A4 */	addi r3, r30, 0xaa4
/* 80158E5C  4B FF 44 ED */	bl func_8014D348
/* 80158E60  2C 03 00 00 */	cmpwi r3, 0
/* 80158E64  40 82 00 50 */	bne lbl_80158EB4
/* 80158E68  A8 7E 0A C4 */	lha r3, 0xac4(r30)
/* 80158E6C  38 03 00 01 */	addi r0, r3, 1
/* 80158E70  B0 1E 0A C4 */	sth r0, 0xac4(r30)
/* 80158E74  80 7E 05 90 */	lwz r3, 0x590(r30)
/* 80158E78  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80158E7C  A8 63 00 06 */	lha r3, 6(r3)
/* 80158E80  A8 1E 0A C4 */	lha r0, 0xac4(r30)
/* 80158E84  7C 00 18 00 */	cmpw r0, r3
/* 80158E88  41 80 00 2C */	blt lbl_80158EB4
/* 80158E8C  2C 1F 00 00 */	cmpwi r31, 0
/* 80158E90  41 80 00 0C */	blt lbl_80158E9C
/* 80158E94  7F E3 FB 78 */	mr r3, r31
/* 80158E98  48 00 00 10 */	b lbl_80158EA8
lbl_80158E9C:
/* 80158E9C  38 60 00 1E */	li r3, 0x1e
/* 80158EA0  38 80 00 1E */	li r4, 0x1e
/* 80158EA4  4B FF 44 C1 */	bl func_8014D364
lbl_80158EA8:
/* 80158EA8  90 7E 0A A4 */	stw r3, 0xaa4(r30)
/* 80158EAC  38 00 00 00 */	li r0, 0
/* 80158EB0  B0 1E 0A C4 */	sth r0, 0xac4(r30)
lbl_80158EB4:
/* 80158EB4  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80158EB8  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 80158EBC  38 80 00 00 */	li r4, 0
/* 80158EC0  38 A0 00 00 */	li r5, 0
/* 80158EC4  4B EB 81 ED */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80158EC8  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80158ECC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80158ED0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80158ED4  40 80 00 0C */	bge lbl_80158EE0
/* 80158ED8  38 7E 0A A0 */	addi r3, r30, 0xaa0
/* 80158EDC  4B FF 44 6D */	bl func_8014D348
lbl_80158EE0:
/* 80158EE0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80158EE4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80158EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80158EEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80158EF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80158EF4  7C 08 03 A6 */	mtlr r0
/* 80158EF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80158EFC  4E 80 00 20 */	blr 
