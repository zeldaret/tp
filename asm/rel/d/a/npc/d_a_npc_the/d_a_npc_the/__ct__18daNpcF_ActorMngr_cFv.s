lbl_80AFB5A0:
/* 80AFB5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFB5A4  7C 08 02 A6 */	mflr r0
/* 80AFB5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFB5AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFB5B0  7C 7F 1B 78 */	mr r31, r3
/* 80AFB5B4  3C 80 80 B0 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80AFC62C@ha */
/* 80AFB5B8  38 04 C6 2C */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80AFC62C@l */
/* 80AFB5BC  90 03 00 04 */	stw r0, 4(r3)
/* 80AFB5C0  4B 65 50 F1 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AFB5C4  7F E3 FB 78 */	mr r3, r31
/* 80AFB5C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFB5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFB5D0  7C 08 03 A6 */	mtlr r0
/* 80AFB5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFB5D8  4E 80 00 20 */	blr 
