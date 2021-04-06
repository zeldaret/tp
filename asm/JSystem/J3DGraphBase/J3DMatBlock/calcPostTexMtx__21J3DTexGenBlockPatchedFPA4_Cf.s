lbl_803216D8:
/* 803216D8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803216DC  7C 08 02 A6 */	mflr r0
/* 803216E0  90 01 00 84 */	stw r0, 0x84(r1)
/* 803216E4  39 61 00 80 */	addi r11, r1, 0x80
/* 803216E8  48 04 0A E9 */	bl _savegpr_26
/* 803216EC  7C 7C 1B 78 */	mr r28, r3
/* 803216F0  3B A0 00 00 */	li r29, 0
/* 803216F4  3B 60 00 00 */	li r27, 0
/* 803216F8  3B 40 00 00 */	li r26, 0
lbl_803216FC:
/* 803216FC  3B DA 00 38 */	addi r30, r26, 0x38
/* 80321700  7C 7C F0 2E */	lwzx r3, r28, r30
/* 80321704  28 03 00 00 */	cmplwi r3, 0
/* 80321708  41 82 00 E8 */	beq lbl_803217F0
/* 8032170C  88 03 00 01 */	lbz r0, 1(r3)
/* 80321710  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 80321714  7F FC DA 14 */	add r31, r28, r27
/* 80321718  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 8032171C  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 80321720  28 04 00 0B */	cmplwi r4, 0xb
/* 80321724  41 81 00 B4 */	bgt lbl_803217D8
/* 80321728  3C 60 80 3D */	lis r3, lit_5150@ha /* 0x803CDF90@ha */
/* 8032172C  38 63 DF 90 */	addi r3, r3, lit_5150@l /* 0x803CDF90@l */
/* 80321730  54 80 10 3A */	slwi r0, r4, 2
/* 80321734  7C 03 00 2E */	lwzx r0, r3, r0
/* 80321738  7C 09 03 A6 */	mtctr r0
/* 8032173C  4E 80 04 20 */	bctr 
/* 80321740  38 00 00 1E */	li r0, 0x1e
/* 80321744  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 80321748  7C 7C F0 2E */	lwzx r3, r28, r30
/* 8032174C  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80321750  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80321754  48 00 24 B9 */	bl calcPostTexMtx__9J3DTexMtxFPA4_Cf
/* 80321758  48 00 00 98 */	b lbl_803217F0
/* 8032175C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80321760  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80321764  38 81 00 38 */	addi r4, r1, 0x38
/* 80321768  48 02 4E 49 */	bl PSMTXInverse
/* 8032176C  38 00 00 00 */	li r0, 0
/* 80321770  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 80321774  7C 7C F0 2E */	lwzx r3, r28, r30
/* 80321778  38 81 00 38 */	addi r4, r1, 0x38
/* 8032177C  48 00 24 91 */	bl calcPostTexMtx__9J3DTexMtxFPA4_Cf
/* 80321780  48 00 00 70 */	b lbl_803217F0
/* 80321784  38 00 00 00 */	li r0, 0
/* 80321788  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8032178C  7C 7C F0 2E */	lwzx r3, r28, r30
/* 80321790  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80321794  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80321798  48 00 24 75 */	bl calcPostTexMtx__9J3DTexMtxFPA4_Cf
/* 8032179C  48 00 00 54 */	b lbl_803217F0
/* 803217A0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 803217A4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 803217A8  38 81 00 08 */	addi r4, r1, 8
/* 803217AC  48 02 4E 05 */	bl PSMTXInverse
/* 803217B0  C0 02 C9 AC */	lfs f0, lit_5060(r2)
/* 803217B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 803217B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 803217BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 803217C0  38 00 00 1E */	li r0, 0x1e
/* 803217C4  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 803217C8  7C 7C F0 2E */	lwzx r3, r28, r30
/* 803217CC  38 81 00 08 */	addi r4, r1, 8
/* 803217D0  48 00 24 3D */	bl calcPostTexMtx__9J3DTexMtxFPA4_Cf
/* 803217D4  48 00 00 1C */	b lbl_803217F0
lbl_803217D8:
/* 803217D8  38 00 00 3C */	li r0, 0x3c
/* 803217DC  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 803217E0  7C 7C F0 2E */	lwzx r3, r28, r30
/* 803217E4  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 803217E8  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 803217EC  48 00 24 21 */	bl calcPostTexMtx__9J3DTexMtxFPA4_Cf
lbl_803217F0:
/* 803217F0  3B BD 00 01 */	addi r29, r29, 1
/* 803217F4  2C 1D 00 08 */	cmpwi r29, 8
/* 803217F8  3B 7B 00 06 */	addi r27, r27, 6
/* 803217FC  3B 5A 00 04 */	addi r26, r26, 4
/* 80321800  41 80 FE FC */	blt lbl_803216FC
/* 80321804  39 61 00 80 */	addi r11, r1, 0x80
/* 80321808  48 04 0A 15 */	bl _restgpr_26
/* 8032180C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80321810  7C 08 03 A6 */	mtlr r0
/* 80321814  38 21 00 80 */	addi r1, r1, 0x80
/* 80321818  4E 80 00 20 */	blr 
