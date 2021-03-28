lbl_804DDB48:
/* 804DDB48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DDB4C  7C 08 02 A6 */	mflr r0
/* 804DDB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DDB54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DDB58  3B E0 00 00 */	li r31, 0
/* 804DDB5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DDB60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DDB64  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804DDB68  38 80 25 40 */	li r4, 0x2540
/* 804DDB6C  4B B5 6E 50 */	b isEventBit__11dSv_event_cCFUs
/* 804DDB70  2C 03 00 00 */	cmpwi r3, 0
/* 804DDB74  40 82 00 28 */	bne lbl_804DDB9C
/* 804DDB78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DDB7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DDB80  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804DDB84  3C 80 80 4E */	lis r4, l_spStageName@ha
/* 804DDB88  38 84 F8 D4 */	addi r4, r4, l_spStageName@l
/* 804DDB8C  4B E8 AE 08 */	b strcmp
/* 804DDB90  2C 03 00 00 */	cmpwi r3, 0
/* 804DDB94  40 82 00 08 */	bne lbl_804DDB9C
/* 804DDB98  3B E0 00 01 */	li r31, 1
lbl_804DDB9C:
/* 804DDB9C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 804DDBA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DDBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DDBA8  7C 08 03 A6 */	mtlr r0
/* 804DDBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DDBB0  4E 80 00 20 */	blr 
