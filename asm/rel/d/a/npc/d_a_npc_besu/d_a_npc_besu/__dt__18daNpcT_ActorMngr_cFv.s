lbl_8053D79C:
/* 8053D79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D7A0  7C 08 02 A6 */	mflr r0
/* 8053D7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D7A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053D7AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8053D7B0  41 82 00 1C */	beq lbl_8053D7CC
/* 8053D7B4  3C A0 80 54 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 8053D7B8  38 05 FD 68 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 8053D7BC  90 1F 00 04 */	stw r0, 4(r31)
/* 8053D7C0  7C 80 07 35 */	extsh. r0, r4
/* 8053D7C4  40 81 00 08 */	ble lbl_8053D7CC
/* 8053D7C8  4B D9 15 74 */	b __dl__FPv
lbl_8053D7CC:
/* 8053D7CC  7F E3 FB 78 */	mr r3, r31
/* 8053D7D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D7D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D7D8  7C 08 03 A6 */	mtlr r0
/* 8053D7DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D7E0  4E 80 00 20 */	blr 
