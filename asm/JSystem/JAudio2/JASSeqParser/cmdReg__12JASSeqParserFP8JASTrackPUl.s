lbl_80294DA8:
/* 80294DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80294DAC  7C 08 02 A6 */	mflr r0
/* 80294DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80294DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80294DB8  48 0C D4 21 */	bl _savegpr_28
/* 80294DBC  7C 7C 1B 78 */	mr r28, r3
/* 80294DC0  7C 9D 23 78 */	mr r29, r4
/* 80294DC4  83 E5 00 04 */	lwz r31, 4(r5)
/* 80294DC8  83 C5 00 08 */	lwz r30, 8(r5)
/* 80294DCC  80 05 00 00 */	lwz r0, 0(r5)
/* 80294DD0  28 00 00 0A */	cmplwi r0, 0xa
/* 80294DD4  41 81 01 04 */	bgt lbl_80294ED8
/* 80294DD8  3C A0 80 3C */	lis r5, lit_1124@ha /* 0x803C7624@ha */
/* 80294DDC  38 A5 76 24 */	addi r5, r5, lit_1124@l /* 0x803C7624@l */
/* 80294DE0  54 00 10 3A */	slwi r0, r0, 2
/* 80294DE4  7C 05 00 2E */	lwzx r0, r5, r0
/* 80294DE8  7C 09 03 A6 */	mtctr r0
/* 80294DEC  4E 80 04 20 */	bctr 
/* 80294DF0  7F E5 FB 78 */	mr r5, r31
/* 80294DF4  4B FF F1 D5 */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80294DF8  7F DE 1A 14 */	add r30, r30, r3
/* 80294DFC  48 00 00 E4 */	b lbl_80294EE0
/* 80294E00  7F E5 FB 78 */	mr r5, r31
/* 80294E04  4B FF F1 C5 */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80294E08  7F DE 18 50 */	subf r30, r30, r3
/* 80294E0C  48 00 00 D4 */	b lbl_80294EE0
/* 80294E10  7F E5 FB 78 */	mr r5, r31
/* 80294E14  4B FF F1 B5 */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80294E18  7F DE 18 50 */	subf r30, r30, r3
/* 80294E1C  3B E0 00 03 */	li r31, 3
/* 80294E20  48 00 00 C0 */	b lbl_80294EE0
/* 80294E24  7F E5 FB 78 */	mr r5, r31
/* 80294E28  4B FF F1 A1 */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80294E2C  7F DE 19 D6 */	mullw r30, r30, r3
/* 80294E30  3B E0 00 21 */	li r31, 0x21
/* 80294E34  48 00 00 AC */	b lbl_80294EE0
/* 80294E38  7F E5 FB 78 */	mr r5, r31
/* 80294E3C  4B FF F1 8D */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80294E40  7F DE 18 38 */	and r30, r30, r3
/* 80294E44  48 00 00 9C */	b lbl_80294EE0
/* 80294E48  7F E5 FB 78 */	mr r5, r31
/* 80294E4C  4B FF F1 7D */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80294E50  7F DE 1B 78 */	or r30, r30, r3
/* 80294E54  48 00 00 8C */	b lbl_80294EE0
/* 80294E58  7F E5 FB 78 */	mr r5, r31
/* 80294E5C  4B FF F1 6D */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80294E60  7F DE 1A 78 */	xor r30, r30, r3
/* 80294E64  48 00 00 7C */	b lbl_80294EE0
/* 80294E68  88 0D 8C C4 */	lbz r0, data_80451244(r13)
/* 80294E6C  7C 00 07 75 */	extsb. r0, r0
/* 80294E70  40 82 00 18 */	bne lbl_80294E88
/* 80294E74  38 6D 8C C8 */	la r3, oRandom(r13) /* 80451248-_SDA_BASE_ */
/* 80294E78  38 80 00 00 */	li r4, 0
/* 80294E7C  48 0A 4C 69 */	bl __ct__Q25JMath13TRandom_fast_FUl
/* 80294E80  38 00 00 01 */	li r0, 1
/* 80294E84  98 0D 8C C4 */	stb r0, data_80451244(r13)
lbl_80294E88:
/* 80294E88  80 8D 8C C8 */	lwz r4, oRandom(r13)
/* 80294E8C  3C 60 00 19 */	lis r3, 0x0019 /* 0x0019660D@ha */
/* 80294E90  38 03 66 0D */	addi r0, r3, 0x660D /* 0x0019660D@l */
/* 80294E94  7C 64 01 D6 */	mullw r3, r4, r0
/* 80294E98  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 80294E9C  38 03 F3 5F */	addi r0, r3, -3233
/* 80294EA0  90 0D 8C C8 */	stw r0, oRandom(r13)
/* 80294EA4  54 03 BA 7E */	srwi r3, r0, 9
/* 80294EA8  7C 03 F3 96 */	divwu r0, r3, r30
/* 80294EAC  7C 00 F1 D6 */	mullw r0, r0, r30
/* 80294EB0  7F C0 18 50 */	subf r30, r0, r3
/* 80294EB4  48 00 00 2C */	b lbl_80294EE0
/* 80294EB8  7F E5 FB 78 */	mr r5, r31
/* 80294EBC  4B FF F1 0D */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80294EC0  7C 7E F0 30 */	slw r30, r3, r30
/* 80294EC4  48 00 00 1C */	b lbl_80294EE0
/* 80294EC8  7F E5 FB 78 */	mr r5, r31
/* 80294ECC  4B FF F0 FD */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80294ED0  7C 7E F4 30 */	srw r30, r3, r30
/* 80294ED4  48 00 00 0C */	b lbl_80294EE0
lbl_80294ED8:
/* 80294ED8  38 60 00 00 */	li r3, 0
/* 80294EDC  48 00 00 1C */	b lbl_80294EF8
lbl_80294EE0:
/* 80294EE0  7F 83 E3 78 */	mr r3, r28
/* 80294EE4  7F A4 EB 78 */	mr r4, r29
/* 80294EE8  7F E5 FB 78 */	mr r5, r31
/* 80294EEC  7F C6 F3 78 */	mr r6, r30
/* 80294EF0  4B FF EE D5 */	bl writeReg__12JASSeqParserFP8JASTrackUlUl
/* 80294EF4  38 60 00 00 */	li r3, 0
lbl_80294EF8:
/* 80294EF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80294EFC  48 0C D3 29 */	bl _restgpr_28
/* 80294F00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80294F04  7C 08 03 A6 */	mtlr r0
/* 80294F08  38 21 00 20 */	addi r1, r1, 0x20
/* 80294F0C  4E 80 00 20 */	blr 
