lbl_80C65F04:
/* 80C65F04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C65F08  7C 08 02 A6 */	mflr r0
/* 80C65F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C65F10  39 61 00 20 */	addi r11, r1, 0x20
/* 80C65F14  4B 6F C2 BC */	b _savegpr_26
/* 80C65F18  7C 7E 1B 78 */	mr r30, r3
/* 80C65F1C  3C 60 80 C6 */	lis r3, l_bmdidx@ha
/* 80C65F20  3B E3 68 60 */	addi r31, r3, l_bmdidx@l
/* 80C65F24  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C65F28  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C65F2C  38 80 00 10 */	li r4, 0x10
/* 80C65F30  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C65F34  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C65F38  4B 53 D8 8C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C65F3C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C65F40  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C65F44  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 80C65F48  80 84 00 04 */	lwz r4, 4(r4)
/* 80C65F4C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C65F50  4B 53 EE 50 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C65F54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C65F58  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C65F5C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C65F60  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C65F64  3B 83 4A C8 */	addi r28, r3, j3dSys@l
/* 80C65F68  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C65F6C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C65F70  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80C65F74  80 7E 06 08 */	lwz r3, 0x608(r30)
/* 80C65F78  4B 3A 7D 4C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C65F7C  80 7E 06 0C */	lwz r3, 0x60c(r30)
/* 80C65F80  38 80 00 00 */	li r4, 0
/* 80C65F84  88 BE 04 E2 */	lbz r5, 0x4e2(r30)
/* 80C65F88  7C A5 07 74 */	extsb r5, r5
/* 80C65F8C  4B 43 69 4C */	b entry__10dMdl_mng_cFP12J3DModelDataUsi
/* 80C65F90  7C 7B 1B 79 */	or. r27, r3, r3
/* 80C65F94  41 82 00 94 */	beq lbl_80C66028
/* 80C65F98  3B 40 00 00 */	li r26, 0
/* 80C65F9C  3B A0 00 00 */	li r29, 0
/* 80C65FA0  48 00 00 1C */	b lbl_80C65FBC
lbl_80C65FA4:
/* 80C65FA4  7F 63 DB 78 */	mr r3, r27
/* 80C65FA8  80 1E 06 34 */	lwz r0, 0x634(r30)
/* 80C65FAC  7C 80 EA 14 */	add r4, r0, r29
/* 80C65FB0  4B 43 66 B8 */	b entryObj__6dMdl_cFP10dMdl_obj_c
/* 80C65FB4  3B 5A 00 01 */	addi r26, r26, 1
/* 80C65FB8  3B BD 00 34 */	addi r29, r29, 0x34
lbl_80C65FBC:
/* 80C65FBC  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 80C65FC0  7C 1A 00 00 */	cmpw r26, r0
/* 80C65FC4  41 80 FF E0 */	blt lbl_80C65FA4
/* 80C65FC8  3B 40 00 00 */	li r26, 0
/* 80C65FCC  3B A0 00 00 */	li r29, 0
/* 80C65FD0  48 00 00 1C */	b lbl_80C65FEC
lbl_80C65FD4:
/* 80C65FD4  7F 63 DB 78 */	mr r3, r27
/* 80C65FD8  80 1E 06 38 */	lwz r0, 0x638(r30)
/* 80C65FDC  7C 80 EA 14 */	add r4, r0, r29
/* 80C65FE0  4B 43 66 88 */	b entryObj__6dMdl_cFP10dMdl_obj_c
/* 80C65FE4  3B 5A 00 01 */	addi r26, r26, 1
/* 80C65FE8  3B BD 00 34 */	addi r29, r29, 0x34
lbl_80C65FEC:
/* 80C65FEC  80 1E 06 2C */	lwz r0, 0x62c(r30)
/* 80C65FF0  7C 1A 00 00 */	cmpw r26, r0
/* 80C65FF4  41 80 FF E0 */	blt lbl_80C65FD4
/* 80C65FF8  3B 40 00 00 */	li r26, 0
/* 80C65FFC  3B A0 00 00 */	li r29, 0
/* 80C66000  48 00 00 1C */	b lbl_80C6601C
lbl_80C66004:
/* 80C66004  7F 63 DB 78 */	mr r3, r27
/* 80C66008  80 1E 06 3C */	lwz r0, 0x63c(r30)
/* 80C6600C  7C 80 EA 14 */	add r4, r0, r29
/* 80C66010  4B 43 66 58 */	b entryObj__6dMdl_cFP10dMdl_obj_c
/* 80C66014  3B 5A 00 01 */	addi r26, r26, 1
/* 80C66018  3B BD 00 34 */	addi r29, r29, 0x34
lbl_80C6601C:
/* 80C6601C  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80C66020  7C 1A 00 00 */	cmpw r26, r0
/* 80C66024  41 80 FF E0 */	blt lbl_80C66004
lbl_80C66028:
/* 80C66028  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6602C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C66030  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C66034  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C66038  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C6603C  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80C66040  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80C66044  C0 7E 24 7C */	lfs f3, 0x247c(r30)
/* 80C66048  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 80C6604C  41 82 00 AC */	beq lbl_80C660F8
/* 80C66050  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80C66054  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80C66058  C0 1E 23 C0 */	lfs f0, 0x23c0(r30)
/* 80C6605C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C66060  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C66064  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80C66068  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C6606C  EC 62 00 2A */	fadds f3, f2, f0
/* 80C66070  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80C66074  40 81 00 08 */	ble lbl_80C6607C
/* 80C66078  FC 60 10 90 */	fmr f3, f2
lbl_80C6607C:
/* 80C6607C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80C66080  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80C66084  40 80 00 08 */	bge lbl_80C6608C
/* 80C66088  FC 60 00 90 */	fmr f3, f0
lbl_80C6608C:
/* 80C6608C  C0 1E 23 BC */	lfs f0, 0x23bc(r30)
/* 80C66090  D0 1E 04 44 */	stfs f0, 0x444(r30)
/* 80C66094  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 80C66098  C0 1E 24 7C */	lfs f0, 0x247c(r30)
/* 80C6609C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C660A0  D0 1E 04 48 */	stfs f0, 0x448(r30)
/* 80C660A4  C0 1E 23 C4 */	lfs f0, 0x23c4(r30)
/* 80C660A8  D0 1E 04 4C */	stfs f0, 0x44c(r30)
/* 80C660AC  D0 7E 04 50 */	stfs f3, 0x450(r30)
/* 80C660B0  80 7E 24 24 */	lwz r3, 0x2424(r30)
/* 80C660B4  38 80 00 00 */	li r4, 0
/* 80C660B8  80 BE 06 08 */	lwz r5, 0x608(r30)
/* 80C660BC  38 DE 23 BC */	addi r6, r30, 0x23bc
/* 80C660C0  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C660C4  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80C660C8  C0 7E 23 C0 */	lfs f3, 0x23c0(r30)
/* 80C660CC  C0 9F 01 20 */	lfs f4, 0x120(r31)
/* 80C660D0  C0 1E 24 7C */	lfs f0, 0x247c(r30)
/* 80C660D4  EC 84 00 2A */	fadds f4, f4, f0
/* 80C660D8  38 FE 24 3C */	addi r7, r30, 0x243c
/* 80C660DC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80C660E0  39 20 00 00 */	li r9, 0
/* 80C660E4  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 80C660E8  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80C660EC  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80C660F0  4B 3C 88 20 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80C660F4  90 7E 24 24 */	stw r3, 0x2424(r30)
lbl_80C660F8:
/* 80C660F8  38 60 00 01 */	li r3, 1
/* 80C660FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C66100  4B 6F C1 1C */	b _restgpr_26
/* 80C66104  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C66108  7C 08 03 A6 */	mtlr r0
/* 80C6610C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C66110  4E 80 00 20 */	blr 
