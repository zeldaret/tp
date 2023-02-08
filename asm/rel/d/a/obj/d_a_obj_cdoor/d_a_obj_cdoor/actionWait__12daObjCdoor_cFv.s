lbl_80BC7AD0:
/* 80BC7AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7AD4  7C 08 02 A6 */	mflr r0
/* 80BC7AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC7AE0  7C 7F 1B 78 */	mr r31, r3
/* 80BC7AE4  88 03 05 B6 */	lbz r0, 0x5b6(r3)
/* 80BC7AE8  28 00 00 FF */	cmplwi r0, 0xff
/* 80BC7AEC  41 82 00 34 */	beq lbl_80BC7B20
/* 80BC7AF0  38 00 00 01 */	li r0, 1
/* 80BC7AF4  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 80BC7AF8  A8 9F 05 B4 */	lha r4, 0x5b4(r31)
/* 80BC7AFC  88 BF 05 B6 */	lbz r5, 0x5b6(r31)
/* 80BC7B00  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80BC7B04  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80BC7B08  38 E0 00 00 */	li r7, 0
/* 80BC7B0C  39 00 00 01 */	li r8, 1
/* 80BC7B10  4B 45 3B 6D */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80BC7B14  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80BC7B18  60 00 00 02 */	ori r0, r0, 2
/* 80BC7B1C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80BC7B20:
/* 80BC7B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC7B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7B28  7C 08 03 A6 */	mtlr r0
/* 80BC7B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7B30  4E 80 00 20 */	blr 
