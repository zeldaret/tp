lbl_804DF150:
/* 804DF150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF154  7C 08 02 A6 */	mflr r0
/* 804DF158  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF15C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DF160  7C 7F 1B 78 */	mr r31, r3
/* 804DF164  3C 80 80 4E */	lis r4, lit_4205@ha /* 0x804DF8FC@ha */
/* 804DF168  C0 04 F8 FC */	lfs f0, lit_4205@l(r4)  /* 0x804DF8FC@l */
/* 804DF16C  D0 03 05 D0 */	stfs f0, 0x5d0(r3)
/* 804DF170  88 03 0B 09 */	lbz r0, 0xb09(r3)
/* 804DF174  54 00 08 3C */	slwi r0, r0, 1
/* 804DF178  3C 80 80 4E */	lis r4, brkIdx@ha /* 0x804DF988@ha */
/* 804DF17C  38 84 F9 88 */	addi r4, r4, brkIdx@l /* 0x804DF988@l */
/* 804DF180  7C 84 02 2E */	lhzx r4, r4, r0
/* 804DF184  4B FF FF 55 */	bl initBrk__9daCstaF_cFUs
/* 804DF188  38 00 00 01 */	li r0, 1
/* 804DF18C  98 1F 0B 0F */	stb r0, 0xb0f(r31)
/* 804DF190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DF194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF198  7C 08 03 A6 */	mtlr r0
/* 804DF19C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF1A0  4E 80 00 20 */	blr 
