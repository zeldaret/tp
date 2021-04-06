lbl_8099C31C:
/* 8099C31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099C320  7C 08 02 A6 */	mflr r0
/* 8099C324  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099C328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099C32C  7C 7F 1B 78 */	mr r31, r3
/* 8099C330  3C 80 80 9A */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x8099D548@ha */
/* 8099C334  38 04 D5 48 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x8099D548@l */
/* 8099C338  90 03 00 04 */	stw r0, 4(r3)
/* 8099C33C  4B 7A 93 99 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8099C340  7F E3 FB 78 */	mr r3, r31
/* 8099C344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099C348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099C34C  7C 08 03 A6 */	mtlr r0
/* 8099C350  38 21 00 10 */	addi r1, r1, 0x10
/* 8099C354  4E 80 00 20 */	blr 
