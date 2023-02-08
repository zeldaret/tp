lbl_8046B3D0:
/* 8046B3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046B3D4  7C 08 02 A6 */	mflr r0
/* 8046B3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046B3DC  3C 80 80 47 */	lis r4, d_a_hitobj__stringBase0@ha /* 0x8046B5D4@ha */
/* 8046B3E0  38 84 B5 D4 */	addi r4, r4, d_a_hitobj__stringBase0@l /* 0x8046B5D4@l */
/* 8046B3E4  38 63 05 68 */	addi r3, r3, 0x568
/* 8046B3E8  4B BC 1C 21 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8046B3EC  38 60 00 01 */	li r3, 1
/* 8046B3F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046B3F4  7C 08 03 A6 */	mtlr r0
/* 8046B3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8046B3FC  4E 80 00 20 */	blr 
