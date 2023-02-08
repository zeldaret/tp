lbl_80D1E468:
/* 80D1E468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1E46C  7C 08 02 A6 */	mflr r0
/* 80D1E470  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1E474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1E478  7C 7F 1B 78 */	mr r31, r3
/* 80D1E47C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D1E480  3C 80 80 D2 */	lis r4, d_a_obj_tp__stringBase0@ha /* 0x80D1EE98@ha */
/* 80D1E484  38 84 EE 98 */	addi r4, r4, d_a_obj_tp__stringBase0@l /* 0x80D1EE98@l */
/* 80D1E488  4B 30 EB 81 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D1E48C  80 9F 06 04 */	lwz r4, 0x604(r31)
/* 80D1E490  28 04 00 00 */	cmplwi r4, 0
/* 80D1E494  41 82 00 14 */	beq lbl_80D1E4A8
/* 80D1E498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1E49C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1E4A0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D1E4A4  4B 35 5D AD */	bl Release__4cBgSFP9dBgW_Base
lbl_80D1E4A8:
/* 80D1E4A8  38 60 00 01 */	li r3, 1
/* 80D1E4AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1E4B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1E4B4  7C 08 03 A6 */	mtlr r0
/* 80D1E4B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1E4BC  4E 80 00 20 */	blr 
