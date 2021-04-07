lbl_80872CBC:
/* 80872CBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80872CC0  7C 08 02 A6 */	mflr r0
/* 80872CC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80872CC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80872CCC  4B AE F5 05 */	bl _savegpr_26
/* 80872CD0  7C 7A 1B 79 */	or. r26, r3, r3
/* 80872CD4  7C 9B 23 78 */	mr r27, r4
/* 80872CD8  7C BC 2B 78 */	mr r28, r5
/* 80872CDC  7C DD 33 78 */	mr r29, r6
/* 80872CE0  7C FE 3B 78 */	mr r30, r7
/* 80872CE4  3C 60 80 88 */	lis r3, lit_1109@ha /* 0x808795A0@ha */
/* 80872CE8  3B E3 95 A0 */	addi r31, r3, lit_1109@l /* 0x808795A0@l */
/* 80872CEC  41 82 01 C0 */	beq lbl_80872EAC
/* 80872CF0  28 1B 00 00 */	cmplwi r27, 0
/* 80872CF4  41 82 01 C0 */	beq lbl_80872EB4
/* 80872CF8  28 1C 00 00 */	cmplwi r28, 0
/* 80872CFC  41 82 01 B8 */	beq lbl_80872EB4
/* 80872D00  28 1D 00 00 */	cmplwi r29, 0
/* 80872D04  41 82 01 B0 */	beq lbl_80872EB4
/* 80872D08  28 1E 00 00 */	cmplwi r30, 0
/* 80872D0C  41 82 01 B0 */	beq lbl_80872EBC
/* 80872D10  4B AC 70 7D */	bl PPCMfhid2
/* 80872D14  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 80872D18  41 82 01 C4 */	beq lbl_80872EDC
/* 80872D1C  80 1F 06 28 */	lwz r0, 0x628(r31)
/* 80872D20  2C 00 00 00 */	cmpwi r0, 0
/* 80872D24  41 82 01 C0 */	beq lbl_80872EE4
/* 80872D28  93 DF 06 08 */	stw r30, 0x608(r31)
/* 80872D2C  38 1E 00 1F */	addi r0, r30, 0x1f
/* 80872D30  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80872D34  90 7F 06 24 */	stw r3, 0x624(r31)
/* 80872D38  38 03 06 BC */	addi r0, r3, 0x6bc
/* 80872D3C  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80872D40  38 80 06 BC */	li r4, 0x6bc
/* 80872D44  4B AC 89 21 */	bl DCZeroRange
/* 80872D48  38 00 00 21 */	li r0, 0x21
/* 80872D4C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80872D50  90 03 06 A4 */	stw r0, 0x6a4(r3)
/* 80872D54  38 00 00 00 */	li r0, 0
/* 80872D58  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80872D5C  B0 03 06 98 */	sth r0, 0x698(r3)
/* 80872D60  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80872D64  93 43 06 9C */	stw r26, 0x69c(r3)
/* 80872D68  3B C0 00 00 */	li r30, 0
lbl_80872D6C:
/* 80872D6C  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80872D70  80 64 06 9C */	lwz r3, 0x69c(r4)
/* 80872D74  38 03 00 01 */	addi r0, r3, 1
/* 80872D78  90 04 06 9C */	stw r0, 0x69c(r4)
/* 80872D7C  88 03 00 00 */	lbz r0, 0(r3)
/* 80872D80  28 00 00 FF */	cmplwi r0, 0xff
/* 80872D84  40 82 01 48 */	bne lbl_80872ECC
/* 80872D88  48 00 00 10 */	b lbl_80872D98
lbl_80872D8C:
/* 80872D8C  80 64 06 9C */	lwz r3, 0x69c(r4)
/* 80872D90  38 03 00 01 */	addi r0, r3, 1
/* 80872D94  90 04 06 9C */	stw r0, 0x69c(r4)
lbl_80872D98:
/* 80872D98  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80872D9C  80 64 06 9C */	lwz r3, 0x69c(r4)
/* 80872DA0  88 03 00 00 */	lbz r0, 0(r3)
/* 80872DA4  28 00 00 FF */	cmplwi r0, 0xff
/* 80872DA8  41 82 FF E4 */	beq lbl_80872D8C
/* 80872DAC  38 03 00 01 */	addi r0, r3, 1
/* 80872DB0  90 04 06 9C */	stw r0, 0x69c(r4)
/* 80872DB4  88 03 00 00 */	lbz r0, 0(r3)
/* 80872DB8  28 00 00 D7 */	cmplwi r0, 0xd7
/* 80872DBC  41 81 00 34 */	bgt lbl_80872DF0
/* 80872DC0  28 00 00 C4 */	cmplwi r0, 0xc4
/* 80872DC4  40 82 00 14 */	bne lbl_80872DD8
/* 80872DC8  48 00 07 AD */	bl __THPReadHuffmanTableSpecification
/* 80872DCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80872DD0  40 82 01 04 */	bne lbl_80872ED4
/* 80872DD4  48 00 00 B4 */	b lbl_80872E88
lbl_80872DD8:
/* 80872DD8  28 00 00 C0 */	cmplwi r0, 0xc0
/* 80872DDC  40 82 00 E8 */	bne lbl_80872EC4
/* 80872DE0  48 00 01 69 */	bl __THPReadFrameHeader
/* 80872DE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80872DE8  40 82 00 EC */	bne lbl_80872ED4
/* 80872DEC  48 00 00 9C */	b lbl_80872E88
lbl_80872DF0:
/* 80872DF0  28 00 00 D8 */	cmplwi r0, 0xd8
/* 80872DF4  41 80 00 5C */	blt lbl_80872E50
/* 80872DF8  28 00 00 DF */	cmplwi r0, 0xdf
/* 80872DFC  41 81 00 54 */	bgt lbl_80872E50
/* 80872E00  28 00 00 DD */	cmplwi r0, 0xdd
/* 80872E04  40 82 00 0C */	bne lbl_80872E10
/* 80872E08  48 00 0B A1 */	bl __THPRestartDefinition
/* 80872E0C  48 00 00 7C */	b lbl_80872E88
lbl_80872E10:
/* 80872E10  28 00 00 DB */	cmplwi r0, 0xdb
/* 80872E14  40 82 00 14 */	bne lbl_80872E28
/* 80872E18  48 00 03 9D */	bl __THPReadQuantizationTable
/* 80872E1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80872E20  40 82 00 B4 */	bne lbl_80872ED4
/* 80872E24  48 00 00 64 */	b lbl_80872E88
lbl_80872E28:
/* 80872E28  28 00 00 DA */	cmplwi r0, 0xda
/* 80872E2C  40 82 00 18 */	bne lbl_80872E44
/* 80872E30  48 00 02 59 */	bl __THPReadScaneHeader
/* 80872E34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80872E38  40 82 00 9C */	bne lbl_80872ED4
/* 80872E3C  3B C0 00 01 */	li r30, 1
/* 80872E40  48 00 00 48 */	b lbl_80872E88
lbl_80872E44:
/* 80872E44  28 00 00 D8 */	cmplwi r0, 0xd8
/* 80872E48  41 82 00 40 */	beq lbl_80872E88
/* 80872E4C  48 00 00 78 */	b lbl_80872EC4
lbl_80872E50:
/* 80872E50  28 00 00 E0 */	cmplwi r0, 0xe0
/* 80872E54  41 80 00 34 */	blt lbl_80872E88
/* 80872E58  41 80 00 0C */	blt lbl_80872E64
/* 80872E5C  28 00 00 EF */	cmplwi r0, 0xef
/* 80872E60  40 81 00 0C */	ble lbl_80872E6C
lbl_80872E64:
/* 80872E64  28 00 00 FE */	cmplwi r0, 0xfe
/* 80872E68  40 82 00 5C */	bne lbl_80872EC4
lbl_80872E6C:
/* 80872E6C  80 BF 06 24 */	lwz r5, 0x624(r31)
/* 80872E70  80 85 06 9C */	lwz r4, 0x69c(r5)
/* 80872E74  88 64 00 00 */	lbz r3, 0(r4)
/* 80872E78  88 04 00 01 */	lbz r0, 1(r4)
/* 80872E7C  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 80872E80  7C 04 02 14 */	add r0, r4, r0
/* 80872E84  90 05 06 9C */	stw r0, 0x69c(r5)
lbl_80872E88:
/* 80872E88  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80872E8C  41 82 FE E0 */	beq lbl_80872D6C
/* 80872E90  48 00 00 71 */	bl __THPSetupBuffers
/* 80872E94  7F 63 DB 78 */	mr r3, r27
/* 80872E98  7F 84 E3 78 */	mr r4, r28
/* 80872E9C  7F A5 EB 78 */	mr r5, r29
/* 80872EA0  48 00 0D A5 */	bl __THPDecompressYUV
/* 80872EA4  38 60 00 00 */	li r3, 0
/* 80872EA8  48 00 00 40 */	b lbl_80872EE8
lbl_80872EAC:
/* 80872EAC  38 60 00 19 */	li r3, 0x19
/* 80872EB0  48 00 00 38 */	b lbl_80872EE8
lbl_80872EB4:
/* 80872EB4  38 60 00 1B */	li r3, 0x1b
/* 80872EB8  48 00 00 30 */	b lbl_80872EE8
lbl_80872EBC:
/* 80872EBC  38 60 00 1A */	li r3, 0x1a
/* 80872EC0  48 00 00 28 */	b lbl_80872EE8
lbl_80872EC4:
/* 80872EC4  38 60 00 0B */	li r3, 0xb
/* 80872EC8  48 00 00 20 */	b lbl_80872EE8
lbl_80872ECC:
/* 80872ECC  38 60 00 03 */	li r3, 3
/* 80872ED0  48 00 00 18 */	b lbl_80872EE8
lbl_80872ED4:
/* 80872ED4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80872ED8  48 00 00 10 */	b lbl_80872EE8
lbl_80872EDC:
/* 80872EDC  38 60 00 1C */	li r3, 0x1c
/* 80872EE0  48 00 00 08 */	b lbl_80872EE8
lbl_80872EE4:
/* 80872EE4  38 60 00 1D */	li r3, 0x1d
lbl_80872EE8:
/* 80872EE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80872EEC  4B AE F3 31 */	bl _restgpr_26
/* 80872EF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80872EF4  7C 08 03 A6 */	mtlr r0
/* 80872EF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80872EFC  4E 80 00 20 */	blr 
