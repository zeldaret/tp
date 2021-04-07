lbl_804EF63C:
/* 804EF63C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF640  7C 08 02 A6 */	mflr r0
/* 804EF644  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF64C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804EF650  41 82 00 10 */	beq lbl_804EF660
/* 804EF654  7C 80 07 35 */	extsh. r0, r4
/* 804EF658  40 81 00 08 */	ble lbl_804EF660
/* 804EF65C  4B DD F6 E1 */	bl __dl__FPv
lbl_804EF660:
/* 804EF660  7F E3 FB 78 */	mr r3, r31
/* 804EF664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF66C  7C 08 03 A6 */	mtlr r0
/* 804EF670  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF674  4E 80 00 20 */	blr 
