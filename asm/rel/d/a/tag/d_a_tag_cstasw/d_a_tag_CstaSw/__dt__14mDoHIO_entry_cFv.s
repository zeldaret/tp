lbl_805A2050:
/* 805A2050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2054  7C 08 02 A6 */	mflr r0
/* 805A2058  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A205C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2060  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A2064  41 82 00 1C */	beq lbl_805A2080
/* 805A2068  3C A0 80 5A */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 805A206C  38 05 25 AC */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 805A2070  90 1F 00 00 */	stw r0, 0(r31)
/* 805A2074  7C 80 07 35 */	extsh. r0, r4
/* 805A2078  40 81 00 08 */	ble lbl_805A2080
/* 805A207C  4B D2 CC C0 */	b __dl__FPv
lbl_805A2080:
/* 805A2080  7F E3 FB 78 */	mr r3, r31
/* 805A2084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A208C  7C 08 03 A6 */	mtlr r0
/* 805A2090  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2094  4E 80 00 20 */	blr 
