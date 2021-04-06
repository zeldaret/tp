lbl_80B389A4:
/* 80B389A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B389A8  7C 08 02 A6 */	mflr r0
/* 80B389AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B389B0  39 61 00 50 */	addi r11, r1, 0x50
/* 80B389B4  4B 82 98 25 */	bl _savegpr_28
/* 80B389B8  7C 7F 1B 78 */	mr r31, r3
/* 80B389BC  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B389C0  3B A4 16 DC */	addi r29, r4, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B389C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B389C8  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B389CC  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 80B389D0  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B389D4  2C 00 00 02 */	cmpwi r0, 2
/* 80B389D8  41 82 00 EC */	beq lbl_80B38AC4
/* 80B389DC  40 80 02 98 */	bge lbl_80B38C74
/* 80B389E0  2C 00 00 00 */	cmpwi r0, 0
/* 80B389E4  41 82 00 0C */	beq lbl_80B389F0
/* 80B389E8  48 00 02 8C */	b lbl_80B38C74
/* 80B389EC  48 00 02 88 */	b lbl_80B38C74
lbl_80B389F0:
/* 80B389F0  38 80 00 0F */	li r4, 0xf
/* 80B389F4  38 A0 00 01 */	li r5, 1
/* 80B389F8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B389FC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B38A00  7D 89 03 A6 */	mtctr r12
/* 80B38A04  4E 80 04 21 */	bctrl 
/* 80B38A08  7F E3 FB 78 */	mr r3, r31
/* 80B38A0C  38 80 00 13 */	li r4, 0x13
/* 80B38A10  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B38A14  38 A0 00 00 */	li r5, 0
/* 80B38A18  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B38A1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B38A20  7D 89 03 A6 */	mtctr r12
/* 80B38A24  4E 80 04 21 */	bctrl 
/* 80B38A28  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 80B38A2C  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80B38A30  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B38A34  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 80B38A38  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B38A3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B38A40  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B38A44  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 80B38A48  4B 4D 43 1D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B38A4C  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 80B38A50  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B38A54  4B 73 81 B1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B38A58  A8 1F 0E 94 */	lha r0, 0xe94(r31)
/* 80B38A5C  7C 00 1A 14 */	add r0, r0, r3
/* 80B38A60  7C 04 07 34 */	extsh r4, r0
/* 80B38A64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B38A68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B38A6C  4B 4D 39 C9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B38A70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B38A74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B38A78  38 81 00 08 */	addi r4, r1, 8
/* 80B38A7C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B38A80  4B 80 E2 ED */	bl PSMTXMultVec
/* 80B38A84  7F E3 FB 78 */	mr r3, r31
/* 80B38A88  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B38A8C  4B 4E 1C 85 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B38A90  7C 64 1B 78 */	mr r4, r3
/* 80B38A94  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80B38A98  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80B38A9C  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B38AA0  38 C0 40 00 */	li r6, 0x4000
/* 80B38AA4  38 E0 00 40 */	li r7, 0x40
/* 80B38AA8  4B 73 7A 99 */	bl cLib_addCalcAngleS__FPsssss
/* 80B38AAC  7F E3 FB 78 */	mr r3, r31
/* 80B38AB0  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B38AB4  4B 61 B7 9D */	bl setAngle__8daNpcF_cFs
/* 80B38AB8  38 00 00 02 */	li r0, 2
/* 80B38ABC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B38AC0  48 00 01 B4 */	b lbl_80B38C74
lbl_80B38AC4:
/* 80B38AC4  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 80B38AC8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B38ACC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B38AD0  7F 83 E3 78 */	mr r3, r28
/* 80B38AD4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B38AD8  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B38ADC  7D 89 03 A6 */	mtctr r12
/* 80B38AE0  4E 80 04 21 */	bctrl 
/* 80B38AE4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B38AE8  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B38AEC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B38AF0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B38AF4  C0 1D 05 F4 */	lfs f0, 0x5f4(r29)
/* 80B38AF8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B38AFC  40 82 00 38 */	bne lbl_80B38B34
/* 80B38B00  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
/* 80B38B04  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B38B08  C0 1D 01 B4 */	lfs f0, 0x1b4(r29)
/* 80B38B0C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B38B10  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B38B14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B38B18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B38B1C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B38B20  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B38B24  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80B38B28  38 A0 00 0F */	li r5, 0xf
/* 80B38B2C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80B38B30  4B 53 6E F5 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80B38B34:
/* 80B38B34  7F E3 FB 78 */	mr r3, r31
/* 80B38B38  4B FF CC 49 */	bl checkOutOfArenaW__15daNpcWrestler_cFv
/* 80B38B3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B38B40  41 82 00 98 */	beq lbl_80B38BD8
/* 80B38B44  3C 60 80 B4 */	lis r3, lit_8323@ha /* 0x80B42B80@ha */
/* 80B38B48  38 83 2B 80 */	addi r4, r3, lit_8323@l /* 0x80B42B80@l */
/* 80B38B4C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B38B50  80 04 00 04 */	lwz r0, 4(r4)
/* 80B38B54  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B38B58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B38B5C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B38B60  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B38B64  38 00 00 03 */	li r0, 3
/* 80B38B68  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B38B6C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B38B70  4B 82 94 A9 */	bl __ptmf_test
/* 80B38B74  2C 03 00 00 */	cmpwi r3, 0
/* 80B38B78  41 82 00 18 */	beq lbl_80B38B90
/* 80B38B7C  7F E3 FB 78 */	mr r3, r31
/* 80B38B80  38 80 00 00 */	li r4, 0
/* 80B38B84  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B38B88  4B 82 94 FD */	bl __ptmf_scall
/* 80B38B8C  60 00 00 00 */	nop 
lbl_80B38B90:
/* 80B38B90  38 00 00 00 */	li r0, 0
/* 80B38B94  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B38B98  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B38B9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B38BA0  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B38BA4  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B38BA8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B38BAC  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B38BB0  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B38BB4  4B 82 94 65 */	bl __ptmf_test
/* 80B38BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B38BBC  41 82 00 B8 */	beq lbl_80B38C74
/* 80B38BC0  7F E3 FB 78 */	mr r3, r31
/* 80B38BC4  38 80 00 00 */	li r4, 0
/* 80B38BC8  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B38BCC  4B 82 94 B9 */	bl __ptmf_scall
/* 80B38BD0  60 00 00 00 */	nop 
/* 80B38BD4  48 00 00 A0 */	b lbl_80B38C74
lbl_80B38BD8:
/* 80B38BD8  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 80B38BDC  28 00 00 07 */	cmplwi r0, 7
/* 80B38BE0  40 82 00 94 */	bne lbl_80B38C74
/* 80B38BE4  3C 60 80 B4 */	lis r3, lit_8328@ha /* 0x80B42B8C@ha */
/* 80B38BE8  38 83 2B 8C */	addi r4, r3, lit_8328@l /* 0x80B42B8C@l */
/* 80B38BEC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B38BF0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B38BF4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B38BF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B38BFC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B38C00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B38C04  38 00 00 03 */	li r0, 3
/* 80B38C08  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B38C0C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B38C10  4B 82 94 09 */	bl __ptmf_test
/* 80B38C14  2C 03 00 00 */	cmpwi r3, 0
/* 80B38C18  41 82 00 18 */	beq lbl_80B38C30
/* 80B38C1C  7F E3 FB 78 */	mr r3, r31
/* 80B38C20  38 80 00 00 */	li r4, 0
/* 80B38C24  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B38C28  4B 82 94 5D */	bl __ptmf_scall
/* 80B38C2C  60 00 00 00 */	nop 
lbl_80B38C30:
/* 80B38C30  38 00 00 00 */	li r0, 0
/* 80B38C34  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B38C38  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B38C3C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B38C40  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B38C44  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B38C48  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B38C4C  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B38C50  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B38C54  4B 82 93 C5 */	bl __ptmf_test
/* 80B38C58  2C 03 00 00 */	cmpwi r3, 0
/* 80B38C5C  41 82 00 18 */	beq lbl_80B38C74
/* 80B38C60  7F E3 FB 78 */	mr r3, r31
/* 80B38C64  38 80 00 00 */	li r4, 0
/* 80B38C68  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B38C6C  4B 82 94 19 */	bl __ptmf_scall
/* 80B38C70  60 00 00 00 */	nop 
lbl_80B38C74:
/* 80B38C74  38 60 00 01 */	li r3, 1
/* 80B38C78  39 61 00 50 */	addi r11, r1, 0x50
/* 80B38C7C  4B 82 95 A9 */	bl _restgpr_28
/* 80B38C80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B38C84  7C 08 03 A6 */	mtlr r0
/* 80B38C88  38 21 00 50 */	addi r1, r1, 0x50
/* 80B38C8C  4E 80 00 20 */	blr 
