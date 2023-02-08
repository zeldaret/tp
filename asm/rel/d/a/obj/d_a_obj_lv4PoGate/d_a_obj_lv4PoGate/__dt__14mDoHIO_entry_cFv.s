lbl_80C5FC5C:
/* 80C5FC5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5FC60  7C 08 02 A6 */	mflr r0
/* 80C5FC64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5FC68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5FC6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5FC70  41 82 00 1C */	beq lbl_80C5FC8C
/* 80C5FC74  3C A0 80 C6 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C609A0@ha */
/* 80C5FC78  38 05 09 A0 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C609A0@l */
/* 80C5FC7C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5FC80  7C 80 07 35 */	extsh. r0, r4
/* 80C5FC84  40 81 00 08 */	ble lbl_80C5FC8C
/* 80C5FC88  4B 66 F0 B5 */	bl __dl__FPv
lbl_80C5FC8C:
/* 80C5FC8C  7F E3 FB 78 */	mr r3, r31
/* 80C5FC90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5FC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5FC98  7C 08 03 A6 */	mtlr r0
/* 80C5FC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5FCA0  4E 80 00 20 */	blr 
