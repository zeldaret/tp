lbl_8098CC90:
/* 8098CC90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098CC94  7C 08 02 A6 */	mflr r0
/* 8098CC98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098CC9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098CCA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8098CCA4  41 82 00 10 */	beq lbl_8098CCB4
/* 8098CCA8  7C 80 07 35 */	extsh. r0, r4
/* 8098CCAC  40 81 00 08 */	ble lbl_8098CCB4
/* 8098CCB0  4B 94 20 8C */	b __dl__FPv
lbl_8098CCB4:
/* 8098CCB4  7F E3 FB 78 */	mr r3, r31
/* 8098CCB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098CCBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098CCC0  7C 08 03 A6 */	mtlr r0
/* 8098CCC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8098CCC8  4E 80 00 20 */	blr 
