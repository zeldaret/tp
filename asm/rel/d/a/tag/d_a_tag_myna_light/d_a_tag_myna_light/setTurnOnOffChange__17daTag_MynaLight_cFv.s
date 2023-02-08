lbl_80D5CE40:
/* 80D5CE40  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80D5CE44  7C 08 02 A6 */	mflr r0
/* 80D5CE48  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D5CE4C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80D5CE50  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80D5CE54  7C 7E 1B 78 */	mr r30, r3
/* 80D5CE58  3C 60 80 D6 */	lis r3, lit_3694@ha /* 0x80D5D300@ha */
/* 80D5CE5C  3B E3 D3 00 */	addi r31, r3, lit_3694@l /* 0x80D5D300@l */
/* 80D5CE60  88 9E 05 78 */	lbz r4, 0x578(r30)
/* 80D5CE64  88 1E 05 79 */	lbz r0, 0x579(r30)
/* 80D5CE68  7C 64 00 50 */	subf r3, r4, r0
/* 80D5CE6C  30 03 FF FF */	addic r0, r3, -1
/* 80D5CE70  7C 00 19 10 */	subfe r0, r0, r3
/* 80D5CE74  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D5CE78  41 82 02 B4 */	beq lbl_80D5D12C
/* 80D5CE7C  98 9E 05 79 */	stb r4, 0x579(r30)
/* 80D5CE80  88 1E 05 79 */	lbz r0, 0x579(r30)
/* 80D5CE84  28 00 00 00 */	cmplwi r0, 0
/* 80D5CE88  41 82 01 B8 */	beq lbl_80D5D040
/* 80D5CE8C  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80D5CE90  38 63 0D 64 */	addi r3, r3, mStayNo__20dStage_roomControl_c+0x0@l /* 0x80450D64@l */
/* 80D5CE94  88 63 00 00 */	lbz r3, 0(r3)
/* 80D5CE98  7C 63 07 75 */	extsb. r3, r3
/* 80D5CE9C  41 82 00 4C */	beq lbl_80D5CEE8
/* 80D5CEA0  4B 2D 01 CD */	bl dComIfGp_getReverb__Fi
/* 80D5CEA4  7C 67 1B 78 */	mr r7, r3
/* 80D5CEA8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008011E@ha */
/* 80D5CEAC  38 03 01 1E */	addi r0, r3, 0x011E /* 0x0008011E@l */
/* 80D5CEB0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D5CEB4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D5CEB8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D5CEBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5CEC0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D5CEC4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D5CEC8  38 C0 00 00 */	li r6, 0
/* 80D5CECC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D5CED0  FC 40 08 90 */	fmr f2, f1
/* 80D5CED4  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80D5CED8  FC 80 18 90 */	fmr f4, f3
/* 80D5CEDC  39 00 00 00 */	li r8, 0
/* 80D5CEE0  4B 54 EA A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D5CEE4  48 00 00 44 */	b lbl_80D5CF28
lbl_80D5CEE8:
/* 80D5CEE8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008011E@ha */
/* 80D5CEEC  38 03 01 1E */	addi r0, r3, 0x011E /* 0x0008011E@l */
/* 80D5CEF0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D5CEF4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D5CEF8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D5CEFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5CF00  38 81 00 28 */	addi r4, r1, 0x28
/* 80D5CF04  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D5CF08  38 C0 00 00 */	li r6, 0
/* 80D5CF0C  38 E0 00 00 */	li r7, 0
/* 80D5CF10  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D5CF14  FC 40 08 90 */	fmr f2, f1
/* 80D5CF18  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80D5CF1C  FC 80 18 90 */	fmr f4, f3
/* 80D5CF20  39 00 00 00 */	li r8, 0
/* 80D5CF24  4B 54 EA 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D5CF28:
/* 80D5CF28  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80D5CF2C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80D5CF30  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80D5CF34  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80D5CF38  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D5CF3C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80D5CF40  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80D5CF44  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80D5CF48  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80D5CF4C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80D5CF50  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D5CF54  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D5CF58  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D5CF5C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80D5CF60  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80D5CF64  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D5CF68  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80D5CF6C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D5CF70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D5CF74  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D5CF78  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80D5CF7C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80D5CF80  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80D5CF84  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80D5CF88  28 00 00 00 */	cmplwi r0, 0
/* 80D5CF8C  40 82 00 54 */	bne lbl_80D5CFE0
/* 80D5CF90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5CF94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5CF98  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D5CF9C  38 80 00 00 */	li r4, 0
/* 80D5CFA0  90 81 00 08 */	stw r4, 8(r1)
/* 80D5CFA4  38 00 FF FF */	li r0, -1
/* 80D5CFA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5CFAC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D5CFB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D5CFB4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D5CFB8  38 80 00 00 */	li r4, 0
/* 80D5CFBC  38 A0 03 AD */	li r5, 0x3ad
/* 80D5CFC0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D5CFC4  38 E0 00 00 */	li r7, 0
/* 80D5CFC8  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80D5CFCC  39 21 00 60 */	addi r9, r1, 0x60
/* 80D5CFD0  39 40 00 FF */	li r10, 0xff
/* 80D5CFD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D5CFD8  4B 2E FA B9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D5CFDC  90 7E 05 70 */	stw r3, 0x570(r30)
lbl_80D5CFE0:
/* 80D5CFE0  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D5CFE4  28 00 00 00 */	cmplwi r0, 0
/* 80D5CFE8  40 82 01 44 */	bne lbl_80D5D12C
/* 80D5CFEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5CFF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5CFF4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D5CFF8  38 80 00 00 */	li r4, 0
/* 80D5CFFC  90 81 00 08 */	stw r4, 8(r1)
/* 80D5D000  38 00 FF FF */	li r0, -1
/* 80D5D004  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5D008  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D5D00C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D5D010  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D5D014  38 80 00 00 */	li r4, 0
/* 80D5D018  38 A0 03 AF */	li r5, 0x3af
/* 80D5D01C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D5D020  38 E0 00 00 */	li r7, 0
/* 80D5D024  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80D5D028  39 21 00 54 */	addi r9, r1, 0x54
/* 80D5D02C  39 40 00 FF */	li r10, 0xff
/* 80D5D030  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D5D034  4B 2E FA 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D5D038  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80D5D03C  48 00 00 F0 */	b lbl_80D5D12C
lbl_80D5D040:
/* 80D5D040  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80D5D044  38 63 0D 64 */	addi r3, r3, mStayNo__20dStage_roomControl_c+0x0@l /* 0x80450D64@l */
/* 80D5D048  88 63 00 00 */	lbz r3, 0(r3)
/* 80D5D04C  7C 63 07 75 */	extsb. r3, r3
/* 80D5D050  41 82 00 4C */	beq lbl_80D5D09C
/* 80D5D054  4B 2D 00 19 */	bl dComIfGp_getReverb__Fi
/* 80D5D058  7C 67 1B 78 */	mr r7, r3
/* 80D5D05C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008011F@ha */
/* 80D5D060  38 03 01 1F */	addi r0, r3, 0x011F /* 0x0008011F@l */
/* 80D5D064  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5D068  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D5D06C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D5D070  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5D074  38 81 00 24 */	addi r4, r1, 0x24
/* 80D5D078  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D5D07C  38 C0 00 00 */	li r6, 0
/* 80D5D080  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D5D084  FC 40 08 90 */	fmr f2, f1
/* 80D5D088  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80D5D08C  FC 80 18 90 */	fmr f4, f3
/* 80D5D090  39 00 00 00 */	li r8, 0
/* 80D5D094  4B 54 E8 F1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D5D098  48 00 00 44 */	b lbl_80D5D0DC
lbl_80D5D09C:
/* 80D5D09C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008011F@ha */
/* 80D5D0A0  38 03 01 1F */	addi r0, r3, 0x011F /* 0x0008011F@l */
/* 80D5D0A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D5D0A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D5D0AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D5D0B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5D0B4  38 81 00 20 */	addi r4, r1, 0x20
/* 80D5D0B8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D5D0BC  38 C0 00 00 */	li r6, 0
/* 80D5D0C0  38 E0 00 00 */	li r7, 0
/* 80D5D0C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D5D0C8  FC 40 08 90 */	fmr f2, f1
/* 80D5D0CC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80D5D0D0  FC 80 18 90 */	fmr f4, f3
/* 80D5D0D4  39 00 00 00 */	li r8, 0
/* 80D5D0D8  4B 54 E8 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D5D0DC:
/* 80D5D0DC  38 60 00 00 */	li r3, 0
/* 80D5D0E0  38 A0 00 01 */	li r5, 1
/* 80D5D0E4  7C 64 1B 78 */	mr r4, r3
/* 80D5D0E8  38 00 00 02 */	li r0, 2
/* 80D5D0EC  7C 09 03 A6 */	mtctr r0
lbl_80D5D0F0:
/* 80D5D0F0  38 E3 05 70 */	addi r7, r3, 0x570
/* 80D5D0F4  7C DE 38 2E */	lwzx r6, r30, r7
/* 80D5D0F8  28 06 00 00 */	cmplwi r6, 0
/* 80D5D0FC  41 82 00 28 */	beq lbl_80D5D124
/* 80D5D100  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80D5D104  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80D5D108  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80D5D10C  7C DE 38 2E */	lwzx r6, r30, r7
/* 80D5D110  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80D5D114  60 00 00 01 */	ori r0, r0, 1
/* 80D5D118  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80D5D11C  90 A6 00 24 */	stw r5, 0x24(r6)
/* 80D5D120  7C 9E 39 2E */	stwx r4, r30, r7
lbl_80D5D124:
/* 80D5D124  38 63 00 04 */	addi r3, r3, 4
/* 80D5D128  42 00 FF C8 */	bdnz lbl_80D5D0F0
lbl_80D5D12C:
/* 80D5D12C  88 7E 05 79 */	lbz r3, 0x579(r30)
/* 80D5D130  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80D5D134  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80D5D138  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D5D13C  7C 08 03 A6 */	mtlr r0
/* 80D5D140  38 21 00 80 */	addi r1, r1, 0x80
/* 80D5D144  4E 80 00 20 */	blr 
