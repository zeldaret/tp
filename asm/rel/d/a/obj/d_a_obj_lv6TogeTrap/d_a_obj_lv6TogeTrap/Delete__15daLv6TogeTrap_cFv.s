lbl_80C7C3E0:
/* 80C7C3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7C3E4  7C 08 02 A6 */	mflr r0
/* 80C7C3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7C3EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7C3F0  7C 7F 1B 78 */	mr r31, r3
/* 80C7C3F4  38 7F 08 D4 */	addi r3, r31, 0x8d4
/* 80C7C3F8  4B 64 1C 00 */	b deleteObject__14Z2SoundObjBaseFv
/* 80C7C3FC  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C7C400  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 80C7C404  54 00 10 3A */	slwi r0, r0, 2
/* 80C7C408  3C 80 80 C8 */	lis r4, l_resNameIdx@ha
/* 80C7C40C  38 84 C8 1C */	addi r4, r4, l_resNameIdx@l
/* 80C7C410  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C7C414  4B 3B 0B F4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C7C418  38 60 00 01 */	li r3, 1
/* 80C7C41C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7C420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7C424  7C 08 03 A6 */	mtlr r0
/* 80C7C428  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7C42C  4E 80 00 20 */	blr 
