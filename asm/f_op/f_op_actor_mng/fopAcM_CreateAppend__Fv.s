lbl_80019AA8:
/* 80019AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80019AAC  7C 08 02 A6 */	mflr r0
/* 80019AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80019AB8  38 60 FF FC */	li r3, -4
/* 80019ABC  38 80 00 24 */	li r4, 0x24
/* 80019AC0  48 24 97 69 */	bl memalignB__3cMlFiUl
/* 80019AC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80019AC8  41 82 00 3C */	beq lbl_80019B04
/* 80019ACC  38 80 00 00 */	li r4, 0
/* 80019AD0  38 A0 00 24 */	li r5, 0x24
/* 80019AD4  48 25 5E 89 */	bl cLib_memSet__FPviUl
/* 80019AD8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80019ADC  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80019AE0  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 80019AE4  38 60 FF FF */	li r3, -1
/* 80019AE8  98 7F 00 21 */	stb r3, 0x21(r31)
/* 80019AEC  38 00 00 0A */	li r0, 0xa
/* 80019AF0  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80019AF4  98 1F 00 19 */	stb r0, 0x19(r31)
/* 80019AF8  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 80019AFC  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80019B00  98 7F 00 20 */	stb r3, 0x20(r31)
lbl_80019B04:
/* 80019B04  7F E3 FB 78 */	mr r3, r31
/* 80019B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80019B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019B10  7C 08 03 A6 */	mtlr r0
/* 80019B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80019B18  4E 80 00 20 */	blr 
