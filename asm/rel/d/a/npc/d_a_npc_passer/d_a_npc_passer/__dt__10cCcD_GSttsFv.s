lbl_80AA5974:
/* 80AA5974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA5978  7C 08 02 A6 */	mflr r0
/* 80AA597C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA5980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA5984  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA5988  41 82 00 1C */	beq lbl_80AA59A4
/* 80AA598C  3C A0 80 AA */	lis r5, __vt__10cCcD_GStts@ha
/* 80AA5990  38 05 73 FC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80AA5994  90 1F 00 00 */	stw r0, 0(r31)
/* 80AA5998  7C 80 07 35 */	extsh. r0, r4
/* 80AA599C  40 81 00 08 */	ble lbl_80AA59A4
/* 80AA59A0  4B 82 93 9C */	b __dl__FPv
lbl_80AA59A4:
/* 80AA59A4  7F E3 FB 78 */	mr r3, r31
/* 80AA59A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA59AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA59B0  7C 08 03 A6 */	mtlr r0
/* 80AA59B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA59B8  4E 80 00 20 */	blr 
