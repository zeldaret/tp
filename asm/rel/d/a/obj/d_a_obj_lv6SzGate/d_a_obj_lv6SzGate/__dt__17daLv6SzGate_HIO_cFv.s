lbl_80C76584:
/* 80C76584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C76588  7C 08 02 A6 */	mflr r0
/* 80C7658C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C76590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C76594  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C76598  41 82 00 30 */	beq lbl_80C765C8
/* 80C7659C  3C 60 80 C7 */	lis r3, __vt__17daLv6SzGate_HIO_c@ha
/* 80C765A0  38 03 67 B4 */	addi r0, r3, __vt__17daLv6SzGate_HIO_c@l
/* 80C765A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C765A8  41 82 00 10 */	beq lbl_80C765B8
/* 80C765AC  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C765B0  38 03 67 C0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C765B4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C765B8:
/* 80C765B8  7C 80 07 35 */	extsh. r0, r4
/* 80C765BC  40 81 00 0C */	ble lbl_80C765C8
/* 80C765C0  7F E3 FB 78 */	mr r3, r31
/* 80C765C4  4B 65 87 78 */	b __dl__FPv
lbl_80C765C8:
/* 80C765C8  7F E3 FB 78 */	mr r3, r31
/* 80C765CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C765D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C765D4  7C 08 03 A6 */	mtlr r0
/* 80C765D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C765DC  4E 80 00 20 */	blr 
