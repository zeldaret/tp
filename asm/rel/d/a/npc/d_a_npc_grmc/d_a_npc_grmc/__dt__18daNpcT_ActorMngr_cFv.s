lbl_809D96E0:
/* 809D96E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D96E4  7C 08 02 A6 */	mflr r0
/* 809D96E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D96EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D96F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D96F4  41 82 00 1C */	beq lbl_809D9710
/* 809D96F8  3C A0 80 9E */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x809DA348@ha */
/* 809D96FC  38 05 A3 48 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x809DA348@l */
/* 809D9700  90 1F 00 04 */	stw r0, 4(r31)
/* 809D9704  7C 80 07 35 */	extsh. r0, r4
/* 809D9708  40 81 00 08 */	ble lbl_809D9710
/* 809D970C  4B 8F 56 31 */	bl __dl__FPv
lbl_809D9710:
/* 809D9710  7F E3 FB 78 */	mr r3, r31
/* 809D9714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D9718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D971C  7C 08 03 A6 */	mtlr r0
/* 809D9720  38 21 00 10 */	addi r1, r1, 0x10
/* 809D9724  4E 80 00 20 */	blr 
