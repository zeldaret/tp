lbl_80C49B4C:
/* 80C49B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C49B50  7C 08 02 A6 */	mflr r0
/* 80C49B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C49B58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C49B5C  7C 7F 1B 78 */	mr r31, r3
/* 80C49B60  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C49B64  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80C49B68  54 00 10 3A */	slwi r0, r0, 2
/* 80C49B6C  3C 80 80 C5 */	lis r4, l_arcName@ha /* 0x80C49E80@ha */
/* 80C49B70  38 84 9E 80 */	addi r4, r4, l_arcName@l /* 0x80C49E80@l */
/* 80C49B74  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C49B78  4B 3E 34 91 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C49B7C  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80C49B80  54 00 10 3A */	slwi r0, r0, 2
/* 80C49B84  3C 60 80 C5 */	lis r3, l_anmArcName@ha /* 0x80C49EE4@ha */
/* 80C49B88  38 63 9E E4 */	addi r3, r3, l_anmArcName@l /* 0x80C49EE4@l */
/* 80C49B8C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80C49B90  28 04 00 00 */	cmplwi r4, 0
/* 80C49B94  41 82 00 0C */	beq lbl_80C49BA0
/* 80C49B98  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80C49B9C  4B 3E 34 6D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80C49BA0:
/* 80C49BA0  38 60 00 01 */	li r3, 1
/* 80C49BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C49BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C49BAC  7C 08 03 A6 */	mtlr r0
/* 80C49BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C49BB4  4E 80 00 20 */	blr 
