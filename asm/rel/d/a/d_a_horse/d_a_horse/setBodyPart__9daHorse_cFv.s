lbl_8083D918:
/* 8083D918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8083D91C  7C 08 02 A6 */	mflr r0
/* 8083D920  90 01 00 14 */	stw r0, 0x14(r1)
/* 8083D924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8083D928  93 C1 00 08 */	stw r30, 8(r1)
/* 8083D92C  7C 7E 1B 78 */	mr r30, r3
/* 8083D930  3C 60 80 84 */	lis r3, lit_1109@ha
/* 8083D934  3B E3 5B B8 */	addi r31, r3, lit_1109@l
/* 8083D938  3C 60 80 84 */	lis r3, lit_3894@ha
/* 8083D93C  38 83 54 AC */	addi r4, r3, lit_3894@l
/* 8083D940  88 1F 00 7C */	lbz r0, 0x7c(r31)
/* 8083D944  7C 00 07 75 */	extsb. r0, r0
/* 8083D948  40 82 00 38 */	bne lbl_8083D980
/* 8083D94C  C0 04 01 90 */	lfs f0, 0x190(r4)
/* 8083D950  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8083D954  C0 04 02 34 */	lfs f0, 0x234(r4)
/* 8083D958  38 7F 00 80 */	addi r3, r31, 0x80
/* 8083D95C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8083D960  C0 04 01 50 */	lfs f0, 0x150(r4)
/* 8083D964  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083D968  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha
/* 8083D96C  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l
/* 8083D970  38 BF 00 70 */	addi r5, r31, 0x70
/* 8083D974  4B FF A5 45 */	bl __register_global_object
/* 8083D978  38 00 00 01 */	li r0, 1
/* 8083D97C  98 1F 00 7C */	stb r0, 0x7c(r31)
lbl_8083D980:
/* 8083D980  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8083D984  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083D988  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083D98C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8083D990  38 9F 00 80 */	addi r4, r31, 0x80
/* 8083D994  38 BE 05 38 */	addi r5, r30, 0x538
/* 8083D998  4B B0 93 D4 */	b PSMTXMultVec
/* 8083D99C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8083D9A0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083D9A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083D9A8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8083D9AC  D0 1E 17 AC */	stfs f0, 0x17ac(r30)
/* 8083D9B0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8083D9B4  D0 1E 17 B0 */	stfs f0, 0x17b0(r30)
/* 8083D9B8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8083D9BC  D0 1E 17 B4 */	stfs f0, 0x17b4(r30)
/* 8083D9C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8083D9C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8083D9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083D9CC  7C 08 03 A6 */	mtlr r0
/* 8083D9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8083D9D4  4E 80 00 20 */	blr 
