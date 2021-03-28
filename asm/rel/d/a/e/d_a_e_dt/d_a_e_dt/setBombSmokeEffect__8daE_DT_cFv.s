lbl_806AF848:
/* 806AF848  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AF84C  7C 08 02 A6 */	mflr r0
/* 806AF850  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AF854  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806AF858  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806AF85C  7C 7E 1B 78 */	mr r30, r3
/* 806AF860  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AF864  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806AF868  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AF86C  38 00 00 FF */	li r0, 0xff
/* 806AF870  90 01 00 08 */	stw r0, 8(r1)
/* 806AF874  38 80 00 00 */	li r4, 0
/* 806AF878  90 81 00 0C */	stw r4, 0xc(r1)
/* 806AF87C  38 00 FF FF */	li r0, -1
/* 806AF880  90 01 00 10 */	stw r0, 0x10(r1)
/* 806AF884  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF888  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF88C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806AF890  80 9E 11 5C */	lwz r4, 0x115c(r30)
/* 806AF894  38 A0 00 00 */	li r5, 0
/* 806AF898  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008556@ha */
/* 806AF89C  38 C6 85 56 */	addi r6, r6, 0x8556 /* 0x00008556@l */
/* 806AF8A0  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 806AF8A4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806AF8A8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806AF8AC  39 40 00 00 */	li r10, 0
/* 806AF8B0  3D 60 80 6B */	lis r11, lit_3868@ha
/* 806AF8B4  C0 2B 5C FC */	lfs f1, lit_3868@l(r11)
/* 806AF8B8  4B 99 DC 14 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AF8BC  90 7E 11 5C */	stw r3, 0x115c(r30)
/* 806AF8C0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AF8C4  38 63 02 10 */	addi r3, r3, 0x210
/* 806AF8C8  80 9E 11 5C */	lwz r4, 0x115c(r30)
/* 806AF8CC  4B 99 C0 4C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806AF8D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AF8D4  41 82 00 38 */	beq lbl_806AF90C
/* 806AF8D8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806AF8DC  80 63 00 04 */	lwz r3, 4(r3)
/* 806AF8E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AF8E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AF8E8  38 63 04 20 */	addi r3, r3, 0x420
/* 806AF8EC  38 9F 00 68 */	addi r4, r31, 0x68
/* 806AF8F0  38 BF 00 98 */	addi r5, r31, 0x98
/* 806AF8F4  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 806AF8F8  4B BD 0F 10 */	b func_80280808
/* 806AF8FC  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806AF900  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806AF904  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 806AF908  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_806AF90C:
/* 806AF90C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806AF910  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806AF914  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AF918  7C 08 03 A6 */	mtlr r0
/* 806AF91C  38 21 00 30 */	addi r1, r1, 0x30
/* 806AF920  4E 80 00 20 */	blr 
