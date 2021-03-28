lbl_80744878:
/* 80744878  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8074487C  7C 08 02 A6 */	mflr r0
/* 80744880  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80744884  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80744888  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 8074488C  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80744890  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80744894  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80744898  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 8074489C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 807448A0  4B C1 D9 34 */	b _savegpr_27
/* 807448A4  7C 7E 1B 78 */	mr r30, r3
/* 807448A8  3C 80 80 75 */	lis r4, lit_3910@ha
/* 807448AC  3B E4 BF 3C */	addi r31, r4, lit_3910@l
/* 807448B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807448B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807448B8  83 84 5D AC */	lwz r28, 0x5dac(r4)
/* 807448BC  88 03 06 12 */	lbz r0, 0x612(r3)
/* 807448C0  2C 00 00 02 */	cmpwi r0, 2
/* 807448C4  41 82 02 54 */	beq lbl_80744B18
/* 807448C8  40 80 00 14 */	bge lbl_807448DC
/* 807448CC  2C 00 00 00 */	cmpwi r0, 0
/* 807448D0  41 82 00 18 */	beq lbl_807448E8
/* 807448D4  40 80 00 A4 */	bge lbl_80744978
/* 807448D8  48 00 04 88 */	b lbl_80744D60
lbl_807448DC:
/* 807448DC  2C 00 00 04 */	cmpwi r0, 4
/* 807448E0  40 80 04 80 */	bge lbl_80744D60
/* 807448E4  48 00 02 BC */	b lbl_80744BA0
lbl_807448E8:
/* 807448E8  4B FF E7 DD */	bl CameraSet__8daE_PM_cFv
/* 807448EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807448F0  41 82 00 30 */	beq lbl_80744920
/* 807448F4  88 7E 06 12 */	lbz r3, 0x612(r30)
/* 807448F8  38 03 00 01 */	addi r0, r3, 1
/* 807448FC  98 1E 06 12 */	stb r0, 0x612(r30)
/* 80744900  38 00 00 02 */	li r0, 2
/* 80744904  98 1E 05 DC */	stb r0, 0x5dc(r30)
/* 80744908  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 8074490C  64 00 08 00 */	oris r0, r0, 0x800
/* 80744910  90 1C 05 70 */	stw r0, 0x570(r28)
/* 80744914  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 80744918  60 00 04 00 */	ori r0, r0, 0x400
/* 8074491C  90 1C 05 78 */	stw r0, 0x578(r28)
lbl_80744920:
/* 80744920  88 1E 06 1A */	lbz r0, 0x61a(r30)
/* 80744924  28 00 00 01 */	cmplwi r0, 1
/* 80744928  40 82 04 38 */	bne lbl_80744D60
/* 8074492C  3B 60 00 00 */	li r27, 0
/* 80744930  3B A0 00 00 */	li r29, 0
/* 80744934  3B 80 00 05 */	li r28, 5
/* 80744938  7F BF EB 78 */	mr r31, r29
lbl_8074493C:
/* 8074493C  38 1D 05 AC */	addi r0, r29, 0x5ac
/* 80744940  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80744944  38 81 00 24 */	addi r4, r1, 0x24
/* 80744948  4B 8D 50 74 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8074494C  2C 03 00 00 */	cmpwi r3, 0
/* 80744950  41 82 00 14 */	beq lbl_80744964
/* 80744954  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80744958  B3 83 06 7E */	sth r28, 0x67e(r3)
/* 8074495C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80744960  B3 E3 06 80 */	sth r31, 0x680(r3)
lbl_80744964:
/* 80744964  3B 7B 00 01 */	addi r27, r27, 1
/* 80744968  2C 1B 00 04 */	cmpwi r27, 4
/* 8074496C  3B BD 00 04 */	addi r29, r29, 4
/* 80744970  41 80 FF CC */	blt lbl_8074493C
/* 80744974  48 00 03 EC */	b lbl_80744D60
lbl_80744978:
/* 80744978  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8074497C  54 00 00 3E */	slwi r0, r0, 0
/* 80744980  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80744984  38 00 00 01 */	li r0, 1
/* 80744988  98 1E 06 14 */	stb r0, 0x614(r30)
/* 8074498C  38 00 00 00 */	li r0, 0
/* 80744990  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80744994  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80744998  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8074499C  38 80 00 08 */	li r4, 8
/* 807449A0  38 A0 00 00 */	li r5, 0
/* 807449A4  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 807449A8  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 807449AC  4B FF DC C9 */	bl SetAnm__8daE_PM_cFiiff
/* 807449B0  88 7E 06 12 */	lbz r3, 0x612(r30)
/* 807449B4  38 03 00 01 */	addi r0, r3, 1
/* 807449B8  98 1E 06 12 */	stb r0, 0x612(r30)
/* 807449BC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807449C0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807449C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807449C8  EC 21 00 2A */	fadds f1, f1, f0
/* 807449CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807449D0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807449D4  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 807449D8  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 807449DC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807449E0  3C 80 80 75 */	lis r4, data_8074C3E4@ha
/* 807449E4  38 84 C3 E4 */	addi r4, r4, data_8074C3E4@l
/* 807449E8  80 84 00 00 */	lwz r4, 0(r4)
/* 807449EC  4B B2 C2 18 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807449F0  7C 7B 1B 78 */	mr r27, r3
/* 807449F4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 807449F8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807449FC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80744A00  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80744A04  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80744A08  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80744A0C  7F C3 F3 78 */	mr r3, r30
/* 80744A10  38 81 00 70 */	addi r4, r1, 0x70
/* 80744A14  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80744A18  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80744A1C  7F 65 DB 78 */	mr r5, r27
/* 80744A20  4B FF E8 75 */	bl SetStopCam__8daE_PM_cF4cXyzffs
/* 80744A24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80744A28  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80744A2C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80744A30  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80744A34  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 80744A38  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80744A3C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 80744A40  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80744A44  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 80744A48  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80744A4C  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 80744A50  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80744A54  C0 1E 06 9C */	lfs f0, 0x69c(r30)
/* 80744A58  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80744A5C  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 80744A60  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80744A64  7F C3 F3 78 */	mr r3, r30
/* 80744A68  38 81 00 64 */	addi r4, r1, 0x64
/* 80744A6C  38 A1 00 58 */	addi r5, r1, 0x58
/* 80744A70  4B FF DC F9 */	bl way_bg_check2__FP8daE_PM_c4cXyz4cXyz
/* 80744A74  2C 03 00 00 */	cmpwi r3, 0
/* 80744A78  41 82 02 E8 */	beq lbl_80744D60
/* 80744A7C  3B 80 00 00 */	li r28, 0
/* 80744A80  3B A0 00 00 */	li r29, 0
/* 80744A84  C3 A1 00 88 */	lfs f29, 0x88(r1)
/* 80744A88  C3 C1 00 8C */	lfs f30, 0x8c(r1)
/* 80744A8C  C3 E1 00 90 */	lfs f31, 0x90(r1)
lbl_80744A90:
/* 80744A90  7C 1B EA 14 */	add r0, r27, r29
/* 80744A94  7C 1B 07 34 */	extsh r27, r0
/* 80744A98  D3 A1 00 4C */	stfs f29, 0x4c(r1)
/* 80744A9C  D3 C1 00 50 */	stfs f30, 0x50(r1)
/* 80744AA0  D3 E1 00 54 */	stfs f31, 0x54(r1)
/* 80744AA4  7F C3 F3 78 */	mr r3, r30
/* 80744AA8  38 81 00 4C */	addi r4, r1, 0x4c
/* 80744AAC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80744AB0  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80744AB4  7F 65 DB 78 */	mr r5, r27
/* 80744AB8  4B FF E7 DD */	bl SetStopCam__8daE_PM_cF4cXyzffs
/* 80744ABC  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 80744AC0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80744AC4  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 80744AC8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80744ACC  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 80744AD0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80744AD4  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 80744AD8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80744ADC  C0 1E 06 9C */	lfs f0, 0x69c(r30)
/* 80744AE0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80744AE4  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 80744AE8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80744AEC  7F C3 F3 78 */	mr r3, r30
/* 80744AF0  38 81 00 40 */	addi r4, r1, 0x40
/* 80744AF4  38 A1 00 34 */	addi r5, r1, 0x34
/* 80744AF8  4B FF DC 71 */	bl way_bg_check2__FP8daE_PM_c4cXyz4cXyz
/* 80744AFC  2C 03 00 00 */	cmpwi r3, 0
/* 80744B00  41 82 02 60 */	beq lbl_80744D60
/* 80744B04  3B 9C 00 01 */	addi r28, r28, 1
/* 80744B08  2C 1C 00 04 */	cmpwi r28, 4
/* 80744B0C  3B BD 40 00 */	addi r29, r29, 0x4000
/* 80744B10  41 80 FF 80 */	blt lbl_80744A90
/* 80744B14  48 00 02 4C */	b lbl_80744D60
lbl_80744B18:
/* 80744B18  80 7E 07 04 */	lwz r3, 0x704(r30)
/* 80744B1C  38 80 00 01 */	li r4, 1
/* 80744B20  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80744B24  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80744B28  40 82 00 18 */	bne lbl_80744B40
/* 80744B2C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80744B30  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80744B34  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80744B38  41 82 00 08 */	beq lbl_80744B40
/* 80744B3C  38 80 00 00 */	li r4, 0
lbl_80744B40:
/* 80744B40  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80744B44  41 82 00 50 */	beq lbl_80744B94
/* 80744B48  88 7E 06 12 */	lbz r3, 0x612(r30)
/* 80744B4C  38 03 00 01 */	addi r0, r3, 1
/* 80744B50  98 1E 06 12 */	stb r0, 0x612(r30)
/* 80744B54  7F C3 F3 78 */	mr r3, r30
/* 80744B58  38 80 00 11 */	li r4, 0x11
/* 80744B5C  38 A0 00 00 */	li r5, 0
/* 80744B60  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80744B64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80744B68  4B FF DB 0D */	bl SetAnm__8daE_PM_cFiiff
/* 80744B6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070059@ha */
/* 80744B70  38 03 00 59 */	addi r0, r3, 0x0059 /* 0x00070059@l */
/* 80744B74  90 01 00 20 */	stw r0, 0x20(r1)
/* 80744B78  38 7E 07 20 */	addi r3, r30, 0x720
/* 80744B7C  38 81 00 20 */	addi r4, r1, 0x20
/* 80744B80  38 A0 FF FF */	li r5, -1
/* 80744B84  81 9E 07 20 */	lwz r12, 0x720(r30)
/* 80744B88  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80744B8C  7D 89 03 A6 */	mtctr r12
/* 80744B90  4E 80 04 21 */	bctrl 
lbl_80744B94:
/* 80744B94  7F C3 F3 78 */	mr r3, r30
/* 80744B98  4B FF E6 79 */	bl SetStopingCam__8daE_PM_cFv
/* 80744B9C  48 00 01 C4 */	b lbl_80744D60
lbl_80744BA0:
/* 80744BA0  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80744BA4  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80744BA8  4B FF E9 7D */	bl SetMoveCam__8daE_PM_cFff
/* 80744BAC  80 7E 07 04 */	lwz r3, 0x704(r30)
/* 80744BB0  80 63 00 04 */	lwz r3, 4(r3)
/* 80744BB4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80744BB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80744BBC  38 63 03 90 */	addi r3, r3, 0x390
/* 80744BC0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80744BC4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80744BC8  80 84 00 00 */	lwz r4, 0(r4)
/* 80744BCC  4B C0 18 E4 */	b PSMTXCopy
/* 80744BD0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80744BD4  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80744BD8  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80744BDC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80744BE0  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80744BE4  38 61 00 7C */	addi r3, r1, 0x7c
/* 80744BE8  7C 64 1B 78 */	mr r4, r3
/* 80744BEC  4B B2 C3 00 */	b MtxPosition__FP4cXyzP4cXyz
/* 80744BF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80744BF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80744BF8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80744BFC  38 00 00 FF */	li r0, 0xff
/* 80744C00  90 01 00 08 */	stw r0, 8(r1)
/* 80744C04  38 80 00 00 */	li r4, 0
/* 80744C08  90 81 00 0C */	stw r4, 0xc(r1)
/* 80744C0C  38 00 FF FF */	li r0, -1
/* 80744C10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80744C14  90 81 00 14 */	stw r4, 0x14(r1)
/* 80744C18  90 81 00 18 */	stw r4, 0x18(r1)
/* 80744C1C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80744C20  80 9E 06 28 */	lwz r4, 0x628(r30)
/* 80744C24  38 A0 00 00 */	li r5, 0
/* 80744C28  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000880C@ha */
/* 80744C2C  38 C6 88 0C */	addi r6, r6, 0x880C /* 0x0000880C@l */
/* 80744C30  38 E1 00 7C */	addi r7, r1, 0x7c
/* 80744C34  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80744C38  39 3E 04 DC */	addi r9, r30, 0x4dc
/* 80744C3C  39 5E 04 EC */	addi r10, r30, 0x4ec
/* 80744C40  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80744C44  4B 90 88 88 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80744C48  90 7E 06 28 */	stw r3, 0x628(r30)
/* 80744C4C  80 7E 07 04 */	lwz r3, 0x704(r30)
/* 80744C50  38 80 00 01 */	li r4, 1
/* 80744C54  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80744C58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80744C5C  40 82 00 18 */	bne lbl_80744C74
/* 80744C60  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80744C64  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80744C68  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80744C6C  41 82 00 08 */	beq lbl_80744C74
/* 80744C70  38 80 00 00 */	li r4, 0
lbl_80744C74:
/* 80744C74  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80744C78  41 82 00 E0 */	beq lbl_80744D58
/* 80744C7C  88 9E 06 1B */	lbz r4, 0x61b(r30)
/* 80744C80  28 04 00 FF */	cmplwi r4, 0xff
/* 80744C84  41 82 00 38 */	beq lbl_80744CBC
/* 80744C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80744C8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80744C90  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80744C94  7C 05 07 74 */	extsb r5, r0
/* 80744C98  4B 8F 06 C8 */	b isSwitch__10dSv_info_cCFii
/* 80744C9C  2C 03 00 00 */	cmpwi r3, 0
/* 80744CA0  40 82 00 1C */	bne lbl_80744CBC
/* 80744CA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80744CA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80744CAC  88 9E 06 1B */	lbz r4, 0x61b(r30)
/* 80744CB0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80744CB4  7C 05 07 74 */	extsb r5, r0
/* 80744CB8  4B 8F 05 48 */	b onSwitch__10dSv_info_cFii
lbl_80744CBC:
/* 80744CBC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80744CC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80744CC4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80744CC8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80744CCC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80744CD0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80744CD4  7F C3 F3 78 */	mr r3, r30
/* 80744CD8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000880D@ha */
/* 80744CDC  38 84 88 0D */	addi r4, r4, 0x880D /* 0x0000880D@l */
/* 80744CE0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80744CE4  4B FF D9 1D */	bl Particle_Set__8daE_PM_cFUs4cXyz
/* 80744CE8  88 7E 06 11 */	lbz r3, 0x611(r30)
/* 80744CEC  38 03 00 01 */	addi r0, r3, 1
/* 80744CF0  98 1E 06 11 */	stb r0, 0x611(r30)
/* 80744CF4  38 00 00 00 */	li r0, 0
/* 80744CF8  98 1E 06 12 */	stb r0, 0x612(r30)
/* 80744CFC  38 00 00 14 */	li r0, 0x14
/* 80744D00  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 80744D04  7F C3 F3 78 */	mr r3, r30
/* 80744D08  4B FF DF 8D */	bl SearchNearP__8daE_PM_cFv
/* 80744D0C  C0 5E 05 EC */	lfs f2, 0x5ec(r30)
/* 80744D10  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 80744D14  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80744D18  EC 21 00 2A */	fadds f1, f1, f0
/* 80744D1C  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80744D20  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80744D24  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80744D28  D0 5E 04 D8 */	stfs f2, 0x4d8(r30)
/* 80744D2C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80744D30  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80744D34  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80744D38  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80744D3C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80744D40  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80744D44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80744D48  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80744D4C  38 00 00 02 */	li r0, 2
/* 80744D50  98 1E 05 DC */	stb r0, 0x5dc(r30)
/* 80744D54  48 00 00 1C */	b lbl_80744D70
lbl_80744D58:
/* 80744D58  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80744D5C  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
lbl_80744D60:
/* 80744D60  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80744D64  38 9E 06 98 */	addi r4, r30, 0x698
/* 80744D68  4B B2 BE 9C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80744D6C  B0 7E 06 02 */	sth r3, 0x602(r30)
lbl_80744D70:
/* 80744D70  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80744D74  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80744D78  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80744D7C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80744D80  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80744D84  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80744D88  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80744D8C  4B C1 D4 94 */	b _restgpr_27
/* 80744D90  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80744D94  7C 08 03 A6 */	mtlr r0
/* 80744D98  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80744D9C  4E 80 00 20 */	blr 
