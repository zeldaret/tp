lbl_8000A504:
/* 8000A504  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8000A508  7C 08 02 A6 */	mflr r0
/* 8000A50C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8000A510  38 61 00 0C */	addi r3, r1, 0xc
/* 8000A514  C0 22 80 D0 */	lfs f1, lit_4641(r2)
/* 8000A518  C0 42 80 38 */	lfs f2, lit_4062(r2)
/* 8000A51C  C0 62 80 D4 */	lfs f3, lit_4642(r2)
/* 8000A520  48 35 33 8D */	bl GXInitLightPos
/* 8000A524  38 61 00 0C */	addi r3, r1, 0xc
/* 8000A528  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 8000A52C  FC 40 08 90 */	fmr f2, f1
/* 8000A530  FC 60 08 90 */	fmr f3, f1
/* 8000A534  48 35 33 89 */	bl GXInitLightDir
/* 8000A538  80 0D 80 88 */	lwz r0, g_whiteColor(r13)
/* 8000A53C  90 01 00 08 */	stw r0, 8(r1)
/* 8000A540  38 61 00 0C */	addi r3, r1, 0xc
/* 8000A544  38 81 00 08 */	addi r4, r1, 8
/* 8000A548  48 35 33 91 */	bl GXInitLightColor
/* 8000A54C  38 61 00 0C */	addi r3, r1, 0xc
/* 8000A550  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 8000A554  FC 40 08 90 */	fmr f2, f1
/* 8000A558  38 80 00 01 */	li r4, 1
/* 8000A55C  48 35 32 81 */	bl GXInitLightDistAttn
/* 8000A560  38 61 00 0C */	addi r3, r1, 0xc
/* 8000A564  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 8000A568  38 80 00 01 */	li r4, 1
/* 8000A56C  48 35 30 E1 */	bl GXInitLightSpot
/* 8000A570  38 61 00 0C */	addi r3, r1, 0xc
/* 8000A574  38 80 00 01 */	li r4, 1
/* 8000A578  48 35 33 6D */	bl GXLoadLightObjImm
/* 8000A57C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8000A580  7C 08 03 A6 */	mtlr r0
/* 8000A584  38 21 00 50 */	addi r1, r1, 0x50
/* 8000A588  4E 80 00 20 */	blr 
