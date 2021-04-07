lbl_80A124D0:
/* 80A124D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A124D4  7C 08 02 A6 */	mflr r0
/* 80A124D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A124DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A124E0  7C 7F 1B 78 */	mr r31, r3
/* 80A124E4  80 63 0E 04 */	lwz r3, 0xe04(r3)
/* 80A124E8  28 03 00 00 */	cmplwi r3, 0
/* 80A124EC  41 82 00 60 */	beq lbl_80A1254C
/* 80A124F0  80 9F 0E 08 */	lwz r4, 0xe08(r31)
/* 80A124F4  41 82 00 20 */	beq lbl_80A12514
/* 80A124F8  4B 63 F2 B9 */	bl dPath_GetPnt__FPC5dPathi
/* 80A124FC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A12500  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A12504  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A12508  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A1250C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A12510  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80A12514:
/* 80A12514  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A12518  38 81 00 08 */	addi r4, r1, 8
/* 80A1251C  4B 85 E6 E9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A12520  7C 64 1B 78 */	mr r4, r3
/* 80A12524  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80A12528  38 A0 00 0D */	li r5, 0xd
/* 80A1252C  38 C0 06 00 */	li r6, 0x600
/* 80A12530  4B 85 E0 D9 */	bl cLib_addCalcAngleS2__FPssss
/* 80A12534  7F E3 FB 78 */	mr r3, r31
/* 80A12538  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80A1253C  4B 74 1D 15 */	bl setAngle__8daNpcF_cFs
/* 80A12540  7F E3 FB 78 */	mr r3, r31
/* 80A12544  38 80 00 00 */	li r4, 0
/* 80A12548  4B 60 81 85 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
lbl_80A1254C:
/* 80A1254C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A12550  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A12554  7C 08 03 A6 */	mtlr r0
/* 80A12558  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1255C  4E 80 00 20 */	blr 
