lbl_80489180:
/* 80489180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489184  7C 08 02 A6 */	mflr r0
/* 80489188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048918C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80489190  7C 7F 1B 78 */	mr r31, r3
/* 80489194  3C 80 80 49 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80489864@ha */
/* 80489198  38 04 98 64 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80489864@l */
/* 8048919C  90 03 00 04 */	stw r0, 4(r3)
/* 804891A0  4B CB C5 35 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 804891A4  7F E3 FB 78 */	mr r3, r31
/* 804891A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804891AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804891B0  7C 08 03 A6 */	mtlr r0
/* 804891B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804891B8  4E 80 00 20 */	blr 
