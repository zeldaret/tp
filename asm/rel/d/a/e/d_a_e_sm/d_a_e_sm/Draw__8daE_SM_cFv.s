lbl_8079230C:
/* 8079230C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80792310  7C 08 02 A6 */	mflr r0
/* 80792314  90 01 00 64 */	stw r0, 0x64(r1)
/* 80792318  39 61 00 60 */	addi r11, r1, 0x60
/* 8079231C  4B BC FE B9 */	bl _savegpr_27
/* 80792320  7C 7D 1B 78 */	mr r29, r3
/* 80792324  3C 60 80 7A */	lis r3, lit_3920@ha /* 0x807985E0@ha */
/* 80792328  3B E3 85 E0 */	addi r31, r3, lit_3920@l /* 0x807985E0@l */
/* 8079232C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80792330  83 C3 00 04 */	lwz r30, 4(r3)
/* 80792334  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80792338  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8079233C  38 80 00 00 */	li r4, 0
/* 80792340  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80792344  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80792348  4B A1 14 7D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8079234C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80792350  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80792354  80 9E 00 04 */	lwz r4, 4(r30)
/* 80792358  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8079235C  4B A1 2A 45 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80792360  88 1D 06 98 */	lbz r0, 0x698(r29)
/* 80792364  28 00 00 00 */	cmplwi r0, 0
/* 80792368  41 82 01 50 */	beq lbl_807924B8
/* 8079236C  83 9E 00 04 */	lwz r28, 4(r30)
/* 80792370  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 80792374  83 63 00 04 */	lwz r27, 4(r3)
/* 80792378  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8079237C  38 80 00 00 */	li r4, 0
/* 80792380  81 83 00 00 */	lwz r12, 0(r3)
/* 80792384  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80792388  7D 89 03 A6 */	mtctr r12
/* 8079238C  4E 80 04 21 */	bctrl 
/* 80792390  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80792394  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 80792398  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079239C  FC 00 00 1E */	fctiwz f0, f0
/* 807923A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807923A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807923A8  B0 03 00 00 */	sth r0, 0(r3)
/* 807923AC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807923B0  38 80 00 00 */	li r4, 0
/* 807923B4  81 83 00 00 */	lwz r12, 0(r3)
/* 807923B8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807923BC  7D 89 03 A6 */	mtctr r12
/* 807923C0  4E 80 04 21 */	bctrl 
/* 807923C4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 807923C8  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807923CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 807923D0  FC 00 00 1E */	fctiwz f0, f0
/* 807923D4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807923D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807923DC  B0 03 00 02 */	sth r0, 2(r3)
/* 807923E0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807923E4  38 80 00 00 */	li r4, 0
/* 807923E8  81 83 00 00 */	lwz r12, 0(r3)
/* 807923EC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807923F0  7D 89 03 A6 */	mtctr r12
/* 807923F4  4E 80 04 21 */	bctrl 
/* 807923F8  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 807923FC  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 80792400  EC 01 00 32 */	fmuls f0, f1, f0
/* 80792404  FC 00 00 1E */	fctiwz f0, f0
/* 80792408  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8079240C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80792410  B0 03 00 04 */	sth r0, 4(r3)
/* 80792414  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 80792418  83 63 00 08 */	lwz r27, 8(r3)
/* 8079241C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 80792420  38 80 00 00 */	li r4, 0
/* 80792424  81 83 00 00 */	lwz r12, 0(r3)
/* 80792428  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8079242C  7D 89 03 A6 */	mtctr r12
/* 80792430  4E 80 04 21 */	bctrl 
/* 80792434  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80792438  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 8079243C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80792440  FC 00 00 1E */	fctiwz f0, f0
/* 80792444  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80792448  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8079244C  B0 03 00 00 */	sth r0, 0(r3)
/* 80792450  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 80792454  38 80 00 00 */	li r4, 0
/* 80792458  81 83 00 00 */	lwz r12, 0(r3)
/* 8079245C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80792460  7D 89 03 A6 */	mtctr r12
/* 80792464  4E 80 04 21 */	bctrl 
/* 80792468  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8079246C  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 80792470  EC 01 00 32 */	fmuls f0, f1, f0
/* 80792474  FC 00 00 1E */	fctiwz f0, f0
/* 80792478  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8079247C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80792480  B0 03 00 02 */	sth r0, 2(r3)
/* 80792484  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 80792488  38 80 00 00 */	li r4, 0
/* 8079248C  81 83 00 00 */	lwz r12, 0(r3)
/* 80792490  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80792494  7D 89 03 A6 */	mtctr r12
/* 80792498  4E 80 04 21 */	bctrl 
/* 8079249C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 807924A0  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807924A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 807924A8  FC 00 00 1E */	fctiwz f0, f0
/* 807924AC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 807924B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807924B4  B0 03 00 04 */	sth r0, 4(r3)
lbl_807924B8:
/* 807924B8  88 1D 06 83 */	lbz r0, 0x683(r29)
/* 807924BC  28 00 00 00 */	cmplwi r0, 0
/* 807924C0  40 82 00 0C */	bne lbl_807924CC
/* 807924C4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807924C8  4B 87 EC F9 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_807924CC:
/* 807924CC  88 1D 09 C4 */	lbz r0, 0x9c4(r29)
/* 807924D0  7C 00 07 75 */	extsb. r0, r0
/* 807924D4  41 82 00 5C */	beq lbl_80792530
/* 807924D8  C0 9D 04 D8 */	lfs f4, 0x4d8(r29)
/* 807924DC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807924E0  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 807924E4  EC 22 18 2A */	fadds f1, f2, f3
/* 807924E8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807924EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 807924F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807924F4  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 807924F8  80 7D 0A 14 */	lwz r3, 0xa14(r29)
/* 807924FC  38 80 00 01 */	li r4, 1
/* 80792500  7F C5 F3 78 */	mr r5, r30
/* 80792504  38 C1 00 08 */	addi r6, r1, 8
/* 80792508  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8079250C  C0 9D 0A F8 */	lfs f4, 0xaf8(r29)
/* 80792510  38 FD 0B 50 */	addi r7, r29, 0xb50
/* 80792514  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80792518  39 20 00 00 */	li r9, 0
/* 8079251C  C0 BF 00 08 */	lfs f5, 8(r31)
/* 80792520  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80792524  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80792528  4B 89 C3 E9 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8079252C  90 7D 0A 14 */	stw r3, 0xa14(r29)
lbl_80792530:
/* 80792530  88 1D 06 84 */	lbz r0, 0x684(r29)
/* 80792534  28 00 00 00 */	cmplwi r0, 0
/* 80792538  40 82 00 B0 */	bne lbl_807925E8
/* 8079253C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80792540  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80792544  80 9D 05 B8 */	lwz r4, 0x5b8(r29)
/* 80792548  80 84 00 04 */	lwz r4, 4(r4)
/* 8079254C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80792550  4B A1 28 51 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80792554  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80792558  80 83 00 04 */	lwz r4, 4(r3)
/* 8079255C  7F A3 EB 78 */	mr r3, r29
/* 80792560  4B 88 AE CD */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80792564  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80792568  80 63 00 04 */	lwz r3, 4(r3)
/* 8079256C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80792570  80 63 00 00 */	lwz r3, 0(r3)
/* 80792574  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80792578  38 80 00 01 */	li r4, 1
/* 8079257C  81 83 00 00 */	lwz r12, 0(r3)
/* 80792580  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80792584  7D 89 03 A6 */	mtctr r12
/* 80792588  4E 80 04 21 */	bctrl 
/* 8079258C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80792590  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 80792594  EC 01 00 32 */	fmuls f0, f1, f0
/* 80792598  FC 00 00 1E */	fctiwz f0, f0
/* 8079259C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 807925A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807925A4  98 03 00 03 */	stb r0, 3(r3)
/* 807925A8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807925AC  4B 87 B7 19 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 807925B0  38 7D 09 90 */	addi r3, r29, 0x990
/* 807925B4  C0 3D 0D 10 */	lfs f1, 0xd10(r29)
/* 807925B8  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 807925BC  C0 5D 06 F0 */	lfs f2, 0x6f0(r29)
/* 807925C0  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 807925C4  EC 02 00 24 */	fdivs f0, f2, f0
/* 807925C8  EC 43 00 32 */	fmuls f2, f3, f0
/* 807925CC  38 9D 0D 68 */	addi r4, r29, 0xd68
/* 807925D0  38 A0 00 00 */	li r5, 0
/* 807925D4  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 807925D8  FC 60 00 50 */	fneg f3, f0
/* 807925DC  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 807925E0  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 807925E4  4B 89 AA D1 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_807925E8:
/* 807925E8  38 60 00 01 */	li r3, 1
/* 807925EC  39 61 00 60 */	addi r11, r1, 0x60
/* 807925F0  4B BC FC 31 */	bl _restgpr_27
/* 807925F4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807925F8  7C 08 03 A6 */	mtlr r0
/* 807925FC  38 21 00 60 */	addi r1, r1, 0x60
/* 80792600  4E 80 00 20 */	blr 
