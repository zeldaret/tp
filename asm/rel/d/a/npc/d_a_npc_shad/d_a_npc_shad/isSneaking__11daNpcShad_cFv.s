lbl_80AD9E90:
/* 80AD9E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD9E94  7C 08 02 A6 */	mflr r0
/* 80AD9E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD9E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD9EA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AD9EA4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80AD9EA8  3C 80 80 AE */	lis r4, struct_80AE24C4+0x0@ha
/* 80AD9EAC  38 84 24 C4 */	addi r4, r4, struct_80AE24C4+0x0@l
/* 80AD9EB0  38 84 01 1B */	addi r4, r4, 0x11b
/* 80AD9EB4  4B 88 EA E0 */	b strcmp
/* 80AD9EB8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD9EBC  40 82 00 30 */	bne lbl_80AD9EEC
/* 80AD9EC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD9EC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AD9EC8  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80AD9ECC  2C 00 00 05 */	cmpwi r0, 5
/* 80AD9ED0  40 82 00 1C */	bne lbl_80AD9EEC
/* 80AD9ED4  38 60 00 00 */	li r3, 0
/* 80AD9ED8  4B 55 2A A4 */	b getLayerNo__14dComIfG_play_cFi
/* 80AD9EDC  2C 03 00 02 */	cmpwi r3, 2
/* 80AD9EE0  40 82 00 0C */	bne lbl_80AD9EEC
/* 80AD9EE4  38 60 00 01 */	li r3, 1
/* 80AD9EE8  48 00 00 08 */	b lbl_80AD9EF0
lbl_80AD9EEC:
/* 80AD9EEC  38 60 00 00 */	li r3, 0
lbl_80AD9EF0:
/* 80AD9EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD9EF4  7C 08 03 A6 */	mtlr r0
/* 80AD9EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD9EFC  4E 80 00 20 */	blr 
