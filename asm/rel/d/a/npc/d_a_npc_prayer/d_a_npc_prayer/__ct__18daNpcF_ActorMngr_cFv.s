lbl_80AB4F58:
/* 80AB4F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB4F5C  7C 08 02 A6 */	mflr r0
/* 80AB4F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB4F64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB4F68  7C 7F 1B 78 */	mr r31, r3
/* 80AB4F6C  3C 80 80 AB */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80AB5B64@ha */
/* 80AB4F70  38 04 5B 64 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80AB5B64@l */
/* 80AB4F74  90 03 00 04 */	stw r0, 4(r3)
/* 80AB4F78  4B 69 B7 39 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AB4F7C  7F E3 FB 78 */	mr r3, r31
/* 80AB4F80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB4F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB4F88  7C 08 03 A6 */	mtlr r0
/* 80AB4F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB4F90  4E 80 00 20 */	blr 
