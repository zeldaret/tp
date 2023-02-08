lbl_801D2454:
/* 801D2454  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801D2458  7C 08 02 A6 */	mflr r0
/* 801D245C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D2460  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801D2464  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 801D2468  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801D246C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 801D2470  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 801D2474  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 801D2478  39 61 00 20 */	addi r11, r1, 0x20
/* 801D247C  48 18 FD 5D */	bl _savegpr_28
/* 801D2480  7C 7C 1B 78 */	mr r28, r3
/* 801D2484  7C 9D 23 78 */	mr r29, r4
/* 801D2488  FF A0 08 90 */	fmr f29, f1
/* 801D248C  FF C0 10 90 */	fmr f30, f2
/* 801D2490  FF E0 18 90 */	fmr f31, f3
/* 801D2494  7C FE 3B 78 */	mr r30, r7
/* 801D2498  7D 1F 43 78 */	mr r31, r8
/* 801D249C  7C A4 2B 78 */	mr r4, r5
/* 801D24A0  7C C5 33 78 */	mr r5, r6
/* 801D24A4  38 C1 00 0C */	addi r6, r1, 0xc
/* 801D24A8  38 E1 00 08 */	addi r7, r1, 8
/* 801D24AC  48 00 08 1D */	bl calcOffset__18dMenu_Fmap2DBack_cFUcPCcPfPf
/* 801D24B0  7F 83 E3 78 */	mr r3, r28
/* 801D24B4  7F A4 EB 78 */	mr r4, r29
/* 801D24B8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801D24BC  EC 3D 00 2A */	fadds f1, f29, f0
/* 801D24C0  C0 01 00 08 */	lfs f0, 8(r1)
/* 801D24C4  EC 5E 00 2A */	fadds f2, f30, f0
/* 801D24C8  FC 60 F8 90 */	fmr f3, f31
/* 801D24CC  7F C5 F3 78 */	mr r5, r30
/* 801D24D0  7F E6 FB 78 */	mr r6, r31
/* 801D24D4  4B FF FC 2D */	bl setIcon2DPos__18dMenu_Fmap2DBack_cFUcfffUcb
/* 801D24D8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 801D24DC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801D24E0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 801D24E4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801D24E8  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 801D24EC  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 801D24F0  39 61 00 20 */	addi r11, r1, 0x20
/* 801D24F4  48 18 FD 31 */	bl _restgpr_28
/* 801D24F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801D24FC  7C 08 03 A6 */	mtlr r0
/* 801D2500  38 21 00 50 */	addi r1, r1, 0x50
/* 801D2504  4E 80 00 20 */	blr 
