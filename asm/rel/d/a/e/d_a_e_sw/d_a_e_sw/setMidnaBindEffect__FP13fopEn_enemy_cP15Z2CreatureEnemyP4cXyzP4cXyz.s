lbl_807AF904:
/* 807AF904  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807AF908  7C 08 02 A6 */	mflr r0
/* 807AF90C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807AF910  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807AF914  4B BB 28 A0 */	b _savegpr_19
/* 807AF918  7C 7E 1B 78 */	mr r30, r3
/* 807AF91C  7C 9A 23 78 */	mr r26, r4
/* 807AF920  7C BB 2B 78 */	mr r27, r5
/* 807AF924  7C DC 33 78 */	mr r28, r6
/* 807AF928  3C 60 80 7B */	lis r3, cNullVec__6Z2Calc@ha
/* 807AF92C  3A E3 FE 7C */	addi r23, r3, cNullVec__6Z2Calc@l
/* 807AF930  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807AF934  3B E3 FD 2C */	addi r31, r3, lit_3909@l
/* 807AF938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AF93C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807AF940  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807AF944  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 807AF948  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 807AF94C  28 00 00 00 */	cmplwi r0, 0
/* 807AF950  41 82 03 A4 */	beq lbl_807AFCF4
/* 807AF954  7F C4 F3 78 */	mr r4, r30
/* 807AF958  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807AF95C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807AF960  7D 89 03 A6 */	mtctr r12
/* 807AF964  4E 80 04 21 */	bctrl 
/* 807AF968  2C 03 00 00 */	cmpwi r3, 0
/* 807AF96C  41 82 03 88 */	beq lbl_807AFCF4
/* 807AF970  4B 9F CC 0C */	b dKy_darkworld_check__Fv
/* 807AF974  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807AF978  30 03 FF FF */	addic r0, r3, -1
/* 807AF97C  7F A0 19 10 */	subfe r29, r0, r3
/* 807AF980  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807AF984  28 00 00 00 */	cmplwi r0, 0
/* 807AF988  40 82 02 A0 */	bne lbl_807AFC28
/* 807AF98C  38 00 00 01 */	li r0, 1
/* 807AF990  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807AF994  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 807AF998  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 807AF99C  80 63 00 00 */	lwz r3, 0(r3)
/* 807AF9A0  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807AF9A4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807AF9A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807AF9AC  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807AF9B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807AF9B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807AF9B8  4B B9 6A F8 */	b PSMTXCopy
/* 807AF9BC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807AF9C0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807AF9C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AF9C8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807AF9CC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807AF9D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807AF9D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807AF9D8  38 81 00 4C */	addi r4, r1, 0x4c
/* 807AF9DC  38 A1 00 58 */	addi r5, r1, 0x58
/* 807AF9E0  4B B9 73 8C */	b PSMTXMultVec
/* 807AF9E4  38 61 00 34 */	addi r3, r1, 0x34
/* 807AF9E8  38 81 00 58 */	addi r4, r1, 0x58
/* 807AF9EC  7F 65 DB 78 */	mr r5, r27
/* 807AF9F0  4B AB 71 44 */	b __mi__4cXyzCFRC3Vec
/* 807AF9F4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807AF9F8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807AF9FC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807AFA00  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807AFA04  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807AFA08  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807AFA0C  4B AB 7C 68 */	b cM_atan2s__Fff
/* 807AFA10  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807AFA14  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807AFA18  EC 20 00 32 */	fmuls f1, f0, f0
/* 807AFA1C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807AFA20  EC 00 00 32 */	fmuls f0, f0, f0
/* 807AFA24  EC 41 00 2A */	fadds f2, f1, f0
/* 807AFA28  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AFA2C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807AFA30  40 81 00 0C */	ble lbl_807AFA3C
/* 807AFA34  FC 00 10 34 */	frsqrte f0, f2
/* 807AFA38  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807AFA3C:
/* 807AFA3C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807AFA40  4B AB 7C 34 */	b cM_atan2s__Fff
/* 807AFA44  7C 03 00 D0 */	neg r0, r3
/* 807AFA48  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807AFA4C  38 80 00 00 */	li r4, 0
/* 807AFA50  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807AFA54  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807AFA58  7C 00 07 74 */	extsb r0, r0
/* 807AFA5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AFA60  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 807AFA64  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807AFA68  57 A5 10 3A */	slwi r5, r29, 2
/* 807AFA6C  90 81 00 08 */	stw r4, 8(r1)
/* 807AFA70  90 01 00 0C */	stw r0, 0xc(r1)
/* 807AFA74  3A B7 00 20 */	addi r21, r23, 0x20
/* 807AFA78  7E B5 2A 14 */	add r21, r21, r5
/* 807AFA7C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807AFA80  3A D7 00 28 */	addi r22, r23, 0x28
/* 807AFA84  7E D6 2A 14 */	add r22, r22, r5
/* 807AFA88  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807AFA8C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807AFA90  38 80 00 00 */	li r4, 0
/* 807AFA94  38 A0 02 9B */	li r5, 0x29b
/* 807AFA98  7F 66 DB 78 */	mr r6, r27
/* 807AFA9C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807AFAA0  39 01 00 2C */	addi r8, r1, 0x2c
/* 807AFAA4  7F 89 E3 78 */	mr r9, r28
/* 807AFAA8  39 40 00 FF */	li r10, 0xff
/* 807AFAAC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807AFAB0  4B 89 CF E0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807AFAB4  7C 79 1B 79 */	or. r25, r3, r3
/* 807AFAB8  41 82 00 FC */	beq lbl_807AFBB4
/* 807AFABC  38 61 00 40 */	addi r3, r1, 0x40
/* 807AFAC0  4B B9 76 78 */	b PSVECSquareMag
/* 807AFAC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AFAC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AFACC  40 81 00 58 */	ble lbl_807AFB24
/* 807AFAD0  FC 00 08 34 */	frsqrte f0, f1
/* 807AFAD4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807AFAD8  FC 44 00 32 */	fmul f2, f4, f0
/* 807AFADC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807AFAE0  FC 00 00 32 */	fmul f0, f0, f0
/* 807AFAE4  FC 01 00 32 */	fmul f0, f1, f0
/* 807AFAE8  FC 03 00 28 */	fsub f0, f3, f0
/* 807AFAEC  FC 02 00 32 */	fmul f0, f2, f0
/* 807AFAF0  FC 44 00 32 */	fmul f2, f4, f0
/* 807AFAF4  FC 00 00 32 */	fmul f0, f0, f0
/* 807AFAF8  FC 01 00 32 */	fmul f0, f1, f0
/* 807AFAFC  FC 03 00 28 */	fsub f0, f3, f0
/* 807AFB00  FC 02 00 32 */	fmul f0, f2, f0
/* 807AFB04  FC 44 00 32 */	fmul f2, f4, f0
/* 807AFB08  FC 00 00 32 */	fmul f0, f0, f0
/* 807AFB0C  FC 01 00 32 */	fmul f0, f1, f0
/* 807AFB10  FC 03 00 28 */	fsub f0, f3, f0
/* 807AFB14  FC 02 00 32 */	fmul f0, f2, f0
/* 807AFB18  FC 21 00 32 */	fmul f1, f1, f0
/* 807AFB1C  FC 20 08 18 */	frsp f1, f1
/* 807AFB20  48 00 00 88 */	b lbl_807AFBA8
lbl_807AFB24:
/* 807AFB24  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807AFB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AFB2C  40 80 00 10 */	bge lbl_807AFB3C
/* 807AFB30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AFB34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807AFB38  48 00 00 70 */	b lbl_807AFBA8
lbl_807AFB3C:
/* 807AFB3C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807AFB40  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807AFB44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AFB48  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AFB4C  7C 03 00 00 */	cmpw r3, r0
/* 807AFB50  41 82 00 14 */	beq lbl_807AFB64
/* 807AFB54  40 80 00 40 */	bge lbl_807AFB94
/* 807AFB58  2C 03 00 00 */	cmpwi r3, 0
/* 807AFB5C  41 82 00 20 */	beq lbl_807AFB7C
/* 807AFB60  48 00 00 34 */	b lbl_807AFB94
lbl_807AFB64:
/* 807AFB64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AFB68  41 82 00 0C */	beq lbl_807AFB74
/* 807AFB6C  38 00 00 01 */	li r0, 1
/* 807AFB70  48 00 00 28 */	b lbl_807AFB98
lbl_807AFB74:
/* 807AFB74  38 00 00 02 */	li r0, 2
/* 807AFB78  48 00 00 20 */	b lbl_807AFB98
lbl_807AFB7C:
/* 807AFB7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AFB80  41 82 00 0C */	beq lbl_807AFB8C
/* 807AFB84  38 00 00 05 */	li r0, 5
/* 807AFB88  48 00 00 10 */	b lbl_807AFB98
lbl_807AFB8C:
/* 807AFB8C  38 00 00 03 */	li r0, 3
/* 807AFB90  48 00 00 08 */	b lbl_807AFB98
lbl_807AFB94:
/* 807AFB94  38 00 00 04 */	li r0, 4
lbl_807AFB98:
/* 807AFB98  2C 00 00 01 */	cmpwi r0, 1
/* 807AFB9C  40 82 00 0C */	bne lbl_807AFBA8
/* 807AFBA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807AFBA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807AFBA8:
/* 807AFBA8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807AFBAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 807AFBB0  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807AFBB4:
/* 807AFBB4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807AFBB8  7C 04 07 74 */	extsb r4, r0
/* 807AFBBC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807AFBC0  38 00 00 00 */	li r0, 0
/* 807AFBC4  90 01 00 08 */	stw r0, 8(r1)
/* 807AFBC8  90 81 00 0C */	stw r4, 0xc(r1)
/* 807AFBCC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807AFBD0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807AFBD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 807AFBD8  38 80 00 00 */	li r4, 0
/* 807AFBDC  38 A0 02 9C */	li r5, 0x29c
/* 807AFBE0  7F 66 DB 78 */	mr r6, r27
/* 807AFBE4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807AFBE8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807AFBEC  7F 89 E3 78 */	mr r9, r28
/* 807AFBF0  39 40 00 FF */	li r10, 0xff
/* 807AFBF4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807AFBF8  4B 89 CE 98 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807AFBFC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 807AFC00  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 807AFC04  90 01 00 28 */	stw r0, 0x28(r1)
/* 807AFC08  7F 43 D3 78 */	mr r3, r26
/* 807AFC0C  38 81 00 28 */	addi r4, r1, 0x28
/* 807AFC10  38 A0 00 00 */	li r5, 0
/* 807AFC14  38 C0 FF FF */	li r6, -1
/* 807AFC18  81 9A 00 00 */	lwz r12, 0(r26)
/* 807AFC1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AFC20  7D 89 03 A6 */	mtctr r12
/* 807AFC24  4E 80 04 21 */	bctrl 
lbl_807AFC28:
/* 807AFC28  3A A0 00 00 */	li r21, 0
/* 807AFC2C  3A C0 00 00 */	li r22, 0
/* 807AFC30  3A 80 00 00 */	li r20, 0
/* 807AFC34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AFC38  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 807AFC3C  57 A0 10 3A */	slwi r0, r29, 2
/* 807AFC40  3B 17 00 28 */	addi r24, r23, 0x28
/* 807AFC44  7F 18 02 14 */	add r24, r24, r0
/* 807AFC48  3B B7 00 20 */	addi r29, r23, 0x20
/* 807AFC4C  7F BD 02 14 */	add r29, r29, r0
/* 807AFC50  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807AFC54:
/* 807AFC54  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807AFC58  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807AFC5C  7C 05 07 74 */	extsb r5, r0
/* 807AFC60  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807AFC64  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807AFC68  38 00 00 FF */	li r0, 0xff
/* 807AFC6C  90 01 00 08 */	stw r0, 8(r1)
/* 807AFC70  38 00 00 00 */	li r0, 0
/* 807AFC74  90 01 00 0C */	stw r0, 0xc(r1)
/* 807AFC78  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807AFC7C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807AFC80  93 01 00 18 */	stw r24, 0x18(r1)
/* 807AFC84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807AFC88  38 A0 00 00 */	li r5, 0
/* 807AFC8C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 807AFC90  7F 67 DB 78 */	mr r7, r27
/* 807AFC94  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807AFC98  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807AFC9C  7F 8A E3 78 */	mr r10, r28
/* 807AFCA0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807AFCA4  4B 89 D8 28 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807AFCA8  7C 7E B9 2E */	stwx r3, r30, r23
/* 807AFCAC  3A B5 00 01 */	addi r21, r21, 1
/* 807AFCB0  2C 15 00 03 */	cmpwi r21, 3
/* 807AFCB4  3A D6 00 02 */	addi r22, r22, 2
/* 807AFCB8  3A 94 00 04 */	addi r20, r20, 4
/* 807AFCBC  41 80 FF 98 */	blt lbl_807AFC54
/* 807AFCC0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807AFCC4  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807AFCC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807AFCCC  7F 43 D3 78 */	mr r3, r26
/* 807AFCD0  38 81 00 24 */	addi r4, r1, 0x24
/* 807AFCD4  38 A0 00 00 */	li r5, 0
/* 807AFCD8  38 C0 FF FF */	li r6, -1
/* 807AFCDC  81 9A 00 00 */	lwz r12, 0(r26)
/* 807AFCE0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807AFCE4  7D 89 03 A6 */	mtctr r12
/* 807AFCE8  4E 80 04 21 */	bctrl 
/* 807AFCEC  38 60 00 01 */	li r3, 1
/* 807AFCF0  48 00 00 10 */	b lbl_807AFD00
lbl_807AFCF4:
/* 807AFCF4  38 00 00 00 */	li r0, 0
/* 807AFCF8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807AFCFC  38 60 00 00 */	li r3, 0
lbl_807AFD00:
/* 807AFD00  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807AFD04  4B BB 24 FC */	b _restgpr_19
/* 807AFD08  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807AFD0C  7C 08 03 A6 */	mtlr r0
/* 807AFD10  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807AFD14  4E 80 00 20 */	blr 
