lbl_80B34654:
/* 80B34654  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80B34658  7C 08 02 A6 */	mflr r0
/* 80B3465C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B34660  39 61 00 90 */	addi r11, r1, 0x90
/* 80B34664  4B 82 DB 6C */	b _savegpr_26
/* 80B34668  7C 7F 1B 78 */	mr r31, r3
/* 80B3466C  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha
/* 80B34670  3B C4 16 DC */	addi r30, r4, m__21daNpcWrestler_Param_c@l
/* 80B34674  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B34678  3B 84 1D F8 */	addi r28, r4, cNullVec__6Z2Calc@l
/* 80B3467C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B34680  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B34684  83 64 5D AC */	lwz r27, 0x5dac(r4)
/* 80B34688  88 03 0E 9B */	lbz r0, 0xe9b(r3)
/* 80B3468C  7C 00 00 34 */	cntlzw r0, r0
/* 80B34690  54 04 D9 7E */	srwi r4, r0, 5
/* 80B34694  3B A4 00 11 */	addi r29, r4, 0x11
/* 80B34698  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B3469C  2C 00 00 02 */	cmpwi r0, 2
/* 80B346A0  41 82 01 20 */	beq lbl_80B347C0
/* 80B346A4  40 80 00 10 */	bge lbl_80B346B4
/* 80B346A8  2C 00 00 00 */	cmpwi r0, 0
/* 80B346AC  41 82 00 14 */	beq lbl_80B346C0
/* 80B346B0  48 00 06 04 */	b lbl_80B34CB4
lbl_80B346B4:
/* 80B346B4  2C 00 00 04 */	cmpwi r0, 4
/* 80B346B8  40 80 05 FC */	bge lbl_80B34CB4
/* 80B346BC  48 00 05 4C */	b lbl_80B34C08
lbl_80B346C0:
/* 80B346C0  38 80 00 06 */	li r4, 6
/* 80B346C4  38 A0 00 01 */	li r5, 1
/* 80B346C8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B346CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B346D0  7D 89 03 A6 */	mtctr r12
/* 80B346D4  4E 80 04 21 */	bctrl 
/* 80B346D8  7F E3 FB 78 */	mr r3, r31
/* 80B346DC  38 80 00 0C */	li r4, 0xc
/* 80B346E0  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B346E4  38 A0 00 00 */	li r5, 0
/* 80B346E8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B346EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B346F0  7D 89 03 A6 */	mtctr r12
/* 80B346F4  4E 80 04 21 */	bctrl 
/* 80B346F8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B346FC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B34700  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B34704  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B34708  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 80B3470C  7C 63 02 14 */	add r3, r3, r0
/* 80B34710  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B34714  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B34718  4B 81 1D 98 */	b PSMTXCopy
/* 80B3471C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B34720  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B34724  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B34728  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B3472C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B34730  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B34734  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B34738  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B3473C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B34740  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B34744  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80B34748  38 80 00 00 */	li r4, 0
/* 80B3474C  90 81 00 08 */	stw r4, 8(r1)
/* 80B34750  38 00 FF FF */	li r0, -1
/* 80B34754  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B34758  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B3475C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B34760  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B34764  38 80 00 00 */	li r4, 0
/* 80B34768  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008537@ha */
/* 80B3476C  38 A5 85 37 */	addi r5, r5, 0x8537 /* 0x00008537@l */
/* 80B34770  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B34774  38 E0 00 00 */	li r7, 0
/* 80B34778  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B3477C  39 20 00 00 */	li r9, 0
/* 80B34780  39 40 00 FF */	li r10, 0xff
/* 80B34784  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B34788  4B 51 83 08 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B3478C  90 7F 0D D8 */	stw r3, 0xdd8(r31)
/* 80B34790  80 7F 0D D8 */	lwz r3, 0xdd8(r31)
/* 80B34794  28 03 00 00 */	cmplwi r3, 0
/* 80B34798  41 82 00 10 */	beq lbl_80B347A8
/* 80B3479C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B347A0  60 00 00 40 */	ori r0, r0, 0x40
/* 80B347A4  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B347A8:
/* 80B347A8  38 00 00 00 */	li r0, 0
/* 80B347AC  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80B347B0  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 80B347B4  38 00 00 02 */	li r0, 2
/* 80B347B8  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B347BC  48 00 04 F8 */	b lbl_80B34CB4
lbl_80B347C0:
/* 80B347C0  7F 64 DB 78 */	mr r4, r27
/* 80B347C4  4B 4E 5F 4C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B347C8  7C 64 1B 78 */	mr r4, r3
/* 80B347CC  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80B347D0  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80B347D4  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B347D8  38 C0 40 00 */	li r6, 0x4000
/* 80B347DC  38 E0 00 40 */	li r7, 0x40
/* 80B347E0  4B 73 BD 60 */	b cLib_addCalcAngleS__FPsssss
/* 80B347E4  7F E3 FB 78 */	mr r3, r31
/* 80B347E8  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B347EC  4B 61 FA 64 */	b setAngle__8daNpcF_cFs
/* 80B347F0  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B347F4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B347F8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B347FC  7F 63 DB 78 */	mr r3, r27
/* 80B34800  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80B34804  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B34808  7D 89 03 A6 */	mtctr r12
/* 80B3480C  4E 80 04 21 */	bctrl 
/* 80B34810  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B34814  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B34818  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B3481C  4B 4D C9 D0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80B34820  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B34824  80 63 00 04 */	lwz r3, 4(r3)
/* 80B34828  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B3482C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B34830  1F BD 00 30 */	mulli r29, r29, 0x30
/* 80B34834  7C 60 EA 14 */	add r3, r0, r29
/* 80B34838  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B3483C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B34840  4B 81 1C 70 */	b PSMTXCopy
/* 80B34844  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B34848  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3484C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B34850  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B34854  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B34858  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B3485C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B34860  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B34864  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B34868  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B3486C  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 80B34870  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B34874  40 82 01 AC */	bne lbl_80B34A20
/* 80B34878  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B3487C  28 00 00 01 */	cmplwi r0, 1
/* 80B34880  40 82 00 9C */	bne lbl_80B3491C
/* 80B34884  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 80B34888  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B3488C  40 82 00 90 */	bne lbl_80B3491C
/* 80B34890  80 7C 0B 90 */	lwz r3, 0xb90(r28)
/* 80B34894  80 1C 0B 94 */	lwz r0, 0xb94(r28)
/* 80B34898  90 61 00 5C */	stw r3, 0x5c(r1)
/* 80B3489C  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B348A0  80 1C 0B 98 */	lwz r0, 0xb98(r28)
/* 80B348A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B348A8  38 00 00 03 */	li r0, 3
/* 80B348AC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B348B0  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B348B4  4B 82 D7 64 */	b __ptmf_test
/* 80B348B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B348BC  41 82 00 18 */	beq lbl_80B348D4
/* 80B348C0  7F E3 FB 78 */	mr r3, r31
/* 80B348C4  38 80 00 00 */	li r4, 0
/* 80B348C8  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B348CC  4B 82 D7 B8 */	b __ptmf_scall
/* 80B348D0  60 00 00 00 */	nop 
lbl_80B348D4:
/* 80B348D4  38 00 00 00 */	li r0, 0
/* 80B348D8  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B348DC  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 80B348E0  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80B348E4  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B348E8  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B348EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B348F0  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B348F4  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B348F8  4B 82 D7 20 */	b __ptmf_test
/* 80B348FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B34900  41 82 01 20 */	beq lbl_80B34A20
/* 80B34904  7F E3 FB 78 */	mr r3, r31
/* 80B34908  38 80 00 00 */	li r4, 0
/* 80B3490C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34910  4B 82 D7 74 */	b __ptmf_scall
/* 80B34914  60 00 00 00 */	nop 
/* 80B34918  48 00 01 08 */	b lbl_80B34A20
lbl_80B3491C:
/* 80B3491C  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B34920  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B34924  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 80B34928  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B3492C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80B34930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B34934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B34938  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B3493C  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B34940  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80B34944  38 A0 00 0F */	li r5, 0xf
/* 80B34948  38 C1 00 50 */	addi r6, r1, 0x50
/* 80B3494C  4B 53 B0 D8 */	b StartShock__12dVibration_cFii4cXyz
/* 80B34950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B34954  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80B34958  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80B3495C  38 80 00 00 */	li r4, 0
/* 80B34960  90 81 00 08 */	stw r4, 8(r1)
/* 80B34964  38 00 FF FF */	li r0, -1
/* 80B34968  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B3496C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B34970  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B34974  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B34978  38 80 00 00 */	li r4, 0
/* 80B3497C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008539@ha */
/* 80B34980  38 A5 85 39 */	addi r5, r5, 0x8539 /* 0x00008539@l */
/* 80B34984  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B34988  38 E0 00 00 */	li r7, 0
/* 80B3498C  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B34990  39 20 00 00 */	li r9, 0
/* 80B34994  39 40 00 FF */	li r10, 0xff
/* 80B34998  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B3499C  4B 51 80 F4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B349A0  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80B349A4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80B349A8  38 80 00 00 */	li r4, 0
/* 80B349AC  90 81 00 08 */	stw r4, 8(r1)
/* 80B349B0  38 00 FF FF */	li r0, -1
/* 80B349B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B349B8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B349BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B349C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B349C4  38 80 00 00 */	li r4, 0
/* 80B349C8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000853A@ha */
/* 80B349CC  38 A5 85 3A */	addi r5, r5, 0x853A /* 0x0000853A@l */
/* 80B349D0  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B349D4  38 E0 00 00 */	li r7, 0
/* 80B349D8  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B349DC  39 20 00 00 */	li r9, 0
/* 80B349E0  39 40 00 FF */	li r10, 0xff
/* 80B349E4  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B349E8  4B 51 80 A8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B349EC  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 80B349F0  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B349F4  28 03 00 00 */	cmplwi r3, 0
/* 80B349F8  41 82 00 10 */	beq lbl_80B34A08
/* 80B349FC  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B34A00  60 00 00 40 */	ori r0, r0, 0x40
/* 80B34A04  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B34A08:
/* 80B34A08  80 7F 0D E0 */	lwz r3, 0xde0(r31)
/* 80B34A0C  28 03 00 00 */	cmplwi r3, 0
/* 80B34A10  41 82 00 10 */	beq lbl_80B34A20
/* 80B34A14  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B34A18  60 00 00 40 */	ori r0, r0, 0x40
/* 80B34A1C  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B34A20:
/* 80B34A20  80 BF 0D D8 */	lwz r5, 0xdd8(r31)
/* 80B34A24  28 05 00 00 */	cmplwi r5, 0
/* 80B34A28  41 82 00 24 */	beq lbl_80B34A4C
/* 80B34A2C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B34A30  80 63 00 04 */	lwz r3, 4(r3)
/* 80B34A34  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B34A38  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B34A3C  7C 60 EA 14 */	add r3, r0, r29
/* 80B34A40  38 85 00 68 */	addi r4, r5, 0x68
/* 80B34A44  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80B34A48  4B 74 BD 98 */	b func_802807E0
lbl_80B34A4C:
/* 80B34A4C  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B34A50  28 03 00 00 */	cmplwi r3, 0
/* 80B34A54  41 82 00 28 */	beq lbl_80B34A7C
/* 80B34A58  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 80B34A5C  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80B34A60  F0 01 00 44 */	psq_st f0, 68(r1), 0, 0 /* qr0 */
/* 80B34A64  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80B34A68  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B34A6C  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80B34A70  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B34A74  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 80B34A78  D0 23 00 AC */	stfs f1, 0xac(r3)
lbl_80B34A7C:
/* 80B34A7C  80 DF 0D E0 */	lwz r6, 0xde0(r31)
/* 80B34A80  28 06 00 00 */	cmplwi r6, 0
/* 80B34A84  41 82 00 40 */	beq lbl_80B34AC4
/* 80B34A88  A8 7F 08 F0 */	lha r3, 0x8f0(r31)
/* 80B34A8C  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B34A90  A8 BF 08 F4 */	lha r5, 0x8f4(r31)
/* 80B34A94  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 80B34A98  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80B34A9C  F0 01 00 38 */	psq_st f0, 56(r1), 0, 0 /* qr0 */
/* 80B34AA0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B34AA4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B34AA8  D0 06 00 A4 */	stfs f0, 0xa4(r6)
/* 80B34AAC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B34AB0  D0 06 00 A8 */	stfs f0, 0xa8(r6)
/* 80B34AB4  D0 26 00 AC */	stfs f1, 0xac(r6)
/* 80B34AB8  80 DF 0D E0 */	lwz r6, 0xde0(r31)
/* 80B34ABC  38 C6 00 68 */	addi r6, r6, 0x68
/* 80B34AC0  4B 74 BC 74 */	b JPAGetXYZRotateMtx__FsssPA4_f
lbl_80B34AC4:
/* 80B34AC4  7F E3 FB 78 */	mr r3, r31
/* 80B34AC8  4B FF EF 25 */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B34ACC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B34AD0  41 82 00 90 */	beq lbl_80B34B60
/* 80B34AD4  80 7C 0B 9C */	lwz r3, 0xb9c(r28)
/* 80B34AD8  80 1C 0B A0 */	lwz r0, 0xba0(r28)
/* 80B34ADC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B34AE0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B34AE4  80 1C 0B A4 */	lwz r0, 0xba4(r28)
/* 80B34AE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B34AEC  38 00 00 03 */	li r0, 3
/* 80B34AF0  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34AF4  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34AF8  4B 82 D5 20 */	b __ptmf_test
/* 80B34AFC  2C 03 00 00 */	cmpwi r3, 0
/* 80B34B00  41 82 00 18 */	beq lbl_80B34B18
/* 80B34B04  7F E3 FB 78 */	mr r3, r31
/* 80B34B08  38 80 00 00 */	li r4, 0
/* 80B34B0C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34B10  4B 82 D5 74 */	b __ptmf_scall
/* 80B34B14  60 00 00 00 */	nop 
lbl_80B34B18:
/* 80B34B18  38 00 00 00 */	li r0, 0
/* 80B34B1C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34B20  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B34B24  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B34B28  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B34B2C  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B34B30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B34B34  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B34B38  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34B3C  4B 82 D4 DC */	b __ptmf_test
/* 80B34B40  2C 03 00 00 */	cmpwi r3, 0
/* 80B34B44  41 82 01 70 */	beq lbl_80B34CB4
/* 80B34B48  7F E3 FB 78 */	mr r3, r31
/* 80B34B4C  38 80 00 00 */	li r4, 0
/* 80B34B50  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34B54  4B 82 D5 30 */	b __ptmf_scall
/* 80B34B58  60 00 00 00 */	nop 
/* 80B34B5C  48 00 01 58 */	b lbl_80B34CB4
lbl_80B34B60:
/* 80B34B60  88 1B 05 6A */	lbz r0, 0x56a(r27)
/* 80B34B64  28 00 00 1F */	cmplwi r0, 0x1f
/* 80B34B68  41 82 00 0C */	beq lbl_80B34B74
/* 80B34B6C  28 00 00 16 */	cmplwi r0, 0x16
/* 80B34B70  40 82 01 44 */	bne lbl_80B34CB4
lbl_80B34B74:
/* 80B34B74  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B34B78  D0 1F 0E 8C */	stfs f0, 0xe8c(r31)
/* 80B34B7C  80 7C 0B A8 */	lwz r3, 0xba8(r28)
/* 80B34B80  80 1C 0B AC */	lwz r0, 0xbac(r28)
/* 80B34B84  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B34B88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B34B8C  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80B34B90  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B34B94  38 00 00 03 */	li r0, 3
/* 80B34B98  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34B9C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34BA0  4B 82 D4 78 */	b __ptmf_test
/* 80B34BA4  2C 03 00 00 */	cmpwi r3, 0
/* 80B34BA8  41 82 00 18 */	beq lbl_80B34BC0
/* 80B34BAC  7F E3 FB 78 */	mr r3, r31
/* 80B34BB0  38 80 00 00 */	li r4, 0
/* 80B34BB4  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34BB8  4B 82 D4 CC */	b __ptmf_scall
/* 80B34BBC  60 00 00 00 */	nop 
lbl_80B34BC0:
/* 80B34BC0  38 00 00 00 */	li r0, 0
/* 80B34BC4  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34BC8  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B34BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B34BD0  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B34BD4  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B34BD8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B34BDC  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B34BE0  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34BE4  4B 82 D4 34 */	b __ptmf_test
/* 80B34BE8  2C 03 00 00 */	cmpwi r3, 0
/* 80B34BEC  41 82 00 C8 */	beq lbl_80B34CB4
/* 80B34BF0  7F E3 FB 78 */	mr r3, r31
/* 80B34BF4  38 80 00 00 */	li r4, 0
/* 80B34BF8  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34BFC  4B 82 D4 88 */	b __ptmf_scall
/* 80B34C00  60 00 00 00 */	nop 
/* 80B34C04  48 00 00 B0 */	b lbl_80B34CB4
lbl_80B34C08:
/* 80B34C08  80 7F 0D D8 */	lwz r3, 0xdd8(r31)
/* 80B34C0C  28 03 00 00 */	cmplwi r3, 0
/* 80B34C10  41 82 00 18 */	beq lbl_80B34C28
/* 80B34C14  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B34C18  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B34C1C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B34C20  38 00 00 00 */	li r0, 0
/* 80B34C24  90 1F 0D D8 */	stw r0, 0xdd8(r31)
lbl_80B34C28:
/* 80B34C28  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B34C2C  28 03 00 00 */	cmplwi r3, 0
/* 80B34C30  41 82 00 18 */	beq lbl_80B34C48
/* 80B34C34  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B34C38  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B34C3C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B34C40  38 00 00 00 */	li r0, 0
/* 80B34C44  90 1F 0D DC */	stw r0, 0xddc(r31)
lbl_80B34C48:
/* 80B34C48  80 7F 0D E0 */	lwz r3, 0xde0(r31)
/* 80B34C4C  28 03 00 00 */	cmplwi r3, 0
/* 80B34C50  41 82 00 18 */	beq lbl_80B34C68
/* 80B34C54  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B34C58  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B34C5C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B34C60  38 00 00 00 */	li r0, 0
/* 80B34C64  90 1F 0D E0 */	stw r0, 0xde0(r31)
lbl_80B34C68:
/* 80B34C68  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B34C6C  4B 4D 80 F8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B34C70  38 7B 05 F8 */	addi r3, r27, 0x5f8
/* 80B34C74  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B34C78  4B 73 BF 8C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B34C7C  7C 64 1B 78 */	mr r4, r3
/* 80B34C80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B34C84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B34C88  4B 4D 77 AC */	b mDoMtx_YrotM__FPA4_fs
/* 80B34C8C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B34C90  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80B34C94  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80B34C98  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80B34C9C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80B34CA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B34CA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B34CA8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B34CAC  7C 85 23 78 */	mr r5, r4
/* 80B34CB0  4B 81 20 BC */	b PSMTXMultVec
lbl_80B34CB4:
/* 80B34CB4  38 60 00 01 */	li r3, 1
/* 80B34CB8  39 61 00 90 */	addi r11, r1, 0x90
/* 80B34CBC  4B 82 D5 60 */	b _restgpr_26
/* 80B34CC0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B34CC4  7C 08 03 A6 */	mtlr r0
/* 80B34CC8  38 21 00 90 */	addi r1, r1, 0x90
/* 80B34CCC  4E 80 00 20 */	blr 
