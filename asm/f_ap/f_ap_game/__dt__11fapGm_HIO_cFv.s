lbl_80018AE0:
/* 80018AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018AE4  7C 08 02 A6 */	mflr r0
/* 80018AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018AEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80018AF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80018AF4  41 82 00 1C */	beq lbl_80018B10
/* 80018AF8  3C A0 80 3A */	lis r5, __vt__11fapGm_HIO_c@ha
/* 80018AFC  38 05 35 A0 */	addi r0, r5, __vt__11fapGm_HIO_c@l
/* 80018B00  90 1F 00 00 */	stw r0, 0(r31)
/* 80018B04  7C 80 07 35 */	extsh. r0, r4
/* 80018B08  40 81 00 08 */	ble lbl_80018B10
/* 80018B0C  48 2B 62 31 */	bl __dl__FPv
lbl_80018B10:
/* 80018B10  7F E3 FB 78 */	mr r3, r31
/* 80018B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018B1C  7C 08 03 A6 */	mtlr r0
/* 80018B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80018B24  4E 80 00 20 */	blr 
