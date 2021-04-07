lbl_80592F48:
/* 80592F48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80592F4C  7C 08 02 A6 */	mflr r0
/* 80592F50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80592F54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80592F58  7C 7F 1B 78 */	mr r31, r3
/* 80592F5C  4B FF FF 3D */	bl initBaseMtx__11daObjMBox_cFv
/* 80592F60  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80592F64  38 03 00 24 */	addi r0, r3, 0x24
/* 80592F68  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80592F6C  38 7F 07 84 */	addi r3, r31, 0x784
/* 80592F70  3C 80 80 59 */	lis r4, lit_3655@ha /* 0x8059346C@ha */
/* 80592F74  C0 24 34 6C */	lfs f1, lit_3655@l(r4)  /* 0x8059346C@l */
/* 80592F78  FC 40 08 90 */	fmr f2, f1
/* 80592F7C  4B AE 2F DD */	bl SetWall__12dBgS_AcchCirFff
/* 80592F80  38 00 00 00 */	li r0, 0
/* 80592F84  90 01 00 08 */	stw r0, 8(r1)
/* 80592F88  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80592F8C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80592F90  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80592F94  7F E6 FB 78 */	mr r6, r31
/* 80592F98  38 E0 00 01 */	li r7, 1
/* 80592F9C  39 1F 07 84 */	addi r8, r31, 0x784
/* 80592FA0  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80592FA4  39 40 00 00 */	li r10, 0
/* 80592FA8  4B AE 32 A1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80592FAC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80592FB0  80 83 00 04 */	lwz r4, 4(r3)
/* 80592FB4  7F E3 FB 78 */	mr r3, r31
/* 80592FB8  4B A8 75 C1 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80592FBC  38 60 00 01 */	li r3, 1
/* 80592FC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80592FC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80592FC8  7C 08 03 A6 */	mtlr r0
/* 80592FCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80592FD0  4E 80 00 20 */	blr 
