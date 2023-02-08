lbl_80A3C4A8:
/* 80A3C4A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C4AC  7C 08 02 A6 */	mflr r0
/* 80A3C4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C4B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C4B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3C4BC  41 82 00 1C */	beq lbl_80A3C4D8
/* 80A3C4C0  3C A0 80 A4 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A431EC@ha */
/* 80A3C4C4  38 05 31 EC */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A431EC@l */
/* 80A3C4C8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80A3C4CC  7C 80 07 35 */	extsh. r0, r4
/* 80A3C4D0  40 81 00 08 */	ble lbl_80A3C4D8
/* 80A3C4D4  4B 89 28 69 */	bl __dl__FPv
lbl_80A3C4D8:
/* 80A3C4D8  7F E3 FB 78 */	mr r3, r31
/* 80A3C4DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C4E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C4E4  7C 08 03 A6 */	mtlr r0
/* 80A3C4E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C4EC  4E 80 00 20 */	blr 
