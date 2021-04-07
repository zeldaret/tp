lbl_80A6F518:
/* 80A6F518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6F51C  7C 08 02 A6 */	mflr r0
/* 80A6F520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6F524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6F528  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6F52C  41 82 00 1C */	beq lbl_80A6F548
/* 80A6F530  3C A0 80 A7 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A70A40@ha */
/* 80A6F534  38 05 0A 40 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A70A40@l */
/* 80A6F538  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80A6F53C  7C 80 07 35 */	extsh. r0, r4
/* 80A6F540  40 81 00 08 */	ble lbl_80A6F548
/* 80A6F544  4B 85 F7 F9 */	bl __dl__FPv
lbl_80A6F548:
/* 80A6F548  7F E3 FB 78 */	mr r3, r31
/* 80A6F54C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6F550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6F554  7C 08 03 A6 */	mtlr r0
/* 80A6F558  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6F55C  4E 80 00 20 */	blr 
