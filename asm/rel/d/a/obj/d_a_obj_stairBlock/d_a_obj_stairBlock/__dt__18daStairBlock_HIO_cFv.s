lbl_80CE8CDC:
/* 80CE8CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8CE0  7C 08 02 A6 */	mflr r0
/* 80CE8CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE8CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE8CEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE8CF0  41 82 00 30 */	beq lbl_80CE8D20
/* 80CE8CF4  3C 60 80 CF */	lis r3, __vt__18daStairBlock_HIO_c@ha /* 0x80CE8FA4@ha */
/* 80CE8CF8  38 03 8F A4 */	addi r0, r3, __vt__18daStairBlock_HIO_c@l /* 0x80CE8FA4@l */
/* 80CE8CFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE8D00  41 82 00 10 */	beq lbl_80CE8D10
/* 80CE8D04  3C 60 80 CF */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80CE8FB0@ha */
/* 80CE8D08  38 03 8F B0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80CE8FB0@l */
/* 80CE8D0C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CE8D10:
/* 80CE8D10  7C 80 07 35 */	extsh. r0, r4
/* 80CE8D14  40 81 00 0C */	ble lbl_80CE8D20
/* 80CE8D18  7F E3 FB 78 */	mr r3, r31
/* 80CE8D1C  4B 5E 60 21 */	bl __dl__FPv
lbl_80CE8D20:
/* 80CE8D20  7F E3 FB 78 */	mr r3, r31
/* 80CE8D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE8D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8D2C  7C 08 03 A6 */	mtlr r0
/* 80CE8D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8D34  4E 80 00 20 */	blr 
