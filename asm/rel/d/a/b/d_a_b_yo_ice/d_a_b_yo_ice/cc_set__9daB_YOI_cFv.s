lbl_8063D1B0:
/* 8063D1B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8063D1B4  7C 08 02 A6 */	mflr r0
/* 8063D1B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8063D1BC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8063D1C0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8063D1C4  39 61 00 30 */	addi r11, r1, 0x30
/* 8063D1C8  4B D2 50 10 */	b _savegpr_28
/* 8063D1CC  7C 7C 1B 78 */	mr r28, r3
/* 8063D1D0  3C 60 80 64 */	lis r3, lit_3776@ha
/* 8063D1D4  3B C3 DC 84 */	addi r30, r3, lit_3776@l
/* 8063D1D8  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8063D1DC  38 63 00 24 */	addi r3, r3, 0x24
/* 8063D1E0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8063D1E4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8063D1E8  4B D0 92 C8 */	b PSMTXCopy
/* 8063D1EC  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8063D1F0  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 8063D1F4  FC 60 08 90 */	fmr f3, f1
/* 8063D1F8  4B 9C FB A4 */	b transM__14mDoMtx_stack_cFfff
/* 8063D1FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8063D200  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 8063D204  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8063D208  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 8063D20C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8063D210  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 8063D214  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8063D218  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 8063D21C  38 7C 0A F4 */	addi r3, r28, 0xaf4
/* 8063D220  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8063D224  4B C3 1F B8 */	b SetC__8cM3dGCylFRC4cXyz
/* 8063D228  38 7C 0A F4 */	addi r3, r28, 0xaf4
/* 8063D22C  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 8063D230  4B C3 1F C8 */	b SetH__8cM3dGCylFf
/* 8063D234  38 7C 0A F4 */	addi r3, r28, 0xaf4
/* 8063D238  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8063D23C  4B C3 1F C4 */	b SetR__8cM3dGCylFf
/* 8063D240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063D244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063D248  3B A3 23 3C */	addi r29, r3, 0x233c
/* 8063D24C  7F A3 EB 78 */	mr r3, r29
/* 8063D250  38 9C 09 D0 */	addi r4, r28, 0x9d0
/* 8063D254  4B C2 79 54 */	b Set__4cCcSFP8cCcD_Obj
/* 8063D258  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8063D25C  4B 9C FB 08 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8063D260  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 8063D264  4B 9C FC E0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8063D268  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8063D26C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8063D270  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 8063D274  EC 42 00 2A */	fadds f2, f2, f0
/* 8063D278  FC 60 08 90 */	fmr f3, f1
/* 8063D27C  4B 9C FB 20 */	b transM__14mDoMtx_stack_cFfff
/* 8063D280  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8063D284  D0 01 00 08 */	stfs f0, 8(r1)
/* 8063D288  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8063D28C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8063D290  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8063D294  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8063D298  C3 FE 01 0C */	lfs f31, 0x10c(r30)
/* 8063D29C  88 1C 06 AD */	lbz r0, 0x6ad(r28)
/* 8063D2A0  28 00 00 00 */	cmplwi r0, 0
/* 8063D2A4  41 82 00 08 */	beq lbl_8063D2AC
/* 8063D2A8  C3 FE 01 10 */	lfs f31, 0x110(r30)
lbl_8063D2AC:
/* 8063D2AC  38 7C 08 7C */	addi r3, r28, 0x87c
/* 8063D2B0  38 81 00 08 */	addi r4, r1, 8
/* 8063D2B4  4B C3 1F 28 */	b SetC__8cM3dGCylFRC4cXyz
/* 8063D2B8  38 7C 08 7C */	addi r3, r28, 0x87c
/* 8063D2BC  FC 20 F8 90 */	fmr f1, f31
/* 8063D2C0  4B C3 1F 40 */	b SetR__8cM3dGCylFf
/* 8063D2C4  38 7C 08 7C */	addi r3, r28, 0x87c
/* 8063D2C8  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 8063D2CC  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 8063D2D0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8063D2D4  4B C3 1F 24 */	b SetH__8cM3dGCylFf
/* 8063D2D8  7F A3 EB 78 */	mr r3, r29
/* 8063D2DC  38 9C 07 58 */	addi r4, r28, 0x758
/* 8063D2E0  4B C2 78 C8 */	b Set__4cCcSFP8cCcD_Obj
/* 8063D2E4  C3 FE 01 0C */	lfs f31, 0x10c(r30)
/* 8063D2E8  88 1C 06 AD */	lbz r0, 0x6ad(r28)
/* 8063D2EC  28 00 00 00 */	cmplwi r0, 0
/* 8063D2F0  41 82 00 08 */	beq lbl_8063D2F8
/* 8063D2F4  C3 FE 00 A8 */	lfs f31, 0xa8(r30)
lbl_8063D2F8:
/* 8063D2F8  38 7C 09 B8 */	addi r3, r28, 0x9b8
/* 8063D2FC  38 81 00 08 */	addi r4, r1, 8
/* 8063D300  4B C3 1E DC */	b SetC__8cM3dGCylFRC4cXyz
/* 8063D304  38 7C 09 B8 */	addi r3, r28, 0x9b8
/* 8063D308  FC 20 F8 90 */	fmr f1, f31
/* 8063D30C  4B C3 1E F4 */	b SetR__8cM3dGCylFf
/* 8063D310  38 7C 09 B8 */	addi r3, r28, 0x9b8
/* 8063D314  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 8063D318  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 8063D31C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8063D320  4B C3 1E D8 */	b SetH__8cM3dGCylFf
/* 8063D324  7F A3 EB 78 */	mr r3, r29
/* 8063D328  38 9C 08 94 */	addi r4, r28, 0x894
/* 8063D32C  4B C2 78 7C */	b Set__4cCcSFP8cCcD_Obj
/* 8063D330  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8063D334  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8063D338  39 61 00 30 */	addi r11, r1, 0x30
/* 8063D33C  4B D2 4E E8 */	b _restgpr_28
/* 8063D340  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8063D344  7C 08 03 A6 */	mtlr r0
/* 8063D348  38 21 00 40 */	addi r1, r1, 0x40
/* 8063D34C  4E 80 00 20 */	blr 
