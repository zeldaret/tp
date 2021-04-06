lbl_807BA1C4:
/* 807BA1C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA1C8  7C 08 02 A6 */	mflr r0
/* 807BA1CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA1D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BA1D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807BA1D8  41 82 00 1C */	beq lbl_807BA1F4
/* 807BA1DC  3C A0 80 7C */	lis r5, __vt__12daE_TK_HIO_c@ha /* 0x807BA424@ha */
/* 807BA1E0  38 05 A4 24 */	addi r0, r5, __vt__12daE_TK_HIO_c@l /* 0x807BA424@l */
/* 807BA1E4  90 1F 00 00 */	stw r0, 0(r31)
/* 807BA1E8  7C 80 07 35 */	extsh. r0, r4
/* 807BA1EC  40 81 00 08 */	ble lbl_807BA1F4
/* 807BA1F0  4B B1 4B 4D */	bl __dl__FPv
lbl_807BA1F4:
/* 807BA1F4  7F E3 FB 78 */	mr r3, r31
/* 807BA1F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BA1FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA200  7C 08 03 A6 */	mtlr r0
/* 807BA204  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA208  4E 80 00 20 */	blr 
