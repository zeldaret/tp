lbl_8058CEA8:
/* 8058CEA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058CEAC  7C 08 02 A6 */	mflr r0
/* 8058CEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CEB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058CEB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058CEBC  41 82 00 30 */	beq lbl_8058CEEC
/* 8058CEC0  3C 60 80 59 */	lis r3, __vt__16daKtOnFire_HIO_c@ha
/* 8058CEC4  38 03 D0 A0 */	addi r0, r3, __vt__16daKtOnFire_HIO_c@l
/* 8058CEC8  90 1F 00 00 */	stw r0, 0(r31)
/* 8058CECC  41 82 00 10 */	beq lbl_8058CEDC
/* 8058CED0  3C 60 80 59 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 8058CED4  38 03 D0 AC */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 8058CED8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8058CEDC:
/* 8058CEDC  7C 80 07 35 */	extsh. r0, r4
/* 8058CEE0  40 81 00 0C */	ble lbl_8058CEEC
/* 8058CEE4  7F E3 FB 78 */	mr r3, r31
/* 8058CEE8  4B D4 1E 54 */	b __dl__FPv
lbl_8058CEEC:
/* 8058CEEC  7F E3 FB 78 */	mr r3, r31
/* 8058CEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058CEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058CEF8  7C 08 03 A6 */	mtlr r0
/* 8058CEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058CF00  4E 80 00 20 */	blr 
