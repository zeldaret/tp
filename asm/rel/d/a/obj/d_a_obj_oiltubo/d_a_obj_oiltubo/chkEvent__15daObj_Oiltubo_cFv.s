lbl_80CA7478:
/* 80CA7478  38 A0 00 01 */	li r5, 1
/* 80CA747C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CA7480  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CA7484  38 00 00 00 */	li r0, 0
/* 80CA7488  88 84 4F AD */	lbz r4, 0x4fad(r4)
/* 80CA748C  28 04 00 00 */	cmplwi r4, 0
/* 80CA7490  41 82 00 0C */	beq lbl_80CA749C
/* 80CA7494  28 04 00 02 */	cmplwi r4, 2
/* 80CA7498  40 82 00 08 */	bne lbl_80CA74A0
lbl_80CA749C:
/* 80CA749C  38 00 00 01 */	li r0, 1
lbl_80CA74A0:
/* 80CA74A0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80CA74A4  40 82 00 1C */	bne lbl_80CA74C0
/* 80CA74A8  38 A0 00 00 */	li r5, 0
/* 80CA74AC  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CA74B0  28 00 00 06 */	cmplwi r0, 6
/* 80CA74B4  40 82 00 0C */	bne lbl_80CA74C0
/* 80CA74B8  38 60 00 00 */	li r3, 0
/* 80CA74BC  4E 80 00 20 */	blr 
lbl_80CA74C0:
/* 80CA74C0  7C A3 2B 78 */	mr r3, r5
/* 80CA74C4  4E 80 00 20 */	blr 
