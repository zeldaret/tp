lbl_80D20FBC:
/* 80D20FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D20FC0  7C 08 02 A6 */	mflr r0
/* 80D20FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D20FCC  7C 7F 1B 78 */	mr r31, r3
/* 80D20FD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D20FD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D20FD8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D20FDC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D20FE0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D20FE4  4B 62 59 04 */	b PSMTXTrans
/* 80D20FE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D20FEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D20FF0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D20FF4  4B 2E B4 40 */	b mDoMtx_YrotM__FPA4_fs
/* 80D20FF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D20FFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D21000  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D21004  38 84 00 24 */	addi r4, r4, 0x24
/* 80D21008  4B 62 54 A8 */	b PSMTXCopy
/* 80D2100C  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80D21010  28 00 00 00 */	cmplwi r0, 0
/* 80D21014  41 82 00 1C */	beq lbl_80D21030
/* 80D21018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D2101C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D21020  38 9F 05 80 */	addi r4, r31, 0x580
/* 80D21024  4B 62 54 8C */	b PSMTXCopy
/* 80D21028  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D2102C  4B 35 A9 94 */	b Move__4dBgWFv
lbl_80D21030:
/* 80D21030  38 60 00 01 */	li r3, 1
/* 80D21034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D21038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2103C  7C 08 03 A6 */	mtlr r0
/* 80D21040  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21044  4E 80 00 20 */	blr 
