lbl_8047D024:
/* 8047D024  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8047D028  7C 08 02 A6 */	mflr r0
/* 8047D02C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8047D030  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8047D034  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8047D038  39 61 00 40 */	addi r11, r1, 0x40
/* 8047D03C  4B EE 51 91 */	bl _savegpr_25
/* 8047D040  7C 7E 1B 78 */	mr r30, r3
/* 8047D044  3C 60 80 48 */	lis r3, lit_3770@ha /* 0x8047D810@ha */
/* 8047D048  3B E3 D8 10 */	addi r31, r3, lit_3770@l /* 0x8047D810@l */
/* 8047D04C  3C 60 80 48 */	lis r3, d_a_obj_ito__stringBase0@ha /* 0x8047D8D4@ha */
/* 8047D050  38 63 D8 D4 */	addi r3, r3, d_a_obj_ito__stringBase0@l /* 0x8047D8D4@l */
/* 8047D054  38 80 00 03 */	li r4, 3
/* 8047D058  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047D05C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047D060  3C A5 00 02 */	addis r5, r5, 2
/* 8047D064  38 C0 00 80 */	li r6, 0x80
/* 8047D068  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8047D06C  4B BB F2 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8047D070  7C 7B 1B 78 */	mr r27, r3
/* 8047D074  3B 40 00 00 */	li r26, 0
/* 8047D078  3B 80 00 00 */	li r28, 0
/* 8047D07C  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_8047D080:
/* 8047D080  7F 63 DB 78 */	mr r3, r27
/* 8047D084  3C 80 00 08 */	lis r4, 8
/* 8047D088  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 8047D08C  4B B9 7B C9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8047D090  38 1C 05 74 */	addi r0, r28, 0x574
/* 8047D094  7C 7E 01 2E */	stwx r3, r30, r0
/* 8047D098  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8047D09C  28 00 00 00 */	cmplwi r0, 0
/* 8047D0A0  40 82 00 0C */	bne lbl_8047D0AC
/* 8047D0A4  38 60 00 00 */	li r3, 0
/* 8047D0A8  48 00 01 10 */	b lbl_8047D1B8
lbl_8047D0AC:
/* 8047D0AC  3B 5A 00 01 */	addi r26, r26, 1
/* 8047D0B0  2C 1A 00 02 */	cmpwi r26, 2
/* 8047D0B4  3B 9C 00 04 */	addi r28, r28, 4
/* 8047D0B8  41 80 FF C8 */	blt lbl_8047D080
/* 8047D0BC  38 7E 10 3C */	addi r3, r30, 0x103c
/* 8047D0C0  38 80 00 06 */	li r4, 6
/* 8047D0C4  38 A0 00 14 */	li r5, 0x14
/* 8047D0C8  38 C0 00 01 */	li r6, 1
/* 8047D0CC  4B B9 55 15 */	bl init__19mDoExt_3DlineMat0_cFUsUsi
/* 8047D0D0  2C 03 00 00 */	cmpwi r3, 0
/* 8047D0D4  40 82 00 0C */	bne lbl_8047D0E0
/* 8047D0D8  38 60 00 00 */	li r3, 0
/* 8047D0DC  48 00 00 DC */	b lbl_8047D1B8
lbl_8047D0E0:
/* 8047D0E0  38 7E 12 98 */	addi r3, r30, 0x1298
/* 8047D0E4  38 80 00 06 */	li r4, 6
/* 8047D0E8  38 A0 00 14 */	li r5, 0x14
/* 8047D0EC  38 C0 00 01 */	li r6, 1
/* 8047D0F0  4B B9 54 F1 */	bl init__19mDoExt_3DlineMat0_cFUsUsi
/* 8047D0F4  2C 03 00 00 */	cmpwi r3, 0
/* 8047D0F8  40 82 00 0C */	bne lbl_8047D104
/* 8047D0FC  38 60 00 00 */	li r3, 0
/* 8047D100  48 00 00 B8 */	b lbl_8047D1B8
lbl_8047D104:
/* 8047D104  3B 20 00 00 */	li r25, 0
/* 8047D108  3B A0 00 00 */	li r29, 0
/* 8047D10C  3B 80 00 00 */	li r28, 0
/* 8047D110  C3 FF 00 A4 */	lfs f31, 0xa4(r31)
lbl_8047D114:
/* 8047D114  80 7E 10 54 */	lwz r3, 0x1054(r30)
/* 8047D118  38 1C 00 04 */	addi r0, r28, 4
/* 8047D11C  7F 43 00 2E */	lwzx r26, r3, r0
/* 8047D120  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8047D124  4B DE A8 31 */	bl cM_rndF__Ff
/* 8047D128  EC 1F 08 2A */	fadds f0, f31, f1
/* 8047D12C  38 00 00 14 */	li r0, 0x14
/* 8047D130  7C 09 03 A6 */	mtctr r0
lbl_8047D134:
/* 8047D134  D0 1A 00 00 */	stfs f0, 0(r26)
/* 8047D138  3B 5A 00 04 */	addi r26, r26, 4
/* 8047D13C  42 00 FF F8 */	bdnz lbl_8047D134
/* 8047D140  80 7E 12 B0 */	lwz r3, 0x12b0(r30)
/* 8047D144  38 1C 00 04 */	addi r0, r28, 4
/* 8047D148  7F 63 00 2E */	lwzx r27, r3, r0
/* 8047D14C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8047D150  4B DE A8 05 */	bl cM_rndF__Ff
/* 8047D154  EC 1F 08 2A */	fadds f0, f31, f1
/* 8047D158  38 00 00 14 */	li r0, 0x14
/* 8047D15C  7C 09 03 A6 */	mtctr r0
lbl_8047D160:
/* 8047D160  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8047D164  3B 7B 00 04 */	addi r27, r27, 4
/* 8047D168  42 00 FF F8 */	bdnz lbl_8047D160
/* 8047D16C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8047D170  4B DE A7 E5 */	bl cM_rndF__Ff
/* 8047D174  FC 00 08 1E */	fctiwz f0, f1
/* 8047D178  D8 01 00 08 */	stfd f0, 8(r1)
/* 8047D17C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8047D180  7F 7E EA 14 */	add r27, r30, r29
/* 8047D184  B0 1B 12 80 */	sth r0, 0x1280(r27)
/* 8047D188  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8047D18C  4B DE A7 C9 */	bl cM_rndF__Ff
/* 8047D190  FC 00 08 1E */	fctiwz f0, f1
/* 8047D194  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8047D198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D19C  B0 1B 14 DC */	sth r0, 0x14dc(r27)
/* 8047D1A0  3B 39 00 01 */	addi r25, r25, 1
/* 8047D1A4  2C 19 00 06 */	cmpwi r25, 6
/* 8047D1A8  3B BD 00 02 */	addi r29, r29, 2
/* 8047D1AC  3B 9C 00 20 */	addi r28, r28, 0x20
/* 8047D1B0  41 80 FF 64 */	blt lbl_8047D114
/* 8047D1B4  38 60 00 01 */	li r3, 1
lbl_8047D1B8:
/* 8047D1B8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8047D1BC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8047D1C0  39 61 00 40 */	addi r11, r1, 0x40
/* 8047D1C4  4B EE 50 55 */	bl _restgpr_25
/* 8047D1C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8047D1CC  7C 08 03 A6 */	mtlr r0
/* 8047D1D0  38 21 00 50 */	addi r1, r1, 0x50
/* 8047D1D4  4E 80 00 20 */	blr 
