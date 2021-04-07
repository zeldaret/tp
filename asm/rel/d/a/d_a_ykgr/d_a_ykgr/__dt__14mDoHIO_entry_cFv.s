lbl_805A8DF4:
/* 805A8DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8DF8  7C 08 02 A6 */	mflr r0
/* 805A8DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A8E04  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A8E08  41 82 00 1C */	beq lbl_805A8E24
/* 805A8E0C  3C A0 80 5B */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x805A90A4@ha */
/* 805A8E10  38 05 90 A4 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x805A90A4@l */
/* 805A8E14  90 1F 00 00 */	stw r0, 0(r31)
/* 805A8E18  7C 80 07 35 */	extsh. r0, r4
/* 805A8E1C  40 81 00 08 */	ble lbl_805A8E24
/* 805A8E20  4B D2 5F 1D */	bl __dl__FPv
lbl_805A8E24:
/* 805A8E24  7F E3 FB 78 */	mr r3, r31
/* 805A8E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A8E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8E30  7C 08 03 A6 */	mtlr r0
/* 805A8E34  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8E38  4E 80 00 20 */	blr 
