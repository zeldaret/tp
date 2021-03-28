lbl_8096B204:
/* 8096B204  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8096B208  7C 08 02 A6 */	mflr r0
/* 8096B20C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8096B210  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8096B214  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8096B218  7C 7F 1B 78 */	mr r31, r3
/* 8096B21C  88 83 0E 11 */	lbz r4, 0xe11(r3)
/* 8096B220  38 60 00 03 */	li r3, 3
/* 8096B224  7C 04 1B D6 */	divw r0, r4, r3
/* 8096B228  7C 00 19 D6 */	mullw r0, r0, r3
/* 8096B22C  7C A0 20 50 */	subf r5, r0, r4
/* 8096B230  7C 04 1B D7 */	divw. r0, r4, r3
/* 8096B234  41 82 00 08 */	beq lbl_8096B23C
/* 8096B238  38 A0 00 02 */	li r5, 2
lbl_8096B23C:
/* 8096B23C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8096B240  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8096B244  54 A0 10 3A */	slwi r0, r5, 2
/* 8096B248  3C 60 80 97 */	lis r3, ptclOffsetY@ha
/* 8096B24C  38 63 CB 40 */	addi r3, r3, ptclOffsetY@l
/* 8096B250  7C 03 04 2E */	lfsx f0, r3, r0
/* 8096B254  EC 21 00 2A */	fadds f1, f1, f0
/* 8096B258  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8096B25C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8096B260  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8096B264  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8096B268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096B26C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8096B270  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8096B274  38 80 00 00 */	li r4, 0
/* 8096B278  90 81 00 08 */	stw r4, 8(r1)
/* 8096B27C  38 00 FF FF */	li r0, -1
/* 8096B280  90 01 00 0C */	stw r0, 0xc(r1)
/* 8096B284  90 81 00 10 */	stw r4, 0x10(r1)
/* 8096B288  90 81 00 14 */	stw r4, 0x14(r1)
/* 8096B28C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8096B290  38 80 00 00 */	li r4, 0
/* 8096B294  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A71@ha */
/* 8096B298  38 A5 8A 71 */	addi r5, r5, 0x8A71 /* 0x00008A71@l */
/* 8096B29C  38 C1 00 20 */	addi r6, r1, 0x20
/* 8096B2A0  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8096B2A4  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8096B2A8  39 20 00 00 */	li r9, 0
/* 8096B2AC  39 40 00 FF */	li r10, 0xff
/* 8096B2B0  3D 60 80 97 */	lis r11, lit_4306@ha
/* 8096B2B4  C0 2B C9 E8 */	lfs f1, lit_4306@l(r11)
/* 8096B2B8  4B 6E 17 D8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8096B2BC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8096B2C0  38 80 00 00 */	li r4, 0
/* 8096B2C4  90 81 00 08 */	stw r4, 8(r1)
/* 8096B2C8  38 00 FF FF */	li r0, -1
/* 8096B2CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8096B2D0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8096B2D4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8096B2D8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8096B2DC  38 80 00 00 */	li r4, 0
/* 8096B2E0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A72@ha */
/* 8096B2E4  38 A5 8A 72 */	addi r5, r5, 0x8A72 /* 0x00008A72@l */
/* 8096B2E8  38 C1 00 20 */	addi r6, r1, 0x20
/* 8096B2EC  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8096B2F0  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8096B2F4  39 20 00 00 */	li r9, 0
/* 8096B2F8  39 40 00 FF */	li r10, 0xff
/* 8096B2FC  3D 60 80 97 */	lis r11, lit_4306@ha
/* 8096B300  C0 2B C9 E8 */	lfs f1, lit_4306@l(r11)
/* 8096B304  4B 6E 17 8C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8096B308  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8096B30C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8096B310  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8096B314  7C 08 03 A6 */	mtlr r0
/* 8096B318  38 21 00 40 */	addi r1, r1, 0x40
/* 8096B31C  4E 80 00 20 */	blr 
