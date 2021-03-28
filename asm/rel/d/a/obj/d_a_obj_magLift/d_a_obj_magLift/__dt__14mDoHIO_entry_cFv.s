lbl_80C8DA58:
/* 80C8DA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8DA5C  7C 08 02 A6 */	mflr r0
/* 80C8DA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8DA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8DA68  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8DA6C  41 82 00 1C */	beq lbl_80C8DA88
/* 80C8DA70  3C A0 80 C9 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80C8DA74  38 05 E8 34 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80C8DA78  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8DA7C  7C 80 07 35 */	extsh. r0, r4
/* 80C8DA80  40 81 00 08 */	ble lbl_80C8DA88
/* 80C8DA84  4B 64 12 B8 */	b __dl__FPv
lbl_80C8DA88:
/* 80C8DA88  7F E3 FB 78 */	mr r3, r31
/* 80C8DA8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8DA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8DA94  7C 08 03 A6 */	mtlr r0
/* 80C8DA98  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8DA9C  4E 80 00 20 */	blr 
