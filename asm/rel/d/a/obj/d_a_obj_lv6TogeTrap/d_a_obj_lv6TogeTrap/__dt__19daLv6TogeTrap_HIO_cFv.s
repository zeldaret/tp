lbl_80C7C504:
/* 80C7C504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7C508  7C 08 02 A6 */	mflr r0
/* 80C7C50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7C510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7C514  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7C518  41 82 00 30 */	beq lbl_80C7C548
/* 80C7C51C  3C 60 80 C8 */	lis r3, __vt__19daLv6TogeTrap_HIO_c@ha /* 0x80C7CA38@ha */
/* 80C7C520  38 03 CA 38 */	addi r0, r3, __vt__19daLv6TogeTrap_HIO_c@l /* 0x80C7CA38@l */
/* 80C7C524  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7C528  41 82 00 10 */	beq lbl_80C7C538
/* 80C7C52C  3C 60 80 C8 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C7CA44@ha */
/* 80C7C530  38 03 CA 44 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C7CA44@l */
/* 80C7C534  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C7C538:
/* 80C7C538  7C 80 07 35 */	extsh. r0, r4
/* 80C7C53C  40 81 00 0C */	ble lbl_80C7C548
/* 80C7C540  7F E3 FB 78 */	mr r3, r31
/* 80C7C544  4B 65 27 F9 */	bl __dl__FPv
lbl_80C7C548:
/* 80C7C548  7F E3 FB 78 */	mr r3, r31
/* 80C7C54C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7C550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7C554  7C 08 03 A6 */	mtlr r0
/* 80C7C558  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7C55C  4E 80 00 20 */	blr 
