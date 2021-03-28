lbl_8025BF9C:
/* 8025BF9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025BFA0  7C 08 02 A6 */	mflr r0
/* 8025BFA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025BFA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BFAC  48 10 62 31 */	bl _savegpr_29
/* 8025BFB0  7C 7D 1B 78 */	mr r29, r3
/* 8025BFB4  3B C0 00 00 */	li r30, 0
/* 8025BFB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025BFBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025BFC0  3B E3 09 58 */	addi r31, r3, 0x958
lbl_8025BFC4:
/* 8025BFC4  7F E3 FB 78 */	mr r3, r31
/* 8025BFC8  7F C4 F3 78 */	mr r4, r30
/* 8025BFCC  4B DD 88 1D */	bl isTbox__12dSv_memBit_cCFi
/* 8025BFD0  7C 9D F2 14 */	add r4, r29, r30
/* 8025BFD4  98 64 00 05 */	stb r3, 5(r4)
/* 8025BFD8  88 04 00 05 */	lbz r0, 5(r4)
/* 8025BFDC  98 04 00 45 */	stb r0, 0x45(r4)
/* 8025BFE0  3B DE 00 01 */	addi r30, r30, 1
/* 8025BFE4  2C 1E 00 40 */	cmpwi r30, 0x40
/* 8025BFE8  41 80 FF DC */	blt lbl_8025BFC4
/* 8025BFEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BFF0  48 10 62 39 */	bl _restgpr_29
/* 8025BFF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025BFF8  7C 08 03 A6 */	mtlr r0
/* 8025BFFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8025C000  4E 80 00 20 */	blr 
