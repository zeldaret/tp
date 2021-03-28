lbl_805A8D98:
/* 805A8D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8D9C  7C 08 02 A6 */	mflr r0
/* 805A8DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A8DA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A8DAC  41 82 00 30 */	beq lbl_805A8DDC
/* 805A8DB0  3C 60 80 5B */	lis r3, __vt__12daYkgr_HIO_c@ha
/* 805A8DB4  38 03 90 98 */	addi r0, r3, __vt__12daYkgr_HIO_c@l
/* 805A8DB8  90 1F 00 00 */	stw r0, 0(r31)
/* 805A8DBC  41 82 00 10 */	beq lbl_805A8DCC
/* 805A8DC0  3C 60 80 5B */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 805A8DC4  38 03 90 A4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 805A8DC8  90 1F 00 00 */	stw r0, 0(r31)
lbl_805A8DCC:
/* 805A8DCC  7C 80 07 35 */	extsh. r0, r4
/* 805A8DD0  40 81 00 0C */	ble lbl_805A8DDC
/* 805A8DD4  7F E3 FB 78 */	mr r3, r31
/* 805A8DD8  4B D2 5F 64 */	b __dl__FPv
lbl_805A8DDC:
/* 805A8DDC  7F E3 FB 78 */	mr r3, r31
/* 805A8DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A8DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8DE8  7C 08 03 A6 */	mtlr r0
/* 805A8DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8DF0  4E 80 00 20 */	blr 
