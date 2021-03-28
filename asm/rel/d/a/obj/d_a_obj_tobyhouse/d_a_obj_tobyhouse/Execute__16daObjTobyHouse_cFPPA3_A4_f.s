lbl_80D164C0:
/* 80D164C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D164C4  7C 08 02 A6 */	mflr r0
/* 80D164C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D164CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D164D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D164D4  7C 7F 1B 78 */	mr r31, r3
/* 80D164D8  7C 9E 23 78 */	mr r30, r4
/* 80D164DC  80 83 05 C8 */	lwz r4, 0x5c8(r3)
/* 80D164E0  38 04 00 01 */	addi r0, r4, 1
/* 80D164E4  90 03 05 C8 */	stw r0, 0x5c8(r3)
/* 80D164E8  48 00 00 79 */	bl action__16daObjTobyHouse_cFv
/* 80D164EC  38 1F 05 6C */	addi r0, r31, 0x56c
/* 80D164F0  90 1E 00 00 */	stw r0, 0(r30)
/* 80D164F4  7F E3 FB 78 */	mr r3, r31
/* 80D164F8  4B FF FA 51 */	bl setBaseMtx__16daObjTobyHouse_cFv
/* 80D164FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D16500  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80D16504  41 82 00 30 */	beq lbl_80D16534
/* 80D16508  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D1650C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80D16510  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 80D16514  1C 00 03 20 */	mulli r0, r0, 0x320
/* 80D16518  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D1651C  7C 63 02 14 */	add r3, r3, r0
/* 80D16520  C0 23 00 04 */	lfs f1, 4(r3)
/* 80D16524  3C 60 80 D1 */	lis r3, lit_4287@ha
/* 80D16528  C0 03 77 9C */	lfs f0, lit_4287@l(r3)
/* 80D1652C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D16530  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
lbl_80D16534:
/* 80D16534  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80D16538  A8 1F 05 E0 */	lha r0, 0x5e0(r31)
/* 80D1653C  7C 03 02 14 */	add r0, r3, r0
/* 80D16540  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D16544  38 60 00 01 */	li r3, 1
/* 80D16548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1654C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D16550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D16554  7C 08 03 A6 */	mtlr r0
/* 80D16558  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1655C  4E 80 00 20 */	blr 
