lbl_80BD342C:
/* 80BD342C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80BD3430  7C 08 02 A6 */	mflr r0
/* 80BD3434  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BD3438  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80BD343C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80BD3440  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80BD3444  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80BD3448  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80BD344C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80BD3450  39 61 00 60 */	addi r11, r1, 0x60
/* 80BD3454  4B 78 ED 68 */	b _savegpr_21
/* 80BD3458  7C 79 1B 78 */	mr r25, r3
/* 80BD345C  7C 9A 23 78 */	mr r26, r4
/* 80BD3460  7C BB 2B 78 */	mr r27, r5
/* 80BD3464  7C DC 33 78 */	mr r28, r6
/* 80BD3468  7C FD 3B 78 */	mr r29, r7
/* 80BD346C  3C 60 80 BD */	lis r3, lit_3703@ha
/* 80BD3470  3B E3 3F F0 */	addi r31, r3, lit_3703@l
/* 80BD3474  38 00 00 01 */	li r0, 1
/* 80BD3478  98 19 07 50 */	stb r0, 0x750(r25)
/* 80BD347C  D0 39 07 5C */	stfs f1, 0x75c(r25)
/* 80BD3480  3B C0 00 00 */	li r30, 0
/* 80BD3484  3B 00 00 00 */	li r24, 0
/* 80BD3488  3A E0 00 00 */	li r23, 0
/* 80BD348C  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80BD3490  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD3494  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l
lbl_80BD3498:
/* 80BD3498  C0 3A 00 08 */	lfs f1, 8(r26)
/* 80BD349C  4B 69 44 F0 */	b cM_rndFX__Ff
/* 80BD34A0  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80BD34A4  EF A0 08 2A */	fadds f29, f0, f1
/* 80BD34A8  C0 3A 00 04 */	lfs f1, 4(r26)
/* 80BD34AC  4B 69 44 A8 */	b cM_rndF__Ff
/* 80BD34B0  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80BD34B4  EF C0 08 2A */	fadds f30, f0, f1
/* 80BD34B8  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80BD34BC  4B 69 44 D0 */	b cM_rndFX__Ff
/* 80BD34C0  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80BD34C4  EC 00 08 2A */	fadds f0, f0, f1
/* 80BD34C8  7E B9 BA 14 */	add r21, r25, r23
/* 80BD34CC  D0 15 05 68 */	stfs f0, 0x568(r21)
/* 80BD34D0  D3 D5 05 6C */	stfs f30, 0x56c(r21)
/* 80BD34D4  D3 B5 05 70 */	stfs f29, 0x570(r21)
/* 80BD34D8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BD34DC  4B 69 44 78 */	b cM_rndF__Ff
/* 80BD34E0  EF DF 08 2A */	fadds f30, f31, f1
/* 80BD34E4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BD34E8  4B 69 44 6C */	b cM_rndF__Ff
/* 80BD34EC  EF BF 08 2A */	fadds f29, f31, f1
/* 80BD34F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BD34F4  4B 69 44 60 */	b cM_rndF__Ff
/* 80BD34F8  EC 1F 08 2A */	fadds f0, f31, f1
/* 80BD34FC  D0 15 06 58 */	stfs f0, 0x658(r21)
/* 80BD3500  D3 B5 06 5C */	stfs f29, 0x65c(r21)
/* 80BD3504  D3 D5 06 60 */	stfs f30, 0x660(r21)
/* 80BD3508  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80BD350C  4B 69 44 48 */	b cM_rndF__Ff
/* 80BD3510  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80BD3514  EF C0 08 2A */	fadds f30, f0, f1
/* 80BD3518  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80BD351C  4B 69 44 38 */	b cM_rndF__Ff
/* 80BD3520  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BD3524  EF A0 08 2A */	fadds f29, f0, f1
/* 80BD3528  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80BD352C  4B 69 44 60 */	b cM_rndFX__Ff
/* 80BD3530  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BD3534  EC 00 08 2A */	fadds f0, f0, f1
/* 80BD3538  D0 15 05 E0 */	stfs f0, 0x5e0(r21)
/* 80BD353C  D3 B5 05 E4 */	stfs f29, 0x5e4(r21)
/* 80BD3540  D3 D5 05 E8 */	stfs f30, 0x5e8(r21)
/* 80BD3544  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80BD3548  4B 43 98 1C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD354C  38 79 04 E4 */	addi r3, r25, 0x4e4
/* 80BD3550  4B 43 99 F4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BD3554  38 95 05 68 */	addi r4, r21, 0x568
/* 80BD3558  7E C3 B3 78 */	mr r3, r22
/* 80BD355C  7C 85 23 78 */	mr r5, r4
/* 80BD3560  4B 77 38 0C */	b PSMTXMultVec
/* 80BD3564  38 79 04 E4 */	addi r3, r25, 0x4e4
/* 80BD3568  4B 43 99 A4 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80BD356C  38 95 05 E0 */	addi r4, r21, 0x5e0
/* 80BD3570  7E C3 B3 78 */	mr r3, r22
/* 80BD3574  7C 85 23 78 */	mr r5, r4
/* 80BD3578  4B 77 37 F4 */	b PSMTXMultVec
/* 80BD357C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BD3580  4B 69 44 0C */	b cM_rndFX__Ff
/* 80BD3584  FC 00 08 1E */	fctiwz f0, f1
/* 80BD3588  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BD358C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BD3590  7E B9 C2 14 */	add r21, r25, r24
/* 80BD3594  B0 15 07 0C */	sth r0, 0x70c(r21)
/* 80BD3598  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BD359C  4B 69 43 F0 */	b cM_rndFX__Ff
/* 80BD35A0  FC 00 08 1E */	fctiwz f0, f1
/* 80BD35A4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BD35A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD35AC  B0 15 07 0E */	sth r0, 0x70e(r21)
/* 80BD35B0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BD35B4  4B 69 43 D8 */	b cM_rndFX__Ff
/* 80BD35B8  FC 00 08 1E */	fctiwz f0, f1
/* 80BD35BC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BD35C0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BD35C4  B0 15 06 D0 */	sth r0, 0x6d0(r21)
/* 80BD35C8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BD35CC  4B 69 43 C0 */	b cM_rndFX__Ff
/* 80BD35D0  FC 00 08 1E */	fctiwz f0, f1
/* 80BD35D4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BD35D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD35DC  B0 15 06 D2 */	sth r0, 0x6d2(r21)
/* 80BD35E0  3B DE 00 01 */	addi r30, r30, 1
/* 80BD35E4  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80BD35E8  3B 18 00 06 */	addi r24, r24, 6
/* 80BD35EC  3A F7 00 0C */	addi r23, r23, 0xc
/* 80BD35F0  41 80 FE A8 */	blt lbl_80BD3498
/* 80BD35F4  38 60 00 01 */	li r3, 1
/* 80BD35F8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80BD35FC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80BD3600  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80BD3604  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80BD3608  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80BD360C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80BD3610  39 61 00 60 */	addi r11, r1, 0x60
/* 80BD3614  4B 78 EB F4 */	b _restgpr_21
/* 80BD3618  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BD361C  7C 08 03 A6 */	mtlr r0
/* 80BD3620  38 21 00 90 */	addi r1, r1, 0x90
/* 80BD3624  4E 80 00 20 */	blr 
