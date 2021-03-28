lbl_80141A1C:
/* 80141A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141A20  7C 08 02 A6 */	mflr r0
/* 80141A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80141A28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80141A2C  3B E0 00 00 */	li r31, 0
/* 80141A30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80141A34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80141A38  38 63 00 28 */	addi r3, r3, 0x28
/* 80141A3C  38 80 00 03 */	li r4, 3
/* 80141A40  4B EF 11 AD */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 80141A44  2C 03 00 00 */	cmpwi r3, 0
/* 80141A48  41 82 00 24 */	beq lbl_80141A6C
/* 80141A4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80141A50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80141A54  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80141A58  38 80 1E 08 */	li r4, 0x1e08
/* 80141A5C  4B EF 2F 61 */	bl isEventBit__11dSv_event_cCFUs
/* 80141A60  2C 03 00 00 */	cmpwi r3, 0
/* 80141A64  40 82 00 08 */	bne lbl_80141A6C
/* 80141A68  3B E0 00 01 */	li r31, 1
lbl_80141A6C:
/* 80141A6C  7F E3 FB 78 */	mr r3, r31
/* 80141A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80141A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80141A78  7C 08 03 A6 */	mtlr r0
/* 80141A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80141A80  4E 80 00 20 */	blr 
