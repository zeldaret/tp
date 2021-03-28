lbl_80BFEA24:
/* 80BFEA24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFEA28  7C 08 02 A6 */	mflr r0
/* 80BFEA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFEA30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFEA34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFEA38  41 82 00 10 */	beq lbl_80BFEA48
/* 80BFEA3C  7C 80 07 35 */	extsh. r0, r4
/* 80BFEA40  40 81 00 08 */	ble lbl_80BFEA48
/* 80BFEA44  4B 6D 02 F8 */	b __dl__FPv
lbl_80BFEA48:
/* 80BFEA48  7F E3 FB 78 */	mr r3, r31
/* 80BFEA4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFEA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFEA54  7C 08 03 A6 */	mtlr r0
/* 80BFEA58  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFEA5C  4E 80 00 20 */	blr 
