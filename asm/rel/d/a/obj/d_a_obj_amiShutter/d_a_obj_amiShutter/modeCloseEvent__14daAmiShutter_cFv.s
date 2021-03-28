lbl_80BA1E60:
/* 80BA1E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1E64  7C 08 02 A6 */	mflr r0
/* 80BA1E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA1E70  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA1E74  7C 7E 1B 78 */	mr r30, r3
/* 80BA1E78  3C 60 80 BA */	lis r3, lit_3655@ha
/* 80BA1E7C  3B E3 23 90 */	addi r31, r3, lit_3655@l
/* 80BA1E80  88 7E 05 D8 */	lbz r3, 0x5d8(r30)
/* 80BA1E84  28 03 00 00 */	cmplwi r3, 0
/* 80BA1E88  41 82 00 10 */	beq lbl_80BA1E98
/* 80BA1E8C  38 03 FF FF */	addi r0, r3, -1
/* 80BA1E90  98 1E 05 D8 */	stb r0, 0x5d8(r30)
/* 80BA1E94  48 00 00 40 */	b lbl_80BA1ED4
lbl_80BA1E98:
/* 80BA1E98  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80BA1E9C  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80BA1EA0  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80BA1EA4  3C 80 80 BA */	lis r4, l_HIO@ha
/* 80BA1EA8  38 84 25 6C */	addi r4, r4, l_HIO@l
/* 80BA1EAC  C0 64 00 08 */	lfs f3, 8(r4)
/* 80BA1EB0  C0 9F 00 34 */	lfs f4, 0x34(r31)
/* 80BA1EB4  4B 6C DA C8 */	b cLib_addCalc__FPfffff
/* 80BA1EB8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BA1EBC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BA1EC0  40 82 00 14 */	bne lbl_80BA1ED4
/* 80BA1EC4  38 00 00 00 */	li r0, 0
/* 80BA1EC8  98 1E 05 D9 */	stb r0, 0x5d9(r30)
/* 80BA1ECC  7F C3 F3 78 */	mr r3, r30
/* 80BA1ED0  48 00 00 1D */	bl init_modeCloseEnd__14daAmiShutter_cFv
lbl_80BA1ED4:
/* 80BA1ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA1ED8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA1EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1EE0  7C 08 03 A6 */	mtlr r0
/* 80BA1EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1EE8  4E 80 00 20 */	blr 
