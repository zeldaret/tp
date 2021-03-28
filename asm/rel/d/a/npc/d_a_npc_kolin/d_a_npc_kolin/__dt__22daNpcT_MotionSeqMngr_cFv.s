lbl_80559C18:
/* 80559C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559C1C  7C 08 02 A6 */	mflr r0
/* 80559C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80559C28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80559C2C  41 82 00 1C */	beq lbl_80559C48
/* 80559C30  3C A0 80 56 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80559C34  38 05 B2 AC */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80559C38  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80559C3C  7C 80 07 35 */	extsh. r0, r4
/* 80559C40  40 81 00 08 */	ble lbl_80559C48
/* 80559C44  4B D7 50 F8 */	b __dl__FPv
lbl_80559C48:
/* 80559C48  7F E3 FB 78 */	mr r3, r31
/* 80559C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80559C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559C54  7C 08 03 A6 */	mtlr r0
/* 80559C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80559C5C  4E 80 00 20 */	blr 
