lbl_80CDDD28:
/* 80CDDD28  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CDDD2C  7C 08 02 A6 */	mflr r0
/* 80CDDD30  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CDDD34  39 61 00 70 */	addi r11, r1, 0x70
/* 80CDDD38  4B 68 44 88 */	b _savegpr_22
/* 80CDDD3C  7C 7A 1B 78 */	mr r26, r3
/* 80CDDD40  7C 9B 23 78 */	mr r27, r4
/* 80CDDD44  7C BC 2B 78 */	mr r28, r5
/* 80CDDD48  3C 60 80 CE */	lis r3, m__20daObj_SMTile_Param_c@ha
/* 80CDDD4C  3B E3 E3 5C */	addi r31, r3, m__20daObj_SMTile_Param_c@l
/* 80CDDD50  2C 1B 00 03 */	cmpwi r27, 3
/* 80CDDD54  41 82 00 EC */	beq lbl_80CDDE40
/* 80CDDD58  40 80 01 8C */	bge lbl_80CDDEE4
/* 80CDDD5C  2C 1B 00 01 */	cmpwi r27, 1
/* 80CDDD60  40 80 00 08 */	bge lbl_80CDDD68
/* 80CDDD64  48 00 01 80 */	b lbl_80CDDEE4
lbl_80CDDD68:
/* 80CDDD68  3B A0 00 00 */	li r29, 0
/* 80CDDD6C  3B 20 00 00 */	li r25, 0
/* 80CDDD70  3B 00 00 00 */	li r24, 0
/* 80CDDD74  3B DF 00 00 */	addi r30, r31, 0
/* 80CDDD78  3C 60 80 CE */	lis r3, l_tileMoveData@ha
/* 80CDDD7C  3A E3 E3 A4 */	addi r23, r3, l_tileMoveData@l
lbl_80CDDD80:
/* 80CDDD80  7C 77 C2 14 */	add r3, r23, r24
/* 80CDDD84  88 03 00 02 */	lbz r0, 2(r3)
/* 80CDDD88  7C 00 07 74 */	extsb r0, r0
/* 80CDDD8C  7C 1C 00 00 */	cmpw r28, r0
/* 80CDDD90  40 82 00 98 */	bne lbl_80CDDE28
/* 80CDDD94  2C 1B 00 01 */	cmpwi r27, 1
/* 80CDDD98  40 82 00 48 */	bne lbl_80CDDDE0
/* 80CDDD9C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008028E@ha */
/* 80CDDDA0  38 03 02 8E */	addi r0, r3, 0x028E /* 0x0008028E@l */
/* 80CDDDA4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CDDDA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CDDDAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CDDDB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDDDB4  38 81 00 20 */	addi r4, r1, 0x20
/* 80CDDDB8  38 B9 07 88 */	addi r5, r25, 0x788
/* 80CDDDBC  7C BA 2A 14 */	add r5, r26, r5
/* 80CDDDC0  38 C0 00 00 */	li r6, 0
/* 80CDDDC4  38 E0 00 00 */	li r7, 0
/* 80CDDDC8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CDDDCC  FC 40 08 90 */	fmr f2, f1
/* 80CDDDD0  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80CDDDD4  FC 80 18 90 */	fmr f4, f3
/* 80CDDDD8  39 00 00 00 */	li r8, 0
/* 80CDDDDC  4B 5C DB A8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CDDDE0:
/* 80CDDDE0  38 61 00 30 */	addi r3, r1, 0x30
/* 80CDDDE4  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80CDDDE8  7E DA CA 14 */	add r22, r26, r25
/* 80CDDDEC  38 B6 06 8C */	addi r5, r22, 0x68c
/* 80CDDDF0  4B 58 8C F4 */	b __pl__4cXyzCFRC3Vec
/* 80CDDDF4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CDDDF8  D0 16 07 88 */	stfs f0, 0x788(r22)
/* 80CDDDFC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CDDE00  D0 16 07 8C */	stfs f0, 0x78c(r22)
/* 80CDDE04  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CDDE08  D0 16 07 90 */	stfs f0, 0x790(r22)
/* 80CDDE0C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80CDDE10  FC 00 00 1E */	fctiwz f0, f0
/* 80CDDE14  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CDDE18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CDDE1C  7C 7A C2 14 */	add r3, r26, r24
/* 80CDDE20  90 03 09 80 */	stw r0, 0x980(r3)
/* 80CDDE24  93 63 0A 28 */	stw r27, 0xa28(r3)
lbl_80CDDE28:
/* 80CDDE28  3B BD 00 01 */	addi r29, r29, 1
/* 80CDDE2C  2C 1D 00 15 */	cmpwi r29, 0x15
/* 80CDDE30  3B 39 00 0C */	addi r25, r25, 0xc
/* 80CDDE34  3B 18 00 04 */	addi r24, r24, 4
/* 80CDDE38  41 80 FF 48 */	blt lbl_80CDDD80
/* 80CDDE3C  48 00 00 A8 */	b lbl_80CDDEE4
lbl_80CDDE40:
/* 80CDDE40  3A E0 00 00 */	li r23, 0
/* 80CDDE44  3B 60 00 00 */	li r27, 0
/* 80CDDE48  3B 80 00 00 */	li r28, 0
/* 80CDDE4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDDE50  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80CDDE54  3F 00 00 01 */	lis r24, 1
lbl_80CDDE58:
/* 80CDDE58  38 61 00 24 */	addi r3, r1, 0x24
/* 80CDDE5C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80CDDE60  7E DA E2 14 */	add r22, r26, r28
/* 80CDDE64  38 B6 05 90 */	addi r5, r22, 0x590
/* 80CDDE68  4B 58 8C 7C */	b __pl__4cXyzCFRC3Vec
/* 80CDDE6C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CDDE70  D0 16 08 84 */	stfs f0, 0x884(r22)
/* 80CDDE74  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CDDE78  D0 16 08 88 */	stfs f0, 0x888(r22)
/* 80CDDE7C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CDDE80  D0 16 08 8C */	stfs f0, 0x88c(r22)
/* 80CDDE84  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80CDDE88  38 80 00 00 */	li r4, 0
/* 80CDDE8C  90 81 00 08 */	stw r4, 8(r1)
/* 80CDDE90  38 00 FF FF */	li r0, -1
/* 80CDDE94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CDDE98  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CDDE9C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CDDEA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CDDEA4  38 80 00 00 */	li r4, 0
/* 80CDDEA8  38 B8 86 EE */	addi r5, r24, -30994
/* 80CDDEAC  38 D6 08 84 */	addi r6, r22, 0x884
/* 80CDDEB0  38 E0 00 00 */	li r7, 0
/* 80CDDEB4  39 00 00 00 */	li r8, 0
/* 80CDDEB8  39 20 00 00 */	li r9, 0
/* 80CDDEBC  39 40 00 FF */	li r10, 0xff
/* 80CDDEC0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CDDEC4  4B 36 EB CC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CDDEC8  38 1B 0A 80 */	addi r0, r27, 0xa80
/* 80CDDECC  7C 7A 01 2E */	stwx r3, r26, r0
/* 80CDDED0  3A F7 00 01 */	addi r23, r23, 1
/* 80CDDED4  2C 17 00 15 */	cmpwi r23, 0x15
/* 80CDDED8  3B 7B 00 04 */	addi r27, r27, 4
/* 80CDDEDC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80CDDEE0  41 80 FF 78 */	blt lbl_80CDDE58
lbl_80CDDEE4:
/* 80CDDEE4  39 61 00 70 */	addi r11, r1, 0x70
/* 80CDDEE8  4B 68 43 24 */	b _restgpr_22
/* 80CDDEEC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CDDEF0  7C 08 03 A6 */	mtlr r0
/* 80CDDEF4  38 21 00 70 */	addi r1, r1, 0x70
/* 80CDDEF8  4E 80 00 20 */	blr 
