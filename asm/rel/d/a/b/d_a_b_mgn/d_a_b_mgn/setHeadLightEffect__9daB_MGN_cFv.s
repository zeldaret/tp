lbl_80606A10:
/* 80606A10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80606A14  7C 08 02 A6 */	mflr r0
/* 80606A18  90 01 00 34 */	stw r0, 0x34(r1)
/* 80606A1C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80606A20  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80606A24  7C 7E 1B 78 */	mr r30, r3
/* 80606A28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80606A2C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80606A30  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80606A34  38 00 00 FF */	li r0, 0xff
/* 80606A38  90 01 00 08 */	stw r0, 8(r1)
/* 80606A3C  38 80 00 00 */	li r4, 0
/* 80606A40  90 81 00 0C */	stw r4, 0xc(r1)
/* 80606A44  38 00 FF FF */	li r0, -1
/* 80606A48  90 01 00 10 */	stw r0, 0x10(r1)
/* 80606A4C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80606A50  90 81 00 18 */	stw r4, 0x18(r1)
/* 80606A54  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80606A58  80 9E 26 18 */	lwz r4, 0x2618(r30)
/* 80606A5C  38 A0 00 00 */	li r5, 0
/* 80606A60  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008C1F@ha */
/* 80606A64  38 C6 8C 1F */	addi r6, r6, 0x8C1F /* 0x00008C1F@l */
/* 80606A68  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80606A6C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80606A70  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80606A74  39 40 00 00 */	li r10, 0
/* 80606A78  3D 60 80 61 */	lis r11, lit_3930@ha /* 0x8060FDE8@ha */
/* 80606A7C  C0 2B FD E8 */	lfs f1, lit_3930@l(r11)  /* 0x8060FDE8@l */
/* 80606A80  4B A4 6A 4D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80606A84  90 7E 26 18 */	stw r3, 0x2618(r30)
/* 80606A88  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80606A8C  38 63 02 10 */	addi r3, r3, 0x210
/* 80606A90  80 9E 26 18 */	lwz r4, 0x2618(r30)
/* 80606A94  4B A4 4E 85 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80606A98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80606A9C  41 82 00 38 */	beq lbl_80606AD4
/* 80606AA0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80606AA4  80 63 00 04 */	lwz r3, 4(r3)
/* 80606AA8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80606AAC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80606AB0  38 63 05 10 */	addi r3, r3, 0x510
/* 80606AB4  38 9F 00 68 */	addi r4, r31, 0x68
/* 80606AB8  38 BF 00 98 */	addi r5, r31, 0x98
/* 80606ABC  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 80606AC0  4B C7 9D 49 */	bl func_80280808
/* 80606AC4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80606AC8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80606ACC  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 80606AD0  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_80606AD4:
/* 80606AD4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80606AD8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80606ADC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80606AE0  7C 08 03 A6 */	mtlr r0
/* 80606AE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80606AE8  4E 80 00 20 */	blr 
