lbl_80AC6C2C:
/* 80AC6C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6C30  7C 08 02 A6 */	mflr r0
/* 80AC6C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6C38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC6C3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC6C40  41 82 00 1C */	beq lbl_80AC6C5C
/* 80AC6C44  3C A0 80 AC */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC7340@ha */
/* 80AC6C48  38 05 73 40 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC7340@l */
/* 80AC6C4C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80AC6C50  7C 80 07 35 */	extsh. r0, r4
/* 80AC6C54  40 81 00 08 */	ble lbl_80AC6C5C
/* 80AC6C58  4B 80 80 E5 */	bl __dl__FPv
lbl_80AC6C5C:
/* 80AC6C5C  7F E3 FB 78 */	mr r3, r31
/* 80AC6C60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC6C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6C68  7C 08 03 A6 */	mtlr r0
/* 80AC6C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6C70  4E 80 00 20 */	blr 
