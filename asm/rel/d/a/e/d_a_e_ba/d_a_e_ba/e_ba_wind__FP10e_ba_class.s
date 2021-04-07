lbl_80680AF4:
/* 80680AF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80680AF8  7C 08 02 A6 */	mflr r0
/* 80680AFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80680B00  39 61 00 30 */	addi r11, r1, 0x30
/* 80680B04  4B CE 16 D9 */	bl _savegpr_29
/* 80680B08  7C 7F 1B 78 */	mr r31, r3
/* 80680B0C  3C 60 80 68 */	lis r3, lit_3947@ha /* 0x806823BC@ha */
/* 80680B10  3B A3 23 BC */	addi r29, r3, lit_3947@l /* 0x806823BC@l */
/* 80680B14  3C 60 80 68 */	lis r3, shot_b_sub__FPvPv@ha /* 0x8067EEA8@ha */
/* 80680B18  38 63 EE A8 */	addi r3, r3, shot_b_sub__FPvPv@l /* 0x8067EEA8@l */
/* 80680B1C  7F E4 FB 78 */	mr r4, r31
/* 80680B20  4B 9A 08 19 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80680B24  7C 7E 1B 78 */	mr r30, r3
/* 80680B28  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80680B2C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80680B30  A8 1F 06 74 */	lha r0, 0x674(r31)
/* 80680B34  2C 00 00 01 */	cmpwi r0, 1
/* 80680B38  41 82 00 88 */	beq lbl_80680BC0
/* 80680B3C  40 80 00 10 */	bge lbl_80680B4C
/* 80680B40  2C 00 00 00 */	cmpwi r0, 0
/* 80680B44  40 80 00 14 */	bge lbl_80680B58
/* 80680B48  48 00 01 18 */	b lbl_80680C60
lbl_80680B4C:
/* 80680B4C  2C 00 00 03 */	cmpwi r0, 3
/* 80680B50  40 80 01 10 */	bge lbl_80680C60
/* 80680B54  48 00 00 DC */	b lbl_80680C30
lbl_80680B58:
/* 80680B58  7F E3 FB 78 */	mr r3, r31
/* 80680B5C  38 80 00 07 */	li r4, 7
/* 80680B60  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80680B64  38 A0 00 02 */	li r5, 2
/* 80680B68  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80680B6C  4B FF E2 25 */	bl anm_init__FP10e_ba_classifUcf
/* 80680B70  38 00 00 01 */	li r0, 1
/* 80680B74  B0 1F 06 74 */	sth r0, 0x674(r31)
/* 80680B78  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 80680B7C  4B BE 6E 11 */	bl cM_rndFX__Ff
/* 80680B80  C0 1D 00 9C */	lfs f0, 0x9c(r29)
/* 80680B84  EC 00 08 2A */	fadds f0, f0, f1
/* 80680B88  FC 00 00 50 */	fneg f0, f0
/* 80680B8C  FC 00 00 1E */	fctiwz f0, f0
/* 80680B90  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80680B94  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80680B98  B0 1F 06 C8 */	sth r0, 0x6c8(r31)
/* 80680B9C  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 80680BA0  4B BE 6D ED */	bl cM_rndFX__Ff
/* 80680BA4  D0 3F 06 BC */	stfs f1, 0x6bc(r31)
/* 80680BA8  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 80680BAC  4B BE 6D E1 */	bl cM_rndFX__Ff
/* 80680BB0  D0 3F 06 C0 */	stfs f1, 0x6c0(r31)
/* 80680BB4  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 80680BB8  4B BE 6D D5 */	bl cM_rndFX__Ff
/* 80680BBC  D0 3F 06 C4 */	stfs f1, 0x6c4(r31)
lbl_80680BC0:
/* 80680BC0  28 1E 00 00 */	cmplwi r30, 0
/* 80680BC4  40 82 00 18 */	bne lbl_80680BDC
/* 80680BC8  38 00 00 02 */	li r0, 2
/* 80680BCC  B0 1F 06 74 */	sth r0, 0x674(r31)
/* 80680BD0  38 00 00 3C */	li r0, 0x3c
/* 80680BD4  B0 1F 06 A6 */	sth r0, 0x6a6(r31)
/* 80680BD8  48 00 00 88 */	b lbl_80680C60
lbl_80680BDC:
/* 80680BDC  38 61 00 0C */	addi r3, r1, 0xc
/* 80680BE0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80680BE4  38 BF 06 BC */	addi r5, r31, 0x6bc
/* 80680BE8  4B BE 5E FD */	bl __pl__4cXyzCFRC3Vec
/* 80680BEC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80680BF0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80680BF4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80680BF8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80680BFC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80680C00  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80680C04  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701CE@ha */
/* 80680C08  38 03 01 CE */	addi r0, r3, 0x01CE /* 0x000701CE@l */
/* 80680C0C  90 01 00 08 */	stw r0, 8(r1)
/* 80680C10  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 80680C14  38 81 00 08 */	addi r4, r1, 8
/* 80680C18  38 A0 FF FF */	li r5, -1
/* 80680C1C  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 80680C20  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80680C24  7D 89 03 A6 */	mtctr r12
/* 80680C28  4E 80 04 21 */	bctrl 
/* 80680C2C  48 00 00 34 */	b lbl_80680C60
lbl_80680C30:
/* 80680C30  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 80680C34  38 80 00 00 */	li r4, 0
/* 80680C38  38 A0 00 04 */	li r5, 4
/* 80680C3C  38 C0 01 C2 */	li r6, 0x1c2
/* 80680C40  4B BE F9 C9 */	bl cLib_addCalcAngleS2__FPssss
/* 80680C44  A8 1F 06 A6 */	lha r0, 0x6a6(r31)
/* 80680C48  2C 00 00 00 */	cmpwi r0, 0
/* 80680C4C  40 82 00 14 */	bne lbl_80680C60
/* 80680C50  38 00 00 01 */	li r0, 1
/* 80680C54  B0 1F 06 72 */	sth r0, 0x672(r31)
/* 80680C58  38 00 00 00 */	li r0, 0
/* 80680C5C  B0 1F 06 74 */	sth r0, 0x674(r31)
lbl_80680C60:
/* 80680C60  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80680C64  A8 1F 06 C8 */	lha r0, 0x6c8(r31)
/* 80680C68  7C 03 02 14 */	add r0, r3, r0
/* 80680C6C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80680C70  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80680C74  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80680C78  38 00 00 00 */	li r0, 0
/* 80680C7C  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80680C80  39 61 00 30 */	addi r11, r1, 0x30
/* 80680C84  4B CE 15 A5 */	bl _restgpr_29
/* 80680C88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80680C8C  7C 08 03 A6 */	mtlr r0
/* 80680C90  38 21 00 30 */	addi r1, r1, 0x30
/* 80680C94  4E 80 00 20 */	blr 
