lbl_80BE7668:
/* 80BE7668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE766C  7C 08 02 A6 */	mflr r0
/* 80BE7670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE7674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE7678  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE767C  41 82 00 1C */	beq lbl_80BE7698
/* 80BE7680  3C A0 80 BF */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80BE8120@ha */
/* 80BE7684  38 05 81 20 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80BE8120@l */
/* 80BE7688  90 1F 00 00 */	stw r0, 0(r31)
/* 80BE768C  7C 80 07 35 */	extsh. r0, r4
/* 80BE7690  40 81 00 08 */	ble lbl_80BE7698
/* 80BE7694  4B 6E 76 A9 */	bl __dl__FPv
lbl_80BE7698:
/* 80BE7698  7F E3 FB 78 */	mr r3, r31
/* 80BE769C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE76A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE76A4  7C 08 03 A6 */	mtlr r0
/* 80BE76A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE76AC  4E 80 00 20 */	blr 
