lbl_806AFAE0:
/* 806AFAE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AFAE4  7C 08 02 A6 */	mflr r0
/* 806AFAE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AFAEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806AFAF0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806AFAF4  7C 7E 1B 78 */	mr r30, r3
/* 806AFAF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AFAFC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806AFB00  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AFB04  38 00 00 FF */	li r0, 0xff
/* 806AFB08  90 01 00 08 */	stw r0, 8(r1)
/* 806AFB0C  38 80 00 00 */	li r4, 0
/* 806AFB10  90 81 00 0C */	stw r4, 0xc(r1)
/* 806AFB14  38 00 FF FF */	li r0, -1
/* 806AFB18  90 01 00 10 */	stw r0, 0x10(r1)
/* 806AFB1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AFB20  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AFB24  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806AFB28  80 9E 11 6C */	lwz r4, 0x116c(r30)
/* 806AFB2C  38 A0 00 00 */	li r5, 0
/* 806AFB30  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008598@ha */
/* 806AFB34  38 C6 85 98 */	addi r6, r6, 0x8598 /* 0x00008598@l */
/* 806AFB38  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 806AFB3C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806AFB40  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806AFB44  39 40 00 00 */	li r10, 0
/* 806AFB48  3D 60 80 6B */	lis r11, lit_3868@ha
/* 806AFB4C  C0 2B 5C FC */	lfs f1, lit_3868@l(r11)
/* 806AFB50  4B 99 D9 7C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AFB54  90 7E 11 6C */	stw r3, 0x116c(r30)
/* 806AFB58  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AFB5C  38 63 02 10 */	addi r3, r3, 0x210
/* 806AFB60  80 9E 11 6C */	lwz r4, 0x116c(r30)
/* 806AFB64  4B 99 BD B4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806AFB68  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AFB6C  41 82 00 38 */	beq lbl_806AFBA4
/* 806AFB70  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806AFB74  80 63 00 04 */	lwz r3, 4(r3)
/* 806AFB78  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AFB7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AFB80  38 63 04 20 */	addi r3, r3, 0x420
/* 806AFB84  38 9F 00 68 */	addi r4, r31, 0x68
/* 806AFB88  38 BF 00 98 */	addi r5, r31, 0x98
/* 806AFB8C  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 806AFB90  4B BD 0C 78 */	b func_80280808
/* 806AFB94  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806AFB98  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806AFB9C  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 806AFBA0  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_806AFBA4:
/* 806AFBA4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806AFBA8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806AFBAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AFBB0  7C 08 03 A6 */	mtlr r0
/* 806AFBB4  38 21 00 30 */	addi r1, r1, 0x30
/* 806AFBB8  4E 80 00 20 */	blr 
