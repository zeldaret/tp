lbl_80CB99D8:
/* 80CB99D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB99DC  7C 08 02 A6 */	mflr r0
/* 80CB99E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB99E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB99E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB99EC  41 82 00 30 */	beq lbl_80CB9A1C
/* 80CB99F0  3C 60 80 CC */	lis r3, __vt__14daRfHole_HIO_c@ha
/* 80CB99F4  38 03 9B C4 */	addi r0, r3, __vt__14daRfHole_HIO_c@l
/* 80CB99F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB99FC  41 82 00 10 */	beq lbl_80CB9A0C
/* 80CB9A00  3C 60 80 CC */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80CB9A04  38 03 9B D0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80CB9A08  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CB9A0C:
/* 80CB9A0C  7C 80 07 35 */	extsh. r0, r4
/* 80CB9A10  40 81 00 0C */	ble lbl_80CB9A1C
/* 80CB9A14  7F E3 FB 78 */	mr r3, r31
/* 80CB9A18  4B 61 53 24 */	b __dl__FPv
lbl_80CB9A1C:
/* 80CB9A1C  7F E3 FB 78 */	mr r3, r31
/* 80CB9A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB9A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9A28  7C 08 03 A6 */	mtlr r0
/* 80CB9A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9A30  4E 80 00 20 */	blr 
