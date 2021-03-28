lbl_809D66A4:
/* 809D66A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D66A8  7C 08 02 A6 */	mflr r0
/* 809D66AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D66B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D66B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D66B8  41 82 00 1C */	beq lbl_809D66D4
/* 809D66BC  3C A0 80 9D */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 809D66C0  38 05 71 E0 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 809D66C4  90 1F 00 04 */	stw r0, 4(r31)
/* 809D66C8  7C 80 07 35 */	extsh. r0, r4
/* 809D66CC  40 81 00 08 */	ble lbl_809D66D4
/* 809D66D0  4B 8F 86 6C */	b __dl__FPv
lbl_809D66D4:
/* 809D66D4  7F E3 FB 78 */	mr r3, r31
/* 809D66D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D66DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D66E0  7C 08 03 A6 */	mtlr r0
/* 809D66E4  38 21 00 10 */	addi r1, r1, 0x10
/* 809D66E8  4E 80 00 20 */	blr 
