lbl_80C7341C:
/* 80C7341C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73420  7C 08 02 A6 */	mflr r0
/* 80C73424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7342C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C73430  41 82 00 1C */	beq lbl_80C7344C
/* 80C73434  3C A0 80 C7 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C73DD8@ha */
/* 80C73438  38 05 3D D8 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C73DD8@l */
/* 80C7343C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C73440  7C 80 07 35 */	extsh. r0, r4
/* 80C73444  40 81 00 08 */	ble lbl_80C7344C
/* 80C73448  4B 65 B8 F5 */	bl __dl__FPv
lbl_80C7344C:
/* 80C7344C  7F E3 FB 78 */	mr r3, r31
/* 80C73450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C73454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73458  7C 08 03 A6 */	mtlr r0
/* 80C7345C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73460  4E 80 00 20 */	blr 
