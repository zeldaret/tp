lbl_80A6B440:
/* 80A6B440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6B444  7C 08 02 A6 */	mflr r0
/* 80A6B448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6B44C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6B450  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6B454  41 82 00 10 */	beq lbl_80A6B464
/* 80A6B458  7C 80 07 35 */	extsh. r0, r4
/* 80A6B45C  40 81 00 08 */	ble lbl_80A6B464
/* 80A6B460  4B 86 38 DD */	bl __dl__FPv
lbl_80A6B464:
/* 80A6B464  7F E3 FB 78 */	mr r3, r31
/* 80A6B468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6B46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6B470  7C 08 03 A6 */	mtlr r0
/* 80A6B474  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6B478  4E 80 00 20 */	blr 
