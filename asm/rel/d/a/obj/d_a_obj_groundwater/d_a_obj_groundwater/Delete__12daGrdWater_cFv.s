lbl_80C147EC:
/* 80C147EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C147F0  7C 08 02 A6 */	mflr r0
/* 80C147F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C147F8  3C 80 80 C1 */	lis r4, d_a_obj_groundwater__stringBase0@ha /* 0x80C149F4@ha */
/* 80C147FC  38 84 49 F4 */	addi r4, r4, d_a_obj_groundwater__stringBase0@l /* 0x80C149F4@l */
/* 80C14800  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C14804  4B 41 88 05 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C14808  38 60 00 01 */	li r3, 1
/* 80C1480C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C14810  7C 08 03 A6 */	mtlr r0
/* 80C14814  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14818  4E 80 00 20 */	blr 
