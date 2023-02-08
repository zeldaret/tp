lbl_805F53A4:
/* 805F53A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F53A8  7C 08 02 A6 */	mflr r0
/* 805F53AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F53B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F53B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 805F53B8  41 82 00 10 */	beq lbl_805F53C8
/* 805F53BC  7C 80 07 35 */	extsh. r0, r4
/* 805F53C0  40 81 00 08 */	ble lbl_805F53C8
/* 805F53C4  4B CD 99 79 */	bl __dl__FPv
lbl_805F53C8:
/* 805F53C8  7F E3 FB 78 */	mr r3, r31
/* 805F53CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F53D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F53D4  7C 08 03 A6 */	mtlr r0
/* 805F53D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805F53DC  4E 80 00 20 */	blr 
