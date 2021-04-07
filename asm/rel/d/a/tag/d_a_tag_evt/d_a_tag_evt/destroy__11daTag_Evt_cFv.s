lbl_8048B9D8:
/* 8048B9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B9DC  7C 08 02 A6 */	mflr r0
/* 8048B9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B9E4  3C 80 80 49 */	lis r4, l_resFileName@ha /* 0x8048C404@ha */
/* 8048B9E8  38 84 C4 04 */	addi r4, r4, l_resFileName@l /* 0x8048C404@l */
/* 8048B9EC  80 84 00 00 */	lwz r4, 0(r4)
/* 8048B9F0  38 63 05 C4 */	addi r3, r3, 0x5c4
/* 8048B9F4  4B BA 16 15 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8048B9F8  38 60 00 01 */	li r3, 1
/* 8048B9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048BA00  7C 08 03 A6 */	mtlr r0
/* 8048BA04  38 21 00 10 */	addi r1, r1, 0x10
/* 8048BA08  4E 80 00 20 */	blr 
