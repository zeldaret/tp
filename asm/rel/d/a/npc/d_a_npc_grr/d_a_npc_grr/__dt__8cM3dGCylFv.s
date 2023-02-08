lbl_809DFA50:
/* 809DFA50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DFA54  7C 08 02 A6 */	mflr r0
/* 809DFA58  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DFA5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DFA60  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DFA64  41 82 00 1C */	beq lbl_809DFA80
/* 809DFA68  3C A0 80 9E */	lis r5, __vt__8cM3dGCyl@ha /* 0x809E3EBC@ha */
/* 809DFA6C  38 05 3E BC */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x809E3EBC@l */
/* 809DFA70  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809DFA74  7C 80 07 35 */	extsh. r0, r4
/* 809DFA78  40 81 00 08 */	ble lbl_809DFA80
/* 809DFA7C  4B 8E F2 C1 */	bl __dl__FPv
lbl_809DFA80:
/* 809DFA80  7F E3 FB 78 */	mr r3, r31
/* 809DFA84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DFA88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DFA8C  7C 08 03 A6 */	mtlr r0
/* 809DFA90  38 21 00 10 */	addi r1, r1, 0x10
/* 809DFA94  4E 80 00 20 */	blr 
