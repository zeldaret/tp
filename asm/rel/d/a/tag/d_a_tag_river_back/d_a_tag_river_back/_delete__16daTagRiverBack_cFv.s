lbl_80D5F88C:
/* 80D5F88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F890  7C 08 02 A6 */	mflr r0
/* 80D5F894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F898  3C 80 80 D6 */	lis r4, l_arcName@ha
/* 80D5F89C  38 84 F9 A0 */	addi r4, r4, l_arcName@l
/* 80D5F8A0  80 84 00 00 */	lwz r4, 0(r4)
/* 80D5F8A4  38 63 05 68 */	addi r3, r3, 0x568
/* 80D5F8A8  4B 2C D7 60 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D5F8AC  38 60 00 01 */	li r3, 1
/* 80D5F8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F8B4  7C 08 03 A6 */	mtlr r0
/* 80D5F8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F8BC  4E 80 00 20 */	blr 
