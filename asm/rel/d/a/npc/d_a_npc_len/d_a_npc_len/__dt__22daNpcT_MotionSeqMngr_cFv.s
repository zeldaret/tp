lbl_80A68604:
/* 80A68604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A68608  7C 08 02 A6 */	mflr r0
/* 80A6860C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A68610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A68614  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A68618  41 82 00 1C */	beq lbl_80A68634
/* 80A6861C  3C A0 80 A7 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A68620  38 05 99 34 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A68624  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80A68628  7C 80 07 35 */	extsh. r0, r4
/* 80A6862C  40 81 00 08 */	ble lbl_80A68634
/* 80A68630  4B 86 67 0C */	b __dl__FPv
lbl_80A68634:
/* 80A68634  7F E3 FB 78 */	mr r3, r31
/* 80A68638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6863C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A68640  7C 08 03 A6 */	mtlr r0
/* 80A68644  38 21 00 10 */	addi r1, r1, 0x10
/* 80A68648  4E 80 00 20 */	blr 
