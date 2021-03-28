lbl_8079CE94:
/* 8079CE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079CE98  7C 08 02 A6 */	mflr r0
/* 8079CE9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079CEA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079CEA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8079CEA8  41 82 00 40 */	beq lbl_8079CEE8
/* 8079CEAC  3C 60 80 7A */	lis r3, __vt__13daE_SM2_HIO_c@ha
/* 8079CEB0  38 03 DB 58 */	addi r0, r3, __vt__13daE_SM2_HIO_c@l
/* 8079CEB4  90 1F 00 00 */	stw r0, 0(r31)
/* 8079CEB8  41 82 00 20 */	beq lbl_8079CED8
/* 8079CEBC  3C 60 80 7A */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 8079CEC0  38 03 DB 64 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 8079CEC4  90 1F 00 00 */	stw r0, 0(r31)
/* 8079CEC8  41 82 00 10 */	beq lbl_8079CED8
/* 8079CECC  3C 60 80 7A */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 8079CED0  38 03 DB 70 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 8079CED4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8079CED8:
/* 8079CED8  7C 80 07 35 */	extsh. r0, r4
/* 8079CEDC  40 81 00 0C */	ble lbl_8079CEE8
/* 8079CEE0  7F E3 FB 78 */	mr r3, r31
/* 8079CEE4  4B B3 1E 58 */	b __dl__FPv
lbl_8079CEE8:
/* 8079CEE8  7F E3 FB 78 */	mr r3, r31
/* 8079CEEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079CEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079CEF4  7C 08 03 A6 */	mtlr r0
/* 8079CEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8079CEFC  4E 80 00 20 */	blr 
