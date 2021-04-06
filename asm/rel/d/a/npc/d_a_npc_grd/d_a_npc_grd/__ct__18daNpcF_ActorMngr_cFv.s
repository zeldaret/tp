lbl_809D3158:
/* 809D3158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D315C  7C 08 02 A6 */	mflr r0
/* 809D3160  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D3164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D3168  7C 7F 1B 78 */	mr r31, r3
/* 809D316C  3C 80 80 9D */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x809D3E6C@ha */
/* 809D3170  38 04 3E 6C */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x809D3E6C@l */
/* 809D3174  90 03 00 04 */	stw r0, 4(r3)
/* 809D3178  4B 77 D5 39 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809D317C  7F E3 FB 78 */	mr r3, r31
/* 809D3180  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D3184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D3188  7C 08 03 A6 */	mtlr r0
/* 809D318C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D3190  4E 80 00 20 */	blr 
