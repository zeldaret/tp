lbl_80658AA4:
/* 80658AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80658AA8  7C 08 02 A6 */	mflr r0
/* 80658AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80658AB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80658AB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80658AB8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80658ABC  3C 80 80 66 */	lis r4, d_a_cow__stringBase0@ha /* 0x80662F18@ha */
/* 80658AC0  38 84 2F 18 */	addi r4, r4, d_a_cow__stringBase0@l /* 0x80662F18@l */
/* 80658AC4  38 84 00 04 */	addi r4, r4, 4
/* 80658AC8  4B D0 FE CD */	bl strcmp
/* 80658ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80658AD0  40 82 00 2C */	bne lbl_80658AFC
/* 80658AD4  38 60 00 00 */	li r3, 0
/* 80658AD8  4B 9D 3E A5 */	bl getLayerNo__14dComIfG_play_cFi
/* 80658ADC  2C 03 00 04 */	cmpwi r3, 4
/* 80658AE0  41 82 00 14 */	beq lbl_80658AF4
/* 80658AE4  38 60 00 00 */	li r3, 0
/* 80658AE8  4B 9D 3E 95 */	bl getLayerNo__14dComIfG_play_cFi
/* 80658AEC  2C 03 00 05 */	cmpwi r3, 5
/* 80658AF0  40 82 00 0C */	bne lbl_80658AFC
lbl_80658AF4:
/* 80658AF4  38 60 00 01 */	li r3, 1
/* 80658AF8  48 00 00 08 */	b lbl_80658B00
lbl_80658AFC:
/* 80658AFC  38 60 00 00 */	li r3, 0
lbl_80658B00:
/* 80658B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80658B04  7C 08 03 A6 */	mtlr r0
/* 80658B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80658B0C  4E 80 00 20 */	blr 
