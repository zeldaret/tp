lbl_8099492C:
/* 8099492C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80994930  7C 08 02 A6 */	mflr r0
/* 80994934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80994938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099493C  7C 7F 1B 78 */	mr r31, r3
/* 80994940  3C 80 80 99 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80994944  38 04 5D 18 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80994948  90 03 00 04 */	stw r0, 4(r3)
/* 8099494C  4B 7B 0D 88 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80994950  7F E3 FB 78 */	mr r3, r31
/* 80994954  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80994958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099495C  7C 08 03 A6 */	mtlr r0
/* 80994960  38 21 00 10 */	addi r1, r1, 0x10
/* 80994964  4E 80 00 20 */	blr 
