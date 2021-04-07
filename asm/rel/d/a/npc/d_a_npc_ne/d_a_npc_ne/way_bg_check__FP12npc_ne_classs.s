lbl_80A892D4:
/* 80A892D4  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80A892D8  7C 08 02 A6 */	mflr r0
/* 80A892DC  90 01 01 84 */	stw r0, 0x184(r1)
/* 80A892E0  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 80A892E4  F3 E1 01 78 */	psq_st f31, 376(r1), 0, 0 /* qr0 */
/* 80A892E8  39 61 01 70 */	addi r11, r1, 0x170
/* 80A892EC  4B 8D 8E ED */	bl _savegpr_28
/* 80A892F0  7C 9C 23 78 */	mr r28, r4
/* 80A892F4  3C 80 80 A9 */	lis r4, lit_3990@ha /* 0x80A9241C@ha */
/* 80A892F8  3B E4 24 1C */	addi r31, r4, lit_3990@l /* 0x80A9241C@l */
/* 80A892FC  7C 7E 1B 78 */	mr r30, r3
/* 80A89300  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80A89304  4B 5E E9 65 */	bl __ct__11dBgS_LinChkFv
/* 80A89308  38 61 00 94 */	addi r3, r1, 0x94
/* 80A8930C  4B 5E E2 71 */	bl __ct__11dBgS_GndChkFv
/* 80A89310  3C 60 80 A9 */	lis r3, __vt__8cM3dGPla@ha /* 0x80A92A68@ha */
/* 80A89314  38 03 2A 68 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80A92A68@l */
/* 80A89318  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A8931C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A89320  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A89324  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A89328  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A8932C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A89330  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A89334  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A89338  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8933C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A89340  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A89344  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A89348  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8934C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A89350  7F 9C 07 34 */	extsh r28, r28
/* 80A89354  7C 00 E2 14 */	add r0, r0, r28
/* 80A89358  7C 04 07 34 */	extsh r4, r0
/* 80A8935C  4B 58 30 81 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A89360  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80A89364  7C 80 07 35 */	extsh. r0, r4
/* 80A89368  40 80 00 14 */	bge lbl_80A8937C
/* 80A8936C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A89370  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A89374  80 63 00 00 */	lwz r3, 0(r3)
/* 80A89378  4B 58 30 25 */	bl mDoMtx_XrotM__FPA4_fs
lbl_80A8937C:
/* 80A8937C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A89380  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A89384  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A89388  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80A8938C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A89390  38 61 00 08 */	addi r3, r1, 8
/* 80A89394  38 81 00 14 */	addi r4, r1, 0x14
/* 80A89398  4B 7E 7B 55 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A8939C  38 61 00 14 */	addi r3, r1, 0x14
/* 80A893A0  38 81 00 20 */	addi r4, r1, 0x20
/* 80A893A4  7C 65 1B 78 */	mr r5, r3
/* 80A893A8  4B 8B DC E9 */	bl PSVECAdd
/* 80A893AC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80A893B0  38 81 00 20 */	addi r4, r1, 0x20
/* 80A893B4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A893B8  7F C6 F3 78 */	mr r6, r30
/* 80A893BC  4B 5E E9 A9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A893C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A893C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A893C8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80A893CC  7F A3 EB 78 */	mr r3, r29
/* 80A893D0  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80A893D4  4B 5E AF E1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80A893D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A893DC  41 82 00 54 */	beq lbl_80A89430
/* 80A893E0  7F A3 EB 78 */	mr r3, r29
/* 80A893E4  38 81 00 FC */	addi r4, r1, 0xfc
/* 80A893E8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80A893EC  4B 5E B3 59 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80A893F0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80A893F4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80A893F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A893FC  4C 41 13 82 */	cror 2, 1, 2
/* 80A89400  40 82 00 30 */	bne lbl_80A89430
/* 80A89404  3C 60 80 A9 */	lis r3, __vt__8cM3dGPla@ha /* 0x80A92A68@ha */
/* 80A89408  38 03 2A 68 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80A92A68@l */
/* 80A8940C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A89410  38 61 00 94 */	addi r3, r1, 0x94
/* 80A89414  38 80 FF FF */	li r4, -1
/* 80A89418  4B 5E E1 D9 */	bl __dt__11dBgS_GndChkFv
/* 80A8941C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80A89420  38 80 FF FF */	li r4, -1
/* 80A89424  4B 5E E8 B9 */	bl __dt__11dBgS_LinChkFv
/* 80A89428  38 60 00 01 */	li r3, 1
/* 80A8942C  48 00 01 AC */	b lbl_80A895D8
lbl_80A89430:
/* 80A89430  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A89434  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A89438  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8943C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A89440  7C 00 E2 14 */	add r0, r0, r28
/* 80A89444  7C 04 07 34 */	extsh r4, r0
/* 80A89448  4B 58 2F 95 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A8944C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A89450  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A89454  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80A89458  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A8945C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A89460  38 61 00 08 */	addi r3, r1, 8
/* 80A89464  38 81 00 14 */	addi r4, r1, 0x14
/* 80A89468  4B 7E 7A 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A8946C  38 61 00 14 */	addi r3, r1, 0x14
/* 80A89470  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A89474  7C 65 1B 78 */	mr r5, r3
/* 80A89478  4B 8B DC 19 */	bl PSVECAdd
/* 80A8947C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A89480  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A89484  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A89488  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A8948C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A89490  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A89494  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A89498  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80A8949C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A894A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A894A4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80A894A8  38 81 00 20 */	addi r4, r1, 0x20
/* 80A894AC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A894B0  7F C6 F3 78 */	mr r6, r30
/* 80A894B4  4B 5E E8 B1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A894B8  7F A3 EB 78 */	mr r3, r29
/* 80A894BC  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80A894C0  4B 5E AE F5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80A894C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A894C8  40 82 00 30 */	bne lbl_80A894F8
/* 80A894CC  3C 60 80 A9 */	lis r3, __vt__8cM3dGPla@ha /* 0x80A92A68@ha */
/* 80A894D0  38 03 2A 68 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80A92A68@l */
/* 80A894D4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A894D8  38 61 00 94 */	addi r3, r1, 0x94
/* 80A894DC  38 80 FF FF */	li r4, -1
/* 80A894E0  4B 5E E1 11 */	bl __dt__11dBgS_GndChkFv
/* 80A894E4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80A894E8  38 80 FF FF */	li r4, -1
/* 80A894EC  4B 5E E7 F1 */	bl __dt__11dBgS_LinChkFv
/* 80A894F0  38 60 00 02 */	li r3, 2
/* 80A894F4  48 00 00 E4 */	b lbl_80A895D8
lbl_80A894F8:
/* 80A894F8  38 61 00 40 */	addi r3, r1, 0x40
/* 80A894FC  4B 5E E2 B5 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80A89500  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A89504  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A89508  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8950C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A89510  38 61 00 94 */	addi r3, r1, 0x94
/* 80A89514  38 81 00 14 */	addi r4, r1, 0x14
/* 80A89518  4B 7D E8 11 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A8951C  7F A3 EB 78 */	mr r3, r29
/* 80A89520  38 81 00 94 */	addi r4, r1, 0x94
/* 80A89524  4B 5E AF 7D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A89528  FF E0 08 90 */	fmr f31, f1
/* 80A8952C  38 61 00 40 */	addi r3, r1, 0x40
/* 80A89530  38 81 00 14 */	addi r4, r1, 0x14
/* 80A89534  4B 7D E7 F5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A89538  7F A3 EB 78 */	mr r3, r29
/* 80A8953C  38 81 00 40 */	addi r4, r1, 0x40
/* 80A89540  4B 5E AF 61 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A89544  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A89548  40 81 00 5C */	ble lbl_80A895A4
/* 80A8954C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A89550  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A89554  FC 00 02 10 */	fabs f0, f0
/* 80A89558  FC 20 00 18 */	frsp f1, f0
/* 80A8955C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A89560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A89564  4C 40 13 82 */	cror 2, 0, 2
/* 80A89568  40 82 00 3C */	bne lbl_80A895A4
/* 80A8956C  38 61 00 40 */	addi r3, r1, 0x40
/* 80A89570  38 80 FF FF */	li r4, -1
/* 80A89574  4B 5E E2 D5 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80A89578  3C 60 80 A9 */	lis r3, __vt__8cM3dGPla@ha /* 0x80A92A68@ha */
/* 80A8957C  38 03 2A 68 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80A92A68@l */
/* 80A89580  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A89584  38 61 00 94 */	addi r3, r1, 0x94
/* 80A89588  38 80 FF FF */	li r4, -1
/* 80A8958C  4B 5E E0 65 */	bl __dt__11dBgS_GndChkFv
/* 80A89590  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80A89594  38 80 FF FF */	li r4, -1
/* 80A89598  4B 5E E7 45 */	bl __dt__11dBgS_LinChkFv
/* 80A8959C  38 60 00 03 */	li r3, 3
/* 80A895A0  48 00 00 38 */	b lbl_80A895D8
lbl_80A895A4:
/* 80A895A4  38 61 00 40 */	addi r3, r1, 0x40
/* 80A895A8  38 80 FF FF */	li r4, -1
/* 80A895AC  4B 5E E2 9D */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80A895B0  3C 60 80 A9 */	lis r3, __vt__8cM3dGPla@ha /* 0x80A92A68@ha */
/* 80A895B4  38 03 2A 68 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80A92A68@l */
/* 80A895B8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A895BC  38 61 00 94 */	addi r3, r1, 0x94
/* 80A895C0  38 80 FF FF */	li r4, -1
/* 80A895C4  4B 5E E0 2D */	bl __dt__11dBgS_GndChkFv
/* 80A895C8  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80A895CC  38 80 FF FF */	li r4, -1
/* 80A895D0  4B 5E E7 0D */	bl __dt__11dBgS_LinChkFv
/* 80A895D4  38 60 00 00 */	li r3, 0
lbl_80A895D8:
/* 80A895D8  E3 E1 01 78 */	psq_l f31, 376(r1), 0, 0 /* qr0 */
/* 80A895DC  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 80A895E0  39 61 01 70 */	addi r11, r1, 0x170
/* 80A895E4  4B 8D 8C 41 */	bl _restgpr_28
/* 80A895E8  80 01 01 84 */	lwz r0, 0x184(r1)
/* 80A895EC  7C 08 03 A6 */	mtlr r0
/* 80A895F0  38 21 01 80 */	addi r1, r1, 0x180
/* 80A895F4  4E 80 00 20 */	blr 
