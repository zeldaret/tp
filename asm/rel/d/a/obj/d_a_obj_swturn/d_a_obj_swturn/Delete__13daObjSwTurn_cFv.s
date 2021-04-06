lbl_80D01F58:
/* 80D01F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D01F5C  7C 08 02 A6 */	mflr r0
/* 80D01F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D01F64  7C 64 1B 78 */	mr r4, r3
/* 80D01F68  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80D01F6C  88 04 05 AC */	lbz r0, 0x5ac(r4)
/* 80D01F70  54 00 10 3A */	slwi r0, r0, 2
/* 80D01F74  3C 80 80 D0 */	lis r4, l_arcName@ha /* 0x80D020EC@ha */
/* 80D01F78  38 84 20 EC */	addi r4, r4, l_arcName@l /* 0x80D020EC@l */
/* 80D01F7C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D01F80  4B 32 B0 89 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D01F84  38 60 00 01 */	li r3, 1
/* 80D01F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D01F8C  7C 08 03 A6 */	mtlr r0
/* 80D01F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80D01F94  4E 80 00 20 */	blr 
