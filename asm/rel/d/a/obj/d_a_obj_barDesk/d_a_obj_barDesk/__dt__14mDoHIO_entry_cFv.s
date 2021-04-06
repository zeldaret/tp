lbl_80BA91B8:
/* 80BA91B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA91BC  7C 08 02 A6 */	mflr r0
/* 80BA91C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA91C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA91C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA91CC  41 82 00 1C */	beq lbl_80BA91E8
/* 80BA91D0  3C A0 80 BB */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80BA9D04@ha */
/* 80BA91D4  38 05 9D 04 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80BA9D04@l */
/* 80BA91D8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA91DC  7C 80 07 35 */	extsh. r0, r4
/* 80BA91E0  40 81 00 08 */	ble lbl_80BA91E8
/* 80BA91E4  4B 72 5B 59 */	bl __dl__FPv
lbl_80BA91E8:
/* 80BA91E8  7F E3 FB 78 */	mr r3, r31
/* 80BA91EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA91F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA91F4  7C 08 03 A6 */	mtlr r0
/* 80BA91F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA91FC  4E 80 00 20 */	blr 
