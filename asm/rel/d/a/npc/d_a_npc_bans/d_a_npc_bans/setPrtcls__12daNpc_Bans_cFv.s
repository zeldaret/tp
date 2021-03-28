lbl_80964F48:
/* 80964F48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80964F4C  7C 08 02 A6 */	mflr r0
/* 80964F50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80964F54  39 61 00 40 */	addi r11, r1, 0x40
/* 80964F58  4B 9F D2 7C */	b _savegpr_27
/* 80964F5C  3B 60 00 00 */	li r27, 0
/* 80964F60  3B E0 00 00 */	li r31, 0
/* 80964F64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80964F68  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80964F6C  3C 60 80 96 */	lis r3, id@ha
/* 80964F70  3B A3 7F 58 */	addi r29, r3, id@l
/* 80964F74  3C 60 80 96 */	lis r3, lit_4514@ha
/* 80964F78  3B C3 7E FC */	addi r30, r3, lit_4514@l
lbl_80964F7C:
/* 80964F7C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80964F80  38 80 00 00 */	li r4, 0
/* 80964F84  90 81 00 08 */	stw r4, 8(r1)
/* 80964F88  38 00 FF FF */	li r0, -1
/* 80964F8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80964F90  90 81 00 10 */	stw r4, 0x10(r1)
/* 80964F94  90 81 00 14 */	stw r4, 0x14(r1)
/* 80964F98  90 81 00 18 */	stw r4, 0x18(r1)
/* 80964F9C  38 80 00 00 */	li r4, 0
/* 80964FA0  7C BD FA 2E */	lhzx r5, r29, r31
/* 80964FA4  80 DC 5D AC */	lwz r6, 0x5dac(r28)
/* 80964FA8  38 C6 04 D0 */	addi r6, r6, 0x4d0
/* 80964FAC  38 E0 00 00 */	li r7, 0
/* 80964FB0  39 00 00 00 */	li r8, 0
/* 80964FB4  39 20 00 00 */	li r9, 0
/* 80964FB8  39 40 00 FF */	li r10, 0xff
/* 80964FBC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80964FC0  4B 6E 7A D0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80964FC4  3B 7B 00 01 */	addi r27, r27, 1
/* 80964FC8  2C 1B 00 04 */	cmpwi r27, 4
/* 80964FCC  3B FF 00 02 */	addi r31, r31, 2
/* 80964FD0  41 80 FF AC */	blt lbl_80964F7C
/* 80964FD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80964FD8  4B 9F D2 48 */	b _restgpr_27
/* 80964FDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80964FE0  7C 08 03 A6 */	mtlr r0
/* 80964FE4  38 21 00 40 */	addi r1, r1, 0x40
/* 80964FE8  4E 80 00 20 */	blr 
