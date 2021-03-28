lbl_80602384:
/* 80602384  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80602388  7C 08 02 A6 */	mflr r0
/* 8060238C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80602390  7C 6C 1B 78 */	mr r12, r3
/* 80602394  7C 8B 23 78 */	mr r11, r4
/* 80602398  7C A8 2B 78 */	mr r8, r5
/* 8060239C  7C C9 33 78 */	mr r9, r6
/* 806023A0  7C EA 3B 78 */	mr r10, r7
/* 806023A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806023A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806023AC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806023B0  38 00 00 FF */	li r0, 0xff
/* 806023B4  90 01 00 08 */	stw r0, 8(r1)
/* 806023B8  38 80 00 00 */	li r4, 0
/* 806023BC  90 81 00 0C */	stw r4, 0xc(r1)
/* 806023C0  38 00 FF FF */	li r0, -1
/* 806023C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806023C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806023CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806023D0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806023D4  7D 84 63 78 */	mr r4, r12
/* 806023D8  38 A0 00 00 */	li r5, 0
/* 806023DC  7D 66 5B 78 */	mr r6, r11
/* 806023E0  7D 07 43 78 */	mr r7, r8
/* 806023E4  39 00 00 00 */	li r8, 0
/* 806023E8  3D 60 80 60 */	lis r11, lit_3815@ha
/* 806023EC  C0 2B 26 64 */	lfs f1, lit_3815@l(r11)
/* 806023F0  4B A4 B0 DC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806023F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806023F8  7C 08 03 A6 */	mtlr r0
/* 806023FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80602400  4E 80 00 20 */	blr 
