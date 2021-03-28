lbl_80563F14:
/* 80563F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563F18  7C 08 02 A6 */	mflr r0
/* 80563F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563F24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80563F28  41 82 00 1C */	beq lbl_80563F44
/* 80563F2C  3C A0 80 56 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80563F30  38 05 5C 68 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80563F34  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80563F38  7C 80 07 35 */	extsh. r0, r4
/* 80563F3C  40 81 00 08 */	ble lbl_80563F44
/* 80563F40  4B D6 AD FC */	b __dl__FPv
lbl_80563F44:
/* 80563F44  7F E3 FB 78 */	mr r3, r31
/* 80563F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563F50  7C 08 03 A6 */	mtlr r0
/* 80563F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80563F58  4E 80 00 20 */	blr 
