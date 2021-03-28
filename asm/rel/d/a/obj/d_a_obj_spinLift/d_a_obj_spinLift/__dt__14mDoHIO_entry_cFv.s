lbl_80CE3DE4:
/* 80CE3DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE3DE8  7C 08 02 A6 */	mflr r0
/* 80CE3DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE3DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE3DF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE3DF8  41 82 00 1C */	beq lbl_80CE3E14
/* 80CE3DFC  3C A0 80 CE */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80CE3E00  38 05 4E B0 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80CE3E04  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE3E08  7C 80 07 35 */	extsh. r0, r4
/* 80CE3E0C  40 81 00 08 */	ble lbl_80CE3E14
/* 80CE3E10  4B 5E AF 2C */	b __dl__FPv
lbl_80CE3E14:
/* 80CE3E14  7F E3 FB 78 */	mr r3, r31
/* 80CE3E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE3E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE3E20  7C 08 03 A6 */	mtlr r0
/* 80CE3E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE3E28  4E 80 00 20 */	blr 
