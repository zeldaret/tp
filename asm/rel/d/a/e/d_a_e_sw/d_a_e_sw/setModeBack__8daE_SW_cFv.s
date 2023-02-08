lbl_807A7D48:
/* 807A7D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A7D4C  7C 08 02 A6 */	mflr r0
/* 807A7D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A7D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A7D58  7C 7F 1B 78 */	mr r31, r3
/* 807A7D5C  A8 03 06 BC */	lha r0, 0x6bc(r3)
/* 807A7D60  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 807A7D64  40 82 00 30 */	bne lbl_807A7D94
/* 807A7D68  38 80 00 00 */	li r4, 0
/* 807A7D6C  38 A0 00 00 */	li r5, 0
/* 807A7D70  4B FF FD F5 */	bl setActionMode__8daE_SW_cFss
/* 807A7D74  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 807A7D78  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807A7D7C  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 807A7D80  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807A7D84  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 807A7D88  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807A7D8C  38 60 00 01 */	li r3, 1
/* 807A7D90  48 00 00 08 */	b lbl_807A7D98
lbl_807A7D94:
/* 807A7D94  38 60 00 00 */	li r3, 0
lbl_807A7D98:
/* 807A7D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A7D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A7DA0  7C 08 03 A6 */	mtlr r0
/* 807A7DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 807A7DA8  4E 80 00 20 */	blr 
