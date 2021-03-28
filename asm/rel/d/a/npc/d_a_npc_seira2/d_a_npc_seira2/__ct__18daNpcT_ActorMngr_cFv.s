lbl_80AD3AA8:
/* 80AD3AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3AAC  7C 08 02 A6 */	mflr r0
/* 80AD3AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD3AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD3AB8  7C 7F 1B 78 */	mr r31, r3
/* 80AD3ABC  3C 80 80 AD */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80AD3AC0  38 04 55 0C */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80AD3AC4  90 03 00 04 */	stw r0, 4(r3)
/* 80AD3AC8  4B 67 1C 0C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AD3ACC  7F E3 FB 78 */	mr r3, r31
/* 80AD3AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD3AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3AD8  7C 08 03 A6 */	mtlr r0
/* 80AD3ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD3AE0  4E 80 00 20 */	blr 
