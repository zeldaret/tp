lbl_80956808:
/* 80956808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095680C  7C 08 02 A6 */	mflr r0
/* 80956810  90 01 00 14 */	stw r0, 0x14(r1)
/* 80956814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80956818  7C 7F 1B 78 */	mr r31, r3
/* 8095681C  3C 80 80 96 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80958014@ha */
/* 80956820  38 04 80 14 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80958014@l */
/* 80956824  90 03 00 04 */	stw r0, 4(r3)
/* 80956828  4B 7E EE AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8095682C  7F E3 FB 78 */	mr r3, r31
/* 80956830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80956834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80956838  7C 08 03 A6 */	mtlr r0
/* 8095683C  38 21 00 10 */	addi r1, r1, 0x10
/* 80956840  4E 80 00 20 */	blr 
