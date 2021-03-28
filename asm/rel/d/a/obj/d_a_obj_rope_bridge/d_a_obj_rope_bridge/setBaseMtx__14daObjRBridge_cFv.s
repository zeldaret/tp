lbl_80595ED8:
/* 80595ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595EDC  7C 08 02 A6 */	mflr r0
/* 80595EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595EE8  7C 7F 1B 78 */	mr r31, r3
/* 80595EEC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80595EF0  4B A7 6E 74 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80595EF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80595EF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80595EFC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80595F00  4B A7 65 34 */	b mDoMtx_YrotM__FPA4_fs
/* 80595F04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80595F08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80595F0C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80595F10  4B A7 64 8C */	b mDoMtx_XrotM__FPA4_fs
/* 80595F14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80595F18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80595F1C  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80595F20  38 84 00 24 */	addi r4, r4, 0x24
/* 80595F24  4B DB 05 8C */	b PSMTXCopy
/* 80595F28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80595F2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80595F30  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80595F34  4B DB 05 7C */	b PSMTXCopy
/* 80595F38  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80595F3C  28 00 00 00 */	cmplwi r0, 0
/* 80595F40  41 82 00 30 */	beq lbl_80595F70
/* 80595F44  38 7F 0B 0C */	addi r3, r31, 0xb0c
/* 80595F48  4B A7 6E 1C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80595F4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80595F50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80595F54  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80595F58  4B A7 64 DC */	b mDoMtx_YrotM__FPA4_fs
/* 80595F5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80595F60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80595F64  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80595F68  38 84 00 24 */	addi r4, r4, 0x24
/* 80595F6C  4B DB 05 44 */	b PSMTXCopy
lbl_80595F70:
/* 80595F70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595F78  7C 08 03 A6 */	mtlr r0
/* 80595F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80595F80  4E 80 00 20 */	blr 
