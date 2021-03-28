lbl_80BFD6DC:
/* 80BFD6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD6E0  7C 08 02 A6 */	mflr r0
/* 80BFD6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD6E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD6EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFD6F0  41 82 00 1C */	beq lbl_80BFD70C
/* 80BFD6F4  3C A0 80 C0 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80BFD6F8  38 05 E0 FC */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80BFD6FC  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFD700  7C 80 07 35 */	extsh. r0, r4
/* 80BFD704  40 81 00 08 */	ble lbl_80BFD70C
/* 80BFD708  4B 6D 16 34 */	b __dl__FPv
lbl_80BFD70C:
/* 80BFD70C  7F E3 FB 78 */	mr r3, r31
/* 80BFD710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD718  7C 08 03 A6 */	mtlr r0
/* 80BFD71C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD720  4E 80 00 20 */	blr 
