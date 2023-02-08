lbl_8074A6CC:
/* 8074A6CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8074A6D0  7C 08 02 A6 */	mflr r0
/* 8074A6D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8074A6D8  39 61 00 40 */	addi r11, r1, 0x40
/* 8074A6DC  4B C1 7B 01 */	bl _savegpr_29
/* 8074A6E0  7C 7E 1B 78 */	mr r30, r3
/* 8074A6E4  3C 60 80 75 */	lis r3, lit_3910@ha /* 0x8074BF3C@ha */
/* 8074A6E8  3B E3 BF 3C */	addi r31, r3, lit_3910@l /* 0x8074BF3C@l */
/* 8074A6EC  88 1E 06 D8 */	lbz r0, 0x6d8(r30)
/* 8074A6F0  28 00 00 00 */	cmplwi r0, 0
/* 8074A6F4  41 82 00 78 */	beq lbl_8074A76C
/* 8074A6F8  88 1E 06 FE */	lbz r0, 0x6fe(r30)
/* 8074A6FC  28 00 00 00 */	cmplwi r0, 0
/* 8074A700  41 82 00 6C */	beq lbl_8074A76C
/* 8074A704  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x8074C394@ha */
/* 8074A708  38 83 C3 94 */	addi r4, r3, l_HIO@l /* 0x8074C394@l */
/* 8074A70C  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 8074A710  FC 00 00 1E */	fctiwz f0, f0
/* 8074A714  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8074A718  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8074A71C  98 01 00 08 */	stb r0, 8(r1)
/* 8074A720  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 8074A724  FC 00 00 1E */	fctiwz f0, f0
/* 8074A728  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8074A72C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8074A730  98 01 00 09 */	stb r0, 9(r1)
/* 8074A734  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8074A738  FC 00 00 1E */	fctiwz f0, f0
/* 8074A73C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8074A740  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8074A744  98 01 00 0A */	stb r0, 0xa(r1)
/* 8074A748  38 7E 05 FC */	addi r3, r30, 0x5fc
/* 8074A74C  C0 24 00 48 */	lfs f1, 0x48(r4)
/* 8074A750  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8074A754  4B B2 5F ED */	bl cLib_chaseF__FPfff
/* 8074A758  38 7E 06 E8 */	addi r3, r30, 0x6e8
/* 8074A75C  38 81 00 08 */	addi r4, r1, 8
/* 8074A760  C0 3E 05 FC */	lfs f1, 0x5fc(r30)
/* 8074A764  38 A0 00 01 */	li r5, 1
/* 8074A768  4B A5 F5 F9 */	bl dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_8074A76C:
/* 8074A76C  80 7E 07 04 */	lwz r3, 0x704(r30)
/* 8074A770  83 A3 00 04 */	lwz r29, 4(r3)
/* 8074A774  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8074A778  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8074A77C  38 80 00 00 */	li r4, 0
/* 8074A780  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8074A784  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8074A788  4B A5 90 3D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8074A78C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8074A790  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8074A794  80 9D 00 04 */	lwz r4, 4(r29)
/* 8074A798  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8074A79C  4B A5 A6 05 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8074A7A0  80 9D 00 04 */	lwz r4, 4(r29)
/* 8074A7A4  80 7E 07 00 */	lwz r3, 0x700(r30)
/* 8074A7A8  38 84 00 58 */	addi r4, r4, 0x58
/* 8074A7AC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8074A7B0  FC 00 00 1E */	fctiwz f0, f0
/* 8074A7B4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8074A7B8  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8074A7BC  4B 8C 2E 2D */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 8074A7C0  80 7E 07 04 */	lwz r3, 0x704(r30)
/* 8074A7C4  4B 8C 69 FD */	bl entryDL__16mDoExt_McaMorfSOFv
/* 8074A7C8  C0 9E 04 D8 */	lfs f4, 0x4d8(r30)
/* 8074A7CC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8074A7D0  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 8074A7D4  EC 22 18 2A */	fadds f1, f2, f3
/* 8074A7D8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8074A7DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8074A7E0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8074A7E4  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8074A7E8  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 8074A7EC  38 80 00 01 */	li r4, 1
/* 8074A7F0  7F A5 EB 78 */	mr r5, r29
/* 8074A7F4  38 C1 00 0C */	addi r6, r1, 0xc
/* 8074A7F8  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 8074A7FC  C0 9E 08 9C */	lfs f4, 0x89c(r30)
/* 8074A800  38 FE 08 F4 */	addi r7, r30, 0x8f4
/* 8074A804  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8074A808  39 20 00 00 */	li r9, 0
/* 8074A80C  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8074A810  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 8074A814  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 8074A818  4B 8E 40 F9 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8074A81C  90 7E 07 1C */	stw r3, 0x71c(r30)
/* 8074A820  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8074A824  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8074A828  80 9E 07 0C */	lwz r4, 0x70c(r30)
/* 8074A82C  80 84 00 04 */	lwz r4, 4(r4)
/* 8074A830  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8074A834  4B A5 A5 6D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8074A838  80 7E 07 0C */	lwz r3, 0x70c(r30)
/* 8074A83C  4B 8C 34 89 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8074A840  80 7E 07 10 */	lwz r3, 0x710(r30)
/* 8074A844  80 83 00 04 */	lwz r4, 4(r3)
/* 8074A848  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8074A84C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8074A850  80 84 00 04 */	lwz r4, 4(r4)
/* 8074A854  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8074A858  4B A5 A5 49 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8074A85C  80 7E 07 10 */	lwz r3, 0x710(r30)
/* 8074A860  80 63 00 04 */	lwz r3, 4(r3)
/* 8074A864  80 63 00 04 */	lwz r3, 4(r3)
/* 8074A868  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8074A86C  83 E3 00 00 */	lwz r31, 0(r3)
/* 8074A870  88 1E 06 D8 */	lbz r0, 0x6d8(r30)
/* 8074A874  28 00 00 00 */	cmplwi r0, 0
/* 8074A878  41 82 01 20 */	beq lbl_8074A998
/* 8074A87C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A880  38 80 00 01 */	li r4, 1
/* 8074A884  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A888  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074A88C  7D 89 03 A6 */	mtctr r12
/* 8074A890  4E 80 04 21 */	bctrl 
/* 8074A894  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x8074C394@ha */
/* 8074A898  38 84 C3 94 */	addi r4, r4, l_HIO@l /* 0x8074C394@l */
/* 8074A89C  A8 04 00 14 */	lha r0, 0x14(r4)
/* 8074A8A0  B0 03 00 00 */	sth r0, 0(r3)
/* 8074A8A4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A8A8  38 80 00 01 */	li r4, 1
/* 8074A8AC  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A8B0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074A8B4  7D 89 03 A6 */	mtctr r12
/* 8074A8B8  4E 80 04 21 */	bctrl 
/* 8074A8BC  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x8074C394@ha */
/* 8074A8C0  38 84 C3 94 */	addi r4, r4, l_HIO@l /* 0x8074C394@l */
/* 8074A8C4  A8 04 00 16 */	lha r0, 0x16(r4)
/* 8074A8C8  B0 03 00 02 */	sth r0, 2(r3)
/* 8074A8CC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A8D0  38 80 00 01 */	li r4, 1
/* 8074A8D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A8D8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074A8DC  7D 89 03 A6 */	mtctr r12
/* 8074A8E0  4E 80 04 21 */	bctrl 
/* 8074A8E4  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x8074C394@ha */
/* 8074A8E8  38 84 C3 94 */	addi r4, r4, l_HIO@l /* 0x8074C394@l */
/* 8074A8EC  A8 04 00 18 */	lha r0, 0x18(r4)
/* 8074A8F0  B0 03 00 04 */	sth r0, 4(r3)
/* 8074A8F4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A8F8  38 80 00 01 */	li r4, 1
/* 8074A8FC  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A900  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074A904  7D 89 03 A6 */	mtctr r12
/* 8074A908  4E 80 04 21 */	bctrl 
/* 8074A90C  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x8074C394@ha */
/* 8074A910  38 84 C3 94 */	addi r4, r4, l_HIO@l /* 0x8074C394@l */
/* 8074A914  A8 04 00 20 */	lha r0, 0x20(r4)
/* 8074A918  B0 03 00 06 */	sth r0, 6(r3)
/* 8074A91C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A920  38 80 00 02 */	li r4, 2
/* 8074A924  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A928  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074A92C  7D 89 03 A6 */	mtctr r12
/* 8074A930  4E 80 04 21 */	bctrl 
/* 8074A934  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x8074C394@ha */
/* 8074A938  38 84 C3 94 */	addi r4, r4, l_HIO@l /* 0x8074C394@l */
/* 8074A93C  A8 04 00 1A */	lha r0, 0x1a(r4)
/* 8074A940  B0 03 00 00 */	sth r0, 0(r3)
/* 8074A944  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A948  38 80 00 02 */	li r4, 2
/* 8074A94C  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A950  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074A954  7D 89 03 A6 */	mtctr r12
/* 8074A958  4E 80 04 21 */	bctrl 
/* 8074A95C  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x8074C394@ha */
/* 8074A960  38 84 C3 94 */	addi r4, r4, l_HIO@l /* 0x8074C394@l */
/* 8074A964  A8 04 00 1C */	lha r0, 0x1c(r4)
/* 8074A968  B0 03 00 02 */	sth r0, 2(r3)
/* 8074A96C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A970  38 80 00 02 */	li r4, 2
/* 8074A974  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A978  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074A97C  7D 89 03 A6 */	mtctr r12
/* 8074A980  4E 80 04 21 */	bctrl 
/* 8074A984  3C 80 80 75 */	lis r4, l_HIO@ha /* 0x8074C394@ha */
/* 8074A988  38 84 C3 94 */	addi r4, r4, l_HIO@l /* 0x8074C394@l */
/* 8074A98C  A8 04 00 1E */	lha r0, 0x1e(r4)
/* 8074A990  B0 03 00 04 */	sth r0, 4(r3)
/* 8074A994  48 00 00 E4 */	b lbl_8074AA78
lbl_8074A998:
/* 8074A998  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A99C  38 80 00 01 */	li r4, 1
/* 8074A9A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A9A4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074A9A8  7D 89 03 A6 */	mtctr r12
/* 8074A9AC  4E 80 04 21 */	bctrl 
/* 8074A9B0  38 00 00 78 */	li r0, 0x78
/* 8074A9B4  B0 03 00 00 */	sth r0, 0(r3)
/* 8074A9B8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A9BC  38 80 00 01 */	li r4, 1
/* 8074A9C0  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A9C4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074A9C8  7D 89 03 A6 */	mtctr r12
/* 8074A9CC  4E 80 04 21 */	bctrl 
/* 8074A9D0  38 00 00 96 */	li r0, 0x96
/* 8074A9D4  B0 03 00 02 */	sth r0, 2(r3)
/* 8074A9D8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A9DC  38 80 00 01 */	li r4, 1
/* 8074A9E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A9E4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074A9E8  7D 89 03 A6 */	mtctr r12
/* 8074A9EC  4E 80 04 21 */	bctrl 
/* 8074A9F0  38 00 00 96 */	li r0, 0x96
/* 8074A9F4  B0 03 00 04 */	sth r0, 4(r3)
/* 8074A9F8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074A9FC  38 80 00 01 */	li r4, 1
/* 8074AA00  81 83 00 00 */	lwz r12, 0(r3)
/* 8074AA04  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074AA08  7D 89 03 A6 */	mtctr r12
/* 8074AA0C  4E 80 04 21 */	bctrl 
/* 8074AA10  38 00 00 FF */	li r0, 0xff
/* 8074AA14  B0 03 00 06 */	sth r0, 6(r3)
/* 8074AA18  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074AA1C  38 80 00 02 */	li r4, 2
/* 8074AA20  81 83 00 00 */	lwz r12, 0(r3)
/* 8074AA24  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074AA28  7D 89 03 A6 */	mtctr r12
/* 8074AA2C  4E 80 04 21 */	bctrl 
/* 8074AA30  38 00 00 00 */	li r0, 0
/* 8074AA34  B0 03 00 00 */	sth r0, 0(r3)
/* 8074AA38  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074AA3C  38 80 00 02 */	li r4, 2
/* 8074AA40  81 83 00 00 */	lwz r12, 0(r3)
/* 8074AA44  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074AA48  7D 89 03 A6 */	mtctr r12
/* 8074AA4C  4E 80 04 21 */	bctrl 
/* 8074AA50  38 00 00 3C */	li r0, 0x3c
/* 8074AA54  B0 03 00 02 */	sth r0, 2(r3)
/* 8074AA58  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8074AA5C  38 80 00 02 */	li r4, 2
/* 8074AA60  81 83 00 00 */	lwz r12, 0(r3)
/* 8074AA64  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074AA68  7D 89 03 A6 */	mtctr r12
/* 8074AA6C  4E 80 04 21 */	bctrl 
/* 8074AA70  38 00 00 65 */	li r0, 0x65
/* 8074AA74  B0 03 00 04 */	sth r0, 4(r3)
lbl_8074AA78:
/* 8074AA78  80 7E 07 10 */	lwz r3, 0x710(r30)
/* 8074AA7C  4B 8C 5C 05 */	bl entryDL__14mDoExt_McaMorfFv
/* 8074AA80  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 8074AA84  80 83 00 04 */	lwz r4, 4(r3)
/* 8074AA88  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8074AA8C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8074AA90  80 84 00 04 */	lwz r4, 4(r4)
/* 8074AA94  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8074AA98  4B A5 A3 09 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8074AA9C  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 8074AAA0  4B 8C 5B E1 */	bl entryDL__14mDoExt_McaMorfFv
/* 8074AAA4  38 60 00 01 */	li r3, 1
/* 8074AAA8  39 61 00 40 */	addi r11, r1, 0x40
/* 8074AAAC  4B C1 77 7D */	bl _restgpr_29
/* 8074AAB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8074AAB4  7C 08 03 A6 */	mtlr r0
/* 8074AAB8  38 21 00 40 */	addi r1, r1, 0x40
/* 8074AABC  4E 80 00 20 */	blr 
