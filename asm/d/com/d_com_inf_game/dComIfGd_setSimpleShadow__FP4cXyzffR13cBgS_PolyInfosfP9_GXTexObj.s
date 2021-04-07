lbl_8002D0B4:
/* 8002D0B4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8002D0B8  7C 08 02 A6 */	mflr r0
/* 8002D0BC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8002D0C0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8002D0C4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8002D0C8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8002D0CC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8002D0D0  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8002D0D4  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8002D0D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8002D0DC  48 33 50 FD */	bl _savegpr_28
/* 8002D0E0  7C 7C 1B 78 */	mr r28, r3
/* 8002D0E4  FF A0 08 90 */	fmr f29, f1
/* 8002D0E8  FF C0 10 90 */	fmr f30, f2
/* 8002D0EC  7C 9D 23 78 */	mr r29, r4
/* 8002D0F0  7C BE 2B 78 */	mr r30, r5
/* 8002D0F4  FF E0 18 90 */	fmr f31, f3
/* 8002D0F8  7C DF 33 78 */	mr r31, r6
/* 8002D0FC  7F A3 EB 78 */	mr r3, r29
/* 8002D100  48 23 AF F9 */	bl ChkSetInfo__13cBgS_PolyInfoCFv
/* 8002D104  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8002D108  41 82 00 70 */	beq lbl_8002D178
/* 8002D10C  C0 02 83 00 */	lfs f0, lit_5090(r2)
/* 8002D110  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 8002D114  41 82 00 64 */	beq lbl_8002D178
/* 8002D118  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8002D11C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8002D120  90 01 00 18 */	stw r0, 0x18(r1)
/* 8002D124  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D128  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D12C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8002D130  7F A4 EB 78 */	mr r4, r29
/* 8002D134  38 A1 00 08 */	addi r5, r1, 8
/* 8002D138  48 04 76 0D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8002D13C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D140  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D144  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 8002D148  7F 84 E3 78 */	mr r4, r28
/* 8002D14C  FC 20 E8 90 */	fmr f1, f29
/* 8002D150  FC 40 F0 90 */	fmr f2, f30
/* 8002D154  38 A1 00 08 */	addi r5, r1, 8
/* 8002D158  7F C6 F3 78 */	mr r6, r30
/* 8002D15C  FC 60 F8 90 */	fmr f3, f31
/* 8002D160  7F E7 FB 78 */	mr r7, r31
/* 8002D164  48 02 8E 21 */	bl setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj
/* 8002D168  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8002D16C  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8002D170  90 01 00 18 */	stw r0, 0x18(r1)
/* 8002D174  48 00 00 08 */	b lbl_8002D17C
lbl_8002D178:
/* 8002D178  38 60 00 00 */	li r3, 0
lbl_8002D17C:
/* 8002D17C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8002D180  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8002D184  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8002D188  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8002D18C  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 8002D190  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8002D194  39 61 00 30 */	addi r11, r1, 0x30
/* 8002D198  48 33 50 8D */	bl _restgpr_28
/* 8002D19C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8002D1A0  7C 08 03 A6 */	mtlr r0
/* 8002D1A4  38 21 00 60 */	addi r1, r1, 0x60
/* 8002D1A8  4E 80 00 20 */	blr 
