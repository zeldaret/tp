lbl_8032ECAC:
/* 8032ECAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032ECB0  7C 08 02 A6 */	mflr r0
/* 8032ECB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032ECB8  3C A0 80 3A */	lis r5, lit_893@ha /* 0x803A2074@ha */
/* 8032ECBC  38 C5 20 74 */	addi r6, r5, lit_893@l /* 0x803A2074@l */
/* 8032ECC0  80 A6 00 00 */	lwz r5, 0(r6)
/* 8032ECC4  80 06 00 04 */	lwz r0, 4(r6)
/* 8032ECC8  90 A1 00 08 */	stw r5, 8(r1)
/* 8032ECCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032ECD0  80 06 00 08 */	lwz r0, 8(r6)
/* 8032ECD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032ECD8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8032ECDC  3C A0 80 43 */	lis r5, mParentS__6J3DSys@ha /* 0x80434C20@ha */
/* 8032ECE0  D4 05 4C 20 */	stfsu f0, mParentS__6J3DSys@l(r5)  /* 0x80434C20@l */
/* 8032ECE4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8032ECE8  D0 05 00 04 */	stfs f0, 4(r5)
/* 8032ECEC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8032ECF0  D0 05 00 08 */	stfs f0, 8(r5)
/* 8032ECF4  C0 23 00 00 */	lfs f1, 0(r3)
/* 8032ECF8  3C A0 80 43 */	lis r5, mCurrentS__6J3DSys@ha /* 0x80434C14@ha */
/* 8032ECFC  D4 25 4C 14 */	stfsu f1, mCurrentS__6J3DSys@l(r5)  /* 0x80434C14@l */
/* 8032ED00  C0 43 00 04 */	lfs f2, 4(r3)
/* 8032ED04  D0 45 00 04 */	stfs f2, 4(r5)
/* 8032ED08  C0 63 00 08 */	lfs f3, 8(r3)
/* 8032ED0C  D0 65 00 08 */	stfs f3, 8(r5)
/* 8032ED10  7C 83 23 78 */	mr r3, r4
/* 8032ED14  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8032ED18  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8032ED1C  48 00 AD 69 */	bl JMAMTXApplyScale__FPA4_CfPA4_ffff
/* 8032ED20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032ED24  7C 08 03 A6 */	mtlr r0
/* 8032ED28  38 21 00 20 */	addi r1, r1, 0x20
/* 8032ED2C  4E 80 00 20 */	blr 
