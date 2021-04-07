lbl_80C5CA10:
/* 80C5CA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5CA14  7C 08 02 A6 */	mflr r0
/* 80C5CA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5CA1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5CA20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5CA24  41 82 00 1C */	beq lbl_80C5CA40
/* 80C5CA28  3C A0 80 C6 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C5D334@ha */
/* 80C5CA2C  38 05 D3 34 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C5D334@l */
/* 80C5CA30  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5CA34  7C 80 07 35 */	extsh. r0, r4
/* 80C5CA38  40 81 00 08 */	ble lbl_80C5CA40
/* 80C5CA3C  4B 67 23 01 */	bl __dl__FPv
lbl_80C5CA40:
/* 80C5CA40  7F E3 FB 78 */	mr r3, r31
/* 80C5CA44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5CA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5CA4C  7C 08 03 A6 */	mtlr r0
/* 80C5CA50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5CA54  4E 80 00 20 */	blr 
