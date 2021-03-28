lbl_80CF7BA8:
/* 80CF7BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF7BAC  7C 08 02 A6 */	mflr r0
/* 80CF7BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7BB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7BB8  7C 7F 1B 78 */	mr r31, r3
/* 80CF7BBC  38 7F 0B 00 */	addi r3, r31, 0xb00
/* 80CF7BC0  4B 5C 64 38 */	b deleteObject__14Z2SoundObjBaseFv
/* 80CF7BC4  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80CF7BC8  3C 80 80 D0 */	lis r4, l_arcName@ha
/* 80CF7BCC  38 84 84 88 */	addi r4, r4, l_arcName@l
/* 80CF7BD0  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF7BD4  4B 33 54 34 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CF7BD8  38 60 00 01 */	li r3, 1
/* 80CF7BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7BE4  7C 08 03 A6 */	mtlr r0
/* 80CF7BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7BEC  4E 80 00 20 */	blr 
