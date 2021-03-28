lbl_80C4E254:
/* 80C4E254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4E258  7C 08 02 A6 */	mflr r0
/* 80C4E25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4E260  7C 64 1B 79 */	or. r4, r3, r3
/* 80C4E264  41 82 00 08 */	beq lbl_80C4E26C
/* 80C4E268  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C4E26C:
/* 80C4E26C  80 04 06 20 */	lwz r0, 0x620(r4)
/* 80C4E270  54 00 10 3A */	slwi r0, r0, 2
/* 80C4E274  3C 80 80 C5 */	lis r4, l_arcName@ha
/* 80C4E278  38 84 E8 70 */	addi r4, r4, l_arcName@l
/* 80C4E27C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C4E280  4B 3D ED 88 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C4E284  38 60 00 01 */	li r3, 1
/* 80C4E288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4E28C  7C 08 03 A6 */	mtlr r0
/* 80C4E290  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4E294  4E 80 00 20 */	blr 
