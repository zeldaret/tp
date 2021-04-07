lbl_804DE10C:
/* 804DE10C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE110  7C 08 02 A6 */	mflr r0
/* 804DE114  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE11C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DE120  41 82 00 1C */	beq lbl_804DE13C
/* 804DE124  3C A0 80 4E */	lis r5, __vt__8cM3dGAab@ha /* 0x804DFA70@ha */
/* 804DE128  38 05 FA 70 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x804DFA70@l */
/* 804DE12C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804DE130  7C 80 07 35 */	extsh. r0, r4
/* 804DE134  40 81 00 08 */	ble lbl_804DE13C
/* 804DE138  4B DF 0C 05 */	bl __dl__FPv
lbl_804DE13C:
/* 804DE13C  7F E3 FB 78 */	mr r3, r31
/* 804DE140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE148  7C 08 03 A6 */	mtlr r0
/* 804DE14C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE150  4E 80 00 20 */	blr 
