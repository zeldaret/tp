lbl_807129A0:
/* 807129A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807129A4  7C 08 02 A6 */	mflr r0
/* 807129A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807129AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807129B0  7C 7F 1B 78 */	mr r31, r3
/* 807129B4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807129B8  3C 80 80 71 */	lis r4, d_a_e_mf__stringBase0@ha /* 0x80713AF4@ha */
/* 807129BC  38 84 3A F4 */	addi r4, r4, d_a_e_mf__stringBase0@l /* 0x80713AF4@l */
/* 807129C0  4B 91 A6 49 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807129C4  88 1F 10 B9 */	lbz r0, 0x10b9(r31)
/* 807129C8  28 00 00 00 */	cmplwi r0, 0
/* 807129CC  41 82 00 10 */	beq lbl_807129DC
/* 807129D0  38 00 00 00 */	li r0, 0
/* 807129D4  3C 60 80 71 */	lis r3, struct_80713F64+0x1@ha /* 0x80713F65@ha */
/* 807129D8  98 03 3F 65 */	stb r0, struct_80713F64+0x1@l(r3)  /* 0x80713F65@l */
lbl_807129DC:
/* 807129DC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807129E0  28 00 00 00 */	cmplwi r0, 0
/* 807129E4  41 82 00 0C */	beq lbl_807129F0
/* 807129E8  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 807129EC  4B 8F E9 25 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_807129F0:
/* 807129F0  38 60 00 01 */	li r3, 1
/* 807129F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807129F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807129FC  7C 08 03 A6 */	mtlr r0
/* 80712A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80712A04  4E 80 00 20 */	blr 
