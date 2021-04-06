lbl_80BA7A50:
/* 80BA7A50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BA7A54  7C 08 02 A6 */	mflr r0
/* 80BA7A58  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BA7A5C  3C 60 80 BA */	lis r3, lit_3663@ha /* 0x80BA7D1C@ha */
/* 80BA7A60  C0 03 7D 1C */	lfs f0, lit_3663@l(r3)  /* 0x80BA7D1C@l */
/* 80BA7A64  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BA7A68  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BA7A6C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BA7A70  38 61 00 20 */	addi r3, r1, 0x20
/* 80BA7A74  38 80 00 00 */	li r4, 0
/* 80BA7A78  38 A0 00 00 */	li r5, 0
/* 80BA7A7C  38 C0 00 00 */	li r6, 0
/* 80BA7A80  4B 6B F9 75 */	bl __ct__5csXyzFsss
/* 80BA7A84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA7A88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA7A8C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BA7A90  38 80 00 00 */	li r4, 0
/* 80BA7A94  90 81 00 08 */	stw r4, 8(r1)
/* 80BA7A98  38 00 FF FF */	li r0, -1
/* 80BA7A9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA7AA0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BA7AA4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA7AA8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA7AAC  38 80 00 00 */	li r4, 0
/* 80BA7AB0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C51@ha */
/* 80BA7AB4  38 A5 8C 51 */	addi r5, r5, 0x8C51 /* 0x00008C51@l */
/* 80BA7AB8  38 C1 00 28 */	addi r6, r1, 0x28
/* 80BA7ABC  38 E0 00 00 */	li r7, 0
/* 80BA7AC0  39 01 00 20 */	addi r8, r1, 0x20
/* 80BA7AC4  39 20 00 00 */	li r9, 0
/* 80BA7AC8  39 40 00 FF */	li r10, 0xff
/* 80BA7ACC  3D 60 80 BA */	lis r11, lit_3762@ha /* 0x80BA7D2C@ha */
/* 80BA7AD0  C0 2B 7D 2C */	lfs f1, lit_3762@l(r11)  /* 0x80BA7D2C@l */
/* 80BA7AD4  4B 4A 4F BD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA7AD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BA7ADC  7C 08 03 A6 */	mtlr r0
/* 80BA7AE0  38 21 00 40 */	addi r1, r1, 0x40
/* 80BA7AE4  4E 80 00 20 */	blr 
