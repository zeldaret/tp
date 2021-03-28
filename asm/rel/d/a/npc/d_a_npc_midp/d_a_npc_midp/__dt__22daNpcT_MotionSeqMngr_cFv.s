lbl_80A731A4:
/* 80A731A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A731A8  7C 08 02 A6 */	mflr r0
/* 80A731AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A731B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A731B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A731B8  41 82 00 1C */	beq lbl_80A731D4
/* 80A731BC  3C A0 80 A7 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A731C0  38 05 3C 3C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A731C4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80A731C8  7C 80 07 35 */	extsh. r0, r4
/* 80A731CC  40 81 00 08 */	ble lbl_80A731D4
/* 80A731D0  4B 85 BB 6C */	b __dl__FPv
lbl_80A731D4:
/* 80A731D4  7F E3 FB 78 */	mr r3, r31
/* 80A731D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A731DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A731E0  7C 08 03 A6 */	mtlr r0
/* 80A731E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A731E8  4E 80 00 20 */	blr 
