lbl_801F1CEC:
/* 801F1CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1CF0  7C 08 02 A6 */	mflr r0
/* 801F1CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1CF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1CFC  7C 7F 1B 78 */	mr r31, r3
/* 801F1D00  48 00 34 91 */	bl errorTxtChangeAnm__12dMenu_save_cFv
/* 801F1D04  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F1D08  28 00 00 01 */	cmplwi r0, 1
/* 801F1D0C  40 82 00 34 */	bne lbl_801F1D40
/* 801F1D10  3C 60 80 3C */	lis r3, lit_4901@ha
/* 801F1D14  38 83 E7 58 */	addi r4, r3, lit_4901@l
/* 801F1D18  80 64 00 00 */	lwz r3, 0(r4)
/* 801F1D1C  80 04 00 04 */	lwz r0, 4(r4)
/* 801F1D20  90 7F 01 C4 */	stw r3, 0x1c4(r31)
/* 801F1D24  90 1F 01 C8 */	stw r0, 0x1c8(r31)
/* 801F1D28  80 04 00 08 */	lwz r0, 8(r4)
/* 801F1D2C  90 1F 01 CC */	stw r0, 0x1cc(r31)
/* 801F1D30  38 00 00 0B */	li r0, 0xb
/* 801F1D34  98 1F 01 B5 */	stb r0, 0x1b5(r31)
/* 801F1D38  38 00 00 09 */	li r0, 9
/* 801F1D3C  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F1D40:
/* 801F1D40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1D48  7C 08 03 A6 */	mtlr r0
/* 801F1D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1D50  4E 80 00 20 */	blr 
