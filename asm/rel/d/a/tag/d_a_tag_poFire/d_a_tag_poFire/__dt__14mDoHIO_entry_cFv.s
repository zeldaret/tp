lbl_80D5DAF0:
/* 80D5DAF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DAF4  7C 08 02 A6 */	mflr r0
/* 80D5DAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DAFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5DB00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5DB04  41 82 00 1C */	beq lbl_80D5DB20
/* 80D5DB08  3C A0 80 D6 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80D5DDB8@ha */
/* 80D5DB0C  38 05 DD B8 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80D5DDB8@l */
/* 80D5DB10  90 1F 00 00 */	stw r0, 0(r31)
/* 80D5DB14  7C 80 07 35 */	extsh. r0, r4
/* 80D5DB18  40 81 00 08 */	ble lbl_80D5DB20
/* 80D5DB1C  4B 57 12 21 */	bl __dl__FPv
lbl_80D5DB20:
/* 80D5DB20  7F E3 FB 78 */	mr r3, r31
/* 80D5DB24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5DB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DB2C  7C 08 03 A6 */	mtlr r0
/* 80D5DB30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DB34  4E 80 00 20 */	blr 
