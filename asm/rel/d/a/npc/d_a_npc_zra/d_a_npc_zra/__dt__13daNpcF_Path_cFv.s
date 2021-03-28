lbl_80B7EFF8:
/* 80B7EFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7EFFC  7C 08 02 A6 */	mflr r0
/* 80B7F000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7F008  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7F00C  41 82 00 34 */	beq lbl_80B7F040
/* 80B7F010  3C 60 80 B9 */	lis r3, __vt__13daNpcF_Path_c@ha
/* 80B7F014  38 03 DA 1C */	addi r0, r3, __vt__13daNpcF_Path_c@l
/* 80B7F018  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B7F01C  34 1F 00 20 */	addic. r0, r31, 0x20
/* 80B7F020  41 82 00 10 */	beq lbl_80B7F030
/* 80B7F024  3C 60 80 B9 */	lis r3, __vt__16daNpcF_SPCurve_c@ha
/* 80B7F028  38 03 DA 10 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l
/* 80B7F02C  90 1F 06 28 */	stw r0, 0x628(r31)
lbl_80B7F030:
/* 80B7F030  7C 80 07 35 */	extsh. r0, r4
/* 80B7F034  40 81 00 0C */	ble lbl_80B7F040
/* 80B7F038  7F E3 FB 78 */	mr r3, r31
/* 80B7F03C  4B 74 FD 00 */	b __dl__FPv
lbl_80B7F040:
/* 80B7F040  7F E3 FB 78 */	mr r3, r31
/* 80B7F044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7F048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7F04C  7C 08 03 A6 */	mtlr r0
/* 80B7F050  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7F054  4E 80 00 20 */	blr 
