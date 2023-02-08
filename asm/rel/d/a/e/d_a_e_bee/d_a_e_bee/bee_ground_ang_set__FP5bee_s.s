lbl_80682A70:
/* 80682A70  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80682A74  7C 08 02 A6 */	mflr r0
/* 80682A78  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80682A7C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80682A80  4B CD F7 55 */	bl _savegpr_27
/* 80682A84  7C 7F 1B 78 */	mr r31, r3
/* 80682A88  3C 60 80 68 */	lis r3, lit_3770@ha /* 0x80685434@ha */
/* 80682A8C  3B A3 54 34 */	addi r29, r3, lit_3770@l /* 0x80685434@l */
/* 80682A90  38 61 00 50 */	addi r3, r1, 0x50
/* 80682A94  4B 9F 51 D5 */	bl __ct__11dBgS_LinChkFv
/* 80682A98  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80682A9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80682AA0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80682AA4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80682AA8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80682AAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80682AB0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80682AB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80682AB8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80682ABC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80682AC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80682AC4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80682AC8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80682ACC  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80682AD0  4B CC 3E 19 */	bl PSMTXTrans
/* 80682AD4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80682AD8  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80682ADC  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 80682AE0  4B 98 A2 BD */	bl transM__14mDoMtx_stack_cFfff
/* 80682AE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80682AE8  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80682AEC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80682AF0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80682AF4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80682AF8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80682AFC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80682B00  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80682B04  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80682B08  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 80682B0C  FC 60 10 90 */	fmr f3, f2
/* 80682B10  4B 98 A2 8D */	bl transM__14mDoMtx_stack_cFfff
/* 80682B14  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80682B18  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80682B1C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80682B20  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80682B24  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80682B28  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80682B2C  3B 60 00 00 */	li r27, 0
/* 80682B30  38 61 00 50 */	addi r3, r1, 0x50
/* 80682B34  38 81 00 20 */	addi r4, r1, 0x20
/* 80682B38  38 A1 00 38 */	addi r5, r1, 0x38
/* 80682B3C  38 C0 00 00 */	li r6, 0
/* 80682B40  4B 9F 52 25 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80682B44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80682B48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80682B4C  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80682B50  7F 83 E3 78 */	mr r3, r28
/* 80682B54  38 81 00 50 */	addi r4, r1, 0x50
/* 80682B58  4B 9F 18 5D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80682B5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80682B60  41 82 00 60 */	beq lbl_80682BC0
/* 80682B64  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80682B68  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80682B6C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80682B70  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80682B74  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80682B78  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80682B7C  38 61 00 50 */	addi r3, r1, 0x50
/* 80682B80  38 81 00 20 */	addi r4, r1, 0x20
/* 80682B84  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80682B88  38 C0 00 00 */	li r6, 0
/* 80682B8C  4B 9F 51 D9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80682B90  7F 83 E3 78 */	mr r3, r28
/* 80682B94  38 81 00 50 */	addi r4, r1, 0x50
/* 80682B98  4B 9F 18 1D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80682B9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80682BA0  41 82 00 20 */	beq lbl_80682BC0
/* 80682BA4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80682BA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80682BAC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80682BB0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80682BB4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80682BB8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80682BBC  3B 60 00 01 */	li r27, 1
lbl_80682BC0:
/* 80682BC0  7F 60 07 75 */	extsb. r0, r27
/* 80682BC4  41 82 00 58 */	beq lbl_80682C1C
/* 80682BC8  38 61 00 14 */	addi r3, r1, 0x14
/* 80682BCC  38 81 00 38 */	addi r4, r1, 0x38
/* 80682BD0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80682BD4  4B BE 3F 61 */	bl __mi__4cXyzCFRC3Vec
/* 80682BD8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80682BDC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80682BE0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80682BE4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80682BE8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80682BEC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80682BF0  EC 21 00 72 */	fmuls f1, f1, f1
/* 80682BF4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80682BF8  EC 41 00 2A */	fadds f2, f1, f0
/* 80682BFC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80682C00  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80682C04  40 81 00 0C */	ble lbl_80682C10
/* 80682C08  FC 00 10 34 */	frsqrte f0, f2
/* 80682C0C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80682C10:
/* 80682C10  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80682C14  4B BE 4A 61 */	bl cM_atan2s__Fff
/* 80682C18  B0 7F 00 38 */	sth r3, 0x38(r31)
lbl_80682C1C:
/* 80682C1C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80682C20  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 80682C24  FC 60 08 90 */	fmr f3, f1
/* 80682C28  4B 98 A1 75 */	bl transM__14mDoMtx_stack_cFfff
/* 80682C2C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80682C30  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80682C34  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80682C38  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80682C3C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80682C40  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80682C44  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80682C48  FC 40 08 90 */	fmr f2, f1
/* 80682C4C  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 80682C50  4B 98 A1 4D */	bl transM__14mDoMtx_stack_cFfff
/* 80682C54  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80682C58  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80682C5C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80682C60  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80682C64  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80682C68  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80682C6C  3B C0 00 00 */	li r30, 0
/* 80682C70  38 61 00 50 */	addi r3, r1, 0x50
/* 80682C74  38 81 00 20 */	addi r4, r1, 0x20
/* 80682C78  38 A1 00 38 */	addi r5, r1, 0x38
/* 80682C7C  38 C0 00 00 */	li r6, 0
/* 80682C80  4B 9F 50 E5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80682C84  7F 83 E3 78 */	mr r3, r28
/* 80682C88  38 81 00 50 */	addi r4, r1, 0x50
/* 80682C8C  4B 9F 17 29 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80682C90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80682C94  41 82 00 60 */	beq lbl_80682CF4
/* 80682C98  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80682C9C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80682CA0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80682CA4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80682CA8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80682CAC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80682CB0  38 61 00 50 */	addi r3, r1, 0x50
/* 80682CB4  38 81 00 20 */	addi r4, r1, 0x20
/* 80682CB8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80682CBC  38 C0 00 00 */	li r6, 0
/* 80682CC0  4B 9F 50 A5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80682CC4  7F 83 E3 78 */	mr r3, r28
/* 80682CC8  38 81 00 50 */	addi r4, r1, 0x50
/* 80682CCC  4B 9F 16 E9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80682CD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80682CD4  41 82 00 20 */	beq lbl_80682CF4
/* 80682CD8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80682CDC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80682CE0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80682CE4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80682CE8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80682CEC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80682CF0  3B C0 00 01 */	li r30, 1
lbl_80682CF4:
/* 80682CF4  7F C0 07 75 */	extsb. r0, r30
/* 80682CF8  41 82 00 5C */	beq lbl_80682D54
/* 80682CFC  38 61 00 08 */	addi r3, r1, 8
/* 80682D00  38 81 00 38 */	addi r4, r1, 0x38
/* 80682D04  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80682D08  4B BE 3E 2D */	bl __mi__4cXyzCFRC3Vec
/* 80682D0C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80682D10  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80682D14  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80682D18  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80682D1C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80682D20  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80682D24  EC 21 00 72 */	fmuls f1, f1, f1
/* 80682D28  EC 00 00 32 */	fmuls f0, f0, f0
/* 80682D2C  EC 41 00 2A */	fadds f2, f1, f0
/* 80682D30  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80682D34  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80682D38  40 81 00 0C */	ble lbl_80682D44
/* 80682D3C  FC 00 10 34 */	frsqrte f0, f2
/* 80682D40  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80682D44:
/* 80682D44  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80682D48  4B BE 49 2D */	bl cM_atan2s__Fff
/* 80682D4C  7C 03 00 D0 */	neg r0, r3
/* 80682D50  B0 1F 00 34 */	sth r0, 0x34(r31)
lbl_80682D54:
/* 80682D54  38 61 00 50 */	addi r3, r1, 0x50
/* 80682D58  38 80 FF FF */	li r4, -1
/* 80682D5C  4B 9F 4F 81 */	bl __dt__11dBgS_LinChkFv
/* 80682D60  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80682D64  4B CD F4 BD */	bl _restgpr_27
/* 80682D68  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80682D6C  7C 08 03 A6 */	mtlr r0
/* 80682D70  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80682D74  4E 80 00 20 */	blr 
