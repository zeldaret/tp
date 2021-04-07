lbl_80D0E1F4:
/* 80D0E1F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E1F8  7C 08 02 A6 */	mflr r0
/* 80D0E1FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E200  3C 80 80 D1 */	lis r4, l_arcName@ha /* 0x80D0E678@ha */
/* 80D0E204  38 84 E6 78 */	addi r4, r4, l_arcName@l /* 0x80D0E678@l */
/* 80D0E208  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0E20C  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80D0E210  4B 31 ED F9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D0E214  38 60 00 01 */	li r3, 1
/* 80D0E218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E21C  7C 08 03 A6 */	mtlr r0
/* 80D0E220  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E224  4E 80 00 20 */	blr 
