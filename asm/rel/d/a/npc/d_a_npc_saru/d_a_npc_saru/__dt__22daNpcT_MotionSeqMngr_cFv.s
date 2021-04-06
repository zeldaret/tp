lbl_80AC3CE8:
/* 80AC3CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3CEC  7C 08 02 A6 */	mflr r0
/* 80AC3CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3CF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC3CFC  41 82 00 1C */	beq lbl_80AC3D18
/* 80AC3D00  3C A0 80 AC */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC4EC8@ha */
/* 80AC3D04  38 05 4E C8 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC4EC8@l */
/* 80AC3D08  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80AC3D0C  7C 80 07 35 */	extsh. r0, r4
/* 80AC3D10  40 81 00 08 */	ble lbl_80AC3D18
/* 80AC3D14  4B 80 B0 29 */	bl __dl__FPv
lbl_80AC3D18:
/* 80AC3D18  7F E3 FB 78 */	mr r3, r31
/* 80AC3D1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3D24  7C 08 03 A6 */	mtlr r0
/* 80AC3D28  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3D2C  4E 80 00 20 */	blr 
