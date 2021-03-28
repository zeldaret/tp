lbl_805B9FB4:
/* 805B9FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9FB8  7C 08 02 A6 */	mflr r0
/* 805B9FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9FC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B9FC8  41 82 00 1C */	beq lbl_805B9FE4
/* 805B9FCC  3C A0 80 5C */	lis r5, __vt__10cCcD_GStts@ha
/* 805B9FD0  38 05 AC FC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 805B9FD4  90 1F 00 00 */	stw r0, 0(r31)
/* 805B9FD8  7C 80 07 35 */	extsh. r0, r4
/* 805B9FDC  40 81 00 08 */	ble lbl_805B9FE4
/* 805B9FE0  4B D1 4D 5C */	b __dl__FPv
lbl_805B9FE4:
/* 805B9FE4  7F E3 FB 78 */	mr r3, r31
/* 805B9FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9FF0  7C 08 03 A6 */	mtlr r0
/* 805B9FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9FF8  4E 80 00 20 */	blr 
