lbl_80487138:
/* 80487138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048713C  7C 08 02 A6 */	mflr r0
/* 80487140  90 01 00 24 */	stw r0, 0x24(r1)
/* 80487144  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80487148  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8048714C  7C 7F 1B 78 */	mr r31, r3
/* 80487150  88 03 04 99 */	lbz r0, 0x499(r3)
/* 80487154  7C 00 07 75 */	extsb. r0, r0
/* 80487158  41 82 00 0C */	beq lbl_80487164
/* 8048715C  38 60 00 01 */	li r3, 1
/* 80487160  48 00 00 B0 */	b lbl_80487210
lbl_80487164:
/* 80487164  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80487168  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8048716C  38 80 00 10 */	li r4, 0x10
/* 80487170  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80487174  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80487178  4B D1 C6 4D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8048717C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80487180  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80487184  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80487188  80 84 00 04 */	lwz r4, 4(r4)
/* 8048718C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80487190  4B D1 D2 8D */	bl setLightTevColorType__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80487194  3C 60 80 48 */	lis r3, data_80487408@ha /* 0x80487408@ha */
/* 80487198  3B C3 74 08 */	addi r30, r3, data_80487408@l /* 0x80487408@l */
/* 8048719C  A0 1F 07 54 */	lhz r0, 0x754(r31)
/* 804871A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804871A4  41 82 00 08 */	beq lbl_804871AC
/* 804871A8  3B DE 00 01 */	addi r30, r30, 1
lbl_804871AC:
/* 804871AC  7F E3 FB 78 */	mr r3, r31
/* 804871B0  4B FF EE 99 */	bl getType__10daSwhit0_cFv
/* 804871B4  54 60 0D FC */	rlwinm r0, r3, 1, 0x17, 0x1e
/* 804871B8  7C 1E 00 AE */	lbzx r0, r30, r0
/* 804871BC  3C 60 80 48 */	lis r3, lit_4212@ha /* 0x80487380@ha */
/* 804871C0  C8 23 73 80 */	lfd f1, lit_4212@l(r3)  /* 0x80487380@l */
/* 804871C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804871C8  3C 00 43 30 */	lis r0, 0x4330
/* 804871CC  90 01 00 08 */	stw r0, 8(r1)
/* 804871D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804871D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804871D8  D0 1F 05 A0 */	stfs f0, 0x5a0(r31)
/* 804871DC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804871E0  83 C3 00 04 */	lwz r30, 4(r3)
/* 804871E4  38 7F 05 74 */	addi r3, r31, 0x574
/* 804871E8  7F C4 F3 78 */	mr r4, r30
/* 804871EC  C0 3F 05 84 */	lfs f1, 0x584(r31)
/* 804871F0  4B B8 67 DD */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 804871F4  C0 3F 05 A0 */	lfs f1, 0x5a0(r31)
/* 804871F8  38 7F 05 90 */	addi r3, r31, 0x590
/* 804871FC  38 9E 00 58 */	addi r4, r30, 0x58
/* 80487200  4B B8 65 A9 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80487204  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80487208  4B B8 6A BD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8048720C  38 60 00 01 */	li r3, 1
lbl_80487210:
/* 80487210  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80487214  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80487218  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048721C  7C 08 03 A6 */	mtlr r0
/* 80487220  38 21 00 20 */	addi r1, r1, 0x20
/* 80487224  4E 80 00 20 */	blr 
