lbl_80B45828:
/* 80B45828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4582C  7C 08 02 A6 */	mflr r0
/* 80B45830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B45834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B45838  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4583C  41 82 00 1C */	beq lbl_80B45858
/* 80B45840  3C A0 80 B4 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B46350@ha */
/* 80B45844  38 05 63 50 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B46350@l */
/* 80B45848  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B4584C  7C 80 07 35 */	extsh. r0, r4
/* 80B45850  40 81 00 08 */	ble lbl_80B45858
/* 80B45854  4B 78 94 E9 */	bl __dl__FPv
lbl_80B45858:
/* 80B45858  7F E3 FB 78 */	mr r3, r31
/* 80B4585C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B45860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B45864  7C 08 03 A6 */	mtlr r0
/* 80B45868  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4586C  4E 80 00 20 */	blr 
