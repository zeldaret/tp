lbl_80A7A5C8:
/* 80A7A5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7A5CC  7C 08 02 A6 */	mflr r0
/* 80A7A5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7A5D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7A5D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A7A5DC  41 82 00 1C */	beq lbl_80A7A5F8
/* 80A7A5E0  3C A0 80 A8 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A7BE7C@ha */
/* 80A7A5E4  38 05 BE 7C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A7BE7C@l */
/* 80A7A5E8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80A7A5EC  7C 80 07 35 */	extsh. r0, r4
/* 80A7A5F0  40 81 00 08 */	ble lbl_80A7A5F8
/* 80A7A5F4  4B 85 47 49 */	bl __dl__FPv
lbl_80A7A5F8:
/* 80A7A5F8  7F E3 FB 78 */	mr r3, r31
/* 80A7A5FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7A600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7A604  7C 08 03 A6 */	mtlr r0
/* 80A7A608  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7A60C  4E 80 00 20 */	blr 
