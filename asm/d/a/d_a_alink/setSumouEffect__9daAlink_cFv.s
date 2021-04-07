lbl_801221F0:
/* 801221F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801221F4  7C 08 02 A6 */	mflr r0
/* 801221F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801221FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80122200  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80122204  7C 7F 1B 78 */	mr r31, r3
/* 80122208  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 8012220C  28 00 00 D1 */	cmplwi r0, 0xd1
/* 80122210  40 82 02 A0 */	bne lbl_801224B0
/* 80122214  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 80122218  2C 00 01 4F */	cmpwi r0, 0x14f
/* 8012221C  41 82 00 14 */	beq lbl_80122230
/* 80122220  2C 00 01 51 */	cmpwi r0, 0x151
/* 80122224  41 82 00 0C */	beq lbl_80122230
/* 80122228  2C 00 01 50 */	cmpwi r0, 0x150
/* 8012222C  40 82 00 D8 */	bne lbl_80122304
lbl_80122230:
/* 80122230  7F E3 FB 78 */	mr r3, r31
/* 80122234  38 9F 31 C8 */	addi r4, r31, 0x31c8
/* 80122238  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008538@ha */
/* 8012223C  38 A5 85 38 */	addi r5, r5, 0x8538 /* 0x00008538@l */
/* 80122240  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80122244  38 E0 00 00 */	li r7, 0
/* 80122248  4B FF E3 39 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 8012224C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80122250  41 82 00 34 */	beq lbl_80122284
/* 80122254  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80122258  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012225C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80122260  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 80122264  38 9E 00 68 */	addi r4, r30, 0x68
/* 80122268  38 BE 00 A4 */	addi r5, r30, 0xa4
/* 8012226C  48 15 E5 75 */	bl func_802807E0
/* 80122270  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 80122274  2C 00 01 51 */	cmpwi r0, 0x151
/* 80122278  40 82 00 0C */	bne lbl_80122284
/* 8012227C  38 00 00 05 */	li r0, 5
/* 80122280  B0 1E 00 52 */	sth r0, 0x52(r30)
lbl_80122284:
/* 80122284  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 80122288  2C 00 01 50 */	cmpwi r0, 0x150
/* 8012228C  41 82 03 44 */	beq lbl_801225D0
/* 80122290  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 80122294  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 80122298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012229C  4C 41 13 82 */	cror 2, 1, 2
/* 801222A0  40 82 03 30 */	bne lbl_801225D0
/* 801222A4  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 801222A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801222AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801222B0  C0 03 01 BC */	lfs f0, 0x1bc(r3)
/* 801222B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801222B8  C0 03 01 CC */	lfs f0, 0x1cc(r3)
/* 801222BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801222C0  C0 03 01 DC */	lfs f0, 0x1dc(r3)
/* 801222C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801222C8  7F E3 FB 78 */	mr r3, r31
/* 801222CC  38 9F 31 CC */	addi r4, r31, 0x31cc
/* 801222D0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008539@ha */
/* 801222D4  38 A5 85 39 */	addi r5, r5, 0x8539 /* 0x00008539@l */
/* 801222D8  38 C1 00 14 */	addi r6, r1, 0x14
/* 801222DC  38 E0 00 00 */	li r7, 0
/* 801222E0  4B FF E2 A1 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 801222E4  7F E3 FB 78 */	mr r3, r31
/* 801222E8  38 9F 31 D0 */	addi r4, r31, 0x31d0
/* 801222EC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000853A@ha */
/* 801222F0  38 A5 85 3A */	addi r5, r5, 0x853A /* 0x0000853A@l */
/* 801222F4  38 C1 00 14 */	addi r6, r1, 0x14
/* 801222F8  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 801222FC  4B FF E2 85 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80122300  48 00 02 D0 */	b lbl_801225D0
lbl_80122304:
/* 80122304  2C 00 01 45 */	cmpwi r0, 0x145
/* 80122308  41 82 00 1C */	beq lbl_80122324
/* 8012230C  2C 00 01 46 */	cmpwi r0, 0x146
/* 80122310  41 82 00 14 */	beq lbl_80122324
/* 80122314  2C 00 01 4E */	cmpwi r0, 0x14e
/* 80122318  41 82 00 0C */	beq lbl_80122324
/* 8012231C  2C 00 01 47 */	cmpwi r0, 0x147
/* 80122320  40 82 02 B0 */	bne lbl_801225D0
lbl_80122324:
/* 80122324  2C 00 01 4E */	cmpwi r0, 0x14e
/* 80122328  41 82 00 A0 */	beq lbl_801223C8
/* 8012232C  2C 00 01 45 */	cmpwi r0, 0x145
/* 80122330  41 82 00 20 */	beq lbl_80122350
/* 80122334  2C 00 01 46 */	cmpwi r0, 0x146
/* 80122338  41 82 00 18 */	beq lbl_80122350
/* 8012233C  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 80122340  C0 02 93 C4 */	lfs f0, lit_10194(r2)
/* 80122344  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122348  4C 41 13 82 */	cror 2, 1, 2
/* 8012234C  40 82 00 7C */	bne lbl_801223C8
lbl_80122350:
/* 80122350  7F E3 FB 78 */	mr r3, r31
/* 80122354  38 9F 31 C8 */	addi r4, r31, 0x31c8
/* 80122358  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008542@ha */
/* 8012235C  38 A5 85 42 */	addi r5, r5, 0x8542 /* 0x00008542@l */
/* 80122360  38 DF 38 34 */	addi r6, r31, 0x3834
/* 80122364  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 80122368  4B FF E2 19 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 8012236C  7C 65 1B 79 */	or. r5, r3, r3
/* 80122370  41 82 00 1C */	beq lbl_8012238C
/* 80122374  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80122378  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012237C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80122380  38 85 00 68 */	addi r4, r5, 0x68
/* 80122384  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80122388  48 15 E4 59 */	bl func_802807E0
lbl_8012238C:
/* 8012238C  7F E3 FB 78 */	mr r3, r31
/* 80122390  38 9F 31 CC */	addi r4, r31, 0x31cc
/* 80122394  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008541@ha */
/* 80122398  38 A5 85 41 */	addi r5, r5, 0x8541 /* 0x00008541@l */
/* 8012239C  38 DF 38 34 */	addi r6, r31, 0x3834
/* 801223A0  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 801223A4  4B FF E1 DD */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 801223A8  7C 65 1B 79 */	or. r5, r3, r3
/* 801223AC  41 82 00 1C */	beq lbl_801223C8
/* 801223B0  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 801223B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801223B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801223BC  38 85 00 68 */	addi r4, r5, 0x68
/* 801223C0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 801223C4  48 15 E4 1D */	bl func_802807E0
lbl_801223C8:
/* 801223C8  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 801223CC  C0 02 93 BC */	lfs f0, lit_10042(r2)
/* 801223D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801223D4  4C 41 13 82 */	cror 2, 1, 2
/* 801223D8  41 82 00 40 */	beq lbl_80122418
/* 801223DC  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 801223E0  2C 00 01 4E */	cmpwi r0, 0x14e
/* 801223E4  40 82 00 14 */	bne lbl_801223F8
/* 801223E8  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 801223EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801223F0  4C 41 13 82 */	cror 2, 1, 2
/* 801223F4  41 82 00 24 */	beq lbl_80122418
lbl_801223F8:
/* 801223F8  2C 00 01 45 */	cmpwi r0, 0x145
/* 801223FC  41 82 00 0C */	beq lbl_80122408
/* 80122400  2C 00 01 46 */	cmpwi r0, 0x146
/* 80122404  40 82 01 CC */	bne lbl_801225D0
lbl_80122408:
/* 80122408  C0 02 93 74 */	lfs f0, lit_8502(r2)
/* 8012240C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122410  4C 41 13 82 */	cror 2, 1, 2
/* 80122414  40 82 01 BC */	bne lbl_801225D0
lbl_80122418:
/* 80122418  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 8012241C  2C 00 01 47 */	cmpwi r0, 0x147
/* 80122420  40 82 00 0C */	bne lbl_8012242C
/* 80122424  C0 82 93 D4 */	lfs f4, lit_11442(r2)
/* 80122428  48 00 00 08 */	b lbl_80122430
lbl_8012242C:
/* 8012242C  C0 82 92 E0 */	lfs f4, lit_6845(r2)
lbl_80122430:
/* 80122430  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80122434  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80122438  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012243C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80122440  7C 64 02 14 */	add r3, r4, r0
/* 80122444  C0 03 00 04 */	lfs f0, 4(r3)
/* 80122448  C0 3F 38 3C */	lfs f1, 0x383c(r31)
/* 8012244C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80122450  EC 61 00 2A */	fadds f3, f1, f0
/* 80122454  C0 5F 38 38 */	lfs f2, 0x3838(r31)
/* 80122458  7C 04 04 2E */	lfsx f0, r4, r0
/* 8012245C  C0 3F 38 34 */	lfs f1, 0x3834(r31)
/* 80122460  EC 04 00 32 */	fmuls f0, f4, f0
/* 80122464  EC 01 00 2A */	fadds f0, f1, f0
/* 80122468  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8012246C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80122470  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80122474  7F E3 FB 78 */	mr r3, r31
/* 80122478  38 9F 31 D0 */	addi r4, r31, 0x31d0
/* 8012247C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008539@ha */
/* 80122480  38 A5 85 39 */	addi r5, r5, 0x8539 /* 0x00008539@l */
/* 80122484  38 C1 00 14 */	addi r6, r1, 0x14
/* 80122488  38 E0 00 00 */	li r7, 0
/* 8012248C  4B FF E0 F5 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80122490  7F E3 FB 78 */	mr r3, r31
/* 80122494  38 9F 31 D4 */	addi r4, r31, 0x31d4
/* 80122498  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000853A@ha */
/* 8012249C  38 A5 85 3A */	addi r5, r5, 0x853A /* 0x0000853A@l */
/* 801224A0  38 C1 00 14 */	addi r6, r1, 0x14
/* 801224A4  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 801224A8  4B FF E0 D9 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 801224AC  48 00 01 24 */	b lbl_801225D0
lbl_801224B0:
/* 801224B0  28 00 00 CF */	cmplwi r0, 0xcf
/* 801224B4  40 82 01 1C */	bne lbl_801225D0
/* 801224B8  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 801224BC  2C 00 01 54 */	cmpwi r0, 0x154
/* 801224C0  40 82 00 64 */	bne lbl_80122524
/* 801224C4  38 9F 31 C8 */	addi r4, r31, 0x31c8
/* 801224C8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008545@ha */
/* 801224CC  38 A5 85 45 */	addi r5, r5, 0x8545 /* 0x00008545@l */
/* 801224D0  38 DF 38 34 */	addi r6, r31, 0x3834
/* 801224D4  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 801224D8  4B FF E0 A9 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 801224DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 801224E0  41 82 00 F0 */	beq lbl_801225D0
/* 801224E4  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 801224E8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801224EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801224F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801224F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801224F8  48 22 3F B9 */	bl PSMTXCopy
/* 801224FC  C0 22 93 80 */	lfs f1, lit_8780(r2)
/* 80122500  C0 42 96 90 */	lfs f2, lit_40716(r2)
/* 80122504  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 80122508  4B EE A8 95 */	bl transM__14mDoMtx_stack_cFfff
/* 8012250C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80122510  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80122514  38 9E 00 68 */	addi r4, r30, 0x68
/* 80122518  38 BE 00 A4 */	addi r5, r30, 0xa4
/* 8012251C  48 15 E2 C5 */	bl func_802807E0
/* 80122520  48 00 00 B0 */	b lbl_801225D0
lbl_80122524:
/* 80122524  2C 00 01 55 */	cmpwi r0, 0x155
/* 80122528  40 82 00 A8 */	bne lbl_801225D0
/* 8012252C  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 80122530  C0 02 94 94 */	lfs f0, lit_16210(r2)
/* 80122534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122538  4C 41 13 82 */	cror 2, 1, 2
/* 8012253C  40 82 00 94 */	bne lbl_801225D0
/* 80122540  38 9F 31 C8 */	addi r4, r31, 0x31c8
/* 80122544  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000853A@ha */
/* 80122548  38 A5 85 3A */	addi r5, r5, 0x853A /* 0x0000853A@l */
/* 8012254C  38 DF 38 34 */	addi r6, r31, 0x3834
/* 80122550  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 80122554  4B FF E0 2D */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80122558  7C 7E 1B 79 */	or. r30, r3, r3
/* 8012255C  41 82 00 74 */	beq lbl_801225D0
/* 80122560  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80122564  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80122568  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012256C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80122570  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80122574  48 22 3F 3D */	bl PSMTXCopy
/* 80122578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8012257C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80122580  38 80 7F FF */	li r4, 0x7fff
/* 80122584  4B EE 9E 19 */	bl mDoMtx_XrotM__FPA4_fs
/* 80122588  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8012258C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80122590  38 9E 00 68 */	addi r4, r30, 0x68
/* 80122594  38 BE 00 A4 */	addi r5, r30, 0xa4
/* 80122598  48 15 E2 49 */	bl func_802807E0
/* 8012259C  3C 60 80 39 */	lis r3, releaeScale@ha /* 0x80391C30@ha */
/* 801225A0  38 63 1C 30 */	addi r3, r3, releaeScale@l /* 0x80391C30@l */
/* 801225A4  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0 /* qr0 */
/* 801225A8  C0 43 00 08 */	lfs f2, 8(r3)
/* 801225AC  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 801225B0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801225B4  C0 21 00 08 */	lfs f1, 8(r1)
/* 801225B8  D0 3E 00 98 */	stfs f1, 0x98(r30)
/* 801225BC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801225C0  D0 1E 00 9C */	stfs f0, 0x9c(r30)
/* 801225C4  D0 5E 00 A0 */	stfs f2, 0xa0(r30)
/* 801225C8  D0 3E 00 B0 */	stfs f1, 0xb0(r30)
/* 801225CC  D0 1E 00 B4 */	stfs f0, 0xb4(r30)
lbl_801225D0:
/* 801225D0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801225D4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801225D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801225DC  7C 08 03 A6 */	mtlr r0
/* 801225E0  38 21 00 30 */	addi r1, r1, 0x30
/* 801225E4  4E 80 00 20 */	blr 
