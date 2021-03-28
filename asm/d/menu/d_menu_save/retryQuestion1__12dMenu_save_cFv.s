lbl_801F2FB4:
/* 801F2FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F2FB8  7C 08 02 A6 */	mflr r0
/* 801F2FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F2FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F2FC4  7C 7F 1B 78 */	mr r31, r3
/* 801F2FC8  48 00 02 C5 */	bl YesNoSelect__12dMenu_save_cFv
/* 801F2FCC  2C 03 00 00 */	cmpwi r3, 0
/* 801F2FD0  41 82 00 5C */	beq lbl_801F302C
/* 801F2FD4  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F2FD8  28 00 00 01 */	cmplwi r0, 1
/* 801F2FDC  40 82 00 28 */	bne lbl_801F3004
/* 801F2FE0  38 00 00 01 */	li r0, 1
/* 801F2FE4  98 1F 01 BB */	stb r0, 0x1bb(r31)
/* 801F2FE8  7F E3 FB 78 */	mr r3, r31
/* 801F2FEC  48 00 00 CD */	bl restartInit__12dMenu_save_cFv
/* 801F2FF0  38 00 00 03 */	li r0, 3
/* 801F2FF4  98 1F 01 BA */	stb r0, 0x1ba(r31)
/* 801F2FF8  38 00 00 29 */	li r0, 0x29
/* 801F2FFC  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F3000  48 00 00 2C */	b lbl_801F302C
lbl_801F3004:
/* 801F3004  38 00 00 01 */	li r0, 1
/* 801F3008  98 1F 21 90 */	stb r0, 0x2190(r31)
/* 801F300C  38 00 00 00 */	li r0, 0
/* 801F3010  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F3014  7F E3 FB 78 */	mr r3, r31
/* 801F3018  38 80 04 BF */	li r4, 0x4bf
/* 801F301C  38 A0 00 00 */	li r5, 0
/* 801F3020  48 00 04 9D */	bl msgTxtSet__12dMenu_save_cFUsb
/* 801F3024  38 00 00 2D */	li r0, 0x2d
/* 801F3028  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F302C:
/* 801F302C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F3030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F3034  7C 08 03 A6 */	mtlr r0
/* 801F3038  38 21 00 10 */	addi r1, r1, 0x10
/* 801F303C  4E 80 00 20 */	blr 
