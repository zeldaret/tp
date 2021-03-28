lbl_80BC3934:
/* 80BC3934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC3938  7C 08 02 A6 */	mflr r0
/* 80BC393C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC3940  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC3944  4B 79 E8 94 */	b _savegpr_28
/* 80BC3948  7C 7D 1B 78 */	mr r29, r3
/* 80BC394C  7C 9E 23 78 */	mr r30, r4
/* 80BC3950  3C 60 80 BC */	lis r3, cNullVec__6Z2Calc@ha
/* 80BC3954  3B E3 40 BC */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80BC3958  3C 60 80 BC */	lis r3, data_80BC422C@ha
/* 80BC395C  38 A3 42 2C */	addi r5, r3, data_80BC422C@l
/* 80BC3960  88 05 00 00 */	lbz r0, 0(r5)
/* 80BC3964  7C 00 07 75 */	extsb. r0, r0
/* 80BC3968  40 82 00 40 */	bne lbl_80BC39A8
/* 80BC396C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80BC3970  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80BC3974  90 7F 00 7C */	stw r3, 0x7c(r31)
/* 80BC3978  90 1F 00 80 */	stw r0, 0x80(r31)
/* 80BC397C  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80BC3980  90 1F 00 84 */	stw r0, 0x84(r31)
/* 80BC3984  38 9F 00 7C */	addi r4, r31, 0x7c
/* 80BC3988  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80BC398C  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 80BC3990  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BC3994  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BC3998  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 80BC399C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BC39A0  38 00 00 01 */	li r0, 1
/* 80BC39A4  98 05 00 00 */	stb r0, 0(r5)
lbl_80BC39A8:
/* 80BC39A8  88 9D 07 2A */	lbz r4, 0x72a(r29)
/* 80BC39AC  28 04 00 FF */	cmplwi r4, 0xff
/* 80BC39B0  41 82 00 48 */	beq lbl_80BC39F8
/* 80BC39B4  8B 9D 07 2C */	lbz r28, 0x72c(r29)
/* 80BC39B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC39BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC39C0  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80BC39C4  7C 05 07 74 */	extsb r5, r0
/* 80BC39C8  4B 47 19 98 */	b isSwitch__10dSv_info_cCFii
/* 80BC39CC  98 7D 07 2C */	stb r3, 0x72c(r29)
/* 80BC39D0  88 1D 07 2C */	lbz r0, 0x72c(r29)
/* 80BC39D4  7C 1C 00 40 */	cmplw r28, r0
/* 80BC39D8  41 82 00 20 */	beq lbl_80BC39F8
/* 80BC39DC  28 00 00 00 */	cmplwi r0, 0
/* 80BC39E0  41 82 00 10 */	beq lbl_80BC39F0
/* 80BC39E4  7F A3 EB 78 */	mr r3, r29
/* 80BC39E8  48 00 02 8D */	bl initModeEffOn__13daBubbPilar_cFv
/* 80BC39EC  48 00 00 0C */	b lbl_80BC39F8
lbl_80BC39F0:
/* 80BC39F0  7F A3 EB 78 */	mr r3, r29
/* 80BC39F4  48 00 00 C5 */	bl initModeWait__13daBubbPilar_cFv
lbl_80BC39F8:
/* 80BC39F8  7F A3 EB 78 */	mr r3, r29
/* 80BC39FC  88 1D 07 29 */	lbz r0, 0x729(r29)
/* 80BC3A00  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BC3A04  39 9F 00 7C */	addi r12, r31, 0x7c
/* 80BC3A08  7D 8C 02 14 */	add r12, r12, r0
/* 80BC3A0C  4B 79 E6 78 */	b __ptmf_scall
/* 80BC3A10  60 00 00 00 */	nop 
/* 80BC3A14  4B 5E 78 6C */	b dKy_camera_water_in_status_check__Fv
/* 80BC3A18  2C 03 00 00 */	cmpwi r3, 0
/* 80BC3A1C  41 82 00 34 */	beq lbl_80BC3A50
/* 80BC3A20  38 60 00 00 */	li r3, 0
/* 80BC3A24  38 80 00 FF */	li r4, 0xff
/* 80BC3A28  38 00 00 04 */	li r0, 4
/* 80BC3A2C  7C 09 03 A6 */	mtctr r0
lbl_80BC3A30:
/* 80BC3A30  38 03 07 40 */	addi r0, r3, 0x740
/* 80BC3A34  7C BD 00 2E */	lwzx r5, r29, r0
/* 80BC3A38  28 05 00 00 */	cmplwi r5, 0
/* 80BC3A3C  41 82 00 08 */	beq lbl_80BC3A44
/* 80BC3A40  98 85 00 BB */	stb r4, 0xbb(r5)
lbl_80BC3A44:
/* 80BC3A44  38 63 00 04 */	addi r3, r3, 4
/* 80BC3A48  42 00 FF E8 */	bdnz lbl_80BC3A30
/* 80BC3A4C  48 00 00 30 */	b lbl_80BC3A7C
lbl_80BC3A50:
/* 80BC3A50  38 60 00 00 */	li r3, 0
/* 80BC3A54  38 80 00 20 */	li r4, 0x20
/* 80BC3A58  38 00 00 04 */	li r0, 4
/* 80BC3A5C  7C 09 03 A6 */	mtctr r0
lbl_80BC3A60:
/* 80BC3A60  38 03 07 40 */	addi r0, r3, 0x740
/* 80BC3A64  7C BD 00 2E */	lwzx r5, r29, r0
/* 80BC3A68  28 05 00 00 */	cmplwi r5, 0
/* 80BC3A6C  41 82 00 08 */	beq lbl_80BC3A74
/* 80BC3A70  98 85 00 BB */	stb r4, 0xbb(r5)
lbl_80BC3A74:
/* 80BC3A74  38 63 00 04 */	addi r3, r3, 4
/* 80BC3A78  42 00 FF E8 */	bdnz lbl_80BC3A60
lbl_80BC3A7C:
/* 80BC3A7C  88 1D 07 2D */	lbz r0, 0x72d(r29)
/* 80BC3A80  54 00 10 3A */	slwi r0, r0, 2
/* 80BC3A84  7C 7D 02 14 */	add r3, r29, r0
/* 80BC3A88  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80BC3A8C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BC3A90  90 1E 00 00 */	stw r0, 0(r30)
/* 80BC3A94  7F A3 EB 78 */	mr r3, r29
/* 80BC3A98  4B FF F9 C9 */	bl setBaseMtx__13daBubbPilar_cFv
/* 80BC3A9C  38 60 00 01 */	li r3, 1
/* 80BC3AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC3AA4  4B 79 E7 80 */	b _restgpr_28
/* 80BC3AA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC3AAC  7C 08 03 A6 */	mtlr r0
/* 80BC3AB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC3AB4  4E 80 00 20 */	blr 
