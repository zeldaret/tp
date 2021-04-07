lbl_8073C80C:
/* 8073C80C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073C810  7C 08 02 A6 */	mflr r0
/* 8073C814  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073C818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073C81C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8073C820  41 82 00 30 */	beq lbl_8073C850
/* 8073C824  3C 60 80 74 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8073D204@ha */
/* 8073C828  38 03 D2 04 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8073D204@l */
/* 8073C82C  90 1F 00 00 */	stw r0, 0(r31)
/* 8073C830  41 82 00 10 */	beq lbl_8073C840
/* 8073C834  3C 60 80 74 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8073D1F8@ha */
/* 8073C838  38 03 D1 F8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8073D1F8@l */
/* 8073C83C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8073C840:
/* 8073C840  7C 80 07 35 */	extsh. r0, r4
/* 8073C844  40 81 00 0C */	ble lbl_8073C850
/* 8073C848  7F E3 FB 78 */	mr r3, r31
/* 8073C84C  4B B9 24 F1 */	bl __dl__FPv
lbl_8073C850:
/* 8073C850  7F E3 FB 78 */	mr r3, r31
/* 8073C854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073C858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073C85C  7C 08 03 A6 */	mtlr r0
/* 8073C860  38 21 00 10 */	addi r1, r1, 0x10
/* 8073C864  4E 80 00 20 */	blr 
