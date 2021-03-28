lbl_80C0C478:
/* 80C0C478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C0C47C  7C 08 02 A6 */	mflr r0
/* 80C0C480  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C0C484  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C0C488  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C0C48C  7C 7F 1B 78 */	mr r31, r3
/* 80C0C490  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha
/* 80C0C494  3B C4 FA 7C */	addi r30, r4, m__17daObj_GrA_Param_c@l
/* 80C0C498  88 03 1F F4 */	lbz r0, 0x1ff4(r3)
/* 80C0C49C  2C 00 00 01 */	cmpwi r0, 1
/* 80C0C4A0  41 82 00 88 */	beq lbl_80C0C528
/* 80C0C4A4  40 80 00 90 */	bge lbl_80C0C534
/* 80C0C4A8  2C 00 00 00 */	cmpwi r0, 0
/* 80C0C4AC  40 80 00 08 */	bge lbl_80C0C4B4
/* 80C0C4B0  48 00 00 84 */	b lbl_80C0C534
lbl_80C0C4B4:
/* 80C0C4B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C0C4B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C0C4BC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C0C4C0  C0 24 05 2C */	lfs f1, 0x52c(r4)
/* 80C0C4C4  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0C4C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C0C4CC  40 82 00 4C */	bne lbl_80C0C518
/* 80C0C4D0  38 00 00 01 */	li r0, 1
/* 80C0C4D4  98 1F 1F F4 */	stb r0, 0x1ff4(r31)
/* 80C0C4D8  C0 3E 03 04 */	lfs f1, 0x304(r30)
/* 80C0C4DC  38 80 00 02 */	li r4, 2
/* 80C0C4E0  4B FF FA 55 */	bl calcCatchPos__11daObj_GrA_cFfi
/* 80C0C4E4  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0C4E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C0C4EC  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80C0C4F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C0C4F4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C0C4F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0C4FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0C500  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C0C504  38 80 00 01 */	li r4, 1
/* 80C0C508  38 A0 00 0F */	li r5, 0xf
/* 80C0C50C  38 C1 00 08 */	addi r6, r1, 8
/* 80C0C510  4B 46 36 00 */	b StartQuake__12dVibration_cFii4cXyz
/* 80C0C514  48 00 00 20 */	b lbl_80C0C534
lbl_80C0C518:
/* 80C0C518  C0 3E 03 04 */	lfs f1, 0x304(r30)
/* 80C0C51C  38 80 00 01 */	li r4, 1
/* 80C0C520  4B FF FA 15 */	bl calcCatchPos__11daObj_GrA_cFfi
/* 80C0C524  48 00 00 10 */	b lbl_80C0C534
lbl_80C0C528:
/* 80C0C528  C0 3E 03 04 */	lfs f1, 0x304(r30)
/* 80C0C52C  38 80 00 02 */	li r4, 2
/* 80C0C530  4B FF FA 05 */	bl calcCatchPos__11daObj_GrA_cFfi
lbl_80C0C534:
/* 80C0C534  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C0C538  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80C0C53C  C0 1E 02 F8 */	lfs f0, 0x2f8(r30)
/* 80C0C540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0C544  40 81 00 10 */	ble lbl_80C0C554
/* 80C0C548  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C0C54C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C0C550  48 00 00 0C */	b lbl_80C0C55C
lbl_80C0C554:
/* 80C0C554  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0C558  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80C0C55C:
/* 80C0C55C  A0 7F 0A 48 */	lhz r3, 0xa48(r31)
/* 80C0C560  28 03 00 00 */	cmplwi r3, 0
/* 80C0C564  41 82 00 74 */	beq lbl_80C0C5D8
/* 80C0C568  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80C0C56C  41 82 00 14 */	beq lbl_80C0C580
/* 80C0C570  7F E3 FB 78 */	mr r3, r31
/* 80C0C574  38 80 00 00 */	li r4, 0
/* 80C0C578  48 00 00 79 */	bl initCrazyThrow__11daObj_GrA_cFi
/* 80C0C57C  48 00 00 54 */	b lbl_80C0C5D0
lbl_80C0C580:
/* 80C0C580  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80C0C584  41 82 00 14 */	beq lbl_80C0C598
/* 80C0C588  7F E3 FB 78 */	mr r3, r31
/* 80C0C58C  38 80 00 01 */	li r4, 1
/* 80C0C590  48 00 00 61 */	bl initCrazyThrow__11daObj_GrA_cFi
/* 80C0C594  48 00 00 3C */	b lbl_80C0C5D0
lbl_80C0C598:
/* 80C0C598  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80C0C59C  41 82 00 34 */	beq lbl_80C0C5D0
/* 80C0C5A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0C5A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0C5A8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C0C5AC  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80C0C5B0  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0C5B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C0C5B8  40 82 00 10 */	bne lbl_80C0C5C8
/* 80C0C5BC  7F E3 FB 78 */	mr r3, r31
/* 80C0C5C0  48 00 02 8D */	bl initCrazyAttack__11daObj_GrA_cFv
/* 80C0C5C4  48 00 00 0C */	b lbl_80C0C5D0
lbl_80C0C5C8:
/* 80C0C5C8  7F E3 FB 78 */	mr r3, r31
/* 80C0C5CC  48 00 02 81 */	bl initCrazyAttack__11daObj_GrA_cFv
lbl_80C0C5D0:
/* 80C0C5D0  38 00 00 00 */	li r0, 0
/* 80C0C5D4  B0 1F 0A 48 */	sth r0, 0xa48(r31)
lbl_80C0C5D8:
/* 80C0C5D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C0C5DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C0C5E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C0C5E4  7C 08 03 A6 */	mtlr r0
/* 80C0C5E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C0C5EC  4E 80 00 20 */	blr 
