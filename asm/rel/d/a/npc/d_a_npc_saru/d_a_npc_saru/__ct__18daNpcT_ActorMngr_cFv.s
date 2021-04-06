lbl_80AC3714:
/* 80AC3714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3718  7C 08 02 A6 */	mflr r0
/* 80AC371C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3724  7C 7F 1B 78 */	mr r31, r3
/* 80AC3728  3C 80 80 AC */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC4ED4@ha */
/* 80AC372C  38 04 4E D4 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC4ED4@l */
/* 80AC3730  90 03 00 04 */	stw r0, 4(r3)
/* 80AC3734  4B 68 1F A1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC3738  7F E3 FB 78 */	mr r3, r31
/* 80AC373C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3744  7C 08 03 A6 */	mtlr r0
/* 80AC3748  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC374C  4E 80 00 20 */	blr 
