lbl_8025BC48:
/* 8025BC48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025BC4C  7C 08 02 A6 */	mflr r0
/* 8025BC50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025BC54  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BC58  48 10 65 85 */	bl _savegpr_29
/* 8025BC5C  7C 7D 1B 78 */	mr r29, r3
/* 8025BC60  3B C0 00 00 */	li r30, 0
/* 8025BC64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025BC68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025BC6C  3B E3 09 78 */	addi r31, r3, 0x978
lbl_8025BC70:
/* 8025BC70  7F E3 FB 78 */	mr r3, r31
/* 8025BC74  7F C4 F3 78 */	mr r4, r30
/* 8025BC78  4B DD 8F 71 */	bl isSwitch__12dSv_danBit_cCFi
/* 8025BC7C  7C 9D F2 14 */	add r4, r29, r30
/* 8025BC80  98 64 00 05 */	stb r3, 5(r4)
/* 8025BC84  88 04 00 05 */	lbz r0, 5(r4)
/* 8025BC88  98 04 00 45 */	stb r0, 0x45(r4)
/* 8025BC8C  3B DE 00 01 */	addi r30, r30, 1
/* 8025BC90  2C 1E 00 40 */	cmpwi r30, 0x40
/* 8025BC94  41 80 FF DC */	blt lbl_8025BC70
/* 8025BC98  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BC9C  48 10 65 8D */	bl _restgpr_29
/* 8025BCA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025BCA4  7C 08 03 A6 */	mtlr r0
/* 8025BCA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8025BCAC  4E 80 00 20 */	blr 
