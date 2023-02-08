lbl_80B61710:
/* 80B61710  3C 80 80 B6 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B67F40@ha */
/* 80B61714  38 C4 7F 40 */	addi r6, r4, cNullVec__6Z2Calc@l /* 0x80B67F40@l */
/* 80B61718  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B6171C  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80B61720  80 85 00 00 */	lwz r4, 0(r5)
/* 80B61724  80 05 00 04 */	lwz r0, 4(r5)
/* 80B61728  90 83 0F D8 */	stw r4, 0xfd8(r3)
/* 80B6172C  90 03 0F DC */	stw r0, 0xfdc(r3)
/* 80B61730  80 05 00 08 */	lwz r0, 8(r5)
/* 80B61734  90 03 0F E0 */	stw r0, 0xfe0(r3)
/* 80B61738  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B6173C  2C 00 00 02 */	cmpwi r0, 2
/* 80B61740  41 82 00 3C */	beq lbl_80B6177C
/* 80B61744  40 80 00 10 */	bge lbl_80B61754
/* 80B61748  2C 00 00 01 */	cmpwi r0, 1
/* 80B6174C  40 80 00 14 */	bge lbl_80B61760
/* 80B61750  48 00 00 B8 */	b lbl_80B61808
lbl_80B61754:
/* 80B61754  2C 00 00 04 */	cmpwi r0, 4
/* 80B61758  40 80 00 B0 */	bge lbl_80B61808
/* 80B6175C  48 00 00 6C */	b lbl_80B617C8
lbl_80B61760:
/* 80B61760  80 86 0A 74 */	lwz r4, 0xa74(r6)
/* 80B61764  80 06 0A 78 */	lwz r0, 0xa78(r6)
/* 80B61768  90 83 0F D8 */	stw r4, 0xfd8(r3)
/* 80B6176C  90 03 0F DC */	stw r0, 0xfdc(r3)
/* 80B61770  80 06 0A 7C */	lwz r0, 0xa7c(r6)
/* 80B61774  90 03 0F E0 */	stw r0, 0xfe0(r3)
/* 80B61778  48 00 00 A8 */	b lbl_80B61820
lbl_80B6177C:
/* 80B6177C  80 86 0A 80 */	lwz r4, 0xa80(r6)
/* 80B61780  80 06 0A 84 */	lwz r0, 0xa84(r6)
/* 80B61784  90 83 0F D8 */	stw r4, 0xfd8(r3)
/* 80B61788  90 03 0F DC */	stw r0, 0xfdc(r3)
/* 80B6178C  80 06 0A 88 */	lwz r0, 0xa88(r6)
/* 80B61790  90 03 0F E0 */	stw r0, 0xfe0(r3)
/* 80B61794  88 03 10 63 */	lbz r0, 0x1063(r3)
/* 80B61798  28 00 00 00 */	cmplwi r0, 0
/* 80B6179C  41 82 00 84 */	beq lbl_80B61820
/* 80B617A0  88 03 10 64 */	lbz r0, 0x1064(r3)
/* 80B617A4  28 00 00 00 */	cmplwi r0, 0
/* 80B617A8  40 82 00 78 */	bne lbl_80B61820
/* 80B617AC  80 86 0A 8C */	lwz r4, 0xa8c(r6)
/* 80B617B0  80 06 0A 90 */	lwz r0, 0xa90(r6)
/* 80B617B4  90 83 0F D8 */	stw r4, 0xfd8(r3)
/* 80B617B8  90 03 0F DC */	stw r0, 0xfdc(r3)
/* 80B617BC  80 06 0A 94 */	lwz r0, 0xa94(r6)
/* 80B617C0  90 03 0F E0 */	stw r0, 0xfe0(r3)
/* 80B617C4  48 00 00 5C */	b lbl_80B61820
lbl_80B617C8:
/* 80B617C8  80 86 0A 98 */	lwz r4, 0xa98(r6)
/* 80B617CC  80 06 0A 9C */	lwz r0, 0xa9c(r6)
/* 80B617D0  90 83 0F D8 */	stw r4, 0xfd8(r3)
/* 80B617D4  90 03 0F DC */	stw r0, 0xfdc(r3)
/* 80B617D8  80 06 0A A0 */	lwz r0, 0xaa0(r6)
/* 80B617DC  90 03 0F E0 */	stw r0, 0xfe0(r3)
/* 80B617E0  88 03 10 6A */	lbz r0, 0x106a(r3)
/* 80B617E4  28 00 00 00 */	cmplwi r0, 0
/* 80B617E8  41 82 00 38 */	beq lbl_80B61820
/* 80B617EC  80 86 0A A4 */	lwz r4, 0xaa4(r6)
/* 80B617F0  80 06 0A A8 */	lwz r0, 0xaa8(r6)
/* 80B617F4  90 83 0F D8 */	stw r4, 0xfd8(r3)
/* 80B617F8  90 03 0F DC */	stw r0, 0xfdc(r3)
/* 80B617FC  80 06 0A AC */	lwz r0, 0xaac(r6)
/* 80B61800  90 03 0F E0 */	stw r0, 0xfe0(r3)
/* 80B61804  48 00 00 1C */	b lbl_80B61820
lbl_80B61808:
/* 80B61808  80 86 0A B0 */	lwz r4, 0xab0(r6)
/* 80B6180C  80 06 0A B4 */	lwz r0, 0xab4(r6)
/* 80B61810  90 83 0F D8 */	stw r4, 0xfd8(r3)
/* 80B61814  90 03 0F DC */	stw r0, 0xfdc(r3)
/* 80B61818  80 06 0A B8 */	lwz r0, 0xab8(r6)
/* 80B6181C  90 03 0F E0 */	stw r0, 0xfe0(r3)
lbl_80B61820:
/* 80B61820  38 60 00 01 */	li r3, 1
/* 80B61824  4E 80 00 20 */	blr 
