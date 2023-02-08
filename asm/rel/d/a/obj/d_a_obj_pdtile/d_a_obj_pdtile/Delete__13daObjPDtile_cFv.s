lbl_80CAC094:
/* 80CAC094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAC098  7C 08 02 A6 */	mflr r0
/* 80CAC09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAC0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAC0A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAC0A8  41 82 00 08 */	beq lbl_80CAC0B0
/* 80CAC0AC  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80CAC0B0:
/* 80CAC0B0  80 9F 07 BC */	lwz r4, 0x7bc(r31)
/* 80CAC0B4  4B 38 0F 55 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CAC0B8  38 7F 07 DC */	addi r3, r31, 0x7dc
/* 80CAC0BC  4B 61 1F 3D */	bl deleteObject__14Z2SoundObjBaseFv
/* 80CAC0C0  38 60 00 01 */	li r3, 1
/* 80CAC0C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAC0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAC0CC  7C 08 03 A6 */	mtlr r0
/* 80CAC0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAC0D4  4E 80 00 20 */	blr 
