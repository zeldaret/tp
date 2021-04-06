lbl_80D43CB4:
/* 80D43CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D43CB8  7C 08 02 A6 */	mflr r0
/* 80D43CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43CC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D43CC4  7C 7F 1B 78 */	mr r31, r3
/* 80D43CC8  3C 80 80 D4 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80D43FF8@ha */
/* 80D43CCC  38 04 3F F8 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80D43FF8@l */
/* 80D43CD0  90 03 00 04 */	stw r0, 4(r3)
/* 80D43CD4  4B 40 C9 DD */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80D43CD8  7F E3 FB 78 */	mr r3, r31
/* 80D43CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D43CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43CE4  7C 08 03 A6 */	mtlr r0
/* 80D43CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43CEC  4E 80 00 20 */	blr 
