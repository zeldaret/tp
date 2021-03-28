lbl_806AF2F4:
/* 806AF2F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AF2F8  7C 08 02 A6 */	mflr r0
/* 806AF2FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AF300  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806AF304  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806AF308  7C 7E 1B 78 */	mr r30, r3
/* 806AF30C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AF310  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806AF314  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AF318  38 00 00 FF */	li r0, 0xff
/* 806AF31C  90 01 00 08 */	stw r0, 8(r1)
/* 806AF320  38 80 00 00 */	li r4, 0
/* 806AF324  90 81 00 0C */	stw r4, 0xc(r1)
/* 806AF328  38 00 FF FF */	li r0, -1
/* 806AF32C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806AF330  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF334  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF338  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806AF33C  80 9E 11 4C */	lwz r4, 0x114c(r30)
/* 806AF340  38 A0 00 00 */	li r5, 0
/* 806AF344  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000856A@ha */
/* 806AF348  38 C6 85 6A */	addi r6, r6, 0x856A /* 0x0000856A@l */
/* 806AF34C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 806AF350  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806AF354  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806AF358  39 40 00 00 */	li r10, 0
/* 806AF35C  3D 60 80 6B */	lis r11, lit_3868@ha
/* 806AF360  C0 2B 5C FC */	lfs f1, lit_3868@l(r11)
/* 806AF364  4B 99 E1 68 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AF368  90 7E 11 4C */	stw r3, 0x114c(r30)
/* 806AF36C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AF370  38 63 02 10 */	addi r3, r3, 0x210
/* 806AF374  80 9E 11 4C */	lwz r4, 0x114c(r30)
/* 806AF378  4B 99 C5 A0 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806AF37C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AF380  41 82 00 38 */	beq lbl_806AF3B8
/* 806AF384  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806AF388  80 63 00 04 */	lwz r3, 4(r3)
/* 806AF38C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AF390  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AF394  38 63 00 60 */	addi r3, r3, 0x60
/* 806AF398  38 9F 00 68 */	addi r4, r31, 0x68
/* 806AF39C  38 BF 00 98 */	addi r5, r31, 0x98
/* 806AF3A0  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 806AF3A4  4B BD 14 64 */	b func_80280808
/* 806AF3A8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806AF3AC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806AF3B0  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 806AF3B4  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_806AF3B8:
/* 806AF3B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806AF3BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806AF3C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AF3C4  7C 08 03 A6 */	mtlr r0
/* 806AF3C8  38 21 00 30 */	addi r1, r1, 0x30
/* 806AF3CC  4E 80 00 20 */	blr 
