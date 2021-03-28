lbl_80C17EDC:
/* 80C17EDC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C17EE0  7C 08 02 A6 */	mflr r0
/* 80C17EE4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C17EE8  39 61 00 60 */	addi r11, r1, 0x60
/* 80C17EEC  4B 74 A2 E8 */	b _savegpr_27
/* 80C17EF0  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80C17EF4  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80C17EF8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C17EFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C17F00  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C17F04  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80C17F08  80 03 04 DC */	lwz r0, 0x4dc(r3)
/* 80C17F0C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C17F10  A0 03 04 E0 */	lhz r0, 0x4e0(r3)
/* 80C17F14  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80C17F18  3C 60 80 C2 */	lis r3, lit_3863@ha
/* 80C17F1C  3B 83 81 20 */	addi r28, r3, lit_3863@l
/* 80C17F20  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80C17F24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C17F28  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C17F2C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C17F30  3B 60 00 00 */	li r27, 0
/* 80C17F34  3B E0 00 00 */	li r31, 0
/* 80C17F38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C17F3C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80C17F40  3C 60 80 C2 */	lis r3, PARTICLE_NAME@ha
/* 80C17F44  3B C3 81 60 */	addi r30, r3, PARTICLE_NAME@l
lbl_80C17F48:
/* 80C17F48  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C17F4C  38 80 00 00 */	li r4, 0
/* 80C17F50  90 81 00 08 */	stw r4, 8(r1)
/* 80C17F54  38 00 FF FF */	li r0, -1
/* 80C17F58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C17F5C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C17F60  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C17F64  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C17F68  38 80 00 00 */	li r4, 0
/* 80C17F6C  7C BE FA 2E */	lhzx r5, r30, r31
/* 80C17F70  38 C1 00 34 */	addi r6, r1, 0x34
/* 80C17F74  38 E0 00 00 */	li r7, 0
/* 80C17F78  39 01 00 20 */	addi r8, r1, 0x20
/* 80C17F7C  39 21 00 28 */	addi r9, r1, 0x28
/* 80C17F80  39 40 00 FF */	li r10, 0xff
/* 80C17F84  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80C17F88  4B 43 4B 08 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C17F8C  3B 7B 00 01 */	addi r27, r27, 1
/* 80C17F90  2C 1B 00 04 */	cmpwi r27, 4
/* 80C17F94  3B FF 00 02 */	addi r31, r31, 2
/* 80C17F98  41 80 FF B0 */	blt lbl_80C17F48
/* 80C17F9C  39 61 00 60 */	addi r11, r1, 0x60
/* 80C17FA0  4B 74 A2 80 */	b _restgpr_27
/* 80C17FA4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C17FA8  7C 08 03 A6 */	mtlr r0
/* 80C17FAC  38 21 00 60 */	addi r1, r1, 0x60
/* 80C17FB0  4E 80 00 20 */	blr 
