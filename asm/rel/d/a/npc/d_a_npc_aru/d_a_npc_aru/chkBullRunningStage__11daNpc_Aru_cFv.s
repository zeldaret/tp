lbl_80953B8C:
/* 80953B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80953B90  7C 08 02 A6 */	mflr r0
/* 80953B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80953B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80953B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80953BA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80953BA4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80953BA8  3C 80 80 95 */	lis r4, d_a_npc_aru__stringBase0@ha /* 0x8095781C@ha */
/* 80953BAC  38 84 78 1C */	addi r4, r4, d_a_npc_aru__stringBase0@l /* 0x8095781C@l */
/* 80953BB0  38 84 00 C1 */	addi r4, r4, 0xc1
/* 80953BB4  4B A1 4D E1 */	bl strcmp
/* 80953BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80953BBC  40 82 00 34 */	bne lbl_80953BF0
/* 80953BC0  3B E0 00 00 */	li r31, 0
/* 80953BC4  38 60 00 00 */	li r3, 0
/* 80953BC8  4B 6D 8D B5 */	bl getLayerNo__14dComIfG_play_cFi
/* 80953BCC  2C 03 00 04 */	cmpwi r3, 4
/* 80953BD0  41 82 00 14 */	beq lbl_80953BE4
/* 80953BD4  38 60 00 00 */	li r3, 0
/* 80953BD8  4B 6D 8D A5 */	bl getLayerNo__14dComIfG_play_cFi
/* 80953BDC  2C 03 00 05 */	cmpwi r3, 5
/* 80953BE0  40 82 00 08 */	bne lbl_80953BE8
lbl_80953BE4:
/* 80953BE4  3B E0 00 01 */	li r31, 1
lbl_80953BE8:
/* 80953BE8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80953BEC  48 00 00 08 */	b lbl_80953BF4
lbl_80953BF0:
/* 80953BF0  38 60 00 00 */	li r3, 0
lbl_80953BF4:
/* 80953BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80953BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80953BFC  7C 08 03 A6 */	mtlr r0
/* 80953C00  38 21 00 10 */	addi r1, r1, 0x10
/* 80953C04  4E 80 00 20 */	blr 
