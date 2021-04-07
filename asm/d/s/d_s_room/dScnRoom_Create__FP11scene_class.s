lbl_8025BB48:
/* 8025BB48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025BB4C  7C 08 02 A6 */	mflr r0
/* 8025BB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025BB54  7C 65 1B 78 */	mr r5, r3
/* 8025BB58  38 65 01 C4 */	addi r3, r5, 0x1c4
/* 8025BB5C  3C 80 80 3C */	lis r4, l_method@ha /* 0x803C3260@ha */
/* 8025BB60  38 84 32 60 */	addi r4, r4, l_method@l /* 0x803C3260@l */
/* 8025BB64  4B DD 3F BD */	bl dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv
/* 8025BB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025BB6C  7C 08 03 A6 */	mtlr r0
/* 8025BB70  38 21 00 10 */	addi r1, r1, 0x10
/* 8025BB74  4E 80 00 20 */	blr 
