lbl_80B6F5BC:
/* 80B6F5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6F5C0  7C 08 02 A6 */	mflr r0
/* 80B6F5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6F5C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6F5CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6F5D0  41 82 00 10 */	beq lbl_80B6F5E0
/* 80B6F5D4  7C 80 07 35 */	extsh. r0, r4
/* 80B6F5D8  40 81 00 08 */	ble lbl_80B6F5E0
/* 80B6F5DC  4B 75 F7 60 */	b __dl__FPv
lbl_80B6F5E0:
/* 80B6F5E0  7F E3 FB 78 */	mr r3, r31
/* 80B6F5E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6F5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6F5EC  7C 08 03 A6 */	mtlr r0
/* 80B6F5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6F5F4  4E 80 00 20 */	blr 
