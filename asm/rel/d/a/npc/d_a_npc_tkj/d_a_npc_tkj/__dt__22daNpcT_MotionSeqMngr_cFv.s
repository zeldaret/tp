lbl_80575D54:
/* 80575D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575D58  7C 08 02 A6 */	mflr r0
/* 80575D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575D64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80575D68  41 82 00 1C */	beq lbl_80575D84
/* 80575D6C  3C A0 80 57 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x805768B0@ha */
/* 80575D70  38 05 68 B0 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x805768B0@l */
/* 80575D74  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80575D78  7C 80 07 35 */	extsh. r0, r4
/* 80575D7C  40 81 00 08 */	ble lbl_80575D84
/* 80575D80  4B D5 8F BD */	bl __dl__FPv
lbl_80575D84:
/* 80575D84  7F E3 FB 78 */	mr r3, r31
/* 80575D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575D90  7C 08 03 A6 */	mtlr r0
/* 80575D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80575D98  4E 80 00 20 */	blr 
