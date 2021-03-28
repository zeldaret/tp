lbl_805180E4:
/* 805180E4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805180E8  7C 08 02 A6 */	mflr r0
/* 805180EC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805180F0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805180F4  4B E4 A0 C0 */	b _savegpr_19
/* 805180F8  7C 7E 1B 78 */	mr r30, r3
/* 805180FC  7C 9A 23 78 */	mr r26, r4
/* 80518100  7C BB 2B 78 */	mr r27, r5
/* 80518104  7C DC 33 78 */	mr r28, r6
/* 80518108  3C 60 80 52 */	lis r3, cNullVec__6Z2Calc@ha
/* 8051810C  3A E3 89 A8 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 80518110  3C 60 80 52 */	lis r3, lit_4208@ha
/* 80518114  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 80518118  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8051811C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80518120  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80518124  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 80518128  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 8051812C  28 00 00 00 */	cmplwi r0, 0
/* 80518130  41 82 03 A4 */	beq lbl_805184D4
/* 80518134  7F C4 F3 78 */	mr r4, r30
/* 80518138  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8051813C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80518140  7D 89 03 A6 */	mtctr r12
/* 80518144  4E 80 04 21 */	bctrl 
/* 80518148  2C 03 00 00 */	cmpwi r3, 0
/* 8051814C  41 82 03 88 */	beq lbl_805184D4
/* 80518150  4B C9 44 2C */	b dKy_darkworld_check__Fv
/* 80518154  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80518158  30 03 FF FF */	addic r0, r3, -1
/* 8051815C  7F A0 19 10 */	subfe r29, r0, r3
/* 80518160  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80518164  28 00 00 00 */	cmplwi r0, 0
/* 80518168  40 82 02 A0 */	bne lbl_80518408
/* 8051816C  38 00 00 01 */	li r0, 1
/* 80518170  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80518174  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80518178  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 8051817C  80 63 00 00 */	lwz r3, 0(r3)
/* 80518180  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80518184  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80518188  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8051818C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80518190  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80518194  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80518198  4B E2 E3 18 */	b PSMTXCopy
/* 8051819C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805181A0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805181A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805181A8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805181AC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805181B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805181B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805181B8  38 81 00 4C */	addi r4, r1, 0x4c
/* 805181BC  38 A1 00 58 */	addi r5, r1, 0x58
/* 805181C0  4B E2 EB AC */	b PSMTXMultVec
/* 805181C4  38 61 00 34 */	addi r3, r1, 0x34
/* 805181C8  38 81 00 58 */	addi r4, r1, 0x58
/* 805181CC  7F 65 DB 78 */	mr r5, r27
/* 805181D0  4B D4 E9 64 */	b __mi__4cXyzCFRC3Vec
/* 805181D4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 805181D8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 805181DC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805181E0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805181E4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 805181E8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 805181EC  4B D4 F4 88 */	b cM_atan2s__Fff
/* 805181F0  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 805181F4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805181F8  EC 20 00 32 */	fmuls f1, f0, f0
/* 805181FC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80518200  EC 00 00 32 */	fmuls f0, f0, f0
/* 80518204  EC 41 00 2A */	fadds f2, f1, f0
/* 80518208  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8051820C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80518210  40 81 00 0C */	ble lbl_8051821C
/* 80518214  FC 00 10 34 */	frsqrte f0, f2
/* 80518218  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8051821C:
/* 8051821C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80518220  4B D4 F4 54 */	b cM_atan2s__Fff
/* 80518224  7C 03 00 D0 */	neg r0, r3
/* 80518228  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8051822C  38 80 00 00 */	li r4, 0
/* 80518230  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80518234  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80518238  7C 00 07 74 */	extsb r0, r0
/* 8051823C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80518240  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80518244  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80518248  57 A5 10 3A */	slwi r5, r29, 2
/* 8051824C  90 81 00 08 */	stw r4, 8(r1)
/* 80518250  90 01 00 0C */	stw r0, 0xc(r1)
/* 80518254  3A B7 00 20 */	addi r21, r23, 0x20
/* 80518258  7E B5 2A 14 */	add r21, r21, r5
/* 8051825C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80518260  3A D7 00 28 */	addi r22, r23, 0x28
/* 80518264  7E D6 2A 14 */	add r22, r22, r5
/* 80518268  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8051826C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80518270  38 80 00 00 */	li r4, 0
/* 80518274  38 A0 02 9B */	li r5, 0x29b
/* 80518278  7F 66 DB 78 */	mr r6, r27
/* 8051827C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80518280  39 01 00 2C */	addi r8, r1, 0x2c
/* 80518284  7F 89 E3 78 */	mr r9, r28
/* 80518288  39 40 00 FF */	li r10, 0xff
/* 8051828C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80518290  4B B3 48 00 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80518294  7C 79 1B 79 */	or. r25, r3, r3
/* 80518298  41 82 00 FC */	beq lbl_80518394
/* 8051829C  38 61 00 40 */	addi r3, r1, 0x40
/* 805182A0  4B E2 EE 98 */	b PSVECSquareMag
/* 805182A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805182A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805182AC  40 81 00 58 */	ble lbl_80518304
/* 805182B0  FC 00 08 34 */	frsqrte f0, f1
/* 805182B4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805182B8  FC 44 00 32 */	fmul f2, f4, f0
/* 805182BC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805182C0  FC 00 00 32 */	fmul f0, f0, f0
/* 805182C4  FC 01 00 32 */	fmul f0, f1, f0
/* 805182C8  FC 03 00 28 */	fsub f0, f3, f0
/* 805182CC  FC 02 00 32 */	fmul f0, f2, f0
/* 805182D0  FC 44 00 32 */	fmul f2, f4, f0
/* 805182D4  FC 00 00 32 */	fmul f0, f0, f0
/* 805182D8  FC 01 00 32 */	fmul f0, f1, f0
/* 805182DC  FC 03 00 28 */	fsub f0, f3, f0
/* 805182E0  FC 02 00 32 */	fmul f0, f2, f0
/* 805182E4  FC 44 00 32 */	fmul f2, f4, f0
/* 805182E8  FC 00 00 32 */	fmul f0, f0, f0
/* 805182EC  FC 01 00 32 */	fmul f0, f1, f0
/* 805182F0  FC 03 00 28 */	fsub f0, f3, f0
/* 805182F4  FC 02 00 32 */	fmul f0, f2, f0
/* 805182F8  FC 21 00 32 */	fmul f1, f1, f0
/* 805182FC  FC 20 08 18 */	frsp f1, f1
/* 80518300  48 00 00 88 */	b lbl_80518388
lbl_80518304:
/* 80518304  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80518308  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051830C  40 80 00 10 */	bge lbl_8051831C
/* 80518310  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80518314  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80518318  48 00 00 70 */	b lbl_80518388
lbl_8051831C:
/* 8051831C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80518320  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80518324  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80518328  3C 00 7F 80 */	lis r0, 0x7f80
/* 8051832C  7C 03 00 00 */	cmpw r3, r0
/* 80518330  41 82 00 14 */	beq lbl_80518344
/* 80518334  40 80 00 40 */	bge lbl_80518374
/* 80518338  2C 03 00 00 */	cmpwi r3, 0
/* 8051833C  41 82 00 20 */	beq lbl_8051835C
/* 80518340  48 00 00 34 */	b lbl_80518374
lbl_80518344:
/* 80518344  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80518348  41 82 00 0C */	beq lbl_80518354
/* 8051834C  38 00 00 01 */	li r0, 1
/* 80518350  48 00 00 28 */	b lbl_80518378
lbl_80518354:
/* 80518354  38 00 00 02 */	li r0, 2
/* 80518358  48 00 00 20 */	b lbl_80518378
lbl_8051835C:
/* 8051835C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80518360  41 82 00 0C */	beq lbl_8051836C
/* 80518364  38 00 00 05 */	li r0, 5
/* 80518368  48 00 00 10 */	b lbl_80518378
lbl_8051836C:
/* 8051836C  38 00 00 03 */	li r0, 3
/* 80518370  48 00 00 08 */	b lbl_80518378
lbl_80518374:
/* 80518374  38 00 00 04 */	li r0, 4
lbl_80518378:
/* 80518378  2C 00 00 01 */	cmpwi r0, 1
/* 8051837C  40 82 00 0C */	bne lbl_80518388
/* 80518380  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80518384  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80518388:
/* 80518388  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8051838C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80518390  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80518394:
/* 80518394  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80518398  7C 04 07 74 */	extsb r4, r0
/* 8051839C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 805183A0  38 00 00 00 */	li r0, 0
/* 805183A4  90 01 00 08 */	stw r0, 8(r1)
/* 805183A8  90 81 00 0C */	stw r4, 0xc(r1)
/* 805183AC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 805183B0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 805183B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805183B8  38 80 00 00 */	li r4, 0
/* 805183BC  38 A0 02 9C */	li r5, 0x29c
/* 805183C0  7F 66 DB 78 */	mr r6, r27
/* 805183C4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 805183C8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 805183CC  7F 89 E3 78 */	mr r9, r28
/* 805183D0  39 40 00 FF */	li r10, 0xff
/* 805183D4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805183D8  4B B3 46 B8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805183DC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 805183E0  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 805183E4  90 01 00 28 */	stw r0, 0x28(r1)
/* 805183E8  7F 43 D3 78 */	mr r3, r26
/* 805183EC  38 81 00 28 */	addi r4, r1, 0x28
/* 805183F0  38 A0 00 00 */	li r5, 0
/* 805183F4  38 C0 FF FF */	li r6, -1
/* 805183F8  81 9A 00 00 */	lwz r12, 0(r26)
/* 805183FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80518400  7D 89 03 A6 */	mtctr r12
/* 80518404  4E 80 04 21 */	bctrl 
lbl_80518408:
/* 80518408  3A A0 00 00 */	li r21, 0
/* 8051840C  3A C0 00 00 */	li r22, 0
/* 80518410  3A 80 00 00 */	li r20, 0
/* 80518414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80518418  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 8051841C  57 A0 10 3A */	slwi r0, r29, 2
/* 80518420  3B 17 00 28 */	addi r24, r23, 0x28
/* 80518424  7F 18 02 14 */	add r24, r24, r0
/* 80518428  3B B7 00 20 */	addi r29, r23, 0x20
/* 8051842C  7F BD 02 14 */	add r29, r29, r0
/* 80518430  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80518434:
/* 80518434  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80518438  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8051843C  7C 05 07 74 */	extsb r5, r0
/* 80518440  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80518444  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80518448  38 00 00 FF */	li r0, 0xff
/* 8051844C  90 01 00 08 */	stw r0, 8(r1)
/* 80518450  38 00 00 00 */	li r0, 0
/* 80518454  90 01 00 0C */	stw r0, 0xc(r1)
/* 80518458  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8051845C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80518460  93 01 00 18 */	stw r24, 0x18(r1)
/* 80518464  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80518468  38 A0 00 00 */	li r5, 0
/* 8051846C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80518470  7F 67 DB 78 */	mr r7, r27
/* 80518474  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80518478  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8051847C  7F 8A E3 78 */	mr r10, r28
/* 80518480  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80518484  4B B3 50 48 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80518488  7C 7E B9 2E */	stwx r3, r30, r23
/* 8051848C  3A B5 00 01 */	addi r21, r21, 1
/* 80518490  2C 15 00 03 */	cmpwi r21, 3
/* 80518494  3A D6 00 02 */	addi r22, r22, 2
/* 80518498  3A 94 00 04 */	addi r20, r20, 4
/* 8051849C  41 80 FF 98 */	blt lbl_80518434
/* 805184A0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 805184A4  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 805184A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805184AC  7F 43 D3 78 */	mr r3, r26
/* 805184B0  38 81 00 24 */	addi r4, r1, 0x24
/* 805184B4  38 A0 00 00 */	li r5, 0
/* 805184B8  38 C0 FF FF */	li r6, -1
/* 805184BC  81 9A 00 00 */	lwz r12, 0(r26)
/* 805184C0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805184C4  7D 89 03 A6 */	mtctr r12
/* 805184C8  4E 80 04 21 */	bctrl 
/* 805184CC  38 60 00 01 */	li r3, 1
/* 805184D0  48 00 00 10 */	b lbl_805184E0
lbl_805184D4:
/* 805184D4  38 00 00 00 */	li r0, 0
/* 805184D8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 805184DC  38 60 00 00 */	li r3, 0
lbl_805184E0:
/* 805184E0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805184E4  4B E4 9D 1C */	b _restgpr_19
/* 805184E8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805184EC  7C 08 03 A6 */	mtlr r0
/* 805184F0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805184F4  4E 80 00 20 */	blr 
