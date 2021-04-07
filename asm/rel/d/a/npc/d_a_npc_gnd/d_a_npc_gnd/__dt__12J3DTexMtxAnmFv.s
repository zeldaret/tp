lbl_809BBD84:
/* 809BBD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BBD88  7C 08 02 A6 */	mflr r0
/* 809BBD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BBD90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BBD94  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BBD98  41 82 00 10 */	beq lbl_809BBDA8
/* 809BBD9C  7C 80 07 35 */	extsh. r0, r4
/* 809BBDA0  40 81 00 08 */	ble lbl_809BBDA8
/* 809BBDA4  4B 91 2F 99 */	bl __dl__FPv
lbl_809BBDA8:
/* 809BBDA8  7F E3 FB 78 */	mr r3, r31
/* 809BBDAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BBDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BBDB4  7C 08 03 A6 */	mtlr r0
/* 809BBDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 809BBDBC  4E 80 00 20 */	blr 
