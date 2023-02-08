lbl_805B3B0C:
/* 805B3B0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B3B10  7C 08 02 A6 */	mflr r0
/* 805B3B14  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B3B18  39 61 00 30 */	addi r11, r1, 0x30
/* 805B3B1C  4B DA E6 C1 */	bl _savegpr_29
/* 805B3B20  7C 7D 1B 78 */	mr r29, r3
/* 805B3B24  7C 9E 23 78 */	mr r30, r4
/* 805B3B28  3C 80 80 5C */	lis r4, lit_3816@ha /* 0x805BA588@ha */
/* 805B3B2C  3B E4 A5 88 */	addi r31, r4, lit_3816@l /* 0x805BA588@l */
/* 805B3B30  4B A6 51 B1 */	bl fopAc_IsActor__FPv
/* 805B3B34  2C 03 00 00 */	cmpwi r3, 0
/* 805B3B38  41 82 00 CC */	beq lbl_805B3C04
/* 805B3B3C  A8 1D 00 08 */	lha r0, 8(r29)
/* 805B3B40  2C 00 02 F0 */	cmpwi r0, 0x2f0
/* 805B3B44  40 82 00 C0 */	bne lbl_805B3C04
/* 805B3B48  38 00 00 01 */	li r0, 1
/* 805B3B4C  98 1D 05 67 */	stb r0, 0x567(r29)
/* 805B3B50  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 805B3B54  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805B3B58  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B3B5C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 805B3B60  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805B3B64  EC 42 00 28 */	fsubs f2, f2, f0
/* 805B3B68  4B CB 3B 0D */	bl cM_atan2s__Fff
/* 805B3B6C  7C 7E 1B 78 */	mr r30, r3
/* 805B3B70  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B3B74  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B3B78  80 63 00 00 */	lwz r3, 0(r3)
/* 805B3B7C  7F C4 F3 78 */	mr r4, r30
/* 805B3B80  4B A5 88 5D */	bl mDoMtx_YrotS__FPA4_fs
/* 805B3B84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B3B88  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805B3B8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805B3B90  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805B3B94  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B3B98  38 61 00 14 */	addi r3, r1, 0x14
/* 805B3B9C  38 81 00 08 */	addi r4, r1, 8
/* 805B3BA0  4B CB D3 4D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805B3BA4  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 805B3BA8  C0 21 00 08 */	lfs f1, 8(r1)
/* 805B3BAC  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 805B3BB0  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 805B3BB4  4B CB BE 89 */	bl cLib_addCalc2__FPffff
/* 805B3BB8  38 7D 05 00 */	addi r3, r29, 0x500
/* 805B3BBC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 805B3BC0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 805B3BC4  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 805B3BC8  4B CB BE 75 */	bl cLib_addCalc2__FPffff
/* 805B3BCC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 805B3BD0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805B3BD4  7C 1E 00 50 */	subf r0, r30, r0
/* 805B3BD8  7C 00 07 34 */	extsh r0, r0
/* 805B3BDC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805B3BE0  41 81 00 0C */	bgt lbl_805B3BEC
/* 805B3BE4  2C 00 C0 00 */	cmpwi r0, -16384
/* 805B3BE8  40 80 00 0C */	bge lbl_805B3BF4
lbl_805B3BEC:
/* 805B3BEC  3F DE 00 01 */	addis r30, r30, 1
/* 805B3BF0  3B DE 80 00 */	addi r30, r30, -32768
lbl_805B3BF4:
/* 805B3BF4  7F C4 F3 78 */	mr r4, r30
/* 805B3BF8  38 A0 00 20 */	li r5, 0x20
/* 805B3BFC  38 C0 00 20 */	li r6, 0x20
/* 805B3C00  4B CB CA 09 */	bl cLib_addCalcAngleS2__FPssss
lbl_805B3C04:
/* 805B3C04  38 60 00 00 */	li r3, 0
/* 805B3C08  39 61 00 30 */	addi r11, r1, 0x30
/* 805B3C0C  4B DA E6 1D */	bl _restgpr_29
/* 805B3C10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B3C14  7C 08 03 A6 */	mtlr r0
/* 805B3C18  38 21 00 30 */	addi r1, r1, 0x30
/* 805B3C1C  4E 80 00 20 */	blr 
