lbl_807E4568:
/* 807E4568  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807E456C  7C 08 02 A6 */	mflr r0
/* 807E4570  90 01 00 54 */	stw r0, 0x54(r1)
/* 807E4574  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 807E4578  93 C1 00 48 */	stw r30, 0x48(r1)
/* 807E457C  7C 7F 1B 78 */	mr r31, r3
/* 807E4580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E4584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E4588  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807E458C  38 80 00 00 */	li r4, 0
/* 807E4590  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807E4594  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 807E4598  7D 89 03 A6 */	mtctr r12
/* 807E459C  4E 80 04 21 */	bctrl 
/* 807E45A0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E45A4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E45A8  4B B6 1F 09 */	bl PSMTXCopy
/* 807E45AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E45B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E45B4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807E45B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807E45BC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807E45C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807E45C4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807E45C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807E45CC  3B C0 00 00 */	li r30, 0
/* 807E45D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E45D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E45D8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E45DC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807E45E0  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 807E45E4  7D 89 03 A6 */	mtctr r12
/* 807E45E8  4E 80 04 21 */	bctrl 
/* 807E45EC  2C 03 00 00 */	cmpwi r3, 0
/* 807E45F0  40 82 00 78 */	bne lbl_807E4668
/* 807E45F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E45F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E45FC  80 63 5F 1C */	lwz r3, 0x5f1c(r3)
/* 807E4600  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 807E4604  40 82 00 64 */	bne lbl_807E4668
/* 807E4608  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 807E460C  40 82 00 5C */	bne lbl_807E4668
/* 807E4610  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807E4614  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807E4618  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807E461C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807E4620  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807E4624  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807E4628  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807E462C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E4630  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807E4634  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807E4638  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807E463C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807E4640  7F E3 FB 78 */	mr r3, r31
/* 807E4644  38 81 00 2C */	addi r4, r1, 0x2c
/* 807E4648  38 A1 00 20 */	addi r5, r1, 0x20
/* 807E464C  4B FF F9 61 */	bl calcTargetDist__8daE_WS_cF4cXyz4cXyz
/* 807E4650  3C 60 80 7E */	lis r3, lit_3826@ha /* 0x807E7338@ha */
/* 807E4654  C0 03 73 38 */	lfs f0, lit_3826@l(r3)  /* 0x807E7338@l */
/* 807E4658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E465C  7C 00 00 26 */	mfcr r0
/* 807E4660  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 807E4664  41 82 00 08 */	beq lbl_807E466C
lbl_807E4668:
/* 807E4668  3B C0 00 01 */	li r30, 1
lbl_807E466C:
/* 807E466C  2C 1E 00 00 */	cmpwi r30, 0
/* 807E4670  41 82 00 60 */	beq lbl_807E46D0
/* 807E4674  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807E4678  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E467C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807E4680  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E4684  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807E4688  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E468C  C0 1F 06 5C */	lfs f0, 0x65c(r31)
/* 807E4690  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E4694  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 807E4698  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E469C  C0 1F 06 64 */	lfs f0, 0x664(r31)
/* 807E46A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E46A4  7F E3 FB 78 */	mr r3, r31
/* 807E46A8  38 81 00 14 */	addi r4, r1, 0x14
/* 807E46AC  38 A1 00 08 */	addi r5, r1, 8
/* 807E46B0  4B FF FA BD */	bl checkInSearchRange__8daE_WS_cF4cXyz4cXyz
/* 807E46B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E46B8  41 82 00 18 */	beq lbl_807E46D0
/* 807E46BC  7F E3 FB 78 */	mr r3, r31
/* 807E46C0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807E46C4  48 00 18 F5 */	bl checkBeforeBg__8daE_WS_cFs
/* 807E46C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E46CC  41 82 00 24 */	beq lbl_807E46F0
lbl_807E46D0:
/* 807E46D0  7F E3 FB 78 */	mr r3, r31
/* 807E46D4  38 80 00 00 */	li r4, 0
/* 807E46D8  4B FF F8 B9 */	bl setActionMode__8daE_WS_cFi
/* 807E46DC  3C 60 80 7E */	lis r3, lit_3803@ha /* 0x807E7304@ha */
/* 807E46E0  C0 03 73 04 */	lfs f0, lit_3803@l(r3)  /* 0x807E7304@l */
/* 807E46E4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807E46E8  38 60 00 01 */	li r3, 1
/* 807E46EC  48 00 00 08 */	b lbl_807E46F4
lbl_807E46F0:
/* 807E46F0  38 60 00 00 */	li r3, 0
lbl_807E46F4:
/* 807E46F4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 807E46F8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 807E46FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807E4700  7C 08 03 A6 */	mtlr r0
/* 807E4704  38 21 00 50 */	addi r1, r1, 0x50
/* 807E4708  4E 80 00 20 */	blr 
