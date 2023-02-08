lbl_8025BDA4:
/* 8025BDA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025BDA8  7C 08 02 A6 */	mflr r0
/* 8025BDAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025BDB0  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BDB4  48 10 64 29 */	bl _savegpr_29
/* 8025BDB8  7C 7D 1B 78 */	mr r29, r3
/* 8025BDBC  3B C0 00 00 */	li r30, 0
/* 8025BDC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025BDC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025BDC8  3B E3 09 58 */	addi r31, r3, 0x958
lbl_8025BDCC:
/* 8025BDCC  7F E3 FB 78 */	mr r3, r31
/* 8025BDD0  7F C4 F3 78 */	mr r4, r30
/* 8025BDD4  4B DD 8B 19 */	bl isItem__12dSv_memBit_cCFi
/* 8025BDD8  7C 9D F2 14 */	add r4, r29, r30
/* 8025BDDC  98 64 00 05 */	stb r3, 5(r4)
/* 8025BDE0  88 04 00 05 */	lbz r0, 5(r4)
/* 8025BDE4  98 04 00 25 */	stb r0, 0x25(r4)
/* 8025BDE8  3B DE 00 01 */	addi r30, r30, 1
/* 8025BDEC  2C 1E 00 20 */	cmpwi r30, 0x20
/* 8025BDF0  41 80 FF DC */	blt lbl_8025BDCC
/* 8025BDF4  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BDF8  48 10 64 31 */	bl _restgpr_29
/* 8025BDFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025BE00  7C 08 03 A6 */	mtlr r0
/* 8025BE04  38 21 00 20 */	addi r1, r1, 0x20
/* 8025BE08  4E 80 00 20 */	blr 
