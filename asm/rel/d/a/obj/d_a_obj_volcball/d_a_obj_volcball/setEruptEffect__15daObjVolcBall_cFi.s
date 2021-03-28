lbl_80D22E24:
/* 80D22E24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D22E28  7C 08 02 A6 */	mflr r0
/* 80D22E2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D22E30  39 61 00 40 */	addi r11, r1, 0x40
/* 80D22E34  4B 63 F3 98 */	b _savegpr_25
/* 80D22E38  7C 79 1B 78 */	mr r25, r3
/* 80D22E3C  1C 64 03 E0 */	mulli r3, r4, 0x3e0
/* 80D22E40  3B 63 06 0C */	addi r27, r3, 0x60c
/* 80D22E44  7F 79 DA 14 */	add r27, r25, r27
/* 80D22E48  3B 40 00 00 */	li r26, 0
/* 80D22E4C  3B E0 00 00 */	li r31, 0
/* 80D22E50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D22E54  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80D22E58  3C 60 80 D2 */	lis r3, l_effect_id@ha
/* 80D22E5C  3B A3 3E 3C */	addi r29, r3, l_effect_id@l
/* 80D22E60  3C 60 80 D2 */	lis r3, lit_3717@ha
/* 80D22E64  3B C3 3E 14 */	addi r30, r3, lit_3717@l
lbl_80D22E68:
/* 80D22E68  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80D22E6C  38 80 00 00 */	li r4, 0
/* 80D22E70  90 81 00 08 */	stw r4, 8(r1)
/* 80D22E74  38 00 FF FF */	li r0, -1
/* 80D22E78  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D22E7C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D22E80  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D22E84  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D22E88  38 80 00 00 */	li r4, 0
/* 80D22E8C  7C BD FA 2E */	lhzx r5, r29, r31
/* 80D22E90  38 DB 00 04 */	addi r6, r27, 4
/* 80D22E94  38 F9 01 0C */	addi r7, r25, 0x10c
/* 80D22E98  39 00 00 00 */	li r8, 0
/* 80D22E9C  39 3B 00 1C */	addi r9, r27, 0x1c
/* 80D22EA0  39 40 00 FF */	li r10, 0xff
/* 80D22EA4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D22EA8  4B 32 9B E8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D22EAC  3B 5A 00 01 */	addi r26, r26, 1
/* 80D22EB0  2C 1A 00 06 */	cmpwi r26, 6
/* 80D22EB4  3B FF 00 02 */	addi r31, r31, 2
/* 80D22EB8  41 80 FF B0 */	blt lbl_80D22E68
/* 80D22EBC  39 61 00 40 */	addi r11, r1, 0x40
/* 80D22EC0  4B 63 F3 58 */	b _restgpr_25
/* 80D22EC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D22EC8  7C 08 03 A6 */	mtlr r0
/* 80D22ECC  38 21 00 40 */	addi r1, r1, 0x40
/* 80D22ED0  4E 80 00 20 */	blr 
