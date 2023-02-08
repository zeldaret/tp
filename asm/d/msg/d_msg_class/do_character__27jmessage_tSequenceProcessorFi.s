lbl_8022BFE0:
/* 8022BFE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022BFE4  7C 08 02 A6 */	mflr r0
/* 8022BFE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022BFEC  39 61 00 30 */	addi r11, r1, 0x30
/* 8022BFF0  48 13 61 ED */	bl _savegpr_29
/* 8022BFF4  7C 7D 1B 78 */	mr r29, r3
/* 8022BFF8  7C 9E 23 78 */	mr r30, r4
/* 8022BFFC  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022C000  88 03 00 AC */	lbz r0, 0xac(r3)
/* 8022C004  28 00 00 00 */	cmplwi r0, 0
/* 8022C008  40 82 00 A4 */	bne lbl_8022C0AC
/* 8022C00C  38 00 00 00 */	li r0, 0
/* 8022C010  2C 1E 00 81 */	cmpwi r30, 0x81
/* 8022C014  41 80 00 0C */	blt lbl_8022C020
/* 8022C018  2C 1E 00 9F */	cmpwi r30, 0x9f
/* 8022C01C  40 81 00 14 */	ble lbl_8022C030
lbl_8022C020:
/* 8022C020  2C 1E 00 E0 */	cmpwi r30, 0xe0
/* 8022C024  41 80 00 10 */	blt lbl_8022C034
/* 8022C028  2C 1E 00 FC */	cmpwi r30, 0xfc
/* 8022C02C  41 81 00 08 */	bgt lbl_8022C034
lbl_8022C030:
/* 8022C030  38 00 00 01 */	li r0, 1
lbl_8022C034:
/* 8022C034  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8022C038  41 82 00 34 */	beq lbl_8022C06C
/* 8022C03C  7F C3 F3 78 */	mr r3, r30
/* 8022C040  4B FF C8 69 */	bl isOutfontKanjiCode__Fi
/* 8022C044  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022C048  40 82 00 58 */	bne lbl_8022C0A0
/* 8022C04C  7F C3 F3 78 */	mr r3, r30
/* 8022C050  4B FF C5 B9 */	bl change1ByteTo2Bytes__Fi
/* 8022C054  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8022C058  4B FF C7 E1 */	bl changeKataToHira__Fi
/* 8022C05C  7C 64 1B 78 */	mr r4, r3
/* 8022C060  7F E3 FB 78 */	mr r3, r31
/* 8022C064  4B FF D7 25 */	bl addCharactor__19jmessage_tReferenceFUs
/* 8022C068  48 00 00 38 */	b lbl_8022C0A0
lbl_8022C06C:
/* 8022C06C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008800@ha */
/* 8022C070  38 03 88 00 */	addi r0, r3, 0x8800 /* 0x00008800@l */
/* 8022C074  7C 1E 00 00 */	cmpw r30, r0
/* 8022C078  40 80 00 28 */	bge lbl_8022C0A0
/* 8022C07C  7F C3 F3 78 */	mr r3, r30
/* 8022C080  4B FF C8 29 */	bl isOutfontKanjiCode__Fi
/* 8022C084  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022C088  40 82 00 18 */	bne lbl_8022C0A0
/* 8022C08C  7F C3 F3 78 */	mr r3, r30
/* 8022C090  4B FF C7 A9 */	bl changeKataToHira__Fi
/* 8022C094  7C 64 1B 78 */	mr r4, r3
/* 8022C098  7F E3 FB 78 */	mr r3, r31
/* 8022C09C  4B FF D6 ED */	bl addCharactor__19jmessage_tReferenceFUs
lbl_8022C0A0:
/* 8022C0A0  88 7F 05 DC */	lbz r3, 0x5dc(r31)
/* 8022C0A4  38 03 00 01 */	addi r0, r3, 1
/* 8022C0A8  98 1F 05 DC */	stb r0, 0x5dc(r31)
lbl_8022C0AC:
/* 8022C0AC  88 1D 00 B3 */	lbz r0, 0xb3(r29)
/* 8022C0B0  28 00 00 00 */	cmplwi r0, 0
/* 8022C0B4  41 82 00 44 */	beq lbl_8022C0F8
/* 8022C0B8  38 61 00 08 */	addi r3, r1, 8
/* 8022C0BC  7F E4 FB 78 */	mr r4, r31
/* 8022C0C0  48 00 69 61 */	bl getActorPos__19jmessage_tReferenceFv
/* 8022C0C4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8022C0C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8022C0CC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8022C0D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8022C0D4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8022C0D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8022C0DC  7F A3 EB 78 */	mr r3, r29
/* 8022C0E0  88 9D 00 B4 */	lbz r4, 0xb4(r29)
/* 8022C0E4  88 BD 00 B3 */	lbz r5, 0xb3(r29)
/* 8022C0E8  38 C1 00 14 */	addi r6, r1, 0x14
/* 8022C0EC  48 00 0A 25 */	bl messageSePlay__27jmessage_tSequenceProcessorFUcUcP4cXyz
/* 8022C0F0  38 00 00 00 */	li r0, 0
/* 8022C0F4  98 1D 00 B3 */	stb r0, 0xb3(r29)
lbl_8022C0F8:
/* 8022C0F8  2C 1E 00 21 */	cmpwi r30, 0x21
/* 8022C0FC  41 82 00 14 */	beq lbl_8022C110
/* 8022C100  40 80 00 40 */	bge lbl_8022C140
/* 8022C104  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8022C108  41 82 00 1C */	beq lbl_8022C124
/* 8022C10C  48 00 00 34 */	b lbl_8022C140
lbl_8022C110:
/* 8022C110  38 00 00 00 */	li r0, 0
/* 8022C114  98 1D 00 B0 */	stb r0, 0xb0(r29)
/* 8022C118  38 00 00 01 */	li r0, 1
/* 8022C11C  98 1D 00 B1 */	stb r0, 0xb1(r29)
/* 8022C120  48 00 00 68 */	b lbl_8022C188
lbl_8022C124:
/* 8022C124  A8 7F 05 D0 */	lha r3, 0x5d0(r31)
/* 8022C128  38 03 00 01 */	addi r0, r3, 1
/* 8022C12C  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 8022C130  A8 7F 05 CE */	lha r3, 0x5ce(r31)
/* 8022C134  38 03 00 01 */	addi r0, r3, 1
/* 8022C138  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 8022C13C  48 00 00 4C */	b lbl_8022C188
lbl_8022C140:
/* 8022C140  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008140@ha */
/* 8022C144  38 03 81 40 */	addi r0, r3, 0x8140 /* 0x00008140@l */
/* 8022C148  7C 1E 00 00 */	cmpw r30, r0
/* 8022C14C  41 80 00 10 */	blt lbl_8022C15C
/* 8022C150  38 03 81 FC */	addi r0, r3, -32260
/* 8022C154  7C 1E 00 00 */	cmpw r30, r0
/* 8022C158  40 81 00 20 */	ble lbl_8022C178
lbl_8022C15C:
/* 8022C15C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000839F@ha */
/* 8022C160  38 03 83 9F */	addi r0, r3, 0x839F /* 0x0000839F@l */
/* 8022C164  7C 1E 00 00 */	cmpw r30, r0
/* 8022C168  41 80 00 20 */	blt lbl_8022C188
/* 8022C16C  38 03 87 9C */	addi r0, r3, -30820
/* 8022C170  7C 1E 00 00 */	cmpw r30, r0
/* 8022C174  41 81 00 14 */	bgt lbl_8022C188
lbl_8022C178:
/* 8022C178  38 00 00 00 */	li r0, 0
/* 8022C17C  98 1D 00 B0 */	stb r0, 0xb0(r29)
/* 8022C180  38 00 00 01 */	li r0, 1
/* 8022C184  98 1D 00 B1 */	stb r0, 0xb1(r29)
lbl_8022C188:
/* 8022C188  39 61 00 30 */	addi r11, r1, 0x30
/* 8022C18C  48 13 60 9D */	bl _restgpr_29
/* 8022C190  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8022C194  7C 08 03 A6 */	mtlr r0
/* 8022C198  38 21 00 30 */	addi r1, r1, 0x30
/* 8022C19C  4E 80 00 20 */	blr 
