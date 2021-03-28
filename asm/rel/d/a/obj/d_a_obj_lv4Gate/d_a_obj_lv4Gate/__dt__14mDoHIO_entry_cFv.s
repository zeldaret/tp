lbl_80C5EB9C:
/* 80C5EB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5EBA0  7C 08 02 A6 */	mflr r0
/* 80C5EBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5EBA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5EBAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5EBB0  41 82 00 1C */	beq lbl_80C5EBCC
/* 80C5EBB4  3C A0 80 C6 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80C5EBB8  38 05 F5 08 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80C5EBBC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5EBC0  7C 80 07 35 */	extsh. r0, r4
/* 80C5EBC4  40 81 00 08 */	ble lbl_80C5EBCC
/* 80C5EBC8  4B 67 01 74 */	b __dl__FPv
lbl_80C5EBCC:
/* 80C5EBCC  7F E3 FB 78 */	mr r3, r31
/* 80C5EBD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5EBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5EBD8  7C 08 03 A6 */	mtlr r0
/* 80C5EBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5EBE0  4E 80 00 20 */	blr 
