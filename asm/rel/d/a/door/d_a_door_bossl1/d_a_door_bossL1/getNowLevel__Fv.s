lbl_804E1D98:
/* 804E1D98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E1D9C  7C 08 02 A6 */	mflr r0
/* 804E1DA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E1DA4  39 61 00 20 */	addi r11, r1, 0x20
/* 804E1DA8  4B E8 04 31 */	bl _savegpr_28
/* 804E1DAC  3B 80 00 00 */	li r28, 0
/* 804E1DB0  3B E0 00 00 */	li r31, 0
/* 804E1DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E1DB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E1DBC  3B A3 4E 00 */	addi r29, r3, 0x4e00
/* 804E1DC0  3C 60 80 4E */	lis r3, l_stageName@ha /* 0x804E4E18@ha */
/* 804E1DC4  3B C3 4E 18 */	addi r30, r3, l_stageName@l /* 0x804E4E18@l */
lbl_804E1DC8:
/* 804E1DC8  7F A3 EB 78 */	mr r3, r29
/* 804E1DCC  7C 9E F8 2E */	lwzx r4, r30, r31
/* 804E1DD0  4B E8 6B C5 */	bl strcmp
/* 804E1DD4  2C 03 00 00 */	cmpwi r3, 0
/* 804E1DD8  40 82 00 28 */	bne lbl_804E1E00
/* 804E1DDC  2C 1C 00 12 */	cmpwi r28, 0x12
/* 804E1DE0  41 82 00 0C */	beq lbl_804E1DEC
/* 804E1DE4  2C 1C 00 13 */	cmpwi r28, 0x13
/* 804E1DE8  40 82 00 08 */	bne lbl_804E1DF0
lbl_804E1DEC:
/* 804E1DEC  3B 80 00 02 */	li r28, 2
lbl_804E1DF0:
/* 804E1DF0  7F 80 0E 70 */	srawi r0, r28, 1
/* 804E1DF4  7C 60 01 94 */	addze r3, r0
/* 804E1DF8  38 63 00 01 */	addi r3, r3, 1
/* 804E1DFC  48 00 00 18 */	b lbl_804E1E14
lbl_804E1E00:
/* 804E1E00  3B 9C 00 01 */	addi r28, r28, 1
/* 804E1E04  2C 1C 00 14 */	cmpwi r28, 0x14
/* 804E1E08  3B FF 00 04 */	addi r31, r31, 4
/* 804E1E0C  41 80 FF BC */	blt lbl_804E1DC8
/* 804E1E10  38 60 FF FF */	li r3, -1
lbl_804E1E14:
/* 804E1E14  39 61 00 20 */	addi r11, r1, 0x20
/* 804E1E18  4B E8 04 0D */	bl _restgpr_28
/* 804E1E1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E1E20  7C 08 03 A6 */	mtlr r0
/* 804E1E24  38 21 00 20 */	addi r1, r1, 0x20
/* 804E1E28  4E 80 00 20 */	blr 
