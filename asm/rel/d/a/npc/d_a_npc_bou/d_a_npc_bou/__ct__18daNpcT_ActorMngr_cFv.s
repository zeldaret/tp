lbl_809719FC:
/* 809719FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80971A00  7C 08 02 A6 */	mflr r0
/* 80971A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80971A08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80971A0C  7C 7F 1B 78 */	mr r31, r3
/* 80971A10  3C 80 80 97 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80971A14  38 04 33 30 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80971A18  90 03 00 04 */	stw r0, 4(r3)
/* 80971A1C  4B 7D 3C B8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80971A20  7F E3 FB 78 */	mr r3, r31
/* 80971A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80971A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80971A2C  7C 08 03 A6 */	mtlr r0
/* 80971A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80971A34  4E 80 00 20 */	blr 
