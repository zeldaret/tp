lbl_807E8624:
/* 807E8624  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E8628  7C 08 02 A6 */	mflr r0
/* 807E862C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E8630  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807E8634  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807E8638  7C 7E 1B 78 */	mr r30, r3
/* 807E863C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E8640  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 807E8644  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807E8648  38 00 00 FF */	li r0, 0xff
/* 807E864C  90 01 00 08 */	stw r0, 8(r1)
/* 807E8650  38 80 00 00 */	li r4, 0
/* 807E8654  90 81 00 0C */	stw r4, 0xc(r1)
/* 807E8658  38 00 FF FF */	li r0, -1
/* 807E865C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807E8660  90 81 00 14 */	stw r4, 0x14(r1)
/* 807E8664  90 81 00 18 */	stw r4, 0x18(r1)
/* 807E8668  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807E866C  80 9E 0E C0 */	lwz r4, 0xec0(r30)
/* 807E8670  38 A0 00 00 */	li r5, 0
/* 807E8674  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008602@ha */
/* 807E8678  38 C6 86 02 */	addi r6, r6, 0x8602 /* 0x00008602@l */
/* 807E867C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 807E8680  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807E8684  39 20 00 00 */	li r9, 0
/* 807E8688  39 40 00 00 */	li r10, 0
/* 807E868C  3D 60 80 7F */	lis r11, lit_3907@ha
/* 807E8690  C0 2B F7 78 */	lfs f1, lit_3907@l(r11)
/* 807E8694  4B 86 4E 38 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807E8698  90 7E 0E C0 */	stw r3, 0xec0(r30)
/* 807E869C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807E86A0  38 63 02 10 */	addi r3, r3, 0x210
/* 807E86A4  80 9E 0E C0 */	lwz r4, 0xec0(r30)
/* 807E86A8  4B 86 32 70 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 807E86AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E86B0  41 82 00 38 */	beq lbl_807E86E8
/* 807E86B4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E86B8  80 63 00 04 */	lwz r3, 4(r3)
/* 807E86BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807E86C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807E86C4  38 63 00 60 */	addi r3, r3, 0x60
/* 807E86C8  38 9F 00 68 */	addi r4, r31, 0x68
/* 807E86CC  38 BF 00 98 */	addi r5, r31, 0x98
/* 807E86D0  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 807E86D4  4B A9 81 34 */	b func_80280808
/* 807E86D8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 807E86DC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807E86E0  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 807E86E4  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_807E86E8:
/* 807E86E8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807E86EC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807E86F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E86F4  7C 08 03 A6 */	mtlr r0
/* 807E86F8  38 21 00 30 */	addi r1, r1, 0x30
/* 807E86FC  4E 80 00 20 */	blr 
