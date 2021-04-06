lbl_80CB39E0:
/* 80CB39E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CB39E4  7C 08 02 A6 */	mflr r0
/* 80CB39E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CB39EC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CB39F0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80CB39F4  7C 7F 1B 78 */	mr r31, r3
/* 80CB39F8  3C 60 80 CB */	lis r3, lit_4134@ha /* 0x80CB3F38@ha */
/* 80CB39FC  C0 03 3F 38 */	lfs f0, lit_4134@l(r3)  /* 0x80CB3F38@l */
/* 80CB3A00  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CB3A04  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CB3A08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CB3A0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB3A10  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB3A14  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CB3A18  38 00 00 FF */	li r0, 0xff
/* 80CB3A1C  90 01 00 08 */	stw r0, 8(r1)
/* 80CB3A20  38 80 00 00 */	li r4, 0
/* 80CB3A24  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB3A28  38 00 FF FF */	li r0, -1
/* 80CB3A2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB3A30  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB3A34  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB3A38  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB3A3C  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 80CB3A40  38 A0 00 00 */	li r5, 0
/* 80CB3A44  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008670@ha */
/* 80CB3A48  38 C6 86 70 */	addi r6, r6, 0x8670 /* 0x00008670@l */
/* 80CB3A4C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CB3A50  39 00 00 00 */	li r8, 0
/* 80CB3A54  39 20 00 00 */	li r9, 0
/* 80CB3A58  39 41 00 20 */	addi r10, r1, 0x20
/* 80CB3A5C  3D 60 80 CB */	lis r11, lit_3662@ha /* 0x80CB3EEC@ha */
/* 80CB3A60  C0 2B 3E EC */	lfs f1, lit_3662@l(r11)  /* 0x80CB3EEC@l */
/* 80CB3A64  4B 39 9A 69 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB3A68  90 7F 05 98 */	stw r3, 0x598(r31)
/* 80CB3A6C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CB3A70  38 00 00 FF */	li r0, 0xff
/* 80CB3A74  90 01 00 08 */	stw r0, 8(r1)
/* 80CB3A78  38 80 00 00 */	li r4, 0
/* 80CB3A7C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB3A80  38 00 FF FF */	li r0, -1
/* 80CB3A84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB3A88  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB3A8C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB3A90  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB3A94  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 80CB3A98  38 A0 00 00 */	li r5, 0
/* 80CB3A9C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008671@ha */
/* 80CB3AA0  38 C6 86 71 */	addi r6, r6, 0x8671 /* 0x00008671@l */
/* 80CB3AA4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80CB3AA8  39 00 00 00 */	li r8, 0
/* 80CB3AAC  39 20 00 00 */	li r9, 0
/* 80CB3AB0  39 41 00 20 */	addi r10, r1, 0x20
/* 80CB3AB4  3D 60 80 CB */	lis r11, lit_3662@ha /* 0x80CB3EEC@ha */
/* 80CB3AB8  C0 2B 3E EC */	lfs f1, lit_3662@l(r11)  /* 0x80CB3EEC@l */
/* 80CB3ABC  4B 39 9A 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB3AC0  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 80CB3AC4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CB3AC8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80CB3ACC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CB3AD0  7C 08 03 A6 */	mtlr r0
/* 80CB3AD4  38 21 00 40 */	addi r1, r1, 0x40
/* 80CB3AD8  4E 80 00 20 */	blr 
