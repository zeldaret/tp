lbl_80BF5530:
/* 80BF5530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF5534  7C 08 02 A6 */	mflr r0
/* 80BF5538  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF553C  3C 80 80 BF */	lis r4, l_arcName@ha /* 0x80BF56E4@ha */
/* 80BF5540  38 84 56 E4 */	addi r4, r4, l_arcName@l /* 0x80BF56E4@l */
/* 80BF5544  80 84 00 00 */	lwz r4, 0(r4)
/* 80BF5548  38 63 05 68 */	addi r3, r3, 0x568
/* 80BF554C  4B 43 7A BD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BF5550  38 60 00 01 */	li r3, 1
/* 80BF5554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF5558  7C 08 03 A6 */	mtlr r0
/* 80BF555C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF5560  4E 80 00 20 */	blr 
