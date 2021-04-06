lbl_80709D58:
/* 80709D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80709D5C  7C 08 02 A6 */	mflr r0
/* 80709D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80709D64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80709D68  7C 7F 1B 78 */	mr r31, r3
/* 80709D6C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80709D70  3C 80 80 71 */	lis r4, d_a_e_md__stringBase0@ha /* 0x8070A570@ha */
/* 80709D74  38 84 A5 70 */	addi r4, r4, d_a_e_md__stringBase0@l /* 0x8070A570@l */
/* 80709D78  4B 92 32 91 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80709D7C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80709D80  28 00 00 00 */	cmplwi r0, 0
/* 80709D84  41 82 00 0C */	beq lbl_80709D90
/* 80709D88  80 7F 06 8C */	lwz r3, 0x68c(r31)
/* 80709D8C  4B 90 75 85 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80709D90:
/* 80709D90  38 60 00 01 */	li r3, 1
/* 80709D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80709D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80709D9C  7C 08 03 A6 */	mtlr r0
/* 80709DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80709DA4  4E 80 00 20 */	blr 
