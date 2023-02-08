lbl_806F5B40:
/* 806F5B40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806F5B44  7C 08 02 A6 */	mflr r0
/* 806F5B48  90 01 00 64 */	stw r0, 0x64(r1)
/* 806F5B4C  39 61 00 60 */	addi r11, r1, 0x60
/* 806F5B50  4B C6 C6 81 */	bl _savegpr_26
/* 806F5B54  7C 7C 1B 78 */	mr r28, r3
/* 806F5B58  3C 60 80 6F */	lis r3, lit_3648@ha /* 0x806F7B6C@ha */
/* 806F5B5C  3B E3 7B 6C */	addi r31, r3, lit_3648@l /* 0x806F7B6C@l */
/* 806F5B60  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 806F5B64  83 C3 00 04 */	lwz r30, 4(r3)
/* 806F5B68  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806F5B6C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806F5B70  38 80 00 00 */	li r4, 0
/* 806F5B74  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 806F5B78  38 DC 01 0C */	addi r6, r28, 0x10c
/* 806F5B7C  4B AA DC 49 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806F5B80  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806F5B84  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806F5B88  80 9E 00 04 */	lwz r4, 4(r30)
/* 806F5B8C  38 BC 01 0C */	addi r5, r28, 0x10c
/* 806F5B90  4B AA F2 11 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806F5B94  83 BE 00 04 */	lwz r29, 4(r30)
/* 806F5B98  3B 60 00 00 */	li r27, 0
/* 806F5B9C  48 00 02 00 */	b lbl_806F5D9C
lbl_806F5BA0:
/* 806F5BA0  80 9D 00 60 */	lwz r4, 0x60(r29)
/* 806F5BA4  57 63 04 3F */	clrlwi. r3, r27, 0x10
/* 806F5BA8  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 806F5BAC  7F 44 00 2E */	lwzx r26, r4, r0
/* 806F5BB0  40 82 00 90 */	bne lbl_806F5C40
/* 806F5BB4  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 806F5BB8  38 80 00 02 */	li r4, 2
/* 806F5BBC  81 83 00 00 */	lwz r12, 0(r3)
/* 806F5BC0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F5BC4  7D 89 03 A6 */	mtctr r12
/* 806F5BC8  4E 80 04 21 */	bctrl 
/* 806F5BCC  38 00 00 00 */	li r0, 0
/* 806F5BD0  B0 03 00 00 */	sth r0, 0(r3)
/* 806F5BD4  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 806F5BD8  38 80 00 02 */	li r4, 2
/* 806F5BDC  81 83 00 00 */	lwz r12, 0(r3)
/* 806F5BE0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F5BE4  7D 89 03 A6 */	mtctr r12
/* 806F5BE8  4E 80 04 21 */	bctrl 
/* 806F5BEC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806F5BF0  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 806F5BF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F5BF8  FC 00 00 1E */	fctiwz f0, f0
/* 806F5BFC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806F5C00  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806F5C04  B0 03 00 02 */	sth r0, 2(r3)
/* 806F5C08  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 806F5C0C  38 80 00 02 */	li r4, 2
/* 806F5C10  81 83 00 00 */	lwz r12, 0(r3)
/* 806F5C14  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F5C18  7D 89 03 A6 */	mtctr r12
/* 806F5C1C  4E 80 04 21 */	bctrl 
/* 806F5C20  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806F5C24  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 806F5C28  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F5C2C  FC 00 00 1E */	fctiwz f0, f0
/* 806F5C30  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806F5C34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F5C38  B0 03 00 04 */	sth r0, 4(r3)
/* 806F5C3C  48 00 01 5C */	b lbl_806F5D98
lbl_806F5C40:
/* 806F5C40  28 03 00 01 */	cmplwi r3, 1
/* 806F5C44  40 82 01 54 */	bne lbl_806F5D98
/* 806F5C48  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 806F5C4C  38 80 00 01 */	li r4, 1
/* 806F5C50  81 83 00 00 */	lwz r12, 0(r3)
/* 806F5C54  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F5C58  7D 89 03 A6 */	mtctr r12
/* 806F5C5C  4E 80 04 21 */	bctrl 
/* 806F5C60  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 806F5C64  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806F5C68  C0 1C 06 84 */	lfs f0, 0x684(r28)
/* 806F5C6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F5C70  EC 02 00 28 */	fsubs f0, f2, f0
/* 806F5C74  FC 00 00 1E */	fctiwz f0, f0
/* 806F5C78  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806F5C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F5C80  B0 03 00 00 */	sth r0, 0(r3)
/* 806F5C84  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 806F5C88  38 80 00 01 */	li r4, 1
/* 806F5C8C  81 83 00 00 */	lwz r12, 0(r3)
/* 806F5C90  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F5C94  7D 89 03 A6 */	mtctr r12
/* 806F5C98  4E 80 04 21 */	bctrl 
/* 806F5C9C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 806F5CA0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 806F5CA4  C0 1C 06 84 */	lfs f0, 0x684(r28)
/* 806F5CA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F5CAC  EC 02 00 28 */	fsubs f0, f2, f0
/* 806F5CB0  FC 00 00 1E */	fctiwz f0, f0
/* 806F5CB4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806F5CB8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806F5CBC  B0 03 00 02 */	sth r0, 2(r3)
/* 806F5CC0  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 806F5CC4  38 80 00 01 */	li r4, 1
/* 806F5CC8  81 83 00 00 */	lwz r12, 0(r3)
/* 806F5CCC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F5CD0  7D 89 03 A6 */	mtctr r12
/* 806F5CD4  4E 80 04 21 */	bctrl 
/* 806F5CD8  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 806F5CDC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806F5CE0  C0 1C 06 84 */	lfs f0, 0x684(r28)
/* 806F5CE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F5CE8  EC 02 00 28 */	fsubs f0, f2, f0
/* 806F5CEC  FC 00 00 1E */	fctiwz f0, f0
/* 806F5CF0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806F5CF4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 806F5CF8  B0 03 00 04 */	sth r0, 4(r3)
/* 806F5CFC  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 806F5D00  38 80 00 02 */	li r4, 2
/* 806F5D04  81 83 00 00 */	lwz r12, 0(r3)
/* 806F5D08  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F5D0C  7D 89 03 A6 */	mtctr r12
/* 806F5D10  4E 80 04 21 */	bctrl 
/* 806F5D14  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806F5D18  C0 1C 06 84 */	lfs f0, 0x684(r28)
/* 806F5D1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F5D20  FC 00 00 1E */	fctiwz f0, f0
/* 806F5D24  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806F5D28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F5D2C  B0 03 00 00 */	sth r0, 0(r3)
/* 806F5D30  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 806F5D34  38 80 00 02 */	li r4, 2
/* 806F5D38  81 83 00 00 */	lwz r12, 0(r3)
/* 806F5D3C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F5D40  7D 89 03 A6 */	mtctr r12
/* 806F5D44  4E 80 04 21 */	bctrl 
/* 806F5D48  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806F5D4C  C0 1C 06 84 */	lfs f0, 0x684(r28)
/* 806F5D50  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F5D54  FC 00 00 1E */	fctiwz f0, f0
/* 806F5D58  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806F5D5C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806F5D60  B0 03 00 02 */	sth r0, 2(r3)
/* 806F5D64  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 806F5D68  38 80 00 02 */	li r4, 2
/* 806F5D6C  81 83 00 00 */	lwz r12, 0(r3)
/* 806F5D70  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F5D74  7D 89 03 A6 */	mtctr r12
/* 806F5D78  4E 80 04 21 */	bctrl 
/* 806F5D7C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806F5D80  C0 1C 06 84 */	lfs f0, 0x684(r28)
/* 806F5D84  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F5D88  FC 00 00 1E */	fctiwz f0, f0
/* 806F5D8C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806F5D90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806F5D94  B0 03 00 04 */	sth r0, 4(r3)
lbl_806F5D98:
/* 806F5D98  3B 7B 00 01 */	addi r27, r27, 1
lbl_806F5D9C:
/* 806F5D9C  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 806F5DA0  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 806F5DA4  7C 03 00 40 */	cmplw r3, r0
/* 806F5DA8  41 80 FD F8 */	blt lbl_806F5BA0
/* 806F5DAC  7F 83 E3 78 */	mr r3, r28
/* 806F5DB0  7F A4 EB 78 */	mr r4, r29
/* 806F5DB4  4B 92 76 79 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 806F5DB8  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 806F5DBC  4B 91 B4 05 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 806F5DC0  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 806F5DC4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806F5DC8  C0 7C 04 D4 */	lfs f3, 0x4d4(r28)
/* 806F5DCC  EC 20 18 2A */	fadds f1, f0, f3
/* 806F5DD0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806F5DD4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806F5DD8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806F5DDC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806F5DE0  80 7C 06 8C */	lwz r3, 0x68c(r28)
/* 806F5DE4  38 80 00 01 */	li r4, 1
/* 806F5DE8  7F C5 F3 78 */	mr r5, r30
/* 806F5DEC  38 C1 00 08 */	addi r6, r1, 8
/* 806F5DF0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806F5DF4  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 806F5DF8  C0 9C 07 9C */	lfs f4, 0x79c(r28)
/* 806F5DFC  38 FC 07 F4 */	addi r7, r28, 0x7f4
/* 806F5E00  39 1C 01 0C */	addi r8, r28, 0x10c
/* 806F5E04  39 20 00 00 */	li r9, 0
/* 806F5E08  C0 BF 00 00 */	lfs f5, 0(r31)
/* 806F5E0C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806F5E10  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806F5E14  4B 93 8A FD */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806F5E18  90 7C 06 8C */	stw r3, 0x68c(r28)
/* 806F5E1C  38 60 00 01 */	li r3, 1
/* 806F5E20  39 61 00 60 */	addi r11, r1, 0x60
/* 806F5E24  4B C6 C3 F9 */	bl _restgpr_26
/* 806F5E28  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806F5E2C  7C 08 03 A6 */	mtlr r0
/* 806F5E30  38 21 00 60 */	addi r1, r1, 0x60
/* 806F5E34  4E 80 00 20 */	blr 
