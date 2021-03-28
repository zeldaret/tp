lbl_806F1FA4:
/* 806F1FA4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806F1FA8  7C 08 02 A6 */	mflr r0
/* 806F1FAC  90 01 00 54 */	stw r0, 0x54(r1)
/* 806F1FB0  39 61 00 50 */	addi r11, r1, 0x50
/* 806F1FB4  4B C7 02 1C */	b _savegpr_26
/* 806F1FB8  7C 7A 1B 78 */	mr r26, r3
/* 806F1FBC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806F1FC0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806F1FC4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806F1FC8  3B 60 00 00 */	li r27, 0
/* 806F1FCC  3B E0 00 00 */	li r31, 0
/* 806F1FD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F1FD4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 806F1FD8  3C 60 80 6F */	lis r3, b_id_4252@ha
/* 806F1FDC  3B A3 56 7C */	addi r29, r3, b_id_4252@l
/* 806F1FE0  3C 60 80 6F */	lis r3, lit_3767@ha
/* 806F1FE4  3B C3 55 14 */	addi r30, r3, lit_3767@l
lbl_806F1FE8:
/* 806F1FE8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 806F1FEC  38 80 00 00 */	li r4, 0
/* 806F1FF0  90 81 00 08 */	stw r4, 8(r1)
/* 806F1FF4  38 00 FF FF */	li r0, -1
/* 806F1FF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F1FFC  90 81 00 10 */	stw r4, 0x10(r1)
/* 806F2000  90 81 00 14 */	stw r4, 0x14(r1)
/* 806F2004  90 81 00 18 */	stw r4, 0x18(r1)
/* 806F2008  38 80 00 00 */	li r4, 0
/* 806F200C  7C BD FA 2E */	lhzx r5, r29, r31
/* 806F2010  38 DA 06 F8 */	addi r6, r26, 0x6f8
/* 806F2014  38 E0 00 00 */	li r7, 0
/* 806F2018  39 00 00 00 */	li r8, 0
/* 806F201C  39 21 00 20 */	addi r9, r1, 0x20
/* 806F2020  39 40 00 FF */	li r10, 0xff
/* 806F2024  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F2028  4B 95 AA 68 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806F202C  3B 7B 00 01 */	addi r27, r27, 1
/* 806F2030  2C 1B 00 03 */	cmpwi r27, 3
/* 806F2034  3B FF 00 02 */	addi r31, r31, 2
/* 806F2038  41 80 FF B0 */	blt lbl_806F1FE8
/* 806F203C  39 61 00 50 */	addi r11, r1, 0x50
/* 806F2040  4B C7 01 DC */	b _restgpr_26
/* 806F2044  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806F2048  7C 08 03 A6 */	mtlr r0
/* 806F204C  38 21 00 50 */	addi r1, r1, 0x50
/* 806F2050  4E 80 00 20 */	blr 
