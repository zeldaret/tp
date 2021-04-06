lbl_80D4B278:
/* 80D4B278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B27C  7C 08 02 A6 */	mflr r0
/* 80D4B280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B288  7C 7F 1B 78 */	mr r31, r3
/* 80D4B28C  3C 80 80 D5 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80D4C6F0@ha */
/* 80D4B290  38 04 C6 F0 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80D4C6F0@l */
/* 80D4B294  90 03 00 04 */	stw r0, 4(r3)
/* 80D4B298  4B 3F A4 3D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80D4B29C  7F E3 FB 78 */	mr r3, r31
/* 80D4B2A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B2A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B2A8  7C 08 03 A6 */	mtlr r0
/* 80D4B2AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B2B0  4E 80 00 20 */	blr 
