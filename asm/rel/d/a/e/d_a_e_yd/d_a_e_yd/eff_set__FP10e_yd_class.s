lbl_807F613C:
/* 807F613C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807F6140  7C 08 02 A6 */	mflr r0
/* 807F6144  90 01 00 64 */	stw r0, 0x64(r1)
/* 807F6148  39 61 00 60 */	addi r11, r1, 0x60
/* 807F614C  4B B6 C0 79 */	bl _savegpr_23
/* 807F6150  7C 79 1B 78 */	mr r25, r3
/* 807F6154  3C 60 80 7F */	lis r3, lit_3788@ha /* 0x807F7A00@ha */
/* 807F6158  3B 83 7A 00 */	addi r28, r3, lit_3788@l /* 0x807F7A00@l */
/* 807F615C  88 19 05 67 */	lbz r0, 0x567(r25)
/* 807F6160  7C 00 07 75 */	extsb. r0, r0
/* 807F6164  40 82 03 64 */	bne lbl_807F64C8
/* 807F6168  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 807F616C  83 63 00 04 */	lwz r27, 4(r3)
/* 807F6170  88 79 12 34 */	lbz r3, 0x1234(r25)
/* 807F6174  7C 60 07 75 */	extsb. r0, r3
/* 807F6178  41 82 00 14 */	beq lbl_807F618C
/* 807F617C  38 03 FF FF */	addi r0, r3, -1
/* 807F6180  98 19 12 34 */	stb r0, 0x1234(r25)
/* 807F6184  38 00 00 03 */	li r0, 3
/* 807F6188  98 19 12 35 */	stb r0, 0x1235(r25)
lbl_807F618C:
/* 807F618C  38 79 12 50 */	addi r3, r25, 0x1250
/* 807F6190  88 19 12 35 */	lbz r0, 0x1235(r25)
/* 807F6194  2C 00 00 01 */	cmpwi r0, 1
/* 807F6198  41 82 00 0C */	beq lbl_807F61A4
/* 807F619C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 807F61A0  48 00 00 08 */	b lbl_807F61A8
lbl_807F61A4:
/* 807F61A4  C0 3C 00 08 */	lfs f1, 8(r28)
lbl_807F61A8:
/* 807F61A8  C0 5C 00 08 */	lfs f2, 8(r28)
/* 807F61AC  C0 7C 00 64 */	lfs f3, 0x64(r28)
/* 807F61B0  4B A7 98 8D */	bl cLib_addCalc2__FPffff
/* 807F61B4  3B 40 00 00 */	li r26, 0
/* 807F61B8  3B 00 00 00 */	li r24, 0
/* 807F61BC  3A E0 00 00 */	li r23, 0
/* 807F61C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F61C4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F61C8  3C 60 80 7F */	lis r3, p_name@ha /* 0x807F7BB0@ha */
/* 807F61CC  3B C3 7B B0 */	addi r30, r3, p_name@l /* 0x807F7BB0@l */
lbl_807F61D0:
/* 807F61D0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807F61D4  38 00 00 FF */	li r0, 0xff
/* 807F61D8  90 01 00 08 */	stw r0, 8(r1)
/* 807F61DC  38 80 00 00 */	li r4, 0
/* 807F61E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 807F61E4  38 00 FF FF */	li r0, -1
/* 807F61E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F61EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 807F61F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 807F61F4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807F61F8  3B F7 12 38 */	addi r31, r23, 0x1238
/* 807F61FC  7C 99 F8 2E */	lwzx r4, r25, r31
/* 807F6200  38 A0 00 00 */	li r5, 0
/* 807F6204  7C DE C2 2E */	lhzx r6, r30, r24
/* 807F6208  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 807F620C  39 00 00 00 */	li r8, 0
/* 807F6210  39 20 00 00 */	li r9, 0
/* 807F6214  39 40 00 00 */	li r10, 0
/* 807F6218  C0 3C 00 08 */	lfs f1, 8(r28)
/* 807F621C  4B 85 72 B1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F6220  7C 79 F9 2E */	stwx r3, r25, r31
/* 807F6224  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807F6228  38 63 02 10 */	addi r3, r3, 0x210
/* 807F622C  7C 99 F8 2E */	lwzx r4, r25, r31
/* 807F6230  4B 85 56 E9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807F6234  7C 7F 1B 79 */	or. r31, r3, r3
/* 807F6238  41 82 00 70 */	beq lbl_807F62A8
/* 807F623C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 807F6240  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807F6244  3C 60 80 7F */	lis r3, p_idx@ha /* 0x807F7BB8@ha */
/* 807F6248  38 63 7B B8 */	addi r3, r3, p_idx@l /* 0x807F7BB8@l */
/* 807F624C  7C 03 B8 2E */	lwzx r0, r3, r23
/* 807F6250  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807F6254  7C 64 02 14 */	add r3, r4, r0
/* 807F6258  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807F625C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807F6260  80 84 00 00 */	lwz r4, 0(r4)
/* 807F6264  4B B5 02 4D */	bl PSMTXCopy
/* 807F6268  C0 39 12 50 */	lfs f1, 0x1250(r25)
/* 807F626C  FC 40 08 90 */	fmr f2, f1
/* 807F6270  FC 60 08 90 */	fmr f3, f1
/* 807F6274  38 60 00 01 */	li r3, 1
/* 807F6278  4B A7 AC 2D */	bl MtxScale__FfffUc
/* 807F627C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F6280  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F6284  80 63 00 00 */	lwz r3, 0(r3)
/* 807F6288  38 9F 00 68 */	addi r4, r31, 0x68
/* 807F628C  38 BF 00 98 */	addi r5, r31, 0x98
/* 807F6290  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 807F6294  4B A8 A5 75 */	bl func_80280808
/* 807F6298  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 807F629C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807F62A0  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 807F62A4  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_807F62A8:
/* 807F62A8  3B 5A 00 01 */	addi r26, r26, 1
/* 807F62AC  2C 1A 00 02 */	cmpwi r26, 2
/* 807F62B0  3B 18 00 02 */	addi r24, r24, 2
/* 807F62B4  3A F7 00 04 */	addi r23, r23, 4
/* 807F62B8  40 81 FF 18 */	ble lbl_807F61D0
/* 807F62BC  88 79 12 35 */	lbz r3, 0x1235(r25)
/* 807F62C0  7C 60 07 75 */	extsb. r0, r3
/* 807F62C4  41 82 02 04 */	beq lbl_807F64C8
/* 807F62C8  7C 60 07 74 */	extsb r0, r3
/* 807F62CC  2C 00 00 01 */	cmpwi r0, 1
/* 807F62D0  40 82 00 9C */	bne lbl_807F636C
/* 807F62D4  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 807F62D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807F62DC  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 807F62E0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807F62E4  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 807F62E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807F62EC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 807F62F0  EC 01 00 2A */	fadds f0, f1, f0
/* 807F62F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807F62F8  38 61 00 20 */	addi r3, r1, 0x20
/* 807F62FC  4B 82 79 C1 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 807F6300  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807F6304  41 82 00 10 */	beq lbl_807F6314
/* 807F6308  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 807F630C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 807F6310  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_807F6314:
/* 807F6314  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807F6318  38 00 00 FF */	li r0, 0xff
/* 807F631C  90 01 00 08 */	stw r0, 8(r1)
/* 807F6320  38 80 00 00 */	li r4, 0
/* 807F6324  90 81 00 0C */	stw r4, 0xc(r1)
/* 807F6328  38 00 FF FF */	li r0, -1
/* 807F632C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F6330  90 81 00 14 */	stw r4, 0x14(r1)
/* 807F6334  90 81 00 18 */	stw r4, 0x18(r1)
/* 807F6338  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807F633C  80 99 12 48 */	lwz r4, 0x1248(r25)
/* 807F6340  38 A0 00 00 */	li r5, 0
/* 807F6344  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008810@ha */
/* 807F6348  38 C6 88 10 */	addi r6, r6, 0x8810 /* 0x00008810@l */
/* 807F634C  38 E1 00 20 */	addi r7, r1, 0x20
/* 807F6350  39 00 00 00 */	li r8, 0
/* 807F6354  39 20 00 00 */	li r9, 0
/* 807F6358  39 40 00 00 */	li r10, 0
/* 807F635C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 807F6360  4B 85 71 6D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F6364  90 79 12 48 */	stw r3, 0x1248(r25)
/* 807F6368  48 00 01 58 */	b lbl_807F64C0
lbl_807F636C:
/* 807F636C  2C 00 00 02 */	cmpwi r0, 2
/* 807F6370  40 82 00 A8 */	bne lbl_807F6418
/* 807F6374  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807F6378  38 00 00 FF */	li r0, 0xff
/* 807F637C  90 01 00 08 */	stw r0, 8(r1)
/* 807F6380  38 80 00 00 */	li r4, 0
/* 807F6384  90 81 00 0C */	stw r4, 0xc(r1)
/* 807F6388  38 00 FF FF */	li r0, -1
/* 807F638C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F6390  90 81 00 14 */	stw r4, 0x14(r1)
/* 807F6394  90 81 00 18 */	stw r4, 0x18(r1)
/* 807F6398  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807F639C  80 99 12 44 */	lwz r4, 0x1244(r25)
/* 807F63A0  38 A0 00 00 */	li r5, 0
/* 807F63A4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000880E@ha */
/* 807F63A8  38 C6 88 0E */	addi r6, r6, 0x880E /* 0x0000880E@l */
/* 807F63AC  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 807F63B0  39 00 00 00 */	li r8, 0
/* 807F63B4  39 20 00 00 */	li r9, 0
/* 807F63B8  39 40 00 00 */	li r10, 0
/* 807F63BC  C0 3C 00 08 */	lfs f1, 8(r28)
/* 807F63C0  4B 85 71 0D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F63C4  90 79 12 44 */	stw r3, 0x1244(r25)
/* 807F63C8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807F63CC  38 63 02 10 */	addi r3, r3, 0x210
/* 807F63D0  80 99 12 44 */	lwz r4, 0x1244(r25)
/* 807F63D4  4B 85 55 45 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807F63D8  7C 77 1B 79 */	or. r23, r3, r3
/* 807F63DC  41 82 00 E4 */	beq lbl_807F64C0
/* 807F63E0  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 807F63E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807F63E8  38 63 00 30 */	addi r3, r3, 0x30
/* 807F63EC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807F63F0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807F63F4  80 84 00 00 */	lwz r4, 0(r4)
/* 807F63F8  4B B5 00 B9 */	bl PSMTXCopy
/* 807F63FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F6400  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F6404  80 63 00 00 */	lwz r3, 0(r3)
/* 807F6408  38 97 00 68 */	addi r4, r23, 0x68
/* 807F640C  38 B7 00 A4 */	addi r5, r23, 0xa4
/* 807F6410  4B A8 A3 D1 */	bl func_802807E0
/* 807F6414  48 00 00 AC */	b lbl_807F64C0
lbl_807F6418:
/* 807F6418  2C 00 00 03 */	cmpwi r0, 3
/* 807F641C  40 82 00 A4 */	bne lbl_807F64C0
/* 807F6420  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807F6424  38 00 00 FF */	li r0, 0xff
/* 807F6428  90 01 00 08 */	stw r0, 8(r1)
/* 807F642C  38 80 00 00 */	li r4, 0
/* 807F6430  90 81 00 0C */	stw r4, 0xc(r1)
/* 807F6434  38 00 FF FF */	li r0, -1
/* 807F6438  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F643C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807F6440  90 81 00 18 */	stw r4, 0x18(r1)
/* 807F6444  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807F6448  80 99 12 4C */	lwz r4, 0x124c(r25)
/* 807F644C  38 A0 00 00 */	li r5, 0
/* 807F6450  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000880F@ha */
/* 807F6454  38 C6 88 0F */	addi r6, r6, 0x880F /* 0x0000880F@l */
/* 807F6458  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 807F645C  39 00 00 00 */	li r8, 0
/* 807F6460  39 20 00 00 */	li r9, 0
/* 807F6464  39 40 00 00 */	li r10, 0
/* 807F6468  C0 3C 00 08 */	lfs f1, 8(r28)
/* 807F646C  4B 85 70 61 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F6470  90 79 12 4C */	stw r3, 0x124c(r25)
/* 807F6474  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807F6478  38 63 02 10 */	addi r3, r3, 0x210
/* 807F647C  80 99 12 4C */	lwz r4, 0x124c(r25)
/* 807F6480  4B 85 54 99 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807F6484  7C 77 1B 79 */	or. r23, r3, r3
/* 807F6488  41 82 00 38 */	beq lbl_807F64C0
/* 807F648C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 807F6490  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807F6494  38 63 00 30 */	addi r3, r3, 0x30
/* 807F6498  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807F649C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807F64A0  80 84 00 00 */	lwz r4, 0(r4)
/* 807F64A4  4B B5 00 0D */	bl PSMTXCopy
/* 807F64A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F64AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F64B0  80 63 00 00 */	lwz r3, 0(r3)
/* 807F64B4  38 97 00 68 */	addi r4, r23, 0x68
/* 807F64B8  38 B7 00 A4 */	addi r5, r23, 0xa4
/* 807F64BC  4B A8 A3 25 */	bl func_802807E0
lbl_807F64C0:
/* 807F64C0  38 00 00 00 */	li r0, 0
/* 807F64C4  98 19 12 35 */	stb r0, 0x1235(r25)
lbl_807F64C8:
/* 807F64C8  39 61 00 60 */	addi r11, r1, 0x60
/* 807F64CC  4B B6 BD 45 */	bl _restgpr_23
/* 807F64D0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807F64D4  7C 08 03 A6 */	mtlr r0
/* 807F64D8  38 21 00 60 */	addi r1, r1, 0x60
/* 807F64DC  4E 80 00 20 */	blr 
