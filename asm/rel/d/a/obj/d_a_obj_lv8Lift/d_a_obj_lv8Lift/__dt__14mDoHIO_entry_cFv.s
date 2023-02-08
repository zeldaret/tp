lbl_80C88790:
/* 80C88790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C88794  7C 08 02 A6 */	mflr r0
/* 80C88798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8879C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C887A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C887A4  41 82 00 1C */	beq lbl_80C887C0
/* 80C887A8  3C A0 80 C9 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C8A1D4@ha */
/* 80C887AC  38 05 A1 D4 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C8A1D4@l */
/* 80C887B0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C887B4  7C 80 07 35 */	extsh. r0, r4
/* 80C887B8  40 81 00 08 */	ble lbl_80C887C0
/* 80C887BC  4B 64 65 81 */	bl __dl__FPv
lbl_80C887C0:
/* 80C887C0  7F E3 FB 78 */	mr r3, r31
/* 80C887C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C887C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C887CC  7C 08 03 A6 */	mtlr r0
/* 80C887D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C887D4  4E 80 00 20 */	blr 
