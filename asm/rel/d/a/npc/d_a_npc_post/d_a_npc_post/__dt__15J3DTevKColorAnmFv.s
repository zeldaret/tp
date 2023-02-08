lbl_80AA9478:
/* 80AA9478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA947C  7C 08 02 A6 */	mflr r0
/* 80AA9480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA9484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA9488  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA948C  41 82 00 10 */	beq lbl_80AA949C
/* 80AA9490  7C 80 07 35 */	extsh. r0, r4
/* 80AA9494  40 81 00 08 */	ble lbl_80AA949C
/* 80AA9498  4B 82 58 A5 */	bl __dl__FPv
lbl_80AA949C:
/* 80AA949C  7F E3 FB 78 */	mr r3, r31
/* 80AA94A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA94A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA94A8  7C 08 03 A6 */	mtlr r0
/* 80AA94AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA94B0  4E 80 00 20 */	blr 
