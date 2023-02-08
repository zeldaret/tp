lbl_80C262CC:
/* 80C262CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C262D0  7C 08 02 A6 */	mflr r0
/* 80C262D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C262D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C262DC  7C 7F 1B 78 */	mr r31, r3
/* 80C262E0  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C262E4  3C 80 80 C2 */	lis r4, d_a_obj_ihasi__stringBase0@ha /* 0x80C268C4@ha */
/* 80C262E8  38 84 68 C4 */	addi r4, r4, d_a_obj_ihasi__stringBase0@l /* 0x80C268C4@l */
/* 80C262EC  4B 40 6D 1D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C262F0  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80C262F4  28 04 00 00 */	cmplwi r4, 0
/* 80C262F8  41 82 00 14 */	beq lbl_80C2630C
/* 80C262FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C26300  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C26304  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C26308  4B 44 DF 49 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C2630C:
/* 80C2630C  38 60 00 01 */	li r3, 1
/* 80C26310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C26314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C26318  7C 08 03 A6 */	mtlr r0
/* 80C2631C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C26320  4E 80 00 20 */	blr 
