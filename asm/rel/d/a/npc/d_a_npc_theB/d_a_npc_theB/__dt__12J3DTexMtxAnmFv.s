lbl_80AFD154:
/* 80AFD154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD158  7C 08 02 A6 */	mflr r0
/* 80AFD15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFD164  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFD168  41 82 00 10 */	beq lbl_80AFD178
/* 80AFD16C  7C 80 07 35 */	extsh. r0, r4
/* 80AFD170  40 81 00 08 */	ble lbl_80AFD178
/* 80AFD174  4B 7D 1B C9 */	bl __dl__FPv
lbl_80AFD178:
/* 80AFD178  7F E3 FB 78 */	mr r3, r31
/* 80AFD17C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFD180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD184  7C 08 03 A6 */	mtlr r0
/* 80AFD188  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD18C  4E 80 00 20 */	blr 
