lbl_80D00D14:
/* 80D00D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00D18  7C 08 02 A6 */	mflr r0
/* 80D00D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D00D24  7C 7F 1B 78 */	mr r31, r3
/* 80D00D28  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D00D2C  4B 30 C0 39 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D00D30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D00D34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00D38  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D00D3C  4B 30 B6 F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D00D40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D00D44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00D48  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D00D4C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D00D50  4B 64 57 61 */	bl PSMTXCopy
/* 80D00D54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D00D58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D00D5C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80D00D60  4B 64 57 51 */	bl PSMTXCopy
/* 80D00D64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D00D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00D6C  7C 08 03 A6 */	mtlr r0
/* 80D00D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00D74  4E 80 00 20 */	blr 
