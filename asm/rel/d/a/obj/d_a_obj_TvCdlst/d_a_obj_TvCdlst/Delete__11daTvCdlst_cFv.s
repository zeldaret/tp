lbl_80B9F6D8:
/* 80B9F6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9F6DC  7C 08 02 A6 */	mflr r0
/* 80B9F6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9F6E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9F6E8  7C 7F 1B 78 */	mr r31, r3
/* 80B9F6EC  38 7F 07 34 */	addi r3, r31, 0x734
/* 80B9F6F0  4B 71 E9 09 */	bl deleteObject__14Z2SoundObjBaseFv
/* 80B9F6F4  38 7F 05 68 */	addi r3, r31, 0x568
/* 80B9F6F8  3C 80 80 BA */	lis r4, d_a_obj_TvCdlst__stringBase0@ha /* 0x80B9F8F4@ha */
/* 80B9F6FC  38 84 F8 F4 */	addi r4, r4, d_a_obj_TvCdlst__stringBase0@l /* 0x80B9F8F4@l */
/* 80B9F700  4B 48 D9 09 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B9F704  88 1F 07 0C */	lbz r0, 0x70c(r31)
/* 80B9F708  28 00 00 00 */	cmplwi r0, 0
/* 80B9F70C  41 82 00 0C */	beq lbl_80B9F718
/* 80B9F710  38 7F 07 14 */	addi r3, r31, 0x714
/* 80B9F714  4B 60 82 19 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80B9F718:
/* 80B9F718  38 60 00 01 */	li r3, 1
/* 80B9F71C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9F720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9F724  7C 08 03 A6 */	mtlr r0
/* 80B9F728  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9F72C  4E 80 00 20 */	blr 
