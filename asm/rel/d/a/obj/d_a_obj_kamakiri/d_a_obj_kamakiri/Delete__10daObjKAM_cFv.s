lbl_80C37724:
/* 80C37724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C37728  7C 08 02 A6 */	mflr r0
/* 80C3772C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C37730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C37734  7C 7F 1B 78 */	mr r31, r3
/* 80C37738  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80C3773C  3C 80 80 C4 */	lis r4, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C37740  38 84 84 FC */	addi r4, r4, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C37744  4B 3F 58 C5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C37748  88 1F 0A 64 */	lbz r0, 0xa64(r31)
/* 80C3774C  28 00 00 00 */	cmplwi r0, 0
/* 80C37750  41 82 00 10 */	beq lbl_80C37760
/* 80C37754  38 00 00 00 */	li r0, 0
/* 80C37758  3C 60 80 C4 */	lis r3, data_80C385D0@ha /* 0x80C385D0@ha */
/* 80C3775C  98 03 85 D0 */	stb r0, data_80C385D0@l(r3)  /* 0x80C385D0@l */
lbl_80C37760:
/* 80C37760  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80C37764  28 00 00 00 */	cmplwi r0, 0
/* 80C37768  41 82 00 0C */	beq lbl_80C37774
/* 80C3776C  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C37770  4B 3D 9B A1 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80C37774:
/* 80C37774  38 60 00 01 */	li r3, 1
/* 80C37778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3777C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C37780  7C 08 03 A6 */	mtlr r0
/* 80C37784  38 21 00 10 */	addi r1, r1, 0x10
/* 80C37788  4E 80 00 20 */	blr 
