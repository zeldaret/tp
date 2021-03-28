lbl_80B35968:
/* 80B35968  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B3596C  7C 08 02 A6 */	mflr r0
/* 80B35970  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B35974  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B35978  4B 82 C8 58 */	b _savegpr_26
/* 80B3597C  7C 7F 1B 78 */	mr r31, r3
/* 80B35980  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha
/* 80B35984  3B 64 16 DC */	addi r27, r4, m__21daNpcWrestler_Param_c@l
/* 80B35988  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B3598C  3B 84 1D F8 */	addi r28, r4, cNullVec__6Z2Calc@l
/* 80B35990  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B35994  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80B35998  83 5D 5D AC */	lwz r26, 0x5dac(r29)
/* 80B3599C  88 03 0E 9B */	lbz r0, 0xe9b(r3)
/* 80B359A0  7C 00 00 34 */	cntlzw r0, r0
/* 80B359A4  54 04 D9 7E */	srwi r4, r0, 5
/* 80B359A8  3B C4 00 11 */	addi r30, r4, 0x11
/* 80B359AC  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B359B0  2C 00 00 02 */	cmpwi r0, 2
/* 80B359B4  41 82 01 2C */	beq lbl_80B35AE0
/* 80B359B8  40 80 00 10 */	bge lbl_80B359C8
/* 80B359BC  2C 00 00 00 */	cmpwi r0, 0
/* 80B359C0  41 82 00 14 */	beq lbl_80B359D4
/* 80B359C4  48 00 06 8C */	b lbl_80B36050
lbl_80B359C8:
/* 80B359C8  2C 00 00 04 */	cmpwi r0, 4
/* 80B359CC  40 80 06 84 */	bge lbl_80B36050
/* 80B359D0  48 00 06 20 */	b lbl_80B35FF0
lbl_80B359D4:
/* 80B359D4  38 80 00 09 */	li r4, 9
/* 80B359D8  38 A0 00 01 */	li r5, 1
/* 80B359DC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B359E0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B359E4  7D 89 03 A6 */	mtctr r12
/* 80B359E8  4E 80 04 21 */	bctrl 
/* 80B359EC  7F E3 FB 78 */	mr r3, r31
/* 80B359F0  38 80 00 11 */	li r4, 0x11
/* 80B359F4  C0 3B 01 C8 */	lfs f1, 0x1c8(r27)
/* 80B359F8  38 A0 00 00 */	li r5, 0
/* 80B359FC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B35A00  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B35A04  7D 89 03 A6 */	mtctr r12
/* 80B35A08  4E 80 04 21 */	bctrl 
/* 80B35A0C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B35A10  80 63 00 04 */	lwz r3, 4(r3)
/* 80B35A14  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B35A18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B35A1C  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 80B35A20  7C 63 02 14 */	add r3, r3, r0
/* 80B35A24  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B35A28  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B35A2C  4B 81 0A 84 */	b PSMTXCopy
/* 80B35A30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B35A34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B35A38  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B35A3C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B35A40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B35A44  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B35A48  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B35A4C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B35A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B35A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B35A58  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80B35A5C  38 80 00 00 */	li r4, 0
/* 80B35A60  90 81 00 08 */	stw r4, 8(r1)
/* 80B35A64  38 00 FF FF */	li r0, -1
/* 80B35A68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B35A6C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B35A70  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B35A74  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B35A78  38 80 00 00 */	li r4, 0
/* 80B35A7C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008537@ha */
/* 80B35A80  38 A5 85 37 */	addi r5, r5, 0x8537 /* 0x00008537@l */
/* 80B35A84  38 C1 00 74 */	addi r6, r1, 0x74
/* 80B35A88  38 E0 00 00 */	li r7, 0
/* 80B35A8C  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B35A90  39 20 00 00 */	li r9, 0
/* 80B35A94  39 40 00 FF */	li r10, 0xff
/* 80B35A98  C0 3B 01 B4 */	lfs f1, 0x1b4(r27)
/* 80B35A9C  4B 51 6F F4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B35AA0  90 7F 0D D8 */	stw r3, 0xdd8(r31)
/* 80B35AA4  80 7F 0D D8 */	lwz r3, 0xdd8(r31)
/* 80B35AA8  28 03 00 00 */	cmplwi r3, 0
/* 80B35AAC  41 82 00 1C */	beq lbl_80B35AC8
/* 80B35AB0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B35AB4  60 00 00 40 */	ori r0, r0, 0x40
/* 80B35AB8  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B35ABC  38 00 00 05 */	li r0, 5
/* 80B35AC0  80 7F 0D D8 */	lwz r3, 0xdd8(r31)
/* 80B35AC4  B0 03 00 52 */	sth r0, 0x52(r3)
lbl_80B35AC8:
/* 80B35AC8  38 00 00 00 */	li r0, 0
/* 80B35ACC  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80B35AD0  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 80B35AD4  38 00 00 02 */	li r0, 2
/* 80B35AD8  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35ADC  48 00 05 74 */	b lbl_80B36050
lbl_80B35AE0:
/* 80B35AE0  7F 44 D3 78 */	mr r4, r26
/* 80B35AE4  4B 4E 4C 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B35AE8  7C 64 1B 78 */	mr r4, r3
/* 80B35AEC  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80B35AF0  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80B35AF4  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B35AF8  38 C0 40 00 */	li r6, 0x4000
/* 80B35AFC  38 E0 00 40 */	li r7, 0x40
/* 80B35B00  4B 73 AA 40 */	b cLib_addCalcAngleS__FPsssss
/* 80B35B04  7F E3 FB 78 */	mr r3, r31
/* 80B35B08  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B35B0C  4B 61 E7 44 */	b setAngle__8daNpcF_cFs
/* 80B35B10  C0 1B 01 B8 */	lfs f0, 0x1b8(r27)
/* 80B35B14  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B35B18  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B35B1C  7F 43 D3 78 */	mr r3, r26
/* 80B35B20  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 80B35B24  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B35B28  7D 89 03 A6 */	mtctr r12
/* 80B35B2C  4E 80 04 21 */	bctrl 
/* 80B35B30  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B35B34  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B35B38  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B35B3C  4B 4D B6 B0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80B35B40  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B35B44  80 63 00 04 */	lwz r3, 4(r3)
/* 80B35B48  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B35B4C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B35B50  1F DE 00 30 */	mulli r30, r30, 0x30
/* 80B35B54  7C 60 F2 14 */	add r3, r0, r30
/* 80B35B58  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B35B5C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B35B60  4B 81 09 50 */	b PSMTXCopy
/* 80B35B64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B35B68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B35B6C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B35B70  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B35B74  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B35B78  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B35B7C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B35B80  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B35B84  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B35B88  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B35B8C  C0 1B 05 D8 */	lfs f0, 0x5d8(r27)
/* 80B35B90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B35B94  40 81 00 1C */	ble lbl_80B35BB0
/* 80B35B98  C0 1B 01 AC */	lfs f0, 0x1ac(r27)
/* 80B35B9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B35BA0  40 80 00 10 */	bge lbl_80B35BB0
/* 80B35BA4  4B 64 BA 9C */	b dCam_getBody__Fv
/* 80B35BA8  38 80 00 05 */	li r4, 5
/* 80B35BAC  4B 62 E1 A4 */	b ModeFix__9dCamera_cFl
lbl_80B35BB0:
/* 80B35BB0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B35BB4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B35BB8  C0 1B 05 C8 */	lfs f0, 0x5c8(r27)
/* 80B35BBC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B35BC0  40 82 01 B0 */	bne lbl_80B35D70
/* 80B35BC4  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B35BC8  28 00 00 01 */	cmplwi r0, 1
/* 80B35BCC  40 82 00 A0 */	bne lbl_80B35C6C
/* 80B35BD0  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80B35BD4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B35BD8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B35BDC  40 82 00 90 */	bne lbl_80B35C6C
/* 80B35BE0  80 7C 0B F0 */	lwz r3, 0xbf0(r28)
/* 80B35BE4  80 1C 0B F4 */	lwz r0, 0xbf4(r28)
/* 80B35BE8  90 61 00 68 */	stw r3, 0x68(r1)
/* 80B35BEC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80B35BF0  80 1C 0B F8 */	lwz r0, 0xbf8(r28)
/* 80B35BF4  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B35BF8  38 00 00 03 */	li r0, 3
/* 80B35BFC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35C00  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B35C04  4B 82 C4 14 */	b __ptmf_test
/* 80B35C08  2C 03 00 00 */	cmpwi r3, 0
/* 80B35C0C  41 82 00 18 */	beq lbl_80B35C24
/* 80B35C10  7F E3 FB 78 */	mr r3, r31
/* 80B35C14  38 80 00 00 */	li r4, 0
/* 80B35C18  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35C1C  4B 82 C4 68 */	b __ptmf_scall
/* 80B35C20  60 00 00 00 */	nop 
lbl_80B35C24:
/* 80B35C24  38 00 00 00 */	li r0, 0
/* 80B35C28  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35C2C  80 61 00 68 */	lwz r3, 0x68(r1)
/* 80B35C30  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80B35C34  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B35C38  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B35C3C  80 01 00 70 */	lwz r0, 0x70(r1)
/* 80B35C40  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B35C44  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B35C48  4B 82 C3 D0 */	b __ptmf_test
/* 80B35C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80B35C50  41 82 01 20 */	beq lbl_80B35D70
/* 80B35C54  7F E3 FB 78 */	mr r3, r31
/* 80B35C58  38 80 00 00 */	li r4, 0
/* 80B35C5C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35C60  4B 82 C4 24 */	b __ptmf_scall
/* 80B35C64  60 00 00 00 */	nop 
/* 80B35C68  48 00 01 08 */	b lbl_80B35D70
lbl_80B35C6C:
/* 80B35C6C  C0 3B 01 B8 */	lfs f1, 0x1b8(r27)
/* 80B35C70  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80B35C74  C0 1B 01 B4 */	lfs f0, 0x1b4(r27)
/* 80B35C78  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B35C7C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80B35C80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B35C84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B35C88  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B35C8C  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B35C90  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80B35C94  38 A0 00 0F */	li r5, 0xf
/* 80B35C98  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80B35C9C  4B 53 9D 88 */	b StartShock__12dVibration_cFii4cXyz
/* 80B35CA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B35CA4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80B35CA8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B35CAC  38 80 00 00 */	li r4, 0
/* 80B35CB0  90 81 00 08 */	stw r4, 8(r1)
/* 80B35CB4  38 00 FF FF */	li r0, -1
/* 80B35CB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B35CBC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B35CC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B35CC4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B35CC8  38 80 00 00 */	li r4, 0
/* 80B35CCC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008539@ha */
/* 80B35CD0  38 A5 85 39 */	addi r5, r5, 0x8539 /* 0x00008539@l */
/* 80B35CD4  38 C1 00 74 */	addi r6, r1, 0x74
/* 80B35CD8  38 E0 00 00 */	li r7, 0
/* 80B35CDC  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B35CE0  39 20 00 00 */	li r9, 0
/* 80B35CE4  39 40 00 FF */	li r10, 0xff
/* 80B35CE8  C0 3B 01 B4 */	lfs f1, 0x1b4(r27)
/* 80B35CEC  4B 51 6D A4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B35CF0  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80B35CF4  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B35CF8  28 03 00 00 */	cmplwi r3, 0
/* 80B35CFC  41 82 00 10 */	beq lbl_80B35D0C
/* 80B35D00  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B35D04  60 00 00 40 */	ori r0, r0, 0x40
/* 80B35D08  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B35D0C:
/* 80B35D0C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B35D10  38 80 00 00 */	li r4, 0
/* 80B35D14  90 81 00 08 */	stw r4, 8(r1)
/* 80B35D18  38 00 FF FF */	li r0, -1
/* 80B35D1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B35D20  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B35D24  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B35D28  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B35D2C  38 80 00 00 */	li r4, 0
/* 80B35D30  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000853A@ha */
/* 80B35D34  38 A5 85 3A */	addi r5, r5, 0x853A /* 0x0000853A@l */
/* 80B35D38  38 C1 00 74 */	addi r6, r1, 0x74
/* 80B35D3C  38 E0 00 00 */	li r7, 0
/* 80B35D40  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B35D44  39 20 00 00 */	li r9, 0
/* 80B35D48  39 40 00 FF */	li r10, 0xff
/* 80B35D4C  C0 3B 01 B4 */	lfs f1, 0x1b4(r27)
/* 80B35D50  4B 51 6D 40 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B35D54  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 80B35D58  80 7F 0D E0 */	lwz r3, 0xde0(r31)
/* 80B35D5C  28 03 00 00 */	cmplwi r3, 0
/* 80B35D60  41 82 00 10 */	beq lbl_80B35D70
/* 80B35D64  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B35D68  60 00 00 40 */	ori r0, r0, 0x40
/* 80B35D6C  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B35D70:
/* 80B35D70  80 BF 0D D8 */	lwz r5, 0xdd8(r31)
/* 80B35D74  28 05 00 00 */	cmplwi r5, 0
/* 80B35D78  41 82 00 24 */	beq lbl_80B35D9C
/* 80B35D7C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B35D80  80 63 00 04 */	lwz r3, 4(r3)
/* 80B35D84  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B35D88  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B35D8C  7C 60 F2 14 */	add r3, r0, r30
/* 80B35D90  38 85 00 68 */	addi r4, r5, 0x68
/* 80B35D94  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80B35D98  4B 74 AA 48 */	b func_802807E0
lbl_80B35D9C:
/* 80B35D9C  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B35DA0  28 03 00 00 */	cmplwi r3, 0
/* 80B35DA4  41 82 00 28 */	beq lbl_80B35DCC
/* 80B35DA8  E0 01 00 74 */	psq_l f0, 116(r1), 0, 0 /* qr0 */
/* 80B35DAC  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80B35DB0  F0 01 00 50 */	psq_st f0, 80(r1), 0, 0 /* qr0 */
/* 80B35DB4  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80B35DB8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B35DBC  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80B35DC0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B35DC4  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 80B35DC8  D0 23 00 AC */	stfs f1, 0xac(r3)
lbl_80B35DCC:
/* 80B35DCC  80 DF 0D E0 */	lwz r6, 0xde0(r31)
/* 80B35DD0  28 06 00 00 */	cmplwi r6, 0
/* 80B35DD4  41 82 00 40 */	beq lbl_80B35E14
/* 80B35DD8  A8 7F 08 F0 */	lha r3, 0x8f0(r31)
/* 80B35DDC  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B35DE0  A8 BF 08 F4 */	lha r5, 0x8f4(r31)
/* 80B35DE4  E0 01 00 74 */	psq_l f0, 116(r1), 0, 0 /* qr0 */
/* 80B35DE8  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80B35DEC  F0 01 00 44 */	psq_st f0, 68(r1), 0, 0 /* qr0 */
/* 80B35DF0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80B35DF4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B35DF8  D0 06 00 A4 */	stfs f0, 0xa4(r6)
/* 80B35DFC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B35E00  D0 06 00 A8 */	stfs f0, 0xa8(r6)
/* 80B35E04  D0 26 00 AC */	stfs f1, 0xac(r6)
/* 80B35E08  80 DF 0D E0 */	lwz r6, 0xde0(r31)
/* 80B35E0C  38 C6 00 68 */	addi r6, r6, 0x68
/* 80B35E10  4B 74 A9 24 */	b JPAGetXYZRotateMtx__FsssPA4_f
lbl_80B35E14:
/* 80B35E14  7F E3 FB 78 */	mr r3, r31
/* 80B35E18  4B FF F9 69 */	bl checkOutOfArenaW__15daNpcWrestler_cFv
/* 80B35E1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B35E20  41 82 00 90 */	beq lbl_80B35EB0
/* 80B35E24  80 7C 0B FC */	lwz r3, 0xbfc(r28)
/* 80B35E28  80 1C 0C 00 */	lwz r0, 0xc00(r28)
/* 80B35E2C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B35E30  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B35E34  80 1C 0C 04 */	lwz r0, 0xc04(r28)
/* 80B35E38  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B35E3C  38 00 00 03 */	li r0, 3
/* 80B35E40  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35E44  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B35E48  4B 82 C1 D0 */	b __ptmf_test
/* 80B35E4C  2C 03 00 00 */	cmpwi r3, 0
/* 80B35E50  41 82 00 18 */	beq lbl_80B35E68
/* 80B35E54  7F E3 FB 78 */	mr r3, r31
/* 80B35E58  38 80 00 00 */	li r4, 0
/* 80B35E5C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35E60  4B 82 C2 24 */	b __ptmf_scall
/* 80B35E64  60 00 00 00 */	nop 
lbl_80B35E68:
/* 80B35E68  38 00 00 00 */	li r0, 0
/* 80B35E6C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35E70  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80B35E74  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B35E78  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B35E7C  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B35E80  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80B35E84  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B35E88  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B35E8C  4B 82 C1 8C */	b __ptmf_test
/* 80B35E90  2C 03 00 00 */	cmpwi r3, 0
/* 80B35E94  41 82 01 BC */	beq lbl_80B36050
/* 80B35E98  7F E3 FB 78 */	mr r3, r31
/* 80B35E9C  38 80 00 00 */	li r4, 0
/* 80B35EA0  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35EA4  4B 82 C1 E0 */	b __ptmf_scall
/* 80B35EA8  60 00 00 00 */	nop 
/* 80B35EAC  48 00 01 A4 */	b lbl_80B36050
lbl_80B35EB0:
/* 80B35EB0  7F E3 FB 78 */	mr r3, r31
/* 80B35EB4  4B FF DB 39 */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B35EB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B35EBC  41 82 00 90 */	beq lbl_80B35F4C
/* 80B35EC0  80 7C 0C 08 */	lwz r3, 0xc08(r28)
/* 80B35EC4  80 1C 0C 0C */	lwz r0, 0xc0c(r28)
/* 80B35EC8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B35ECC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B35ED0  80 1C 0C 10 */	lwz r0, 0xc10(r28)
/* 80B35ED4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B35ED8  38 00 00 03 */	li r0, 3
/* 80B35EDC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35EE0  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B35EE4  4B 82 C1 34 */	b __ptmf_test
/* 80B35EE8  2C 03 00 00 */	cmpwi r3, 0
/* 80B35EEC  41 82 00 18 */	beq lbl_80B35F04
/* 80B35EF0  7F E3 FB 78 */	mr r3, r31
/* 80B35EF4  38 80 00 00 */	li r4, 0
/* 80B35EF8  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35EFC  4B 82 C1 88 */	b __ptmf_scall
/* 80B35F00  60 00 00 00 */	nop 
lbl_80B35F04:
/* 80B35F04  38 00 00 00 */	li r0, 0
/* 80B35F08  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35F0C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B35F10  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B35F14  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B35F18  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B35F1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B35F20  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B35F24  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B35F28  4B 82 C0 F0 */	b __ptmf_test
/* 80B35F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B35F30  41 82 01 20 */	beq lbl_80B36050
/* 80B35F34  7F E3 FB 78 */	mr r3, r31
/* 80B35F38  38 80 00 00 */	li r4, 0
/* 80B35F3C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35F40  4B 82 C1 44 */	b __ptmf_scall
/* 80B35F44  60 00 00 00 */	nop 
/* 80B35F48  48 00 01 08 */	b lbl_80B36050
lbl_80B35F4C:
/* 80B35F4C  88 1A 05 6A */	lbz r0, 0x56a(r26)
/* 80B35F50  28 00 00 16 */	cmplwi r0, 0x16
/* 80B35F54  40 82 00 FC */	bne lbl_80B36050
/* 80B35F58  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B35F5C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B35F60  D0 1F 0E 8C */	stfs f0, 0xe8c(r31)
/* 80B35F64  80 7C 0C 14 */	lwz r3, 0xc14(r28)
/* 80B35F68  80 1C 0C 18 */	lwz r0, 0xc18(r28)
/* 80B35F6C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B35F70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B35F74  80 1C 0C 1C */	lwz r0, 0xc1c(r28)
/* 80B35F78  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B35F7C  38 00 00 03 */	li r0, 3
/* 80B35F80  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35F84  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B35F88  4B 82 C0 90 */	b __ptmf_test
/* 80B35F8C  2C 03 00 00 */	cmpwi r3, 0
/* 80B35F90  41 82 00 18 */	beq lbl_80B35FA8
/* 80B35F94  7F E3 FB 78 */	mr r3, r31
/* 80B35F98  38 80 00 00 */	li r4, 0
/* 80B35F9C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35FA0  4B 82 C0 E4 */	b __ptmf_scall
/* 80B35FA4  60 00 00 00 */	nop 
lbl_80B35FA8:
/* 80B35FA8  38 00 00 00 */	li r0, 0
/* 80B35FAC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35FB0  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B35FB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B35FB8  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B35FBC  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B35FC0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B35FC4  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B35FC8  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B35FCC  4B 82 C0 4C */	b __ptmf_test
/* 80B35FD0  2C 03 00 00 */	cmpwi r3, 0
/* 80B35FD4  41 82 00 7C */	beq lbl_80B36050
/* 80B35FD8  7F E3 FB 78 */	mr r3, r31
/* 80B35FDC  38 80 00 00 */	li r4, 0
/* 80B35FE0  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35FE4  4B 82 C0 A0 */	b __ptmf_scall
/* 80B35FE8  60 00 00 00 */	nop 
/* 80B35FEC  48 00 00 64 */	b lbl_80B36050
lbl_80B35FF0:
/* 80B35FF0  80 7F 0D D8 */	lwz r3, 0xdd8(r31)
/* 80B35FF4  28 03 00 00 */	cmplwi r3, 0
/* 80B35FF8  41 82 00 18 */	beq lbl_80B36010
/* 80B35FFC  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B36000  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B36004  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B36008  38 00 00 00 */	li r0, 0
/* 80B3600C  90 1F 0D D8 */	stw r0, 0xdd8(r31)
lbl_80B36010:
/* 80B36010  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B36014  28 03 00 00 */	cmplwi r3, 0
/* 80B36018  41 82 00 18 */	beq lbl_80B36030
/* 80B3601C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B36020  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B36024  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B36028  38 00 00 00 */	li r0, 0
/* 80B3602C  90 1F 0D DC */	stw r0, 0xddc(r31)
lbl_80B36030:
/* 80B36030  80 7F 0D E0 */	lwz r3, 0xde0(r31)
/* 80B36034  28 03 00 00 */	cmplwi r3, 0
/* 80B36038  41 82 00 18 */	beq lbl_80B36050
/* 80B3603C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B36040  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B36044  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B36048  38 00 00 00 */	li r0, 0
/* 80B3604C  90 1F 0D E0 */	stw r0, 0xde0(r31)
lbl_80B36050:
/* 80B36050  38 60 00 01 */	li r3, 1
/* 80B36054  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B36058  4B 82 C1 C4 */	b _restgpr_26
/* 80B3605C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B36060  7C 08 03 A6 */	mtlr r0
/* 80B36064  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B36068  4E 80 00 20 */	blr 
