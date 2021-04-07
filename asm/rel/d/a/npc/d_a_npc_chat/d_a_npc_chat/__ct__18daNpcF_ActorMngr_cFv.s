lbl_80985C9C:
/* 80985C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80985CA0  7C 08 02 A6 */	mflr r0
/* 80985CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80985CAC  7C 7F 1B 78 */	mr r31, r3
/* 80985CB0  3C 80 80 99 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x8098BA38@ha */
/* 80985CB4  38 04 BA 38 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x8098BA38@l */
/* 80985CB8  90 03 00 04 */	stw r0, 4(r3)
/* 80985CBC  4B 7C A9 F5 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80985CC0  7F E3 FB 78 */	mr r3, r31
/* 80985CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80985CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80985CCC  7C 08 03 A6 */	mtlr r0
/* 80985CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80985CD4  4E 80 00 20 */	blr 
