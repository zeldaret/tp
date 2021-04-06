lbl_80C44D30:
/* 80C44D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44D34  7C 08 02 A6 */	mflr r0
/* 80C44D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44D3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C44D40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C44D44  41 82 00 1C */	beq lbl_80C44D60
/* 80C44D48  3C A0 80 C4 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C45230@ha */
/* 80C44D4C  38 05 52 30 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C45230@l */
/* 80C44D50  90 1F 00 00 */	stw r0, 0(r31)
/* 80C44D54  7C 80 07 35 */	extsh. r0, r4
/* 80C44D58  40 81 00 08 */	ble lbl_80C44D60
/* 80C44D5C  4B 68 9F E1 */	bl __dl__FPv
lbl_80C44D60:
/* 80C44D60  7F E3 FB 78 */	mr r3, r31
/* 80C44D64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C44D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44D6C  7C 08 03 A6 */	mtlr r0
/* 80C44D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44D74  4E 80 00 20 */	blr 
