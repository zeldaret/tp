lbl_80B6F610:
/* 80B6F610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6F614  7C 08 02 A6 */	mflr r0
/* 80B6F618  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6F61C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6F620  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6F624  41 82 00 10 */	beq lbl_80B6F634
/* 80B6F628  7C 80 07 35 */	extsh. r0, r4
/* 80B6F62C  40 81 00 08 */	ble lbl_80B6F634
/* 80B6F630  4B 75 F7 0C */	b __dl__FPv
lbl_80B6F634:
/* 80B6F634  7F E3 FB 78 */	mr r3, r31
/* 80B6F638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6F63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6F640  7C 08 03 A6 */	mtlr r0
/* 80B6F644  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6F648  4E 80 00 20 */	blr 
