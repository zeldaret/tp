lbl_80C62F44:
/* 80C62F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62F48  7C 08 02 A6 */	mflr r0
/* 80C62F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62F50  3C 80 80 C6 */	lis r4, l_arcName@ha /* 0x80C631BC@ha */
/* 80C62F54  38 84 31 BC */	addi r4, r4, l_arcName@l /* 0x80C631BC@l */
/* 80C62F58  80 84 00 00 */	lwz r4, 0(r4)
/* 80C62F5C  38 63 05 B0 */	addi r3, r3, 0x5b0
/* 80C62F60  4B 3C A0 A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C62F64  38 60 00 01 */	li r3, 1
/* 80C62F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62F6C  7C 08 03 A6 */	mtlr r0
/* 80C62F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62F74  4E 80 00 20 */	blr 
