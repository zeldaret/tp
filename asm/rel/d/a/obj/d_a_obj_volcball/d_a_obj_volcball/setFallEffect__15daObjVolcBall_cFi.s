lbl_80D22ED4:
/* 80D22ED4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D22ED8  7C 08 02 A6 */	mflr r0
/* 80D22EDC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D22EE0  39 61 00 60 */	addi r11, r1, 0x60
/* 80D22EE4  4B 63 F2 E1 */	bl _savegpr_23
/* 80D22EE8  7C 7C 1B 78 */	mr r28, r3
/* 80D22EEC  7C 9D 23 78 */	mr r29, r4
/* 80D22EF0  1C 7D 03 E0 */	mulli r3, r29, 0x3e0
/* 80D22EF4  3B E3 06 0C */	addi r31, r3, 0x60c
/* 80D22EF8  7F FC FA 14 */	add r31, r28, r31
/* 80D22EFC  3B C0 00 00 */	li r30, 0
/* 80D22F00  3B 60 00 00 */	li r27, 0
/* 80D22F04  3B 40 00 00 */	li r26, 0
/* 80D22F08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D22F0C  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D22F10  3C 60 80 D2 */	lis r3, l_fall_effect_id@ha /* 0x80D23E48@ha */
/* 80D22F14  3B 03 3E 48 */	addi r24, r3, l_fall_effect_id@l /* 0x80D23E48@l */
/* 80D22F18  3C 60 80 D2 */	lis r3, lit_3717@ha /* 0x80D23E14@ha */
/* 80D22F1C  3B 23 3E 14 */	addi r25, r3, lit_3717@l /* 0x80D23E14@l */
lbl_80D22F20:
/* 80D22F20  2C 1D 00 08 */	cmpwi r29, 8
/* 80D22F24  40 82 00 18 */	bne lbl_80D22F3C
/* 80D22F28  C0 1C 29 1C */	lfs f0, 0x291c(r28)
/* 80D22F2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D22F30  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D22F34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D22F38  48 00 00 1C */	b lbl_80D22F54
lbl_80D22F3C:
/* 80D22F3C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80D22F40  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D22F44  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D22F48  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D22F4C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80D22F50  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80D22F54:
/* 80D22F54  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80D22F58  38 1A 03 90 */	addi r0, r26, 0x390
/* 80D22F5C  7C 1F 02 14 */	add r0, r31, r0
/* 80D22F60  90 01 00 08 */	stw r0, 8(r1)
/* 80D22F64  38 00 FF FF */	li r0, -1
/* 80D22F68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D22F6C  38 00 00 00 */	li r0, 0
/* 80D22F70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D22F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D22F78  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D22F7C  38 80 00 00 */	li r4, 0
/* 80D22F80  7C B8 DA 2E */	lhzx r5, r24, r27
/* 80D22F84  38 DF 00 04 */	addi r6, r31, 4
/* 80D22F88  38 FC 01 0C */	addi r7, r28, 0x10c
/* 80D22F8C  39 1F 00 34 */	addi r8, r31, 0x34
/* 80D22F90  39 21 00 20 */	addi r9, r1, 0x20
/* 80D22F94  39 40 00 FF */	li r10, 0xff
/* 80D22F98  C0 39 00 00 */	lfs f1, 0(r25)
/* 80D22F9C  4B 32 9A F5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D22FA0  3B DE 00 01 */	addi r30, r30, 1
/* 80D22FA4  2C 1E 00 04 */	cmpwi r30, 4
/* 80D22FA8  3B 7B 00 02 */	addi r27, r27, 2
/* 80D22FAC  3B 5A 00 14 */	addi r26, r26, 0x14
/* 80D22FB0  41 80 FF 70 */	blt lbl_80D22F20
/* 80D22FB4  39 61 00 60 */	addi r11, r1, 0x60
/* 80D22FB8  4B 63 F2 59 */	bl _restgpr_23
/* 80D22FBC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D22FC0  7C 08 03 A6 */	mtlr r0
/* 80D22FC4  38 21 00 60 */	addi r1, r1, 0x60
/* 80D22FC8  4E 80 00 20 */	blr 
