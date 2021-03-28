lbl_807E2238:
/* 807E2238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E223C  7C 08 02 A6 */	mflr r0
/* 807E2240  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E2244  3C 60 80 7E */	lis r3, b_path2@ha
/* 807E2248  38 63 36 9C */	addi r3, r3, b_path2@l
/* 807E224C  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807E2250  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807E2254  38 A0 00 0C */	li r5, 0xc
/* 807E2258  38 C0 00 08 */	li r6, 8
/* 807E225C  4B B7 FA 8C */	b __destroy_arr
/* 807E2260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E2264  7C 08 03 A6 */	mtlr r0
/* 807E2268  38 21 00 10 */	addi r1, r1, 0x10
/* 807E226C  4E 80 00 20 */	blr 
