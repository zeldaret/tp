lbl_80B5F61C:
/* 80B5F61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5F620  7C 08 02 A6 */	mflr r0
/* 80B5F624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5F628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5F62C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5F630  41 82 00 10 */	beq lbl_80B5F640
/* 80B5F634  7C 80 07 35 */	extsh. r0, r4
/* 80B5F638  40 81 00 08 */	ble lbl_80B5F640
/* 80B5F63C  4B 76 F7 00 */	b __dl__FPv
lbl_80B5F640:
/* 80B5F640  7F E3 FB 78 */	mr r3, r31
/* 80B5F644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5F648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5F64C  7C 08 03 A6 */	mtlr r0
/* 80B5F650  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5F654  4E 80 00 20 */	blr 
