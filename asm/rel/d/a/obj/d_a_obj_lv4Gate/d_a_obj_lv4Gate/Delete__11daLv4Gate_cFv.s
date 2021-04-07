lbl_80C5F28C:
/* 80C5F28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F290  7C 08 02 A6 */	mflr r0
/* 80C5F294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F298  3C 80 80 C6 */	lis r4, d_a_obj_lv4Gate__stringBase0@ha /* 0x80C5F414@ha */
/* 80C5F29C  38 84 F4 14 */	addi r4, r4, d_a_obj_lv4Gate__stringBase0@l /* 0x80C5F414@l */
/* 80C5F2A0  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C5F2A4  4B 3C DD 65 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C5F2A8  38 60 00 01 */	li r3, 1
/* 80C5F2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F2B0  7C 08 03 A6 */	mtlr r0
/* 80C5F2B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F2B8  4E 80 00 20 */	blr 
