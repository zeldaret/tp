lbl_80D18CA4:
/* 80D18CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D18CA8  7C 08 02 A6 */	mflr r0
/* 80D18CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D18CB0  3C 80 80 D2 */	lis r4, d_a_obj_togeTrap__stringBase0@ha /* 0x80D18F08@ha */
/* 80D18CB4  38 84 8F 08 */	addi r4, r4, d_a_obj_togeTrap__stringBase0@l /* 0x80D18F08@l */
/* 80D18CB8  38 63 0A CC */	addi r3, r3, 0xacc
/* 80D18CBC  4B 31 43 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D18CC0  38 60 00 01 */	li r3, 1
/* 80D18CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D18CC8  7C 08 03 A6 */	mtlr r0
/* 80D18CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D18CD0  4E 80 00 20 */	blr 
