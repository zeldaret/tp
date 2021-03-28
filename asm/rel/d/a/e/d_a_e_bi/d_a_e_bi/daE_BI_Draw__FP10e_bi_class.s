lbl_8068A6E0:
/* 8068A6E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8068A6E4  7C 08 02 A6 */	mflr r0
/* 8068A6E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8068A6EC  39 61 00 30 */	addi r11, r1, 0x30
/* 8068A6F0  4B CD 7A E8 */	b _savegpr_28
/* 8068A6F4  7C 7C 1B 78 */	mr r28, r3
/* 8068A6F8  3C 60 80 69 */	lis r3, lit_3903@ha
/* 8068A6FC  3B E3 D7 EC */	addi r31, r3, lit_3903@l
/* 8068A700  88 1C 0B AD */	lbz r0, 0xbad(r28)
/* 8068A704  7C 00 07 75 */	extsb. r0, r0
/* 8068A708  40 82 00 0C */	bne lbl_8068A714
/* 8068A70C  38 60 00 01 */	li r3, 1
/* 8068A710  48 00 01 E4 */	b lbl_8068A8F4
lbl_8068A714:
/* 8068A714  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8068A718  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8068A71C  38 80 00 00 */	li r4, 0
/* 8068A720  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8068A724  38 DC 01 0C */	addi r6, r28, 0x10c
/* 8068A728  4B B1 90 9C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8068A72C  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 8068A730  83 C3 00 04 */	lwz r30, 4(r3)
/* 8068A734  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8068A738  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8068A73C  80 9E 00 04 */	lwz r4, 4(r30)
/* 8068A740  38 BC 01 0C */	addi r5, r28, 0x10c
/* 8068A744  4B B1 A6 5C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8068A748  83 BE 00 04 */	lwz r29, 4(r30)
/* 8068A74C  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 8068A750  80 63 00 04 */	lwz r3, 4(r3)
/* 8068A754  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8068A758  38 80 00 01 */	li r4, 1
/* 8068A75C  81 83 00 00 */	lwz r12, 0(r3)
/* 8068A760  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8068A764  7D 89 03 A6 */	mtctr r12
/* 8068A768  4E 80 04 21 */	bctrl 
/* 8068A76C  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 8068A770  B0 03 00 00 */	sth r0, 0(r3)
/* 8068A774  A8 1C 06 94 */	lha r0, 0x694(r28)
/* 8068A778  2C 00 00 00 */	cmpwi r0, 0
/* 8068A77C  41 82 00 78 */	beq lbl_8068A7F4
/* 8068A780  80 7E 00 04 */	lwz r3, 4(r30)
/* 8068A784  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8068A788  80 63 00 00 */	lwz r3, 0(r3)
/* 8068A78C  80 63 00 08 */	lwz r3, 8(r3)
/* 8068A790  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8068A794  60 00 00 01 */	ori r0, r0, 1
/* 8068A798  90 03 00 0C */	stw r0, 0xc(r3)
/* 8068A79C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8068A7A0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8068A7A4  80 63 00 08 */	lwz r3, 8(r3)
/* 8068A7A8  80 63 00 08 */	lwz r3, 8(r3)
/* 8068A7AC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8068A7B0  60 00 00 01 */	ori r0, r0, 1
/* 8068A7B4  90 03 00 0C */	stw r0, 0xc(r3)
/* 8068A7B8  80 7E 00 04 */	lwz r3, 4(r30)
/* 8068A7BC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8068A7C0  80 63 00 04 */	lwz r3, 4(r3)
/* 8068A7C4  80 63 00 08 */	lwz r3, 8(r3)
/* 8068A7C8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8068A7CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8068A7D0  90 03 00 0C */	stw r0, 0xc(r3)
/* 8068A7D4  80 7E 00 04 */	lwz r3, 4(r30)
/* 8068A7D8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8068A7DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068A7E0  80 63 00 08 */	lwz r3, 8(r3)
/* 8068A7E4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8068A7E8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8068A7EC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8068A7F0  48 00 00 74 */	b lbl_8068A864
lbl_8068A7F4:
/* 8068A7F4  80 7E 00 04 */	lwz r3, 4(r30)
/* 8068A7F8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8068A7FC  80 63 00 00 */	lwz r3, 0(r3)
/* 8068A800  80 63 00 08 */	lwz r3, 8(r3)
/* 8068A804  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8068A808  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8068A80C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8068A810  80 7E 00 04 */	lwz r3, 4(r30)
/* 8068A814  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8068A818  80 63 00 08 */	lwz r3, 8(r3)
/* 8068A81C  80 63 00 08 */	lwz r3, 8(r3)
/* 8068A820  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8068A824  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8068A828  90 03 00 0C */	stw r0, 0xc(r3)
/* 8068A82C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8068A830  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8068A834  80 63 00 04 */	lwz r3, 4(r3)
/* 8068A838  80 63 00 08 */	lwz r3, 8(r3)
/* 8068A83C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8068A840  60 00 00 01 */	ori r0, r0, 1
/* 8068A844  90 03 00 0C */	stw r0, 0xc(r3)
/* 8068A848  80 7E 00 04 */	lwz r3, 4(r30)
/* 8068A84C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8068A850  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068A854  80 63 00 08 */	lwz r3, 8(r3)
/* 8068A858  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8068A85C  60 00 00 01 */	ori r0, r0, 1
/* 8068A860  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8068A864:
/* 8068A864  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 8068A868  4B 98 69 58 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8068A86C  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 8068A870  80 63 00 04 */	lwz r3, 4(r3)
/* 8068A874  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8068A878  38 80 00 01 */	li r4, 1
/* 8068A87C  81 83 00 00 */	lwz r12, 0(r3)
/* 8068A880  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8068A884  7D 89 03 A6 */	mtctr r12
/* 8068A888  4E 80 04 21 */	bctrl 
/* 8068A88C  38 00 00 00 */	li r0, 0
/* 8068A890  B0 03 00 00 */	sth r0, 0(r3)
/* 8068A894  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8068A898  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8068A89C  C0 7C 04 D4 */	lfs f3, 0x4d4(r28)
/* 8068A8A0  EC 20 18 2A */	fadds f1, f0, f3
/* 8068A8A4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8068A8A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8068A8AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8068A8B0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8068A8B4  80 7C 06 68 */	lwz r3, 0x668(r28)
/* 8068A8B8  38 80 00 01 */	li r4, 1
/* 8068A8BC  7F C5 F3 78 */	mr r5, r30
/* 8068A8C0  38 C1 00 08 */	addi r6, r1, 8
/* 8068A8C4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8068A8C8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8068A8CC  C0 9C 0A 64 */	lfs f4, 0xa64(r28)
/* 8068A8D0  38 FC 0A BC */	addi r7, r28, 0xabc
/* 8068A8D4  39 1C 01 0C */	addi r8, r28, 0x10c
/* 8068A8D8  39 20 00 00 */	li r9, 0
/* 8068A8DC  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8068A8E0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8068A8E4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8068A8E8  4B 9A 40 28 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8068A8EC  90 7C 06 68 */	stw r3, 0x668(r28)
/* 8068A8F0  38 60 00 01 */	li r3, 1
lbl_8068A8F4:
/* 8068A8F4  39 61 00 30 */	addi r11, r1, 0x30
/* 8068A8F8  4B CD 79 2C */	b _restgpr_28
/* 8068A8FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8068A900  7C 08 03 A6 */	mtlr r0
/* 8068A904  38 21 00 30 */	addi r1, r1, 0x30
/* 8068A908  4E 80 00 20 */	blr 
