lbl_807C4F10:
/* 807C4F10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807C4F14  7C 08 02 A6 */	mflr r0
/* 807C4F18  90 01 00 54 */	stw r0, 0x54(r1)
/* 807C4F1C  39 61 00 50 */	addi r11, r1, 0x50
/* 807C4F20  4B B9 D2 B0 */	b _savegpr_26
/* 807C4F24  7C 7A 1B 78 */	mr r26, r3
/* 807C4F28  3C 60 80 7D */	lis r3, l_HIO@ha
/* 807C4F2C  38 63 F4 C4 */	addi r3, r3, l_HIO@l
/* 807C4F30  C0 03 00 08 */	lfs f0, 8(r3)
/* 807C4F34  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807C4F38  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807C4F3C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807C4F40  3B 60 00 00 */	li r27, 0
/* 807C4F44  3B E0 00 00 */	li r31, 0
/* 807C4F48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C4F4C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 807C4F50  3C 60 80 7D */	lis r3, va_weapon_land_eff_id@ha
/* 807C4F54  3B A3 F1 BC */	addi r29, r3, va_weapon_land_eff_id@l
/* 807C4F58  3C 60 80 7D */	lis r3, lit_3909@ha
/* 807C4F5C  3B C3 EC B0 */	addi r30, r3, lit_3909@l
lbl_807C4F60:
/* 807C4F60  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807C4F64  38 80 00 00 */	li r4, 0
/* 807C4F68  90 81 00 08 */	stw r4, 8(r1)
/* 807C4F6C  38 00 FF FF */	li r0, -1
/* 807C4F70  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C4F74  90 81 00 10 */	stw r4, 0x10(r1)
/* 807C4F78  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C4F7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C4F80  38 80 00 00 */	li r4, 0
/* 807C4F84  7C BD FA 2E */	lhzx r5, r29, r31
/* 807C4F88  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 807C4F8C  38 FA 01 0C */	addi r7, r26, 0x10c
/* 807C4F90  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 807C4F94  39 21 00 20 */	addi r9, r1, 0x20
/* 807C4F98  39 40 00 FF */	li r10, 0xff
/* 807C4F9C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807C4FA0  4B 88 7A F0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C4FA4  3B 7B 00 01 */	addi r27, r27, 1
/* 807C4FA8  2C 1B 00 03 */	cmpwi r27, 3
/* 807C4FAC  3B FF 00 02 */	addi r31, r31, 2
/* 807C4FB0  41 80 FF B0 */	blt lbl_807C4F60
/* 807C4FB4  39 61 00 50 */	addi r11, r1, 0x50
/* 807C4FB8  4B B9 D2 64 */	b _restgpr_26
/* 807C4FBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807C4FC0  7C 08 03 A6 */	mtlr r0
/* 807C4FC4  38 21 00 50 */	addi r1, r1, 0x50
/* 807C4FC8  4E 80 00 20 */	blr 
