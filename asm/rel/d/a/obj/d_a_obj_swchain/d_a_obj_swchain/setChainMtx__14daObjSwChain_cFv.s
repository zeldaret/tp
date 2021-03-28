lbl_80CFA124:
/* 80CFA124  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CFA128  7C 08 02 A6 */	mflr r0
/* 80CFA12C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CFA130  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80CFA134  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80CFA138  39 61 00 80 */	addi r11, r1, 0x80
/* 80CFA13C  4B 66 80 8C */	b _savegpr_24
/* 80CFA140  7C 7A 1B 78 */	mr r26, r3
/* 80CFA144  3C 80 80 D0 */	lis r4, lit_3734@ha
/* 80CFA148  3B C4 B6 EC */	addi r30, r4, lit_3734@l
/* 80CFA14C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CFA150  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CFA154  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80CFA158  88 03 0A 62 */	lbz r0, 0xa62(r3)
/* 80CFA15C  28 00 00 00 */	cmplwi r0, 0
/* 80CFA160  41 82 00 18 */	beq lbl_80CFA178
/* 80CFA164  80 7A 0A 74 */	lwz r3, 0xa74(r26)
/* 80CFA168  88 1A 0A 65 */	lbz r0, 0xa65(r26)
/* 80CFA16C  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80CFA170  7C 03 02 14 */	add r0, r3, r0
/* 80CFA174  48 00 00 14 */	b lbl_80CFA188
lbl_80CFA178:
/* 80CFA178  48 00 12 D9 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFA17C  1C 63 00 50 */	mulli r3, r3, 0x50
/* 80CFA180  80 1A 0A 74 */	lwz r0, 0xa74(r26)
/* 80CFA184  7C 00 1A 14 */	add r0, r0, r3
lbl_80CFA188:
/* 80CFA188  7C 1C 03 78 */	mr r28, r0
/* 80CFA18C  7F 43 D3 78 */	mr r3, r26
/* 80CFA190  48 00 12 C1 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFA194  7C 7B 1B 78 */	mr r27, r3
/* 80CFA198  C3 FE 00 00 */	lfs f31, 0(r30)
/* 80CFA19C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFA1A0  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 80CFA1A4  48 00 02 C0 */	b lbl_80CFA464
lbl_80CFA1A8:
/* 80CFA1A8  7F 99 E3 78 */	mr r25, r28
/* 80CFA1AC  88 1A 0A 62 */	lbz r0, 0xa62(r26)
/* 80CFA1B0  28 00 00 00 */	cmplwi r0, 0
/* 80CFA1B4  41 82 00 1C */	beq lbl_80CFA1D0
/* 80CFA1B8  7F 43 D3 78 */	mr r3, r26
/* 80CFA1BC  48 00 12 95 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFA1C0  7C 1B 18 00 */	cmpw r27, r3
/* 80CFA1C4  41 82 00 10 */	beq lbl_80CFA1D4
/* 80CFA1C8  3B 3C 00 50 */	addi r25, r28, 0x50
/* 80CFA1CC  48 00 00 08 */	b lbl_80CFA1D4
lbl_80CFA1D0:
/* 80CFA1D0  3B 3C FF B0 */	addi r25, r28, -80
lbl_80CFA1D4:
/* 80CFA1D4  38 61 00 30 */	addi r3, r1, 0x30
/* 80CFA1D8  38 9C 00 34 */	addi r4, r28, 0x34
/* 80CFA1DC  38 B9 00 34 */	addi r5, r25, 0x34
/* 80CFA1E0  4B 56 C9 54 */	b __mi__4cXyzCFRC3Vec
/* 80CFA1E4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CFA1E8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CFA1EC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CFA1F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CFA1F4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CFA1F8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CFA1FC  38 61 00 24 */	addi r3, r1, 0x24
/* 80CFA200  38 9C 00 34 */	addi r4, r28, 0x34
/* 80CFA204  38 B9 00 34 */	addi r5, r25, 0x34
/* 80CFA208  4B 56 C8 DC */	b __pl__4cXyzCFRC3Vec
/* 80CFA20C  38 61 00 18 */	addi r3, r1, 0x18
/* 80CFA210  38 81 00 24 */	addi r4, r1, 0x24
/* 80CFA214  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80CFA218  4B 56 C9 6C */	b __ml__4cXyzCFf
/* 80CFA21C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CFA220  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CFA224  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CFA228  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CFA22C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CFA230  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CFA234  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80CFA238  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CFA23C  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80CFA240  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CFA244  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CFA248  38 61 00 0C */	addi r3, r1, 0xc
/* 80CFA24C  4B 64 CE EC */	b PSVECSquareMag
/* 80CFA250  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80CFA254  40 81 00 58 */	ble lbl_80CFA2AC
/* 80CFA258  FC 00 08 34 */	frsqrte f0, f1
/* 80CFA25C  C8 9E 00 18 */	lfd f4, 0x18(r30)
/* 80CFA260  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFA264  C8 7E 00 20 */	lfd f3, 0x20(r30)
/* 80CFA268  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFA26C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFA270  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFA274  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFA278  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFA27C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFA280  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFA284  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFA288  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFA28C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFA290  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFA294  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFA298  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFA29C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFA2A0  FC 41 00 32 */	fmul f2, f1, f0
/* 80CFA2A4  FC 40 10 18 */	frsp f2, f2
/* 80CFA2A8  48 00 00 90 */	b lbl_80CFA338
lbl_80CFA2AC:
/* 80CFA2AC  C8 1E 00 28 */	lfd f0, 0x28(r30)
/* 80CFA2B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFA2B4  40 80 00 10 */	bge lbl_80CFA2C4
/* 80CFA2B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CFA2BC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80CFA2C0  48 00 00 78 */	b lbl_80CFA338
lbl_80CFA2C4:
/* 80CFA2C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CFA2C8  80 81 00 08 */	lwz r4, 8(r1)
/* 80CFA2CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CFA2D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CFA2D4  7C 03 00 00 */	cmpw r3, r0
/* 80CFA2D8  41 82 00 14 */	beq lbl_80CFA2EC
/* 80CFA2DC  40 80 00 40 */	bge lbl_80CFA31C
/* 80CFA2E0  2C 03 00 00 */	cmpwi r3, 0
/* 80CFA2E4  41 82 00 20 */	beq lbl_80CFA304
/* 80CFA2E8  48 00 00 34 */	b lbl_80CFA31C
lbl_80CFA2EC:
/* 80CFA2EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFA2F0  41 82 00 0C */	beq lbl_80CFA2FC
/* 80CFA2F4  38 00 00 01 */	li r0, 1
/* 80CFA2F8  48 00 00 28 */	b lbl_80CFA320
lbl_80CFA2FC:
/* 80CFA2FC  38 00 00 02 */	li r0, 2
/* 80CFA300  48 00 00 20 */	b lbl_80CFA320
lbl_80CFA304:
/* 80CFA304  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFA308  41 82 00 0C */	beq lbl_80CFA314
/* 80CFA30C  38 00 00 05 */	li r0, 5
/* 80CFA310  48 00 00 10 */	b lbl_80CFA320
lbl_80CFA314:
/* 80CFA314  38 00 00 03 */	li r0, 3
/* 80CFA318  48 00 00 08 */	b lbl_80CFA320
lbl_80CFA31C:
/* 80CFA31C  38 00 00 04 */	li r0, 4
lbl_80CFA320:
/* 80CFA320  2C 00 00 01 */	cmpwi r0, 1
/* 80CFA324  40 82 00 10 */	bne lbl_80CFA334
/* 80CFA328  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CFA32C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80CFA330  48 00 00 08 */	b lbl_80CFA338
lbl_80CFA334:
/* 80CFA334  FC 40 08 90 */	fmr f2, f1
lbl_80CFA338:
/* 80CFA338  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80CFA33C  4B 56 D3 38 */	b cM_atan2s__Fff
/* 80CFA340  7C 03 00 D0 */	neg r0, r3
/* 80CFA344  7C 19 07 34 */	extsh r25, r0
/* 80CFA348  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80CFA34C  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80CFA350  4B 56 D3 24 */	b cM_atan2s__Fff
/* 80CFA354  7C 78 1B 78 */	mr r24, r3
/* 80CFA358  38 61 00 3C */	addi r3, r1, 0x3c
/* 80CFA35C  4B 31 2A 08 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CFA360  7F E3 FB 78 */	mr r3, r31
/* 80CFA364  7F 24 CB 78 */	mr r4, r25
/* 80CFA368  7F 05 C3 78 */	mr r5, r24
/* 80CFA36C  A8 DC 00 44 */	lha r6, 0x44(r28)
/* 80CFA370  4B 31 1F 30 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80CFA374  7F 43 D3 78 */	mr r3, r26
/* 80CFA378  48 00 10 D9 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFA37C  7C 1B 18 00 */	cmpw r27, r3
/* 80CFA380  40 82 00 5C */	bne lbl_80CFA3DC
/* 80CFA384  88 1A 0A 62 */	lbz r0, 0xa62(r26)
/* 80CFA388  28 00 00 00 */	cmplwi r0, 0
/* 80CFA38C  41 82 00 50 */	beq lbl_80CFA3DC
/* 80CFA390  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80CFA394  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80CFA398  7C 19 07 34 */	extsh r25, r0
/* 80CFA39C  38 7A 0A 78 */	addi r3, r26, 0xa78
/* 80CFA3A0  4B 31 29 C4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CFA3A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFA3A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFA3AC  7F 24 CB 78 */	mr r4, r25
/* 80CFA3B0  4B 31 20 84 */	b mDoMtx_YrotM__FPA4_fs
/* 80CFA3B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFA3B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFA3BC  A8 1A 0A 6E */	lha r0, 0xa6e(r26)
/* 80CFA3C0  7C 00 00 D0 */	neg r0, r0
/* 80CFA3C4  7C 04 07 34 */	extsh r4, r0
/* 80CFA3C8  4B 31 1F D4 */	b mDoMtx_XrotM__FPA4_fs
/* 80CFA3CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFA3D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFA3D4  38 80 00 00 */	li r4, 0
/* 80CFA3D8  4B 31 20 F4 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80CFA3DC:
/* 80CFA3DC  88 1A 0A 62 */	lbz r0, 0xa62(r26)
/* 80CFA3E0  28 00 00 00 */	cmplwi r0, 0
/* 80CFA3E4  41 82 00 44 */	beq lbl_80CFA428
/* 80CFA3E8  7F 43 D3 78 */	mr r3, r26
/* 80CFA3EC  48 00 10 65 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFA3F0  7C 1B 18 00 */	cmpw r27, r3
/* 80CFA3F4  40 82 00 1C */	bne lbl_80CFA410
/* 80CFA3F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFA3FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFA400  80 9A 05 70 */	lwz r4, 0x570(r26)
/* 80CFA404  38 84 00 24 */	addi r4, r4, 0x24
/* 80CFA408  4B 64 C0 A8 */	b PSMTXCopy
/* 80CFA40C  48 00 00 14 */	b lbl_80CFA420
lbl_80CFA410:
/* 80CFA410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFA414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFA418  7F 84 E3 78 */	mr r4, r28
/* 80CFA41C  4B 64 C0 94 */	b PSMTXCopy
lbl_80CFA420:
/* 80CFA420  3B 9C FF B0 */	addi r28, r28, -80
/* 80CFA424  48 00 00 3C */	b lbl_80CFA460
lbl_80CFA428:
/* 80CFA428  88 1A 0A 65 */	lbz r0, 0xa65(r26)
/* 80CFA42C  7C 1B 00 00 */	cmpw r27, r0
/* 80CFA430  40 82 00 1C */	bne lbl_80CFA44C
/* 80CFA434  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFA438  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFA43C  80 9A 05 70 */	lwz r4, 0x570(r26)
/* 80CFA440  38 84 00 24 */	addi r4, r4, 0x24
/* 80CFA444  4B 64 C0 6C */	b PSMTXCopy
/* 80CFA448  48 00 00 14 */	b lbl_80CFA45C
lbl_80CFA44C:
/* 80CFA44C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFA450  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFA454  7F 84 E3 78 */	mr r4, r28
/* 80CFA458  4B 64 C0 58 */	b PSMTXCopy
lbl_80CFA45C:
/* 80CFA45C  3B 9C 00 50 */	addi r28, r28, 0x50
lbl_80CFA460:
/* 80CFA460  3B 7B 00 01 */	addi r27, r27, 1
lbl_80CFA464:
/* 80CFA464  88 7A 0A 65 */	lbz r3, 0xa65(r26)
/* 80CFA468  38 03 00 01 */	addi r0, r3, 1
/* 80CFA46C  7C 1B 00 00 */	cmpw r27, r0
/* 80CFA470  41 80 FD 38 */	blt lbl_80CFA1A8
/* 80CFA474  38 7A 0A 6E */	addi r3, r26, 0xa6e
/* 80CFA478  A8 9A 0A 70 */	lha r4, 0xa70(r26)
/* 80CFA47C  38 A0 00 05 */	li r5, 5
/* 80CFA480  38 C0 03 20 */	li r6, 0x320
/* 80CFA484  4B 57 61 84 */	b cLib_addCalcAngleS2__FPssss
/* 80CFA488  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80CFA48C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80CFA490  39 61 00 80 */	addi r11, r1, 0x80
/* 80CFA494  4B 66 7D 80 */	b _restgpr_24
/* 80CFA498  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CFA49C  7C 08 03 A6 */	mtlr r0
/* 80CFA4A0  38 21 00 90 */	addi r1, r1, 0x90
/* 80CFA4A4  4E 80 00 20 */	blr 
