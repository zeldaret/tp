lbl_80761164:
/* 80761164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80761168  7C 08 02 A6 */	mflr r0
/* 8076116C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80761170  7C 6A 1B 78 */	mr r10, r3
/* 80761174  7C 87 23 78 */	mr r7, r4
/* 80761178  7C A8 2B 78 */	mr r8, r5
/* 8076117C  7C C9 33 78 */	mr r9, r6
/* 80761180  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80761184  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80761188  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8076118C  38 80 00 00 */	li r4, 0
/* 80761190  90 81 00 08 */	stw r4, 8(r1)
/* 80761194  38 00 FF FF */	li r0, -1
/* 80761198  90 01 00 0C */	stw r0, 0xc(r1)
/* 8076119C  90 81 00 10 */	stw r4, 0x10(r1)
/* 807611A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807611A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807611A8  38 80 00 00 */	li r4, 0
/* 807611AC  7D 45 53 78 */	mr r5, r10
/* 807611B0  7C E6 3B 78 */	mr r6, r7
/* 807611B4  38 E0 00 00 */	li r7, 0
/* 807611B8  39 40 00 FF */	li r10, 0xff
/* 807611BC  3D 60 80 76 */	lis r11, lit_3908@ha
/* 807611C0  C0 2B 15 04 */	lfs f1, lit_3908@l(r11)
/* 807611C4  4B 8E B8 CC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807611C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807611CC  7C 08 03 A6 */	mtlr r0
/* 807611D0  38 21 00 20 */	addi r1, r1, 0x20
/* 807611D4  4E 80 00 20 */	blr 
