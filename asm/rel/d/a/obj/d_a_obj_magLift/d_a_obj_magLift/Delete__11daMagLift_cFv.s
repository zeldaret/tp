lbl_80C8E4F4:
/* 80C8E4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E4F8  7C 08 02 A6 */	mflr r0
/* 80C8E4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E500  3C 80 80 C9 */	lis r4, d_a_obj_magLift__stringBase0@ha /* 0x80C8E6D0@ha */
/* 80C8E504  38 84 E6 D0 */	addi r4, r4, d_a_obj_magLift__stringBase0@l /* 0x80C8E6D0@l */
/* 80C8E508  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C8E50C  4B 39 EA FD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C8E510  38 60 00 01 */	li r3, 1
/* 80C8E514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E518  7C 08 03 A6 */	mtlr r0
/* 80C8E51C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E520  4E 80 00 20 */	blr 
