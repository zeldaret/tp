lbl_807202F0:
/* 807202F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807202F4  7C 08 02 A6 */	mflr r0
/* 807202F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 807202FC  39 61 00 50 */	addi r11, r1, 0x50
/* 80720300  4B C4 1E C4 */	b _savegpr_23
/* 80720304  7C 7D 1B 78 */	mr r29, r3
/* 80720308  80 63 05 B8 */	lwz r3, 0x5b8(r3)
/* 8072030C  83 E3 00 04 */	lwz r31, 4(r3)
/* 80720310  3B C0 00 00 */	li r30, 0
/* 80720314  3B 80 00 00 */	li r28, 0
/* 80720318  3B 60 00 00 */	li r27, 0
/* 8072031C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80720320  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80720324  3C 60 80 72 */	lis r3, mDropEff@ha
/* 80720328  3B 23 2D 2C */	addi r25, r3, mDropEff@l
/* 8072032C  3C 60 80 72 */	lis r3, lit_3791@ha
/* 80720330  3B 43 2C 44 */	addi r26, r3, lit_3791@l
lbl_80720334:
/* 80720334  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80720338  38 00 00 FF */	li r0, 0xff
/* 8072033C  90 01 00 08 */	stw r0, 8(r1)
/* 80720340  38 80 00 00 */	li r4, 0
/* 80720344  90 81 00 0C */	stw r4, 0xc(r1)
/* 80720348  38 00 FF FF */	li r0, -1
/* 8072034C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80720350  90 81 00 14 */	stw r4, 0x14(r1)
/* 80720354  90 81 00 18 */	stw r4, 0x18(r1)
/* 80720358  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8072035C  3A FB 0B B4 */	addi r23, r27, 0xbb4
/* 80720360  7C 9D B8 2E */	lwzx r4, r29, r23
/* 80720364  38 A0 00 00 */	li r5, 0
/* 80720368  7C D9 E2 2E */	lhzx r6, r25, r28
/* 8072036C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80720370  39 00 00 00 */	li r8, 0
/* 80720374  39 20 00 00 */	li r9, 0
/* 80720378  39 40 00 00 */	li r10, 0
/* 8072037C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80720380  4B 92 D1 4C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80720384  7C 7D B9 2E */	stwx r3, r29, r23
/* 80720388  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8072038C  38 63 02 10 */	addi r3, r3, 0x210
/* 80720390  7C 9D B8 2E */	lwzx r4, r29, r23
/* 80720394  4B 92 B5 84 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80720398  7C 65 1B 79 */	or. r5, r3, r3
/* 8072039C  41 82 00 18 */	beq lbl_807203B4
/* 807203A0  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 807203A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807203A8  38 85 00 68 */	addi r4, r5, 0x68
/* 807203AC  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 807203B0  4B B6 04 30 */	b func_802807E0
lbl_807203B4:
/* 807203B4  3B DE 00 01 */	addi r30, r30, 1
/* 807203B8  2C 1E 00 04 */	cmpwi r30, 4
/* 807203BC  3B 9C 00 02 */	addi r28, r28, 2
/* 807203C0  3B 7B 00 04 */	addi r27, r27, 4
/* 807203C4  41 80 FF 70 */	blt lbl_80720334
/* 807203C8  39 61 00 50 */	addi r11, r1, 0x50
/* 807203CC  4B C4 1E 44 */	b _restgpr_23
/* 807203D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807203D4  7C 08 03 A6 */	mtlr r0
/* 807203D8  38 21 00 50 */	addi r1, r1, 0x50
/* 807203DC  4E 80 00 20 */	blr 
