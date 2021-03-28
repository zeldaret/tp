lbl_80BD4FD8:
/* 80BD4FD8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80BD4FDC  7C 08 02 A6 */	mflr r0
/* 80BD4FE0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80BD4FE4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80BD4FE8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80BD4FEC  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80BD4FF0  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80BD4FF4  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 80BD4FF8  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 80BD4FFC  39 61 00 70 */	addi r11, r1, 0x70
/* 80BD5000  4B 78 D1 C8 */	b _savegpr_24
/* 80BD5004  7C 7E 1B 78 */	mr r30, r3
/* 80BD5008  3C 60 80 BD */	lis r3, lit_3672@ha
/* 80BD500C  3B E3 59 FC */	addi r31, r3, lit_3672@l
/* 80BD5010  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80BD5014  38 80 38 00 */	li r4, 0x3800
/* 80BD5018  A8 BE 05 D8 */	lha r5, 0x5d8(r30)
/* 80BD501C  4B 69 BB 74 */	b cLib_chaseAngleS__FPsss
/* 80BD5020  2C 03 00 00 */	cmpwi r3, 0
/* 80BD5024  41 82 01 C8 */	beq lbl_80BD51EC
/* 80BD5028  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BD502C  7C 03 07 74 */	extsb r3, r0
/* 80BD5030  4B 45 80 3C */	b dComIfGp_getReverb__Fi
/* 80BD5034  7C 67 1B 78 */	mr r7, r3
/* 80BD5038  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B9@ha */
/* 80BD503C  38 03 02 B9 */	addi r0, r3, 0x02B9 /* 0x000802B9@l */
/* 80BD5040  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BD5044  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD5048  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD504C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD5050  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD5054  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BD5058  38 C0 00 00 */	li r6, 0
/* 80BD505C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BD5060  FC 40 08 90 */	fmr f2, f1
/* 80BD5064  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80BD5068  FC 80 18 90 */	fmr f4, f3
/* 80BD506C  39 00 00 00 */	li r8, 0
/* 80BD5070  4B 6D 69 14 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD5074  38 00 00 01 */	li r0, 1
/* 80BD5078  98 1E 05 DA */	stb r0, 0x5da(r30)
/* 80BD507C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BD5080  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80BD5084  A8 BE 05 D6 */	lha r5, 0x5d6(r30)
/* 80BD5088  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80BD508C  4B 69 23 68 */	b __ct__5csXyzFsss
/* 80BD5090  38 61 00 24 */	addi r3, r1, 0x24
/* 80BD5094  38 80 00 00 */	li r4, 0
/* 80BD5098  38 A0 00 00 */	li r5, 0
/* 80BD509C  38 C0 00 00 */	li r6, 0
/* 80BD50A0  4B 69 23 54 */	b __ct__5csXyzFsss
/* 80BD50A4  3B 00 00 00 */	li r24, 0
/* 80BD50A8  3B A0 00 00 */	li r29, 0
/* 80BD50AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD50B0  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l
/* 80BD50B4  C3 BF 00 18 */	lfs f29, 0x18(r31)
/* 80BD50B8  C3 DF 00 1C */	lfs f30, 0x1c(r31)
/* 80BD50BC  CB FF 00 28 */	lfd f31, 0x28(r31)
/* 80BD50C0  3F 40 43 30 */	lis r26, 0x4330
/* 80BD50C4  7F 3B CB 78 */	mr r27, r25
/* 80BD50C8  7F 3C CB 78 */	mr r28, r25
lbl_80BD50CC:
/* 80BD50CC  7F 23 CB 78 */	mr r3, r25
/* 80BD50D0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BD50D4  C0 5E 05 D0 */	lfs f2, 0x5d0(r30)
/* 80BD50D8  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BD50DC  4B 77 18 0C */	b PSMTXTrans
/* 80BD50E0  7F 23 CB 78 */	mr r3, r25
/* 80BD50E4  A8 9E 05 D6 */	lha r4, 0x5d6(r30)
/* 80BD50E8  4B 43 73 4C */	b mDoMtx_YrotM__FPA4_fs
/* 80BD50EC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80BD50F0  FC 40 08 90 */	fmr f2, f1
/* 80BD50F4  6F 00 80 00 */	xoris r0, r24, 0x8000
/* 80BD50F8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80BD50FC  93 41 00 38 */	stw r26, 0x38(r1)
/* 80BD5100  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80BD5104  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BD5108  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80BD510C  EC 7D 00 2A */	fadds f3, f29, f0
/* 80BD5110  4B 43 7C 8C */	b transM__14mDoMtx_stack_cFfff
/* 80BD5114  7F 63 DB 78 */	mr r3, r27
/* 80BD5118  A8 1E 05 D6 */	lha r0, 0x5d6(r30)
/* 80BD511C  7C 00 00 D0 */	neg r0, r0
/* 80BD5120  7C 04 07 34 */	extsh r4, r0
/* 80BD5124  4B 43 73 10 */	b mDoMtx_YrotM__FPA4_fs
/* 80BD5128  38 9D 05 AC */	addi r4, r29, 0x5ac
/* 80BD512C  7C 9E 22 14 */	add r4, r30, r4
/* 80BD5130  7F 83 E3 78 */	mr r3, r28
/* 80BD5134  7C 85 23 78 */	mr r5, r4
/* 80BD5138  4B 77 1C 34 */	b PSMTXMultVec
/* 80BD513C  3B 18 00 01 */	addi r24, r24, 1
/* 80BD5140  2C 18 00 02 */	cmpwi r24, 2
/* 80BD5144  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BD5148  41 80 FF 84 */	blt lbl_80BD50CC
/* 80BD514C  38 60 00 71 */	li r3, 0x71
/* 80BD5150  38 80 00 01 */	li r4, 1
/* 80BD5154  38 BE 05 AC */	addi r5, r30, 0x5ac
/* 80BD5158  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BD515C  7C 06 07 74 */	extsb r6, r0
/* 80BD5160  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80BD5164  39 00 00 00 */	li r8, 0
/* 80BD5168  39 20 FF FF */	li r9, -1
/* 80BD516C  4B 44 4C 2C */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80BD5170  90 7E 05 A4 */	stw r3, 0x5a4(r30)
/* 80BD5174  38 60 00 71 */	li r3, 0x71
/* 80BD5178  38 80 00 01 */	li r4, 1
/* 80BD517C  38 BE 05 B8 */	addi r5, r30, 0x5b8
/* 80BD5180  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BD5184  7C 06 07 74 */	extsb r6, r0
/* 80BD5188  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80BD518C  39 00 00 00 */	li r8, 0
/* 80BD5190  39 20 FF FF */	li r9, -1
/* 80BD5194  4B 44 4C 04 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80BD5198  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80BD519C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD51A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD51A4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BD51A8  38 80 00 00 */	li r4, 0
/* 80BD51AC  90 81 00 08 */	stw r4, 8(r1)
/* 80BD51B0  38 00 FF FF */	li r0, -1
/* 80BD51B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD51B8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BD51BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BD51C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BD51C4  38 80 00 00 */	li r4, 0
/* 80BD51C8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008620@ha */
/* 80BD51CC  38 A5 86 20 */	addi r5, r5, 0x8620 /* 0x00008620@l */
/* 80BD51D0  38 DE 05 B8 */	addi r6, r30, 0x5b8
/* 80BD51D4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80BD51D8  39 01 00 2C */	addi r8, r1, 0x2c
/* 80BD51DC  39 20 00 00 */	li r9, 0
/* 80BD51E0  39 40 00 FF */	li r10, 0xff
/* 80BD51E4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BD51E8  4B 47 78 A8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80BD51EC:
/* 80BD51EC  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 80BD51F0  C8 3F 00 28 */	lfd f1, 0x28(r31)
/* 80BD51F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BD51F8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80BD51FC  3C 00 43 30 */	lis r0, 0x4330
/* 80BD5200  90 01 00 38 */	stw r0, 0x38(r1)
/* 80BD5204  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80BD5208  EC 20 08 28 */	fsubs f1, f0, f1
/* 80BD520C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BD5210  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD5214  FC 00 00 1E */	fctiwz f0, f0
/* 80BD5218  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BD521C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BD5220  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
/* 80BD5224  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80BD5228  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80BD522C  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80BD5230  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80BD5234  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 80BD5238  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 80BD523C  39 61 00 70 */	addi r11, r1, 0x70
/* 80BD5240  4B 78 CF D4 */	b _restgpr_24
/* 80BD5244  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80BD5248  7C 08 03 A6 */	mtlr r0
/* 80BD524C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80BD5250  4E 80 00 20 */	blr 
