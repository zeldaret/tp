lbl_8001D020:
/* 8001D020  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8001D024  7C 08 02 A6 */	mflr r0
/* 8001D028  90 01 00 64 */	stw r0, 0x64(r1)
/* 8001D02C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8001D030  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8001D034  39 61 00 50 */	addi r11, r1, 0x50
/* 8001D038  48 34 51 9D */	bl _savegpr_27
/* 8001D03C  7C 7B 1B 78 */	mr r27, r3
/* 8001D040  7C 9C 23 78 */	mr r28, r4
/* 8001D044  7C DD 33 78 */	mr r29, r6
/* 8001D048  FF E0 08 90 */	fmr f31, f1
/* 8001D04C  7C FE 3B 78 */	mr r30, r7
/* 8001D050  7D 1F 43 78 */	mr r31, r8
/* 8001D054  C0 45 00 08 */	lfs f2, 8(r5)
/* 8001D058  C0 22 82 48 */	lfs f1, lit_6035(r2)
/* 8001D05C  C0 05 00 04 */	lfs f0, 4(r5)
/* 8001D060  EC 21 00 2A */	fadds f1, f1, f0
/* 8001D064  C0 05 00 00 */	lfs f0, 0(r5)
/* 8001D068  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8001D06C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8001D070  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8001D074  38 61 00 24 */	addi r3, r1, 0x24
/* 8001D078  48 00 0C 45 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8001D07C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D080  41 82 00 6C */	beq lbl_8001D0EC
/* 8001D084  C0 0D 87 50 */	lfs f0, mGroundY__11fopAcM_gc_c(r13)
/* 8001D088  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8001D08C  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 8001D090  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 8001D094  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 8001D098  38 01 00 18 */	addi r0, r1, 0x18
/* 8001D09C  90 01 00 08 */	stw r0, 8(r1)
/* 8001D0A0  38 60 00 00 */	li r3, 0
/* 8001D0A4  90 61 00 0C */	stw r3, 0xc(r1)
/* 8001D0A8  38 00 FF FF */	li r0, -1
/* 8001D0AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001D0B0  90 61 00 14 */	stw r3, 0x14(r1)
/* 8001D0B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001D0B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001D0BC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8001D0C0  80 9B 00 00 */	lwz r4, 0(r27)
/* 8001D0C4  7F 85 E3 78 */	mr r5, r28
/* 8001D0C8  3C C0 80 3F */	lis r6, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 8001D0CC  38 C6 1C C4 */	addi r6, r6, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 8001D0D0  38 C6 00 14 */	addi r6, r6, 0x14
/* 8001D0D4  38 E1 00 24 */	addi r7, r1, 0x24
/* 8001D0D8  7F C8 F3 78 */	mr r8, r30
/* 8001D0DC  7F E9 FB 78 */	mr r9, r31
/* 8001D0E0  7F AA EB 78 */	mr r10, r29
/* 8001D0E4  48 03 06 E1 */	bl setSimpleFoot__13dPa_control_cFUlPUlR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_ciPC5csXyzPC4cXyzP18dPa_levelEcallBackScPC4cXyz
/* 8001D0E8  90 7B 00 00 */	stw r3, 0(r27)
lbl_8001D0EC:
/* 8001D0EC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8001D0F0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8001D0F4  39 61 00 50 */	addi r11, r1, 0x50
/* 8001D0F8  48 34 51 29 */	bl _restgpr_27
/* 8001D0FC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8001D100  7C 08 03 A6 */	mtlr r0
/* 8001D104  38 21 00 60 */	addi r1, r1, 0x60
/* 8001D108  4E 80 00 20 */	blr 
