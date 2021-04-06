lbl_809F7BB0:
/* 809F7BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7BB4  7C 08 02 A6 */	mflr r0
/* 809F7BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F7BC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F7BC4  41 82 00 1C */	beq lbl_809F7BE0
/* 809F7BC8  3C A0 80 A0 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x809F8E80@ha */
/* 809F7BCC  38 05 8E 80 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x809F8E80@l */
/* 809F7BD0  90 1F 00 04 */	stw r0, 4(r31)
/* 809F7BD4  7C 80 07 35 */	extsh. r0, r4
/* 809F7BD8  40 81 00 08 */	ble lbl_809F7BE0
/* 809F7BDC  4B 8D 71 61 */	bl __dl__FPv
lbl_809F7BE0:
/* 809F7BE0  7F E3 FB 78 */	mr r3, r31
/* 809F7BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F7BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7BEC  7C 08 03 A6 */	mtlr r0
/* 809F7BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7BF4  4E 80 00 20 */	blr 
