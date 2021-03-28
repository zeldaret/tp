lbl_80593D18:
/* 80593D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593D1C  7C 08 02 A6 */	mflr r0
/* 80593D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593D24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80593D28  7C 7F 1B 78 */	mr r31, r3
/* 80593D2C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80593D30  88 1F 05 B9 */	lbz r0, 0x5b9(r31)
/* 80593D34  54 00 10 3A */	slwi r0, r0, 2
/* 80593D38  3C 80 80 59 */	lis r4, l_arcName@ha
/* 80593D3C  38 84 3F 88 */	addi r4, r4, l_arcName@l
/* 80593D40  7C 84 00 2E */	lwzx r4, r4, r0
/* 80593D44  4B A9 92 C4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80593D48  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80593D4C  3C 80 80 59 */	lis r4, l_keyArcName@ha
/* 80593D50  38 84 3F A0 */	addi r4, r4, l_keyArcName@l
/* 80593D54  80 84 00 00 */	lwz r4, 0(r4)
/* 80593D58  4B A9 92 B0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80593D5C  38 60 00 01 */	li r3, 1
/* 80593D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80593D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593D68  7C 08 03 A6 */	mtlr r0
/* 80593D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80593D70  4E 80 00 20 */	blr 
