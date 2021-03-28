lbl_80598ECC:
/* 80598ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598ED0  7C 08 02 A6 */	mflr r0
/* 80598ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80598EDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80598EE0  41 82 00 30 */	beq lbl_80598F10
/* 80598EE4  3C 60 80 5A */	lis r3, __vt__17daSwShutter_HIO_c@ha
/* 80598EE8  38 03 90 C8 */	addi r0, r3, __vt__17daSwShutter_HIO_c@l
/* 80598EEC  90 1F 00 00 */	stw r0, 0(r31)
/* 80598EF0  41 82 00 10 */	beq lbl_80598F00
/* 80598EF4  3C 60 80 5A */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80598EF8  38 03 90 D4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80598EFC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80598F00:
/* 80598F00  7C 80 07 35 */	extsh. r0, r4
/* 80598F04  40 81 00 0C */	ble lbl_80598F10
/* 80598F08  7F E3 FB 78 */	mr r3, r31
/* 80598F0C  4B D3 5E 30 */	b __dl__FPv
lbl_80598F10:
/* 80598F10  7F E3 FB 78 */	mr r3, r31
/* 80598F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80598F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598F1C  7C 08 03 A6 */	mtlr r0
/* 80598F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80598F24  4E 80 00 20 */	blr 
