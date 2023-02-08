lbl_80CF466C:
/* 80CF466C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CF4670  7C 08 02 A6 */	mflr r0
/* 80CF4674  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CF4678  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CF467C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CF4680  7C 7E 1B 78 */	mr r30, r3
/* 80CF4684  3C A0 80 CF */	lis r5, l_color@ha /* 0x80CF59D0@ha */
/* 80CF4688  3B E5 59 D0 */	addi r31, r5, l_color@l /* 0x80CF59D0@l */
/* 80CF468C  28 04 00 00 */	cmplwi r4, 0
/* 80CF4690  40 82 00 0C */	bne lbl_80CF469C
/* 80CF4694  38 60 00 00 */	li r3, 0
/* 80CF4698  48 00 01 0C */	b lbl_80CF47A4
lbl_80CF469C:
/* 80CF469C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CF46A0  54 00 47 3F */	rlwinm. r0, r0, 8, 0x1c, 0x1f
/* 80CF46A4  40 82 00 58 */	bne lbl_80CF46FC
/* 80CF46A8  C0 64 04 D4 */	lfs f3, 0x4d4(r4)
/* 80CF46AC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CF46B0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CF46B4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80CF46B8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80CF46BC  4C 41 13 82 */	cror 2, 1, 2
/* 80CF46C0  40 82 00 E0 */	bne lbl_80CF47A0
/* 80CF46C4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80CF46C8  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80CF46CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CF46D0  EC 02 00 2A */	fadds f0, f2, f0
/* 80CF46D4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80CF46D8  40 80 00 C8 */	bge lbl_80CF47A0
/* 80CF46DC  4B 32 62 89 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CF46E0  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80CF46E4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80CF46E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CF46EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF46F0  40 80 00 B0 */	bge lbl_80CF47A0
/* 80CF46F4  38 60 00 01 */	li r3, 1
/* 80CF46F8  48 00 00 AC */	b lbl_80CF47A4
lbl_80CF46FC:
/* 80CF46FC  28 00 00 01 */	cmplwi r0, 1
/* 80CF4700  40 82 00 A0 */	bne lbl_80CF47A0
/* 80CF4704  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CF4708  C0 9E 04 F4 */	lfs f4, 0x4f4(r30)
/* 80CF470C  EC 20 01 32 */	fmuls f1, f0, f4
/* 80CF4710  C0 5E 04 EC */	lfs f2, 0x4ec(r30)
/* 80CF4714  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CF4718  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CF471C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80CF4720  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80CF4724  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CF4728  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80CF472C  EC A1 01 32 */	fmuls f5, f1, f4
/* 80CF4730  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80CF4734  EC 81 00 32 */	fmuls f4, f1, f0
/* 80CF4738  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80CF473C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CF4740  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80CF4744  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80CF4748  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CF474C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CF4750  EC 02 00 28 */	fsubs f0, f2, f0
/* 80CF4754  EC 23 00 2A */	fadds f1, f3, f0
/* 80CF4758  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CF475C  EC 04 10 2A */	fadds f0, f4, f2
/* 80CF4760  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CF4764  C0 44 04 D4 */	lfs f2, 0x4d4(r4)
/* 80CF4768  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80CF476C  4C 41 13 82 */	cror 2, 1, 2
/* 80CF4770  40 82 00 30 */	bne lbl_80CF47A0
/* 80CF4774  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CF4778  40 80 00 28 */	bge lbl_80CF47A0
/* 80CF477C  7C 83 23 78 */	mr r3, r4
/* 80CF4780  7F C4 F3 78 */	mr r4, r30
/* 80CF4784  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CF4788  38 C1 00 08 */	addi r6, r1, 8
/* 80CF478C  4B 33 DE C9 */	bl dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz
/* 80CF4790  2C 03 00 00 */	cmpwi r3, 0
/* 80CF4794  41 82 00 0C */	beq lbl_80CF47A0
/* 80CF4798  38 60 00 01 */	li r3, 1
/* 80CF479C  48 00 00 08 */	b lbl_80CF47A4
lbl_80CF47A0:
/* 80CF47A0  38 60 00 00 */	li r3, 0
lbl_80CF47A4:
/* 80CF47A4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CF47A8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CF47AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CF47B0  7C 08 03 A6 */	mtlr r0
/* 80CF47B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80CF47B8  4E 80 00 20 */	blr 
