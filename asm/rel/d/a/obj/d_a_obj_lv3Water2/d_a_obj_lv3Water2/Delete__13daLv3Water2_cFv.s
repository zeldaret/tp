lbl_80C5AEFC:
/* 80C5AEFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5AF00  7C 08 02 A6 */	mflr r0
/* 80C5AF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5AF08  7C 64 1B 78 */	mr r4, r3
/* 80C5AF0C  38 64 05 B8 */	addi r3, r4, 0x5b8
/* 80C5AF10  88 04 05 DD */	lbz r0, 0x5dd(r4)
/* 80C5AF14  54 00 10 3A */	slwi r0, r0, 2
/* 80C5AF18  3C 80 80 C6 */	lis r4, l_resNameIdx@ha
/* 80C5AF1C  38 84 B3 C4 */	addi r4, r4, l_resNameIdx@l
/* 80C5AF20  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C5AF24  4B 3D 20 E4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C5AF28  38 60 00 01 */	li r3, 1
/* 80C5AF2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5AF30  7C 08 03 A6 */	mtlr r0
/* 80C5AF34  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5AF38  4E 80 00 20 */	blr 
