lbl_80D5DCB0:
/* 80D5DCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DCB4  7C 08 02 A6 */	mflr r0
/* 80D5DCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DCBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5DCC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5DCC4  41 82 00 30 */	beq lbl_80D5DCF4
/* 80D5DCC8  3C 60 80 D6 */	lis r3, __vt__17daTagPoFire_HIO_c@ha /* 0x80D5DDAC@ha */
/* 80D5DCCC  38 03 DD AC */	addi r0, r3, __vt__17daTagPoFire_HIO_c@l /* 0x80D5DDAC@l */
/* 80D5DCD0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D5DCD4  41 82 00 10 */	beq lbl_80D5DCE4
/* 80D5DCD8  3C 60 80 D6 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80D5DDB8@ha */
/* 80D5DCDC  38 03 DD B8 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80D5DDB8@l */
/* 80D5DCE0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D5DCE4:
/* 80D5DCE4  7C 80 07 35 */	extsh. r0, r4
/* 80D5DCE8  40 81 00 0C */	ble lbl_80D5DCF4
/* 80D5DCEC  7F E3 FB 78 */	mr r3, r31
/* 80D5DCF0  4B 57 10 4D */	bl __dl__FPv
lbl_80D5DCF4:
/* 80D5DCF4  7F E3 FB 78 */	mr r3, r31
/* 80D5DCF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5DCFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DD00  7C 08 03 A6 */	mtlr r0
/* 80D5DD04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DD08  4E 80 00 20 */	blr 
