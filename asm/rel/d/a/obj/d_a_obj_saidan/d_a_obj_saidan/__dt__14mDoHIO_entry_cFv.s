lbl_80CC3DE0:
/* 80CC3DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3DE4  7C 08 02 A6 */	mflr r0
/* 80CC3DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC3DF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC3DF4  41 82 00 1C */	beq lbl_80CC3E10
/* 80CC3DF8  3C A0 80 CC */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80CC4638@ha */
/* 80CC3DFC  38 05 46 38 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80CC4638@l */
/* 80CC3E00  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC3E04  7C 80 07 35 */	extsh. r0, r4
/* 80CC3E08  40 81 00 08 */	ble lbl_80CC3E10
/* 80CC3E0C  4B 60 AF 31 */	bl __dl__FPv
lbl_80CC3E10:
/* 80CC3E10  7F E3 FB 78 */	mr r3, r31
/* 80CC3E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC3E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3E1C  7C 08 03 A6 */	mtlr r0
/* 80CC3E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3E24  4E 80 00 20 */	blr 
