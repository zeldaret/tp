lbl_80964D20:
/* 80964D20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80964D24  7C 08 02 A6 */	mflr r0
/* 80964D28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80964D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80964D30  4B 9F D4 AC */	b _savegpr_29
/* 80964D34  7C 7D 1B 78 */	mr r29, r3
/* 80964D38  3B C0 00 00 */	li r30, 0
/* 80964D3C  7F DF F3 78 */	mr r31, r30
/* 80964D40  3C 60 80 96 */	lis r3, struct_80967F6C+0x0@ha
/* 80964D44  38 63 7F 6C */	addi r3, r3, struct_80967F6C+0x0@l
/* 80964D48  38 63 00 82 */	addi r3, r3, 0x82
/* 80964D4C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80964D50  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80964D54  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80964D58  4B A0 3C 3C */	b strcmp
/* 80964D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80964D60  40 82 00 18 */	bne lbl_80964D78
/* 80964D64  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80964D68  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80964D6C  2C 00 00 01 */	cmpwi r0, 1
/* 80964D70  40 82 00 08 */	bne lbl_80964D78
/* 80964D74  3B E0 00 01 */	li r31, 1
lbl_80964D78:
/* 80964D78  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80964D7C  41 82 00 38 */	beq lbl_80964DB4
/* 80964D80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80964D84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80964D88  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80964D8C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80964D90  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80964D94  EC 01 00 28 */	fsubs f0, f1, f0
/* 80964D98  FC 00 02 10 */	fabs f0, f0
/* 80964D9C  FC 20 00 18 */	frsp f1, f0
/* 80964DA0  3C 60 80 96 */	lis r3, lit_3994@ha
/* 80964DA4  C0 03 7E D4 */	lfs f0, lit_3994@l(r3)
/* 80964DA8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80964DAC  40 80 00 08 */	bge lbl_80964DB4
/* 80964DB0  3B C0 00 01 */	li r30, 1
lbl_80964DB4:
/* 80964DB4  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 80964DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80964DBC  4B 9F D4 6C */	b _restgpr_29
/* 80964DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80964DC4  7C 08 03 A6 */	mtlr r0
/* 80964DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80964DCC  4E 80 00 20 */	blr 
