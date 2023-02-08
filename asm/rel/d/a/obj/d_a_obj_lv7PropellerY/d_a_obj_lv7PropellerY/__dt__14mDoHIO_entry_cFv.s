lbl_80C854C4:
/* 80C854C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C854C8  7C 08 02 A6 */	mflr r0
/* 80C854CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C854D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C854D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C854D8  41 82 00 1C */	beq lbl_80C854F4
/* 80C854DC  3C A0 80 C8 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C862A8@ha */
/* 80C854E0  38 05 62 A8 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C862A8@l */
/* 80C854E4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C854E8  7C 80 07 35 */	extsh. r0, r4
/* 80C854EC  40 81 00 08 */	ble lbl_80C854F4
/* 80C854F0  4B 64 98 4D */	bl __dl__FPv
lbl_80C854F4:
/* 80C854F4  7F E3 FB 78 */	mr r3, r31
/* 80C854F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C854FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C85500  7C 08 03 A6 */	mtlr r0
/* 80C85504  38 21 00 10 */	addi r1, r1, 0x10
/* 80C85508  4E 80 00 20 */	blr 
