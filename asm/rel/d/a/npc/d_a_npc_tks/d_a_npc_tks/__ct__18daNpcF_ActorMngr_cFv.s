lbl_80B1D488:
/* 80B1D488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1D48C  7C 08 02 A6 */	mflr r0
/* 80B1D490  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1D494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1D498  7C 7F 1B 78 */	mr r31, r3
/* 80B1D49C  3C 80 80 B2 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B1E500@ha */
/* 80B1D4A0  38 04 E5 00 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80B1E500@l */
/* 80B1D4A4  90 03 00 04 */	stw r0, 4(r3)
/* 80B1D4A8  4B 63 32 09 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B1D4AC  7F E3 FB 78 */	mr r3, r31
/* 80B1D4B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1D4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1D4B8  7C 08 03 A6 */	mtlr r0
/* 80B1D4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1D4C0  4E 80 00 20 */	blr 
