lbl_80A3C998:
/* 80A3C998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A3C99C  7C 08 02 A6 */	mflr r0
/* 80A3C9A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A3C9A4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A3C9A8  4B 92 58 35 */	bl _savegpr_29
/* 80A3C9AC  7C 7F 1B 78 */	mr r31, r3
/* 80A3C9B0  3C 60 80 A4 */	lis r3, m__16daNpc_Kn_Param_c@ha /* 0x80A40970@ha */
/* 80A3C9B4  38 83 09 70 */	addi r4, r3, m__16daNpc_Kn_Param_c@l /* 0x80A40970@l */
/* 80A3C9B8  AB A4 00 48 */	lha r29, 0x48(r4)
/* 80A3C9BC  AB C4 00 4A */	lha r30, 0x4a(r4)
/* 80A3C9C0  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80A3C9C4  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80A3C9C8  88 1F 15 AE */	lbz r0, 0x15ae(r31)
/* 80A3C9CC  7C 00 07 74 */	extsb r0, r0
/* 80A3C9D0  2C 00 00 02 */	cmpwi r0, 2
/* 80A3C9D4  41 82 00 70 */	beq lbl_80A3CA44
/* 80A3C9D8  40 80 00 14 */	bge lbl_80A3C9EC
/* 80A3C9DC  2C 00 00 00 */	cmpwi r0, 0
/* 80A3C9E0  41 82 00 18 */	beq lbl_80A3C9F8
/* 80A3C9E4  40 80 00 4C */	bge lbl_80A3CA30
/* 80A3C9E8  48 00 01 10 */	b lbl_80A3CAF8
lbl_80A3C9EC:
/* 80A3C9EC  2C 00 00 04 */	cmpwi r0, 4
/* 80A3C9F0  40 80 01 08 */	bge lbl_80A3CAF8
/* 80A3C9F4  48 00 00 AC */	b lbl_80A3CAA0
lbl_80A3C9F8:
/* 80A3C9F8  7C 63 07 34 */	extsh r3, r3
/* 80A3C9FC  7C 84 07 34 */	extsh r4, r4
/* 80A3CA00  4B 71 00 19 */	bl daNpcT_getDistTableIdx__Fii
/* 80A3CA04  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A3CA08  38 00 00 E4 */	li r0, 0xe4
/* 80A3CA0C  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80A3CA10  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A3CA14  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A3CA18  7F A3 07 34 */	extsh r3, r29
/* 80A3CA1C  7F C4 07 34 */	extsh r4, r30
/* 80A3CA20  4B 70 FF F9 */	bl daNpcT_getDistTableIdx__Fii
/* 80A3CA24  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A3CA28  38 60 00 00 */	li r3, 0
/* 80A3CA2C  48 00 00 D0 */	b lbl_80A3CAFC
lbl_80A3CA30:
/* 80A3CA30  88 1F 17 0C */	lbz r0, 0x170c(r31)
/* 80A3CA34  28 00 00 00 */	cmplwi r0, 0
/* 80A3CA38  41 82 00 0C */	beq lbl_80A3CA44
/* 80A3CA3C  38 60 00 00 */	li r3, 0
/* 80A3CA40  48 00 00 BC */	b lbl_80A3CAFC
lbl_80A3CA44:
/* 80A3CA44  7C 63 07 34 */	extsh r3, r3
/* 80A3CA48  7C 84 07 34 */	extsh r4, r4
/* 80A3CA4C  4B 70 FF CD */	bl daNpcT_getDistTableIdx__Fii
/* 80A3CA50  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A3CA54  38 00 00 E4 */	li r0, 0xe4
/* 80A3CA58  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80A3CA5C  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A3CA60  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A3CA64  7F A3 07 34 */	extsh r3, r29
/* 80A3CA68  7F C4 07 34 */	extsh r4, r30
/* 80A3CA6C  4B 70 FF AD */	bl daNpcT_getDistTableIdx__Fii
/* 80A3CA70  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A3CA74  38 7F 08 E4 */	addi r3, r31, 0x8e4
/* 80A3CA78  3C 80 80 A4 */	lis r4, m__16daNpc_Kn_Param_c@ha /* 0x80A40970@ha */
/* 80A3CA7C  38 84 09 70 */	addi r4, r4, m__16daNpc_Kn_Param_c@l /* 0x80A40970@l */
/* 80A3CA80  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A3CA84  4B 63 94 BD */	bl SetWallR__12dBgS_AcchCirFf
/* 80A3CA88  3C 60 80 A4 */	lis r3, m__16daNpc_Kn_Param_c@ha /* 0x80A40970@ha */
/* 80A3CA8C  38 63 09 70 */	addi r3, r3, m__16daNpc_Kn_Param_c@l /* 0x80A40970@l */
/* 80A3CA90  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A3CA94  D0 1F 09 14 */	stfs f0, 0x914(r31)
/* 80A3CA98  38 60 00 04 */	li r3, 4
/* 80A3CA9C  48 00 00 60 */	b lbl_80A3CAFC
lbl_80A3CAA0:
/* 80A3CAA0  7C 63 07 34 */	extsh r3, r3
/* 80A3CAA4  7C 84 07 34 */	extsh r4, r4
/* 80A3CAA8  4B 70 FF 71 */	bl daNpcT_getDistTableIdx__Fii
/* 80A3CAAC  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A3CAB0  38 00 00 E4 */	li r0, 0xe4
/* 80A3CAB4  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80A3CAB8  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A3CABC  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A3CAC0  7F A3 07 34 */	extsh r3, r29
/* 80A3CAC4  7F C4 07 34 */	extsh r4, r30
/* 80A3CAC8  4B 70 FF 51 */	bl daNpcT_getDistTableIdx__Fii
/* 80A3CACC  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A3CAD0  38 7F 08 E4 */	addi r3, r31, 0x8e4
/* 80A3CAD4  3C 80 80 A4 */	lis r4, lit_5395@ha /* 0x80A40938@ha */
/* 80A3CAD8  C0 24 09 38 */	lfs f1, lit_5395@l(r4)  /* 0x80A40938@l */
/* 80A3CADC  4B 63 94 65 */	bl SetWallR__12dBgS_AcchCirFf
/* 80A3CAE0  3C 60 80 A4 */	lis r3, m__16daNpc_Kn_Param_c@ha /* 0x80A40970@ha */
/* 80A3CAE4  38 63 09 70 */	addi r3, r3, m__16daNpc_Kn_Param_c@l /* 0x80A40970@l */
/* 80A3CAE8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A3CAEC  D0 1F 09 14 */	stfs f0, 0x914(r31)
/* 80A3CAF0  38 60 00 04 */	li r3, 4
/* 80A3CAF4  48 00 00 08 */	b lbl_80A3CAFC
lbl_80A3CAF8:
/* 80A3CAF8  38 60 00 0A */	li r3, 0xa
lbl_80A3CAFC:
/* 80A3CAFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A3CB00  4B 92 57 29 */	bl _restgpr_29
/* 80A3CB04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A3CB08  7C 08 03 A6 */	mtlr r0
/* 80A3CB0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A3CB10  4E 80 00 20 */	blr 
