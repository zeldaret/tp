lbl_80C6C97C:
/* 80C6C97C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C980  7C 08 02 A6 */	mflr r0
/* 80C6C984  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C988  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6C98C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6C990  41 82 00 30 */	beq lbl_80C6C9C0
/* 80C6C994  3C 60 80 C7 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha /* 0x80C6D6A8@ha */
/* 80C6C998  38 03 D6 A8 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l /* 0x80C6D6A8@l */
/* 80C6C99C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6C9A0  41 82 00 10 */	beq lbl_80C6C9B0
/* 80C6C9A4  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C6D6B4@ha */
/* 80C6C9A8  38 03 D6 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C6D6B4@l */
/* 80C6C9AC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C6C9B0:
/* 80C6C9B0  7C 80 07 35 */	extsh. r0, r4
/* 80C6C9B4  40 81 00 0C */	ble lbl_80C6C9C0
/* 80C6C9B8  7F E3 FB 78 */	mr r3, r31
/* 80C6C9BC  4B 66 23 81 */	bl __dl__FPv
lbl_80C6C9C0:
/* 80C6C9C0  7F E3 FB 78 */	mr r3, r31
/* 80C6C9C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6C9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C9CC  7C 08 03 A6 */	mtlr r0
/* 80C6C9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C9D4  4E 80 00 20 */	blr 
