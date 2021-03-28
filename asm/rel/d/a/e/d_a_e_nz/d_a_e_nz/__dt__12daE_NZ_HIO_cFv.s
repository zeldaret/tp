lbl_8072BC88:
/* 8072BC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072BC8C  7C 08 02 A6 */	mflr r0
/* 8072BC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072BC94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072BC98  7C 7F 1B 79 */	or. r31, r3, r3
/* 8072BC9C  41 82 00 1C */	beq lbl_8072BCB8
/* 8072BCA0  3C A0 80 73 */	lis r5, __vt__12daE_NZ_HIO_c@ha
/* 8072BCA4  38 05 C3 D4 */	addi r0, r5, __vt__12daE_NZ_HIO_c@l
/* 8072BCA8  90 1F 00 00 */	stw r0, 0(r31)
/* 8072BCAC  7C 80 07 35 */	extsh. r0, r4
/* 8072BCB0  40 81 00 08 */	ble lbl_8072BCB8
/* 8072BCB4  4B BA 30 88 */	b __dl__FPv
lbl_8072BCB8:
/* 8072BCB8  7F E3 FB 78 */	mr r3, r31
/* 8072BCBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072BCC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072BCC4  7C 08 03 A6 */	mtlr r0
/* 8072BCC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8072BCCC  4E 80 00 20 */	blr 
