lbl_806BACEC:
/* 806BACEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BACF0  7C 08 02 A6 */	mflr r0
/* 806BACF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BACF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806BACFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806BAD00  7C 7E 1B 78 */	mr r30, r3
/* 806BAD04  80 63 0C 30 */	lwz r3, 0xc30(r3)
/* 806BAD08  83 E3 00 04 */	lwz r31, 4(r3)
/* 806BAD0C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806BAD10  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806BAD14  38 80 00 07 */	li r4, 7
/* 806BAD18  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806BAD1C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 806BAD20  4B AE 8A A4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806BAD24  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806BAD28  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806BAD2C  80 9F 00 04 */	lwz r4, 4(r31)
/* 806BAD30  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806BAD34  4B AE A0 6C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806BAD38  80 7F 00 04 */	lwz r3, 4(r31)
/* 806BAD3C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 806BAD40  80 63 00 00 */	lwz r3, 0(r3)
/* 806BAD44  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 806BAD48  38 80 00 03 */	li r4, 3
/* 806BAD4C  81 83 00 00 */	lwz r12, 0(r3)
/* 806BAD50  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806BAD54  7D 89 03 A6 */	mtctr r12
/* 806BAD58  4E 80 04 21 */	bctrl 
/* 806BAD5C  3C 80 80 6C */	lis r4, lit_4618@ha
/* 806BAD60  C0 24 B7 F8 */	lfs f1, lit_4618@l(r4)
/* 806BAD64  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 806BAD68  EC 21 00 32 */	fmuls f1, f1, f0
/* 806BAD6C  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806BAD70  38 84 B9 1C */	addi r4, r4, l_HIO@l
/* 806BAD74  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 806BAD78  EC 01 00 32 */	fmuls f0, f1, f0
/* 806BAD7C  FC 00 00 1E */	fctiwz f0, f0
/* 806BAD80  D8 01 00 08 */	stfd f0, 8(r1)
/* 806BAD84  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806BAD88  98 03 00 03 */	stb r0, 3(r3)
/* 806BAD8C  38 7E 0C 34 */	addi r3, r30, 0xc34
/* 806BAD90  38 80 00 00 */	li r4, 0
/* 806BAD94  4B 95 3A 2C */	b entryDL__21mDoExt_invisibleModelFP4cXyz
/* 806BAD98  38 60 00 01 */	li r3, 1
/* 806BAD9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806BADA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806BADA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BADA8  7C 08 03 A6 */	mtlr r0
/* 806BADAC  38 21 00 20 */	addi r1, r1, 0x20
/* 806BADB0  4E 80 00 20 */	blr 
