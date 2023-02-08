lbl_809D17C0:
/* 809D17C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809D17C4  7C 08 02 A6 */	mflr r0
/* 809D17C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D17CC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809D17D0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809D17D4  39 61 00 20 */	addi r11, r1, 0x20
/* 809D17D8  4B 99 09 F9 */	bl _savegpr_26
/* 809D17DC  7C 7C 1B 78 */	mr r28, r3
/* 809D17E0  7C 9A 23 78 */	mr r26, r4
/* 809D17E4  FF E0 08 90 */	fmr f31, f1
/* 809D17E8  3C 80 80 9D */	lis r4, cNullVec__6Z2Calc@ha /* 0x809D3C14@ha */
/* 809D17EC  3B 64 3C 14 */	addi r27, r4, cNullVec__6Z2Calc@l /* 0x809D3C14@l */
/* 809D17F0  3B E0 00 00 */	li r31, 0
/* 809D17F4  3B C0 00 00 */	li r30, 0
/* 809D17F8  3B A0 00 02 */	li r29, 2
/* 809D17FC  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809D1800  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 809D1804  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809D1808  57 40 18 38 */	slwi r0, r26, 3
/* 809D180C  38 9B 00 28 */	addi r4, r27, 0x28
/* 809D1810  7C A4 00 2E */	lwzx r5, r4, r0
/* 809D1814  2C 05 00 00 */	cmpwi r5, 0
/* 809D1818  41 80 00 20 */	blt lbl_809D1838
/* 809D181C  7C 84 02 14 */	add r4, r4, r0
/* 809D1820  80 04 00 04 */	lwz r0, 4(r4)
/* 809D1824  54 00 10 3A */	slwi r0, r0, 2
/* 809D1828  38 9B 00 E8 */	addi r4, r27, 0xe8
/* 809D182C  7C 84 00 2E */	lwzx r4, r4, r0
/* 809D1830  4B 78 12 FD */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809D1834  7C 7F 1B 78 */	mr r31, r3
lbl_809D1838:
/* 809D1838  2C 1A 00 08 */	cmpwi r26, 8
/* 809D183C  41 82 00 30 */	beq lbl_809D186C
/* 809D1840  40 80 00 14 */	bge lbl_809D1854
/* 809D1844  2C 1A 00 05 */	cmpwi r26, 5
/* 809D1848  41 82 00 24 */	beq lbl_809D186C
/* 809D184C  40 80 00 10 */	bge lbl_809D185C
/* 809D1850  48 00 00 14 */	b lbl_809D1864
lbl_809D1854:
/* 809D1854  2C 1A 00 0C */	cmpwi r26, 0xc
/* 809D1858  40 80 00 0C */	bge lbl_809D1864
lbl_809D185C:
/* 809D185C  3B A0 00 00 */	li r29, 0
/* 809D1860  48 00 00 0C */	b lbl_809D186C
lbl_809D1864:
/* 809D1864  3B E0 00 00 */	li r31, 0
/* 809D1868  3B C0 00 00 */	li r30, 0
lbl_809D186C:
/* 809D186C  80 BB 00 A8 */	lwz r5, 0xa8(r27)
/* 809D1870  2C 05 00 00 */	cmpwi r5, 0
/* 809D1874  41 80 00 24 */	blt lbl_809D1898
/* 809D1878  7F 83 E3 78 */	mr r3, r28
/* 809D187C  38 9B 00 A8 */	addi r4, r27, 0xa8
/* 809D1880  80 04 00 04 */	lwz r0, 4(r4)
/* 809D1884  54 00 10 3A */	slwi r0, r0, 2
/* 809D1888  38 9B 00 E8 */	addi r4, r27, 0xe8
/* 809D188C  7C 84 00 2E */	lwzx r4, r4, r0
/* 809D1890  4B 78 13 15 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809D1894  7C 7E 1B 78 */	mr r30, r3
lbl_809D1898:
/* 809D1898  28 1E 00 00 */	cmplwi r30, 0
/* 809D189C  41 82 00 3C */	beq lbl_809D18D8
/* 809D18A0  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809D18A4  80 63 00 04 */	lwz r3, 4(r3)
/* 809D18A8  80 A3 00 04 */	lwz r5, 4(r3)
/* 809D18AC  7F 83 E3 78 */	mr r3, r28
/* 809D18B0  7F C4 F3 78 */	mr r4, r30
/* 809D18B4  3C C0 80 9D */	lis r6, lit_4450@ha /* 0x809D3A80@ha */
/* 809D18B8  C0 26 3A 80 */	lfs f1, lit_4450@l(r6)  /* 0x809D3A80@l */
/* 809D18BC  38 C0 00 02 */	li r6, 2
/* 809D18C0  4B 78 14 45 */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 809D18C4  2C 03 00 00 */	cmpwi r3, 0
/* 809D18C8  41 82 00 10 */	beq lbl_809D18D8
/* 809D18CC  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809D18D0  60 00 00 12 */	ori r0, r0, 0x12
/* 809D18D4  90 1C 09 9C */	stw r0, 0x99c(r28)
lbl_809D18D8:
/* 809D18D8  28 1F 00 00 */	cmplwi r31, 0
/* 809D18DC  41 82 00 44 */	beq lbl_809D1920
/* 809D18E0  7F 83 E3 78 */	mr r3, r28
/* 809D18E4  7F E4 FB 78 */	mr r4, r31
/* 809D18E8  3C A0 80 9D */	lis r5, lit_4450@ha /* 0x809D3A80@ha */
/* 809D18EC  C0 25 3A 80 */	lfs f1, lit_4450@l(r5)  /* 0x809D3A80@l */
/* 809D18F0  FC 40 F8 90 */	fmr f2, f31
/* 809D18F4  7F A5 EB 78 */	mr r5, r29
/* 809D18F8  38 C0 00 00 */	li r6, 0
/* 809D18FC  38 E0 FF FF */	li r7, -1
/* 809D1900  4B 78 13 1D */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809D1904  2C 03 00 00 */	cmpwi r3, 0
/* 809D1908  41 82 00 18 */	beq lbl_809D1920
/* 809D190C  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809D1910  60 00 00 09 */	ori r0, r0, 9
/* 809D1914  90 1C 09 9C */	stw r0, 0x99c(r28)
/* 809D1918  38 00 00 00 */	li r0, 0
/* 809D191C  B0 1C 09 E2 */	sth r0, 0x9e2(r28)
lbl_809D1920:
/* 809D1920  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809D1924  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809D1928  39 61 00 20 */	addi r11, r1, 0x20
/* 809D192C  4B 99 08 F1 */	bl _restgpr_26
/* 809D1930  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809D1934  7C 08 03 A6 */	mtlr r0
/* 809D1938  38 21 00 30 */	addi r1, r1, 0x30
/* 809D193C  4E 80 00 20 */	blr 
