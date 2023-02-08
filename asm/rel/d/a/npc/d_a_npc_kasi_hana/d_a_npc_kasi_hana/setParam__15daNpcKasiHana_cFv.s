lbl_80A1C9D0:
/* 80A1C9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1C9D4  7C 08 02 A6 */	mflr r0
/* 80A1C9D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1C9DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1C9E0  7C 7F 1B 78 */	mr r31, r3
/* 80A1C9E4  88 03 14 04 */	lbz r0, 0x1404(r3)
/* 80A1C9E8  7C 00 07 75 */	extsb. r0, r0
/* 80A1C9EC  40 82 00 18 */	bne lbl_80A1CA04
/* 80A1C9F0  38 7F 14 48 */	addi r3, r31, 0x1448
/* 80A1C9F4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A1C9F8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80A1C9FC  38 A0 00 06 */	li r5, 6
/* 80A1CA00  4B FF EA 11 */	bl initPath__15daNpcKasi_Mng_cFUcUs
lbl_80A1CA04:
/* 80A1CA04  7F E3 FB 78 */	mr r3, r31
/* 80A1CA08  3C 80 80 A2 */	lis r4, m__21daNpcKasiHana_Param_c@ha /* 0x80A210C8@ha */
/* 80A1CA0C  38 A4 10 C8 */	addi r5, r4, m__21daNpcKasiHana_Param_c@l /* 0x80A210C8@l */
/* 80A1CA10  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80A1CA14  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80A1CA18  4B 73 78 61 */	bl getDistTableIdx__8daNpcF_cFii
/* 80A1CA1C  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A1CA20  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A1CA24  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A1CA28  7F E3 FB 78 */	mr r3, r31
/* 80A1CA2C  3C 80 80 A2 */	lis r4, m__21daNpcKasiHana_Param_c@ha /* 0x80A210C8@ha */
/* 80A1CA30  38 A4 10 C8 */	addi r5, r4, m__21daNpcKasiHana_Param_c@l /* 0x80A210C8@l */
/* 80A1CA34  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80A1CA38  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80A1CA3C  4B 73 78 3D */	bl getDistTableIdx__8daNpcF_cFii
/* 80A1CA40  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A1CA44  38 00 00 0A */	li r0, 0xa
/* 80A1CA48  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A1CA4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1CA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1CA54  7C 08 03 A6 */	mtlr r0
/* 80A1CA58  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1CA5C  4E 80 00 20 */	blr 
