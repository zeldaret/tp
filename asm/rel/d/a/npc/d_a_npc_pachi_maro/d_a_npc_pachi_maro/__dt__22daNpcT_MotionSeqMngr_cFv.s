lbl_80A9B054:
/* 80A9B054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9B058  7C 08 02 A6 */	mflr r0
/* 80A9B05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9B060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9B064  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9B068  41 82 00 1C */	beq lbl_80A9B084
/* 80A9B06C  3C A0 80 AA */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A9B070  38 05 C0 6C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A9B074  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80A9B078  7C 80 07 35 */	extsh. r0, r4
/* 80A9B07C  40 81 00 08 */	ble lbl_80A9B084
/* 80A9B080  4B 83 3C BC */	b __dl__FPv
lbl_80A9B084:
/* 80A9B084  7F E3 FB 78 */	mr r3, r31
/* 80A9B088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9B08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9B090  7C 08 03 A6 */	mtlr r0
/* 80A9B094  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9B098  4E 80 00 20 */	blr 
