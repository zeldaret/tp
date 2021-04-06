lbl_80570C8C:
/* 80570C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570C90  7C 08 02 A6 */	mflr r0
/* 80570C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570C9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80570CA0  41 82 00 1C */	beq lbl_80570CBC
/* 80570CA4  3C A0 80 57 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x8057344C@ha */
/* 80570CA8  38 05 34 4C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x8057344C@l */
/* 80570CAC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80570CB0  7C 80 07 35 */	extsh. r0, r4
/* 80570CB4  40 81 00 08 */	ble lbl_80570CBC
/* 80570CB8  4B D5 E0 85 */	bl __dl__FPv
lbl_80570CBC:
/* 80570CBC  7F E3 FB 78 */	mr r3, r31
/* 80570CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570CC8  7C 08 03 A6 */	mtlr r0
/* 80570CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80570CD0  4E 80 00 20 */	blr 
