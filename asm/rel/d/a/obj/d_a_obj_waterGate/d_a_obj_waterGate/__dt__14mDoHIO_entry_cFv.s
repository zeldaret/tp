lbl_80D2BBC4:
/* 80D2BBC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2BBC8  7C 08 02 A6 */	mflr r0
/* 80D2BBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2BBD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2BBD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2BBD8  41 82 00 1C */	beq lbl_80D2BBF4
/* 80D2BBDC  3C A0 80 D3 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80D2C59C@ha */
/* 80D2BBE0  38 05 C5 9C */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80D2C59C@l */
/* 80D2BBE4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2BBE8  7C 80 07 35 */	extsh. r0, r4
/* 80D2BBEC  40 81 00 08 */	ble lbl_80D2BBF4
/* 80D2BBF0  4B 5A 31 4D */	bl __dl__FPv
lbl_80D2BBF4:
/* 80D2BBF4  7F E3 FB 78 */	mr r3, r31
/* 80D2BBF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2BBFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2BC00  7C 08 03 A6 */	mtlr r0
/* 80D2BC04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2BC08  4E 80 00 20 */	blr 
