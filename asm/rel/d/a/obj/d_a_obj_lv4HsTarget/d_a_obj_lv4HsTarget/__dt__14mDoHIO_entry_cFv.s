lbl_80C5F648:
/* 80C5F648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F64C  7C 08 02 A6 */	mflr r0
/* 80C5F650  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5F658  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5F65C  41 82 00 1C */	beq lbl_80C5F678
/* 80C5F660  3C A0 80 C6 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C5FACC@ha */
/* 80C5F664  38 05 FA CC */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C5FACC@l */
/* 80C5F668  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5F66C  7C 80 07 35 */	extsh. r0, r4
/* 80C5F670  40 81 00 08 */	ble lbl_80C5F678
/* 80C5F674  4B 66 F6 C9 */	bl __dl__FPv
lbl_80C5F678:
/* 80C5F678  7F E3 FB 78 */	mr r3, r31
/* 80C5F67C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5F680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F684  7C 08 03 A6 */	mtlr r0
/* 80C5F688  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F68C  4E 80 00 20 */	blr 
