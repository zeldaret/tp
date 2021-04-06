lbl_801CEB1C:
/* 801CEB1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CEB20  7C 08 02 A6 */	mflr r0
/* 801CEB24  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CEB28  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 801CEB2C  39 61 00 28 */	addi r11, r1, 0x28
/* 801CEB30  48 19 36 A9 */	bl _savegpr_28
/* 801CEB34  7C 7F 1B 78 */	mr r31, r3
/* 801CEB38  FF E0 08 90 */	fmr f31, f1
/* 801CEB3C  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801CEB40  28 00 00 00 */	cmplwi r0, 0
/* 801CEB44  41 82 00 78 */	beq lbl_801CEBBC
/* 801CEB48  4B E6 03 19 */	bl dComIfGp_getNowLevel__Fv
/* 801CEB4C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801CEB50  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 801CEB54  7C 00 18 40 */	cmplw r0, r3
/* 801CEB58  40 82 00 64 */	bne lbl_801CEBBC
/* 801CEB5C  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 801CEB60  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 801CEB64  7C 03 00 00 */	cmpw r3, r0
/* 801CEB68  40 82 00 54 */	bne lbl_801CEBBC
/* 801CEB6C  3B 80 00 00 */	li r28, 0
/* 801CEB70  3B C0 00 00 */	li r30, 0
/* 801CEB74  3C 60 80 39 */	lis r3, palNo@ha /* 0x803961B0@ha */
/* 801CEB78  3B A3 61 B0 */	addi r29, r3, palNo@l /* 0x803961B0@l */
lbl_801CEB7C:
/* 801CEB7C  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 801CEB80  7C 80 F2 14 */	add r4, r0, r30
/* 801CEB84  38 64 00 E8 */	addi r3, r4, 0xe8
/* 801CEB88  38 84 01 08 */	addi r4, r4, 0x108
/* 801CEB8C  FC 20 F8 90 */	fmr f1, f31
/* 801CEB90  38 A1 00 08 */	addi r5, r1, 8
/* 801CEB94  4B FF F5 39 */	bl twoColorLineInterporation__FRC8_GXColorRC8_GXColorfR8_GXColor
/* 801CEB98  7F E3 FB 78 */	mr r3, r31
/* 801CEB9C  7C 9D F0 2E */	lwzx r4, r29, r30
/* 801CEBA0  38 A1 00 08 */	addi r5, r1, 8
/* 801CEBA4  4B FF FF 09 */	bl setFmapPaletteColor__15dMenu_FmapMap_cFQ215renderingFmap_c9palette_eRC8_GXColor
/* 801CEBA8  3B 9C 00 01 */	addi r28, r28, 1
/* 801CEBAC  2C 1C 00 08 */	cmpwi r28, 8
/* 801CEBB0  3B DE 00 04 */	addi r30, r30, 4
/* 801CEBB4  41 80 FF C8 */	blt lbl_801CEB7C
/* 801CEBB8  48 00 00 50 */	b lbl_801CEC08
lbl_801CEBBC:
/* 801CEBBC  3B 80 00 00 */	li r28, 0
/* 801CEBC0  3B C0 00 00 */	li r30, 0
/* 801CEBC4  3C 60 80 39 */	lis r3, palNo@ha /* 0x803961B0@ha */
/* 801CEBC8  3B A3 61 B0 */	addi r29, r3, palNo@l /* 0x803961B0@l */
lbl_801CEBCC:
/* 801CEBCC  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 801CEBD0  7C 80 F2 14 */	add r4, r0, r30
/* 801CEBD4  38 64 01 28 */	addi r3, r4, 0x128
/* 801CEBD8  38 84 01 48 */	addi r4, r4, 0x148
/* 801CEBDC  FC 20 F8 90 */	fmr f1, f31
/* 801CEBE0  38 A1 00 08 */	addi r5, r1, 8
/* 801CEBE4  4B FF F4 E9 */	bl twoColorLineInterporation__FRC8_GXColorRC8_GXColorfR8_GXColor
/* 801CEBE8  7F E3 FB 78 */	mr r3, r31
/* 801CEBEC  7C 9D F0 2E */	lwzx r4, r29, r30
/* 801CEBF0  38 A1 00 08 */	addi r5, r1, 8
/* 801CEBF4  4B FF FE B9 */	bl setFmapPaletteColor__15dMenu_FmapMap_cFQ215renderingFmap_c9palette_eRC8_GXColor
/* 801CEBF8  3B 9C 00 01 */	addi r28, r28, 1
/* 801CEBFC  2C 1C 00 08 */	cmpwi r28, 8
/* 801CEC00  3B DE 00 04 */	addi r30, r30, 4
/* 801CEC04  41 80 FF C8 */	blt lbl_801CEBCC
lbl_801CEC08:
/* 801CEC08  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 801CEC0C  39 61 00 28 */	addi r11, r1, 0x28
/* 801CEC10  48 19 36 15 */	bl _restgpr_28
/* 801CEC14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CEC18  7C 08 03 A6 */	mtlr r0
/* 801CEC1C  38 21 00 30 */	addi r1, r1, 0x30
/* 801CEC20  4E 80 00 20 */	blr 
