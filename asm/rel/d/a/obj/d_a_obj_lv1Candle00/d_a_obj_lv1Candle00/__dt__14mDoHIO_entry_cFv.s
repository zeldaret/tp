lbl_80C55D38:
/* 80C55D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C55D3C  7C 08 02 A6 */	mflr r0
/* 80C55D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C55D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C55D48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C55D4C  41 82 00 1C */	beq lbl_80C55D68
/* 80C55D50  3C A0 80 C5 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C56B78@ha */
/* 80C55D54  38 05 6B 78 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C56B78@l */
/* 80C55D58  90 1F 00 00 */	stw r0, 0(r31)
/* 80C55D5C  7C 80 07 35 */	extsh. r0, r4
/* 80C55D60  40 81 00 08 */	ble lbl_80C55D68
/* 80C55D64  4B 67 8F D9 */	bl __dl__FPv
lbl_80C55D68:
/* 80C55D68  7F E3 FB 78 */	mr r3, r31
/* 80C55D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C55D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C55D74  7C 08 03 A6 */	mtlr r0
/* 80C55D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80C55D7C  4E 80 00 20 */	blr 
