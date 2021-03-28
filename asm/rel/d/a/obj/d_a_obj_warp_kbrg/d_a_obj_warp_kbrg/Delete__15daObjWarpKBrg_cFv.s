lbl_80D29448:
/* 80D29448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2944C  7C 08 02 A6 */	mflr r0
/* 80D29450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D29454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D29458  7C 7F 1B 78 */	mr r31, r3
/* 80D2945C  4B FF FC FD */	bl endSrcEffect__15daObjWarpKBrg_cFv
/* 80D29460  7F E3 FB 78 */	mr r3, r31
/* 80D29464  4B FF FD 99 */	bl endDstEffect__15daObjWarpKBrg_cFv
/* 80D29468  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D2946C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D29470  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D29474  3C 80 80 D3 */	lis r4, l_arcName@ha
/* 80D29478  38 84 97 30 */	addi r4, r4, l_arcName@l
/* 80D2947C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D29480  4B 30 3B 88 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D29484  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80D29488  3C 80 80 D3 */	lis r4, l_evArcName@ha
/* 80D2948C  38 84 97 38 */	addi r4, r4, l_evArcName@l
/* 80D29490  80 84 00 00 */	lwz r4, 0(r4)
/* 80D29494  4B 30 3B 74 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D29498  38 60 00 01 */	li r3, 1
/* 80D2949C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D294A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D294A4  7C 08 03 A6 */	mtlr r0
/* 80D294A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D294AC  4E 80 00 20 */	blr 
