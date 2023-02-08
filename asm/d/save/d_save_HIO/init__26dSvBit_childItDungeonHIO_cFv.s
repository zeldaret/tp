lbl_8025BE40:
/* 8025BE40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025BE44  7C 08 02 A6 */	mflr r0
/* 8025BE48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025BE4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BE50  48 10 63 8D */	bl _savegpr_29
/* 8025BE54  7C 7D 1B 78 */	mr r29, r3
/* 8025BE58  3B C0 00 00 */	li r30, 0
/* 8025BE5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025BE60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025BE64  3B E3 09 78 */	addi r31, r3, 0x978
lbl_8025BE68:
/* 8025BE68  7F E3 FB 78 */	mr r3, r31
/* 8025BE6C  7F C4 F3 78 */	mr r4, r30
/* 8025BE70  4B DD 8E 05 */	bl isItem__12dSv_danBit_cCFi
/* 8025BE74  7C 9D F2 14 */	add r4, r29, r30
/* 8025BE78  98 64 00 05 */	stb r3, 5(r4)
/* 8025BE7C  88 04 00 05 */	lbz r0, 5(r4)
/* 8025BE80  98 04 00 85 */	stb r0, 0x85(r4)
/* 8025BE84  3B DE 00 01 */	addi r30, r30, 1
/* 8025BE88  2C 1E 00 80 */	cmpwi r30, 0x80
/* 8025BE8C  41 80 FF DC */	blt lbl_8025BE68
/* 8025BE90  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BE94  48 10 63 95 */	bl _restgpr_29
/* 8025BE98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025BE9C  7C 08 03 A6 */	mtlr r0
/* 8025BEA0  38 21 00 20 */	addi r1, r1, 0x20
/* 8025BEA4  4E 80 00 20 */	blr 
