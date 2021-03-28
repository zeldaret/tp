lbl_809AD888:
/* 809AD888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD88C  7C 08 02 A6 */	mflr r0
/* 809AD890  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD898  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AD89C  41 82 00 1C */	beq lbl_809AD8B8
/* 809AD8A0  3C A0 80 9B */	lis r5, __vt__10cCcD_GStts@ha
/* 809AD8A4  38 05 DC EC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 809AD8A8  90 1F 00 00 */	stw r0, 0(r31)
/* 809AD8AC  7C 80 07 35 */	extsh. r0, r4
/* 809AD8B0  40 81 00 08 */	ble lbl_809AD8B8
/* 809AD8B4  4B 92 14 88 */	b __dl__FPv
lbl_809AD8B8:
/* 809AD8B8  7F E3 FB 78 */	mr r3, r31
/* 809AD8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD8C4  7C 08 03 A6 */	mtlr r0
/* 809AD8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD8CC  4E 80 00 20 */	blr 
