lbl_80D4EB8C:
/* 80D4EB8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4EB90  7C 08 02 A6 */	mflr r0
/* 80D4EB94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4EB98  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D4EB9C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D4EBA0  7C 7E 1B 78 */	mr r30, r3
/* 80D4EBA4  3C A0 80 D5 */	lis r5, lit_3723@ha
/* 80D4EBA8  3B E5 F4 D0 */	addi r31, r5, lit_3723@l
/* 80D4EBAC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D4EBB0  54 00 47 3F */	rlwinm. r0, r0, 8, 0x1c, 0x1f
/* 80D4EBB4  40 82 00 58 */	bne lbl_80D4EC0C
/* 80D4EBB8  C0 64 04 D4 */	lfs f3, 0x4d4(r4)
/* 80D4EBBC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D4EBC0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D4EBC4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80D4EBC8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80D4EBCC  4C 41 13 82 */	cror 2, 1, 2
/* 80D4EBD0  40 82 00 E0 */	bne lbl_80D4ECB0
/* 80D4EBD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D4EBD8  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D4EBDC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D4EBE0  EC 02 00 2A */	fadds f0, f2, f0
/* 80D4EBE4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80D4EBE8  40 80 00 C8 */	bge lbl_80D4ECB0
/* 80D4EBEC  4B 2C BD 78 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D4EBF0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80D4EBF4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D4EBF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D4EBFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D4EC00  40 80 00 B0 */	bge lbl_80D4ECB0
/* 80D4EC04  38 60 00 01 */	li r3, 1
/* 80D4EC08  48 00 00 AC */	b lbl_80D4ECB4
lbl_80D4EC0C:
/* 80D4EC0C  28 00 00 01 */	cmplwi r0, 1
/* 80D4EC10  40 82 00 A0 */	bne lbl_80D4ECB0
/* 80D4EC14  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D4EC18  C0 9E 04 F4 */	lfs f4, 0x4f4(r30)
/* 80D4EC1C  EC 20 01 32 */	fmuls f1, f0, f4
/* 80D4EC20  C0 5E 04 EC */	lfs f2, 0x4ec(r30)
/* 80D4EC24  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D4EC28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D4EC2C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80D4EC30  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80D4EC34  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D4EC38  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D4EC3C  EC A1 01 32 */	fmuls f5, f1, f4
/* 80D4EC40  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D4EC44  EC 81 00 32 */	fmuls f4, f1, f0
/* 80D4EC48  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80D4EC4C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D4EC50  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80D4EC54  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80D4EC58  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D4EC5C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D4EC60  EC 02 00 28 */	fsubs f0, f2, f0
/* 80D4EC64  EC 23 00 2A */	fadds f1, f3, f0
/* 80D4EC68  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80D4EC6C  EC 04 10 2A */	fadds f0, f4, f2
/* 80D4EC70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D4EC74  C0 44 04 D4 */	lfs f2, 0x4d4(r4)
/* 80D4EC78  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80D4EC7C  4C 41 13 82 */	cror 2, 1, 2
/* 80D4EC80  40 82 00 30 */	bne lbl_80D4ECB0
/* 80D4EC84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D4EC88  40 80 00 28 */	bge lbl_80D4ECB0
/* 80D4EC8C  7C 83 23 78 */	mr r3, r4
/* 80D4EC90  7F C4 F3 78 */	mr r4, r30
/* 80D4EC94  38 A1 00 14 */	addi r5, r1, 0x14
/* 80D4EC98  38 C1 00 08 */	addi r6, r1, 8
/* 80D4EC9C  4B 2E 39 B8 */	b dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz
/* 80D4ECA0  2C 03 00 00 */	cmpwi r3, 0
/* 80D4ECA4  41 82 00 0C */	beq lbl_80D4ECB0
/* 80D4ECA8  38 60 00 01 */	li r3, 1
/* 80D4ECAC  48 00 00 08 */	b lbl_80D4ECB4
lbl_80D4ECB0:
/* 80D4ECB0  38 60 00 00 */	li r3, 0
lbl_80D4ECB4:
/* 80D4ECB4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D4ECB8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D4ECBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4ECC0  7C 08 03 A6 */	mtlr r0
/* 80D4ECC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4ECC8  4E 80 00 20 */	blr 
