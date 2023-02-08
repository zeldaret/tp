lbl_809A9B2C:
/* 809A9B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9B30  7C 08 02 A6 */	mflr r0
/* 809A9B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A9B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A9B3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A9B40  41 82 00 1C */	beq lbl_809A9B5C
/* 809A9B44  3C A0 80 9B */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x809AA9B8@ha */
/* 809A9B48  38 05 A9 B8 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x809AA9B8@l */
/* 809A9B4C  90 1F 00 04 */	stw r0, 4(r31)
/* 809A9B50  7C 80 07 35 */	extsh. r0, r4
/* 809A9B54  40 81 00 08 */	ble lbl_809A9B5C
/* 809A9B58  4B 92 51 E5 */	bl __dl__FPv
lbl_809A9B5C:
/* 809A9B5C  7F E3 FB 78 */	mr r3, r31
/* 809A9B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A9B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A9B68  7C 08 03 A6 */	mtlr r0
/* 809A9B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 809A9B70  4E 80 00 20 */	blr 
