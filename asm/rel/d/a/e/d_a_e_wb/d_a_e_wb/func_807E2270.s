lbl_807E2270:
/* 807E2270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E2274  7C 08 02 A6 */	mflr r0
/* 807E2278  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E227C  3C 60 80 7E */	lis r3, b_path@ha /* 0x807E3630@ha */
/* 807E2280  38 63 36 30 */	addi r3, r3, b_path@l /* 0x807E3630@l */
/* 807E2284  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807D2B48@ha */
/* 807E2288  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807D2B48@l */
/* 807E228C  38 A0 00 0C */	li r5, 0xc
/* 807E2290  38 C0 00 08 */	li r6, 8
/* 807E2294  4B B7 FA 55 */	bl __destroy_arr
/* 807E2298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E229C  7C 08 03 A6 */	mtlr r0
/* 807E22A0  38 21 00 10 */	addi r1, r1, 0x10
/* 807E22A4  4E 80 00 20 */	blr 
