lbl_80D20180:
/* 80D20180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D20184  7C 08 02 A6 */	mflr r0
/* 80D20188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2018C  7C 64 1B 78 */	mr r4, r3
/* 80D20190  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80D20194  88 04 05 DC */	lbz r0, 0x5dc(r4)
/* 80D20198  54 00 10 3A */	slwi r0, r0, 2
/* 80D2019C  3C 80 80 D2 */	lis r4, l_resNameIdx@ha
/* 80D201A0  38 84 05 B0 */	addi r4, r4, l_resNameIdx@l
/* 80D201A4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D201A8  4B 30 CE 60 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D201AC  38 60 00 01 */	li r3, 1
/* 80D201B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D201B4  7C 08 03 A6 */	mtlr r0
/* 80D201B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D201BC  4E 80 00 20 */	blr 
