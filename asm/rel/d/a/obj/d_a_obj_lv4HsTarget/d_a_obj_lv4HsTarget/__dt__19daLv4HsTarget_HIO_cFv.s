lbl_80C5F990:
/* 80C5F990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F994  7C 08 02 A6 */	mflr r0
/* 80C5F998  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F99C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5F9A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5F9A4  41 82 00 30 */	beq lbl_80C5F9D4
/* 80C5F9A8  3C 60 80 C6 */	lis r3, __vt__19daLv4HsTarget_HIO_c@ha /* 0x80C5FAC0@ha */
/* 80C5F9AC  38 03 FA C0 */	addi r0, r3, __vt__19daLv4HsTarget_HIO_c@l /* 0x80C5FAC0@l */
/* 80C5F9B0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5F9B4  41 82 00 10 */	beq lbl_80C5F9C4
/* 80C5F9B8  3C 60 80 C6 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C5FACC@ha */
/* 80C5F9BC  38 03 FA CC */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C5FACC@l */
/* 80C5F9C0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C5F9C4:
/* 80C5F9C4  7C 80 07 35 */	extsh. r0, r4
/* 80C5F9C8  40 81 00 0C */	ble lbl_80C5F9D4
/* 80C5F9CC  7F E3 FB 78 */	mr r3, r31
/* 80C5F9D0  4B 66 F3 6D */	bl __dl__FPv
lbl_80C5F9D4:
/* 80C5F9D4  7F E3 FB 78 */	mr r3, r31
/* 80C5F9D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5F9DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F9E0  7C 08 03 A6 */	mtlr r0
/* 80C5F9E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F9E8  4E 80 00 20 */	blr 
