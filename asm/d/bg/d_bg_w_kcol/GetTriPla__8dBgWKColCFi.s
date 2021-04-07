lbl_8007E8C0:
/* 8007E8C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007E8C4  7C 08 02 A6 */	mflr r0
/* 8007E8C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007E8CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8007E8D0  48 2E 39 0D */	bl _savegpr_29
/* 8007E8D4  7C 7D 1B 78 */	mr r29, r3
/* 8007E8D8  7C 9E 23 78 */	mr r30, r4
/* 8007E8DC  80 64 00 18 */	lwz r3, 0x18(r4)
/* 8007E8E0  80 63 00 08 */	lwz r3, 8(r3)
/* 8007E8E4  54 A0 20 36 */	slwi r0, r5, 4
/* 8007E8E8  7F E3 02 14 */	add r31, r3, r0
/* 8007E8EC  7F C3 F3 78 */	mr r3, r30
/* 8007E8F0  7F E4 FB 78 */	mr r4, r31
/* 8007E8F4  38 A1 00 08 */	addi r5, r1, 8
/* 8007E8F8  4B FF FF 59 */	bl getTriNrm__8dBgWKColCFP12KC_PrismDataPP3Vec
/* 8007E8FC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8007E900  80 63 00 00 */	lwz r3, 0(r3)
/* 8007E904  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8007E908  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007E90C  7F E3 02 14 */	add r31, r3, r0
/* 8007E910  80 61 00 08 */	lwz r3, 8(r1)
/* 8007E914  7F E4 FB 78 */	mr r4, r31
/* 8007E918  48 2C 88 7D */	bl PSVECDotProduct
/* 8007E91C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8007E920  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8007E924  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8007E928  38 61 00 0C */	addi r3, r1, 0xc
/* 8007E92C  80 81 00 08 */	lwz r4, 8(r1)
/* 8007E930  7F E5 FB 78 */	mr r5, r31
/* 8007E934  48 1F 0B F9 */	bl SetupNP__8cM3dGPlaFRC3VecRC3Vec
/* 8007E938  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8007E93C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8007E940  90 1D 00 10 */	stw r0, 0x10(r29)
/* 8007E944  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8007E948  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8007E94C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8007E950  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8007E954  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8007E958  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8007E95C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8007E960  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8007E964  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8007E968  39 61 00 30 */	addi r11, r1, 0x30
/* 8007E96C  48 2E 38 BD */	bl _restgpr_29
/* 8007E970  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007E974  7C 08 03 A6 */	mtlr r0
/* 8007E978  38 21 00 30 */	addi r1, r1, 0x30
/* 8007E97C  4E 80 00 20 */	blr 
