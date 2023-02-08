lbl_80C712F4:
/* 80C712F4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C712F8  7C 08 02 A6 */	mflr r0
/* 80C712FC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C71300  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C71304  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C71308  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80C7130C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80C71310  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80C71314  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80C71318  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7131C  4B 6F 0E A9 */	bl _savegpr_23
/* 80C71320  7C 7E 1B 78 */	mr r30, r3
/* 80C71324  7C 9F 23 78 */	mr r31, r4
/* 80C71328  3C 60 80 C7 */	lis r3, lit_3639@ha /* 0x80C7214C@ha */
/* 80C7132C  3B 63 21 4C */	addi r27, r3, lit_3639@l /* 0x80C7214C@l */
/* 80C71330  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C71334  4B 3D 75 39 */	bl eventUpdate__17dEvLib_callback_cFv
/* 80C71338  7F C3 F3 78 */	mr r3, r30
/* 80C7133C  48 00 01 59 */	bl moveGate__17daLv6ChangeGate_cFv
/* 80C71340  3B 00 00 00 */	li r24, 0
/* 80C71344  3B A0 00 00 */	li r29, 0
lbl_80C71348:
/* 80C71348  3B 5D 06 04 */	addi r26, r29, 0x604
/* 80C7134C  7F 5E D2 14 */	add r26, r30, r26
/* 80C71350  7F 43 D3 78 */	mr r3, r26
/* 80C71354  4B 41 31 0D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C71358  28 03 00 00 */	cmplwi r3, 0
/* 80C7135C  41 82 00 24 */	beq lbl_80C71380
/* 80C71360  7F 43 D3 78 */	mr r3, r26
/* 80C71364  4B 41 31 E5 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C71368  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C7136C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80C71370  41 82 00 10 */	beq lbl_80C71380
/* 80C71374  7F C3 F3 78 */	mr r3, r30
/* 80C71378  48 00 06 FD */	bl init_modeBreak__17daLv6ChangeGate_cFv
/* 80C7137C  48 00 00 14 */	b lbl_80C71390
lbl_80C71380:
/* 80C71380  3B 18 00 01 */	addi r24, r24, 1
/* 80C71384  2C 18 00 0C */	cmpwi r24, 0xc
/* 80C71388  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80C7138C  41 80 FF BC */	blt lbl_80C71348
lbl_80C71390:
/* 80C71390  C3 BB 00 3C */	lfs f29, 0x3c(r27)
/* 80C71394  3A E0 00 00 */	li r23, 0
/* 80C71398  3B A0 00 00 */	li r29, 0
/* 80C7139C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C713A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C713A4  3B 43 23 3C */	addi r26, r3, 0x233c
/* 80C713A8  C3 DB 00 38 */	lfs f30, 0x38(r27)
/* 80C713AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C713B0  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C713B4  C3 FB 00 48 */	lfs f31, 0x48(r27)
lbl_80C713B8:
/* 80C713B8  C0 1E 14 D8 */	lfs f0, 0x14d8(r30)
/* 80C713BC  EC 1D 00 2A */	fadds f0, f29, f0
/* 80C713C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C713C4  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 80C713C8  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 80C713CC  7F 83 E3 78 */	mr r3, r28
/* 80C713D0  38 80 00 00 */	li r4, 0
/* 80C713D4  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C713D8  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C713DC  4B 39 AE 2D */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80C713E0  7F 83 E3 78 */	mr r3, r28
/* 80C713E4  38 81 00 08 */	addi r4, r1, 8
/* 80C713E8  7C 85 23 78 */	mr r5, r4
/* 80C713EC  4B 6D 59 81 */	bl PSMTXMultVec
/* 80C713F0  38 61 00 08 */	addi r3, r1, 8
/* 80C713F4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C713F8  7C 65 1B 78 */	mr r5, r3
/* 80C713FC  4B 6D 5C 95 */	bl PSVECAdd
/* 80C71400  7F 1E EA 14 */	add r24, r30, r29
/* 80C71404  3B 38 07 28 */	addi r25, r24, 0x728
/* 80C71408  7F 23 CB 78 */	mr r3, r25
/* 80C7140C  C0 3B 00 40 */	lfs f1, 0x40(r27)
/* 80C71410  4B 5F DD F1 */	bl SetR__8cM3dGCylFf
/* 80C71414  7F 23 CB 78 */	mr r3, r25
/* 80C71418  C0 3B 00 44 */	lfs f1, 0x44(r27)
/* 80C7141C  4B 5F DD DD */	bl SetH__8cM3dGCylFf
/* 80C71420  7F 23 CB 78 */	mr r3, r25
/* 80C71424  38 81 00 08 */	addi r4, r1, 8
/* 80C71428  4B 5F DD B5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C7142C  7F 43 D3 78 */	mr r3, r26
/* 80C71430  38 98 06 04 */	addi r4, r24, 0x604
/* 80C71434  4B 5F 37 75 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C71438  EF BD F8 2A */	fadds f29, f29, f31
/* 80C7143C  3A F7 00 01 */	addi r23, r23, 1
/* 80C71440  2C 17 00 0C */	cmpwi r23, 0xc
/* 80C71444  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80C71448  41 80 FF 70 */	blt lbl_80C713B8
/* 80C7144C  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C71450  38 03 00 24 */	addi r0, r3, 0x24
/* 80C71454  90 1F 00 00 */	stw r0, 0(r31)
/* 80C71458  7F C3 F3 78 */	mr r3, r30
/* 80C7145C  4B FF F8 DD */	bl setBaseMtx__17daLv6ChangeGate_cFv
/* 80C71460  38 60 00 01 */	li r3, 1
/* 80C71464  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C71468  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C7146C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80C71470  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80C71474  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80C71478  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80C7147C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C71480  4B 6F 0D 91 */	bl _restgpr_23
/* 80C71484  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C71488  7C 08 03 A6 */	mtlr r0
/* 80C7148C  38 21 00 70 */	addi r1, r1, 0x70
/* 80C71490  4E 80 00 20 */	blr 
