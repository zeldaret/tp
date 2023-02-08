lbl_80BB5EB4:
/* 80BB5EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB5EB8  7C 08 02 A6 */	mflr r0
/* 80BB5EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB5EC0  3C 80 80 BB */	lis r4, l_arcName@ha /* 0x80BB5FAC@ha */
/* 80BB5EC4  38 84 5F AC */	addi r4, r4, l_arcName@l /* 0x80BB5FAC@l */
/* 80BB5EC8  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB5ECC  38 63 05 F0 */	addi r3, r3, 0x5f0
/* 80BB5ED0  4B 47 71 39 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BB5ED4  38 60 00 01 */	li r3, 1
/* 80BB5ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB5EDC  7C 08 03 A6 */	mtlr r0
/* 80BB5EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB5EE4  4E 80 00 20 */	blr 
