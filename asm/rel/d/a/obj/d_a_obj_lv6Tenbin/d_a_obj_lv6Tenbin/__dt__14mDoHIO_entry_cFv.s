lbl_80C76988:
/* 80C76988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7698C  7C 08 02 A6 */	mflr r0
/* 80C76990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C76994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C76998  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7699C  41 82 00 1C */	beq lbl_80C769B8
/* 80C769A0  3C A0 80 C7 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C77ABC@ha */
/* 80C769A4  38 05 7A BC */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C77ABC@l */
/* 80C769A8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C769AC  7C 80 07 35 */	extsh. r0, r4
/* 80C769B0  40 81 00 08 */	ble lbl_80C769B8
/* 80C769B4  4B 65 83 89 */	bl __dl__FPv
lbl_80C769B8:
/* 80C769B8  7F E3 FB 78 */	mr r3, r31
/* 80C769BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C769C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C769C4  7C 08 03 A6 */	mtlr r0
/* 80C769C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C769CC  4E 80 00 20 */	blr 
