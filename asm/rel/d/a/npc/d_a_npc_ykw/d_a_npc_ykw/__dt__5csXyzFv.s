lbl_80B66C38:
/* 80B66C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66C3C  7C 08 02 A6 */	mflr r0
/* 80B66C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B66C44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B66C48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B66C4C  41 82 00 10 */	beq lbl_80B66C5C
/* 80B66C50  7C 80 07 35 */	extsh. r0, r4
/* 80B66C54  40 81 00 08 */	ble lbl_80B66C5C
/* 80B66C58  4B 76 80 E5 */	bl __dl__FPv
lbl_80B66C5C:
/* 80B66C5C  7F E3 FB 78 */	mr r3, r31
/* 80B66C60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B66C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B66C68  7C 08 03 A6 */	mtlr r0
/* 80B66C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B66C70  4E 80 00 20 */	blr 
