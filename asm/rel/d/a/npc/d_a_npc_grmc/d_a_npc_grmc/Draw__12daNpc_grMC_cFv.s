lbl_809D7AD4:
/* 809D7AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D7AD8  7C 08 02 A6 */	mflr r0
/* 809D7ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D7AE0  38 80 00 00 */	li r4, 0
/* 809D7AE4  38 A0 00 00 */	li r5, 0
/* 809D7AE8  C0 23 0D E8 */	lfs f1, 0xde8(r3)
/* 809D7AEC  38 C0 00 00 */	li r6, 0
/* 809D7AF0  3C E0 80 9E */	lis r7, lit_4009@ha
/* 809D7AF4  C0 47 9E 1C */	lfs f2, lit_4009@l(r7)
/* 809D7AF8  38 E0 00 00 */	li r7, 0
/* 809D7AFC  39 00 00 00 */	li r8, 0
/* 809D7B00  39 20 00 00 */	li r9, 0
/* 809D7B04  4B 77 0D 68 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 809D7B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D7B0C  7C 08 03 A6 */	mtlr r0
/* 809D7B10  38 21 00 10 */	addi r1, r1, 0x10
/* 809D7B14  4E 80 00 20 */	blr 
