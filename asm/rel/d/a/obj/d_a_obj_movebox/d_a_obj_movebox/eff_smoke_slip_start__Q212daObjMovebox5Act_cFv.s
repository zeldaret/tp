lbl_8047F5CC:
/* 8047F5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047F5D0  7C 08 02 A6 */	mflr r0
/* 8047F5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047F5D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047F5DC  3C 60 80 48 */	lis r3, lit_1109@ha /* 0x80481888@ha */
/* 8047F5E0  3B E3 18 88 */	addi r31, r3, lit_1109@l /* 0x80481888@l */
/* 8047F5E4  88 1F 12 E0 */	lbz r0, 0x12e0(r31)
/* 8047F5E8  7C 00 07 75 */	extsb. r0, r0
/* 8047F5EC  40 82 00 34 */	bne lbl_8047F620
/* 8047F5F0  3C 60 80 48 */	lis r3, lit_4514@ha /* 0x80481680@ha */
/* 8047F5F4  C0 03 16 80 */	lfs f0, lit_4514@l(r3)  /* 0x80481680@l */
/* 8047F5F8  D0 1F 12 E4 */	stfs f0, 0x12e4(r31)
/* 8047F5FC  38 7F 12 E4 */	addi r3, r31, 0x12e4
/* 8047F600  D0 03 00 04 */	stfs f0, 4(r3)
/* 8047F604  D0 03 00 08 */	stfs f0, 8(r3)
/* 8047F608  3C 80 80 48 */	lis r4, __dt__4cXyzFv@ha /* 0x8047DBB0@ha */
/* 8047F60C  38 84 DB B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8047DBB0@l */
/* 8047F610  38 BF 12 D4 */	addi r5, r31, 0x12d4
/* 8047F614  4B FF E4 65 */	bl __register_global_object
/* 8047F618  38 00 00 01 */	li r0, 1
/* 8047F61C  98 1F 12 E0 */	stb r0, 0x12e0(r31)
lbl_8047F620:
/* 8047F620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047F624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047F628  7C 08 03 A6 */	mtlr r0
/* 8047F62C  38 21 00 10 */	addi r1, r1, 0x10
/* 8047F630  4E 80 00 20 */	blr 
