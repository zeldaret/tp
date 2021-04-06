lbl_80C6CDD0:
/* 80C6CDD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6CDD4  7C 08 02 A6 */	mflr r0
/* 80C6CDD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6CDDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6CDE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6CDE4  7C 7E 1B 78 */	mr r30, r3
/* 80C6CDE8  7C 9F 23 78 */	mr r31, r4
/* 80C6CDEC  48 00 00 3D */	bl procMain__12daLv5SwIce_cFv
/* 80C6CDF0  80 7E 07 20 */	lwz r3, 0x720(r30)
/* 80C6CDF4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C6CDF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6CDFC  7F C3 F3 78 */	mr r3, r30
/* 80C6CE00  4B FF FC 21 */	bl setBaseMtx__12daLv5SwIce_cFv
/* 80C6CE04  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80C6CE08  4B 41 6A 29 */	bl Move__10dCcD_GSttsFv
/* 80C6CE0C  38 60 00 01 */	li r3, 1
/* 80C6CE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6CE14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6CE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6CE1C  7C 08 03 A6 */	mtlr r0
/* 80C6CE20  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6CE24  4E 80 00 20 */	blr 
