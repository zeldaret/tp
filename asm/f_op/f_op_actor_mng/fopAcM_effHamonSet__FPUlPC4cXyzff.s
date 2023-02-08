lbl_8001D10C:
/* 8001D10C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8001D110  7C 08 02 A6 */	mflr r0
/* 8001D114  90 01 00 64 */	stw r0, 0x64(r1)
/* 8001D118  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8001D11C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8001D120  39 61 00 50 */	addi r11, r1, 0x50
/* 8001D124  48 34 50 B1 */	bl _savegpr_27
/* 8001D128  7C 7B 1B 78 */	mr r27, r3
/* 8001D12C  7C 9C 23 78 */	mr r28, r4
/* 8001D130  FF E0 10 90 */	fmr f31, f2
/* 8001D134  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8001D138  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8001D13C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8001D140  3B A0 00 00 */	li r29, 0
/* 8001D144  3B E0 00 00 */	li r31, 0
/* 8001D148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001D14C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_8001D150:
/* 8001D150  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8001D154  38 00 00 FF */	li r0, 0xff
/* 8001D158  90 01 00 08 */	stw r0, 8(r1)
/* 8001D15C  38 80 00 00 */	li r4, 0
/* 8001D160  90 81 00 0C */	stw r4, 0xc(r1)
/* 8001D164  38 00 FF FF */	li r0, -1
/* 8001D168  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001D16C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8001D170  90 81 00 18 */	stw r4, 0x18(r1)
/* 8001D174  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8001D178  80 9B 00 00 */	lwz r4, 0(r27)
/* 8001D17C  38 A0 00 00 */	li r5, 0
/* 8001D180  38 C2 82 50 */	la r6, hamon_name(r2) /* 80451C50-_SDA2_BASE_ */
/* 8001D184  7C C6 FA 2E */	lhzx r6, r6, r31
/* 8001D188  7F 87 E3 78 */	mr r7, r28
/* 8001D18C  39 00 00 00 */	li r8, 0
/* 8001D190  39 20 00 00 */	li r9, 0
/* 8001D194  39 41 00 20 */	addi r10, r1, 0x20
/* 8001D198  C0 22 82 38 */	lfs f1, lit_5810(r2)
/* 8001D19C  48 03 03 31 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8001D1A0  90 7B 00 00 */	stw r3, 0(r27)
/* 8001D1A4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8001D1A8  38 63 02 10 */	addi r3, r3, 0x210
/* 8001D1AC  80 9B 00 00 */	lwz r4, 0(r27)
/* 8001D1B0  48 02 E7 69 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8001D1B4  28 03 00 00 */	cmplwi r3, 0
/* 8001D1B8  41 82 00 08 */	beq lbl_8001D1C0
/* 8001D1BC  D3 E3 00 28 */	stfs f31, 0x28(r3)
lbl_8001D1C0:
/* 8001D1C0  3B BD 00 01 */	addi r29, r29, 1
/* 8001D1C4  2C 1D 00 02 */	cmpwi r29, 2
/* 8001D1C8  3B 7B 00 04 */	addi r27, r27, 4
/* 8001D1CC  3B FF 00 02 */	addi r31, r31, 2
/* 8001D1D0  41 80 FF 80 */	blt lbl_8001D150
/* 8001D1D4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8001D1D8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8001D1DC  39 61 00 50 */	addi r11, r1, 0x50
/* 8001D1E0  48 34 50 41 */	bl _restgpr_27
/* 8001D1E4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8001D1E8  7C 08 03 A6 */	mtlr r0
/* 8001D1EC  38 21 00 60 */	addi r1, r1, 0x60
/* 8001D1F0  4E 80 00 20 */	blr 
