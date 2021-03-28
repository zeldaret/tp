lbl_80A9AA80:
/* 80A9AA80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9AA84  7C 08 02 A6 */	mflr r0
/* 80A9AA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9AA8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9AA90  7C 7F 1B 78 */	mr r31, r3
/* 80A9AA94  3C 80 80 AA */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80A9AA98  38 04 C0 78 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80A9AA9C  90 03 00 04 */	stw r0, 4(r3)
/* 80A9AAA0  4B 6A AC 34 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A9AAA4  7F E3 FB 78 */	mr r3, r31
/* 80A9AAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9AAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9AAB0  7C 08 03 A6 */	mtlr r0
/* 80A9AAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9AAB8  4E 80 00 20 */	blr 
