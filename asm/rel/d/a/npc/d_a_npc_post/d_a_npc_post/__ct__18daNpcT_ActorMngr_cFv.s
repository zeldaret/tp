lbl_80AAC394:
/* 80AAC394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAC398  7C 08 02 A6 */	mflr r0
/* 80AAC39C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAC3A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAC3A4  7C 7F 1B 78 */	mr r31, r3
/* 80AAC3A8  3C 80 80 AB */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AADAD8@ha */
/* 80AAC3AC  38 04 DA D8 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80AADAD8@l */
/* 80AAC3B0  90 03 00 04 */	stw r0, 4(r3)
/* 80AAC3B4  4B 69 93 21 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AAC3B8  7F E3 FB 78 */	mr r3, r31
/* 80AAC3BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAC3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAC3C4  7C 08 03 A6 */	mtlr r0
/* 80AAC3C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAC3CC  4E 80 00 20 */	blr 
