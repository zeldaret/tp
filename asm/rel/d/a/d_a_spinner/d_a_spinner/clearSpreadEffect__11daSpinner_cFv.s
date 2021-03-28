lbl_804D3F14:
/* 804D3F14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D3F18  7C 08 02 A6 */	mflr r0
/* 804D3F1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D3F20  39 61 00 20 */	addi r11, r1, 0x20
/* 804D3F24  4B E8 E2 B4 */	b _savegpr_28
/* 804D3F28  7C 7C 1B 78 */	mr r28, r3
/* 804D3F2C  3B A0 00 00 */	li r29, 0
/* 804D3F30  3B E0 00 00 */	li r31, 0
/* 804D3F34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D3F38  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_804D3F3C:
/* 804D3F3C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804D3F40  38 63 02 10 */	addi r3, r3, 0x210
/* 804D3F44  38 1F 0A 8C */	addi r0, r31, 0xa8c
/* 804D3F48  7C 9C 00 2E */	lwzx r4, r28, r0
/* 804D3F4C  4B B7 79 CC */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804D3F50  28 03 00 00 */	cmplwi r3, 0
/* 804D3F54  41 82 00 10 */	beq lbl_804D3F64
/* 804D3F58  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 804D3F5C  60 00 00 04 */	ori r0, r0, 4
/* 804D3F60  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_804D3F64:
/* 804D3F64  3B BD 00 01 */	addi r29, r29, 1
/* 804D3F68  2C 1D 00 02 */	cmpwi r29, 2
/* 804D3F6C  3B FF 00 04 */	addi r31, r31, 4
/* 804D3F70  41 80 FF CC */	blt lbl_804D3F3C
/* 804D3F74  39 61 00 20 */	addi r11, r1, 0x20
/* 804D3F78  4B E8 E2 AC */	b _restgpr_28
/* 804D3F7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D3F80  7C 08 03 A6 */	mtlr r0
/* 804D3F84  38 21 00 20 */	addi r1, r1, 0x20
/* 804D3F88  4E 80 00 20 */	blr 
