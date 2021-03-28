lbl_806B660C:
/* 806B660C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B6610  7C 08 02 A6 */	mflr r0
/* 806B6614  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B6618  39 61 00 30 */	addi r11, r1, 0x30
/* 806B661C  4B CA BB BC */	b _savegpr_28
/* 806B6620  7C 7D 1B 78 */	mr r29, r3
/* 806B6624  3C 60 80 6C */	lis r3, lit_3662@ha
/* 806B6628  3B E3 8F 8C */	addi r31, r3, lit_3662@l
/* 806B662C  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 806B6630  28 00 00 0A */	cmplwi r0, 0xa
/* 806B6634  41 82 00 0C */	beq lbl_806B6640
/* 806B6638  28 00 00 0B */	cmplwi r0, 0xb
/* 806B663C  40 82 00 0C */	bne lbl_806B6648
lbl_806B6640:
/* 806B6640  38 60 00 01 */	li r3, 1
/* 806B6644  48 00 01 64 */	b lbl_806B67A8
lbl_806B6648:
/* 806B6648  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806B664C  83 C3 00 04 */	lwz r30, 4(r3)
/* 806B6650  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806B6654  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806B6658  38 80 00 00 */	li r4, 0
/* 806B665C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806B6660  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806B6664  4B AE D1 60 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806B6668  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806B666C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806B6670  80 9E 00 04 */	lwz r4, 4(r30)
/* 806B6674  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806B6678  4B AE E7 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806B667C  80 7E 00 04 */	lwz r3, 4(r30)
/* 806B6680  80 63 00 60 */	lwz r3, 0x60(r3)
/* 806B6684  83 83 00 00 */	lwz r28, 0(r3)
/* 806B6688  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806B668C  38 80 00 01 */	li r4, 1
/* 806B6690  81 83 00 00 */	lwz r12, 0(r3)
/* 806B6694  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806B6698  7D 89 03 A6 */	mtctr r12
/* 806B669C  4E 80 04 21 */	bctrl 
/* 806B66A0  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806B66A4  38 84 91 FC */	addi r4, r4, l_HIO@l
/* 806B66A8  A8 04 00 18 */	lha r0, 0x18(r4)
/* 806B66AC  B0 03 00 00 */	sth r0, 0(r3)
/* 806B66B0  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806B66B4  38 80 00 01 */	li r4, 1
/* 806B66B8  81 83 00 00 */	lwz r12, 0(r3)
/* 806B66BC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806B66C0  7D 89 03 A6 */	mtctr r12
/* 806B66C4  4E 80 04 21 */	bctrl 
/* 806B66C8  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806B66CC  38 84 91 FC */	addi r4, r4, l_HIO@l
/* 806B66D0  A8 04 00 1A */	lha r0, 0x1a(r4)
/* 806B66D4  B0 03 00 02 */	sth r0, 2(r3)
/* 806B66D8  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806B66DC  38 80 00 01 */	li r4, 1
/* 806B66E0  81 83 00 00 */	lwz r12, 0(r3)
/* 806B66E4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806B66E8  7D 89 03 A6 */	mtctr r12
/* 806B66EC  4E 80 04 21 */	bctrl 
/* 806B66F0  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806B66F4  38 84 91 FC */	addi r4, r4, l_HIO@l
/* 806B66F8  A8 04 00 1C */	lha r0, 0x1c(r4)
/* 806B66FC  B0 03 00 04 */	sth r0, 4(r3)
/* 806B6700  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806B6704  38 80 00 01 */	li r4, 1
/* 806B6708  81 83 00 00 */	lwz r12, 0(r3)
/* 806B670C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806B6710  7D 89 03 A6 */	mtctr r12
/* 806B6714  4E 80 04 21 */	bctrl 
/* 806B6718  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806B671C  38 84 91 FC */	addi r4, r4, l_HIO@l
/* 806B6720  A8 04 00 1E */	lha r0, 0x1e(r4)
/* 806B6724  B0 03 00 06 */	sth r0, 6(r3)
/* 806B6728  80 9E 00 04 */	lwz r4, 4(r30)
/* 806B672C  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806B6730  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806B6734  38 84 00 58 */	addi r4, r4, 0x58
/* 806B6738  4B 95 70 70 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 806B673C  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 806B6740  38 80 00 00 */	li r4, 0
/* 806B6744  4B 95 80 7C */	b entryDL__21mDoExt_invisibleModelFP4cXyz
/* 806B6748  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806B674C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806B6750  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 806B6754  EC 20 18 2A */	fadds f1, f0, f3
/* 806B6758  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806B675C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B6760  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806B6764  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806B6768  80 7D 06 88 */	lwz r3, 0x688(r29)
/* 806B676C  38 80 00 01 */	li r4, 1
/* 806B6770  7F C5 F3 78 */	mr r5, r30
/* 806B6774  38 C1 00 08 */	addi r6, r1, 8
/* 806B6778  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 806B677C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 806B6780  C0 9D 07 7C */	lfs f4, 0x77c(r29)
/* 806B6784  38 FD 07 D4 */	addi r7, r29, 0x7d4
/* 806B6788  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806B678C  39 20 00 00 */	li r9, 0
/* 806B6790  C0 BF 00 14 */	lfs f5, 0x14(r31)
/* 806B6794  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806B6798  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806B679C  4B 97 81 74 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806B67A0  90 7D 06 88 */	stw r3, 0x688(r29)
/* 806B67A4  38 60 00 01 */	li r3, 1
lbl_806B67A8:
/* 806B67A8  39 61 00 30 */	addi r11, r1, 0x30
/* 806B67AC  4B CA BA 78 */	b _restgpr_28
/* 806B67B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B67B4  7C 08 03 A6 */	mtlr r0
/* 806B67B8  38 21 00 30 */	addi r1, r1, 0x30
/* 806B67BC  4E 80 00 20 */	blr 
