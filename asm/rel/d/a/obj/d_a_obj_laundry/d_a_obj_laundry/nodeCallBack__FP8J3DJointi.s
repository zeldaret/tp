lbl_80C51844:
/* 80C51844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C51848  7C 08 02 A6 */	mflr r0
/* 80C5184C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C51850  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C51854  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C51858  2C 04 00 00 */	cmpwi r4, 0
/* 80C5185C  41 82 00 0C */	beq lbl_80C51868
/* 80C51860  38 60 00 01 */	li r3, 1
/* 80C51864  48 00 00 80 */	b lbl_80C518E4
lbl_80C51868:
/* 80C51868  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80C5186C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C51870  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80C51874  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80C51878  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80C5187C  38 81 00 08 */	addi r4, r1, 8
/* 80C51880  7F E5 FB 78 */	mr r5, r31
/* 80C51884  4B FF F8 E9 */	bl getJointAngle__10daObjLdy_cFP5csXyzi
/* 80C51888  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80C5188C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C51890  1F FF 00 30 */	mulli r31, r31, 0x30
/* 80C51894  7C 60 FA 14 */	add r3, r0, r31
/* 80C51898  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C5189C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C518A0  4B 6F 4C 10 */	b PSMTXCopy
/* 80C518A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C518A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C518AC  A8 81 00 08 */	lha r4, 8(r1)
/* 80C518B0  4B 3B AA EC */	b mDoMtx_XrotM__FPA4_fs
/* 80C518B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C518B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C518BC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80C518C0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80C518C4  7C 80 FA 14 */	add r4, r0, r31
/* 80C518C8  4B 6F 4B E8 */	b PSMTXCopy
/* 80C518CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C518D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C518D4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80C518D8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80C518DC  4B 6F 4B D4 */	b PSMTXCopy
/* 80C518E0  38 60 00 01 */	li r3, 1
lbl_80C518E4:
/* 80C518E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C518E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C518EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C518F0  7C 08 03 A6 */	mtlr r0
/* 80C518F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C518F8  4E 80 00 20 */	blr 
