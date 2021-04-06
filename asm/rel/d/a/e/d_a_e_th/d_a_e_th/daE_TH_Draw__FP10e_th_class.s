lbl_807B0BD0:
/* 807B0BD0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807B0BD4  7C 08 02 A6 */	mflr r0
/* 807B0BD8  90 01 00 54 */	stw r0, 0x54(r1)
/* 807B0BDC  39 61 00 50 */	addi r11, r1, 0x50
/* 807B0BE0  4B BB 15 F1 */	bl _savegpr_26
/* 807B0BE4  7C 7D 1B 78 */	mr r29, r3
/* 807B0BE8  3C 60 80 7B */	lis r3, lit_3906@ha /* 0x807B449C@ha */
/* 807B0BEC  3B E3 44 9C */	addi r31, r3, lit_3906@l /* 0x807B449C@l */
/* 807B0BF0  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B0BF4  83 C3 00 04 */	lwz r30, 4(r3)
/* 807B0BF8  88 1D 0D 8E */	lbz r0, 0xd8e(r29)
/* 807B0BFC  7C 00 07 75 */	extsb. r0, r0
/* 807B0C00  41 82 00 0C */	beq lbl_807B0C0C
/* 807B0C04  38 60 00 01 */	li r3, 1
/* 807B0C08  48 00 01 5C */	b lbl_807B0D64
lbl_807B0C0C:
/* 807B0C0C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807B0C10  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807B0C14  38 80 00 00 */	li r4, 0
/* 807B0C18  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807B0C1C  38 DD 01 0C */	addi r6, r29, 0x10c
/* 807B0C20  4B 9F 2B A5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807B0C24  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807B0C28  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807B0C2C  80 9E 00 04 */	lwz r4, 4(r30)
/* 807B0C30  38 BD 01 0C */	addi r5, r29, 0x10c
/* 807B0C34  4B 9F 41 6D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807B0C38  88 1D 0D 8F */	lbz r0, 0xd8f(r29)
/* 807B0C3C  7C 00 07 75 */	extsb. r0, r0
/* 807B0C40  41 82 00 B4 */	beq lbl_807B0CF4
/* 807B0C44  83 9E 00 04 */	lwz r28, 4(r30)
/* 807B0C48  3B 40 00 00 */	li r26, 0
/* 807B0C4C  48 00 00 98 */	b lbl_807B0CE4
lbl_807B0C50:
/* 807B0C50  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 807B0C54  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 807B0C58  7F 63 00 2E */	lwzx r27, r3, r0
/* 807B0C5C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807B0C60  38 80 00 00 */	li r4, 0
/* 807B0C64  81 83 00 00 */	lwz r12, 0(r3)
/* 807B0C68  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807B0C6C  7D 89 03 A6 */	mtctr r12
/* 807B0C70  4E 80 04 21 */	bctrl 
/* 807B0C74  C0 1D 0D 90 */	lfs f0, 0xd90(r29)
/* 807B0C78  FC 00 00 1E */	fctiwz f0, f0
/* 807B0C7C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807B0C80  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807B0C84  B0 03 00 00 */	sth r0, 0(r3)
/* 807B0C88  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807B0C8C  38 80 00 00 */	li r4, 0
/* 807B0C90  81 83 00 00 */	lwz r12, 0(r3)
/* 807B0C94  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807B0C98  7D 89 03 A6 */	mtctr r12
/* 807B0C9C  4E 80 04 21 */	bctrl 
/* 807B0CA0  C0 1D 0D 90 */	lfs f0, 0xd90(r29)
/* 807B0CA4  FC 00 00 1E */	fctiwz f0, f0
/* 807B0CA8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807B0CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B0CB0  B0 03 00 02 */	sth r0, 2(r3)
/* 807B0CB4  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807B0CB8  38 80 00 00 */	li r4, 0
/* 807B0CBC  81 83 00 00 */	lwz r12, 0(r3)
/* 807B0CC0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807B0CC4  7D 89 03 A6 */	mtctr r12
/* 807B0CC8  4E 80 04 21 */	bctrl 
/* 807B0CCC  C0 1D 0D 90 */	lfs f0, 0xd90(r29)
/* 807B0CD0  FC 00 00 1E */	fctiwz f0, f0
/* 807B0CD4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807B0CD8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807B0CDC  B0 03 00 04 */	sth r0, 4(r3)
/* 807B0CE0  3B 5A 00 01 */	addi r26, r26, 1
lbl_807B0CE4:
/* 807B0CE4  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 807B0CE8  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 807B0CEC  7C 03 00 40 */	cmplw r3, r0
/* 807B0CF0  41 80 FF 60 */	blt lbl_807B0C50
lbl_807B0CF4:
/* 807B0CF4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B0CF8  4B 86 04 C9 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 807B0CFC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807B0D00  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807B0D04  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 807B0D08  EC 20 18 2A */	fadds f1, f0, f3
/* 807B0D0C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807B0D10  D0 01 00 08 */	stfs f0, 8(r1)
/* 807B0D14  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807B0D18  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807B0D1C  80 7D 06 98 */	lwz r3, 0x698(r29)
/* 807B0D20  38 80 00 01 */	li r4, 1
/* 807B0D24  7F C5 F3 78 */	mr r5, r30
/* 807B0D28  38 C1 00 08 */	addi r6, r1, 8
/* 807B0D2C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807B0D30  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807B0D34  C0 9D 07 CC */	lfs f4, 0x7cc(r29)
/* 807B0D38  38 FD 08 24 */	addi r7, r29, 0x824
/* 807B0D3C  39 1D 01 0C */	addi r8, r29, 0x10c
/* 807B0D40  39 20 00 00 */	li r9, 0
/* 807B0D44  C0 BF 00 08 */	lfs f5, 8(r31)
/* 807B0D48  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 807B0D4C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 807B0D50  4B 87 DB C1 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807B0D54  90 7D 06 98 */	stw r3, 0x698(r29)
/* 807B0D58  7F A3 EB 78 */	mr r3, r29
/* 807B0D5C  4B FF FC 8D */	bl ke_disp__FP10e_th_class
/* 807B0D60  38 60 00 01 */	li r3, 1
lbl_807B0D64:
/* 807B0D64  39 61 00 50 */	addi r11, r1, 0x50
/* 807B0D68  4B BB 14 B5 */	bl _restgpr_26
/* 807B0D6C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807B0D70  7C 08 03 A6 */	mtlr r0
/* 807B0D74  38 21 00 50 */	addi r1, r1, 0x50
/* 807B0D78  4E 80 00 20 */	blr 
