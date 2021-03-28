lbl_8014D108:
/* 8014D108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014D10C  7C 08 02 A6 */	mflr r0
/* 8014D110  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014D114  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014D118  7C 7F 1B 79 */	or. r31, r3, r3
/* 8014D11C  41 82 00 1C */	beq lbl_8014D138
/* 8014D120  3C A0 80 3B */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 8014D124  38 05 3B 48 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 8014D128  90 1F 00 04 */	stw r0, 4(r31)
/* 8014D12C  7C 80 07 35 */	extsh. r0, r4
/* 8014D130  40 81 00 08 */	ble lbl_8014D138
/* 8014D134  48 18 1C 09 */	bl __dl__FPv
lbl_8014D138:
/* 8014D138  7F E3 FB 78 */	mr r3, r31
/* 8014D13C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014D140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014D144  7C 08 03 A6 */	mtlr r0
/* 8014D148  38 21 00 10 */	addi r1, r1, 0x10
/* 8014D14C  4E 80 00 20 */	blr 
