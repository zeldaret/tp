lbl_8029A048:
/* 8029A048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A04C  7C 08 02 A6 */	mflr r0
/* 8029A050  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A054  88 0D 8D 0C */	lbz r0, data_8045128C(r13)
/* 8029A058  7C 00 07 75 */	extsb. r0, r0
/* 8029A05C  40 82 00 34 */	bne lbl_8029A090
/* 8029A060  3C 60 80 43 */	lis r3, data_80431B7C@ha /* 0x80431B7C@ha */
/* 8029A064  38 63 1B 7C */	addi r3, r3, data_80431B7C@l /* 0x80431B7C@l */
/* 8029A068  4B FF 67 E1 */	bl __ct__17JASGenericMemPoolFv
/* 8029A06C  3C 60 80 43 */	lis r3, data_80431B7C@ha /* 0x80431B7C@ha */
/* 8029A070  38 63 1B 7C */	addi r3, r3, data_80431B7C@l /* 0x80431B7C@l */
/* 8029A074  3C 80 80 29 */	lis r4, func_802978DC@ha /* 0x802978DC@ha */
/* 8029A078  38 84 78 DC */	addi r4, r4, func_802978DC@l /* 0x802978DC@l */
/* 8029A07C  3C A0 80 43 */	lis r5, lit_1065@ha /* 0x80431B70@ha */
/* 8029A080  38 A5 1B 70 */	addi r5, r5, lit_1065@l /* 0x80431B70@l */
/* 8029A084  48 0C 7B A1 */	bl __register_global_object
/* 8029A088  38 00 00 01 */	li r0, 1
/* 8029A08C  98 0D 8D 0C */	stb r0, data_8045128C(r13)
lbl_8029A090:
/* 8029A090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A094  7C 08 03 A6 */	mtlr r0
/* 8029A098  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A09C  4E 80 00 20 */	blr 
