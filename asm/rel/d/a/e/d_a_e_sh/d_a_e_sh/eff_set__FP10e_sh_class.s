lbl_80790278:
/* 80790278  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8079027C  7C 08 02 A6 */	mflr r0
/* 80790280  90 01 00 54 */	stw r0, 0x54(r1)
/* 80790284  39 61 00 50 */	addi r11, r1, 0x50
/* 80790288  4B BD 1F 3C */	b _savegpr_23
/* 8079028C  7C 79 1B 78 */	mr r25, r3
/* 80790290  80 63 05 B8 */	lwz r3, 0x5b8(r3)
/* 80790294  83 63 00 04 */	lwz r27, 4(r3)
/* 80790298  88 79 0C EB */	lbz r3, 0xceb(r25)
/* 8079029C  7C 60 07 75 */	extsb. r0, r3
/* 807902A0  41 82 00 14 */	beq lbl_807902B4
/* 807902A4  38 03 FF FF */	addi r0, r3, -1
/* 807902A8  98 19 0C EB */	stb r0, 0xceb(r25)
/* 807902AC  38 00 00 02 */	li r0, 2
/* 807902B0  98 19 0C EC */	stb r0, 0xcec(r25)
lbl_807902B4:
/* 807902B4  88 79 0C EC */	lbz r3, 0xcec(r25)
/* 807902B8  7C 60 07 75 */	extsb. r0, r3
/* 807902BC  41 82 01 C4 */	beq lbl_80790480
/* 807902C0  7C 60 07 74 */	extsb r0, r3
/* 807902C4  2C 00 00 01 */	cmpwi r0, 1
/* 807902C8  40 82 01 04 */	bne lbl_807903CC
/* 807902CC  3B 40 00 00 */	li r26, 0
/* 807902D0  3B 00 00 00 */	li r24, 0
/* 807902D4  3A E0 00 00 */	li r23, 0
/* 807902D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807902DC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 807902E0  3C 60 80 79 */	lis r3, p_name@ha
/* 807902E4  3B A3 1F 40 */	addi r29, r3, p_name@l
/* 807902E8  3C 60 80 79 */	lis r3, lit_3904@ha
/* 807902EC  3B C3 1D 78 */	addi r30, r3, lit_3904@l
lbl_807902F0:
/* 807902F0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807902F4  38 00 00 FF */	li r0, 0xff
/* 807902F8  90 01 00 08 */	stw r0, 8(r1)
/* 807902FC  38 80 00 00 */	li r4, 0
/* 80790300  90 81 00 0C */	stw r4, 0xc(r1)
/* 80790304  38 00 FF FF */	li r0, -1
/* 80790308  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079030C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80790310  90 81 00 18 */	stw r4, 0x18(r1)
/* 80790314  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80790318  3B F7 0C F0 */	addi r31, r23, 0xcf0
/* 8079031C  7C 99 F8 2E */	lwzx r4, r25, r31
/* 80790320  38 A0 00 00 */	li r5, 0
/* 80790324  7C DD C2 2E */	lhzx r6, r29, r24
/* 80790328  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 8079032C  39 00 00 00 */	li r8, 0
/* 80790330  39 20 00 00 */	li r9, 0
/* 80790334  39 40 00 00 */	li r10, 0
/* 80790338  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8079033C  4B 8B D1 90 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80790340  7C 79 F9 2E */	stwx r3, r25, r31
/* 80790344  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80790348  38 63 02 10 */	addi r3, r3, 0x210
/* 8079034C  7C 99 F8 2E */	lwzx r4, r25, r31
/* 80790350  4B 8B B5 C8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80790354  7C 7F 1B 79 */	or. r31, r3, r3
/* 80790358  41 82 00 5C */	beq lbl_807903B4
/* 8079035C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80790360  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80790364  3C 60 80 79 */	lis r3, p_idx@ha
/* 80790368  38 63 1F 44 */	addi r3, r3, p_idx@l
/* 8079036C  7C 03 B8 2E */	lwzx r0, r3, r23
/* 80790370  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80790374  7C 64 02 14 */	add r3, r4, r0
/* 80790378  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8079037C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80790380  80 84 00 00 */	lwz r4, 0(r4)
/* 80790384  4B BB 61 2C */	b PSMTXCopy
/* 80790388  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079038C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80790390  80 63 00 00 */	lwz r3, 0(r3)
/* 80790394  38 9F 00 68 */	addi r4, r31, 0x68
/* 80790398  38 BF 00 98 */	addi r5, r31, 0x98
/* 8079039C  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 807903A0  4B AF 04 68 */	b func_80280808
/* 807903A4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 807903A8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807903AC  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 807903B0  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_807903B4:
/* 807903B4  3B 5A 00 01 */	addi r26, r26, 1
/* 807903B8  2C 1A 00 01 */	cmpwi r26, 1
/* 807903BC  3B 18 00 02 */	addi r24, r24, 2
/* 807903C0  3A F7 00 04 */	addi r23, r23, 4
/* 807903C4  40 81 FF 2C */	ble lbl_807902F0
/* 807903C8  48 00 00 B8 */	b lbl_80790480
lbl_807903CC:
/* 807903CC  2C 00 00 02 */	cmpwi r0, 2
/* 807903D0  40 82 00 B0 */	bne lbl_80790480
/* 807903D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807903D8  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 807903DC  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 807903E0  38 00 00 FF */	li r0, 0xff
/* 807903E4  90 01 00 08 */	stw r0, 8(r1)
/* 807903E8  38 80 00 00 */	li r4, 0
/* 807903EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 807903F0  38 00 FF FF */	li r0, -1
/* 807903F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807903F8  90 81 00 14 */	stw r4, 0x14(r1)
/* 807903FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80790400  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80790404  80 99 0C F8 */	lwz r4, 0xcf8(r25)
/* 80790408  38 A0 00 00 */	li r5, 0
/* 8079040C  3C C0 00 01 */	lis r6, 0x0001 /* 0x000081D3@ha */
/* 80790410  38 C6 81 D3 */	addi r6, r6, 0x81D3 /* 0x000081D3@l */
/* 80790414  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 80790418  39 00 00 00 */	li r8, 0
/* 8079041C  39 20 00 00 */	li r9, 0
/* 80790420  39 40 00 00 */	li r10, 0
/* 80790424  3D 60 80 79 */	lis r11, lit_3904@ha
/* 80790428  C0 2B 1D 78 */	lfs f1, lit_3904@l(r11)
/* 8079042C  4B 8B D0 A0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80790430  90 79 0C F8 */	stw r3, 0xcf8(r25)
/* 80790434  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80790438  38 63 02 10 */	addi r3, r3, 0x210
/* 8079043C  80 99 0C F8 */	lwz r4, 0xcf8(r25)
/* 80790440  4B 8B B4 D8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80790444  7C 77 1B 79 */	or. r23, r3, r3
/* 80790448  41 82 00 38 */	beq lbl_80790480
/* 8079044C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80790450  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80790454  38 63 02 70 */	addi r3, r3, 0x270
/* 80790458  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8079045C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80790460  80 84 00 00 */	lwz r4, 0(r4)
/* 80790464  4B BB 60 4C */	b PSMTXCopy
/* 80790468  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079046C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80790470  80 63 00 00 */	lwz r3, 0(r3)
/* 80790474  38 97 00 68 */	addi r4, r23, 0x68
/* 80790478  38 B7 00 A4 */	addi r5, r23, 0xa4
/* 8079047C  4B AF 03 64 */	b func_802807E0
lbl_80790480:
/* 80790480  39 61 00 50 */	addi r11, r1, 0x50
/* 80790484  4B BD 1D 8C */	b _restgpr_23
/* 80790488  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8079048C  7C 08 03 A6 */	mtlr r0
/* 80790490  38 21 00 50 */	addi r1, r1, 0x50
/* 80790494  4E 80 00 20 */	blr 
