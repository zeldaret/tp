lbl_8019CCDC:
/* 8019CCDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019CCE0  7C 08 02 A6 */	mflr r0
/* 8019CCE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019CCE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019CCEC  93 C1 00 08 */	stw r30, 8(r1)
/* 8019CCF0  7C 7E 1B 78 */	mr r30, r3
/* 8019CCF4  7C 9F 23 78 */	mr r31, r4
/* 8019CCF8  4B FF F6 AD */	bl dKy_sense_pat_get__Fv
/* 8019CCFC  28 03 00 0F */	cmplwi r3, 0xf
/* 8019CD00  41 81 01 44 */	bgt lbl_8019CE44
/* 8019CD04  3C 80 80 3C */	lis r4, lit_4364@ha /* 0x803BBEFC@ha */
/* 8019CD08  38 84 BE FC */	addi r4, r4, lit_4364@l /* 0x803BBEFC@l */
/* 8019CD0C  54 60 10 3A */	slwi r0, r3, 2
/* 8019CD10  7C 04 00 2E */	lwzx r0, r4, r0
/* 8019CD14  7C 09 03 A6 */	mtctr r0
/* 8019CD18  4E 80 04 20 */	bctr 
/* 8019CD1C  C0 02 A1 C0 */	lfs f0, lit_4345(r2)
/* 8019CD20  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CD24  C0 02 A1 C4 */	lfs f0, lit_4346(r2)
/* 8019CD28  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CD2C  48 00 01 18 */	b lbl_8019CE44
/* 8019CD30  C0 02 A1 C8 */	lfs f0, lit_4347(r2)
/* 8019CD34  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CD38  C0 02 A1 CC */	lfs f0, lit_4348(r2)
/* 8019CD3C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CD40  48 00 01 04 */	b lbl_8019CE44
/* 8019CD44  C0 02 A1 D0 */	lfs f0, lit_4349(r2)
/* 8019CD48  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CD4C  C0 02 A1 D4 */	lfs f0, lit_4350(r2)
/* 8019CD50  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CD54  48 00 00 F0 */	b lbl_8019CE44
/* 8019CD58  C0 02 A1 D8 */	lfs f0, lit_4351(r2)
/* 8019CD5C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CD60  C0 02 A1 DC */	lfs f0, lit_4352(r2)
/* 8019CD64  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CD68  48 00 00 DC */	b lbl_8019CE44
/* 8019CD6C  C0 02 A1 E0 */	lfs f0, lit_4353(r2)
/* 8019CD70  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CD74  C0 02 A1 E4 */	lfs f0, lit_4354(r2)
/* 8019CD78  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CD7C  48 00 00 C8 */	b lbl_8019CE44
/* 8019CD80  C0 02 A1 E0 */	lfs f0, lit_4353(r2)
/* 8019CD84  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CD88  C0 02 A1 E8 */	lfs f0, lit_4355(r2)
/* 8019CD8C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CD90  48 00 00 B4 */	b lbl_8019CE44
/* 8019CD94  C0 02 A1 C0 */	lfs f0, lit_4345(r2)
/* 8019CD98  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CD9C  C0 02 A1 C4 */	lfs f0, lit_4346(r2)
/* 8019CDA0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CDA4  48 00 00 A0 */	b lbl_8019CE44
/* 8019CDA8  C0 02 A1 C0 */	lfs f0, lit_4345(r2)
/* 8019CDAC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CDB0  C0 02 A1 C4 */	lfs f0, lit_4346(r2)
/* 8019CDB4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CDB8  48 00 00 8C */	b lbl_8019CE44
/* 8019CDBC  C0 02 A1 EC */	lfs f0, lit_4356(r2)
/* 8019CDC0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CDC4  C0 02 A1 F0 */	lfs f0, lit_4357(r2)
/* 8019CDC8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CDCC  48 00 00 78 */	b lbl_8019CE44
/* 8019CDD0  C0 02 A1 F4 */	lfs f0, lit_4358(r2)
/* 8019CDD4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CDD8  C0 02 A1 F8 */	lfs f0, lit_4359(r2)
/* 8019CDDC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CDE0  48 00 00 64 */	b lbl_8019CE44
/* 8019CDE4  C0 02 A1 C0 */	lfs f0, lit_4345(r2)
/* 8019CDE8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CDEC  C0 02 A1 FC */	lfs f0, lit_4360(r2)
/* 8019CDF0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CDF4  48 00 00 50 */	b lbl_8019CE44
/* 8019CDF8  C0 02 A1 D8 */	lfs f0, lit_4351(r2)
/* 8019CDFC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CE00  C0 02 A2 00 */	lfs f0, lit_4361(r2)
/* 8019CE04  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CE08  48 00 00 3C */	b lbl_8019CE44
/* 8019CE0C  C0 02 A1 E0 */	lfs f0, lit_4353(r2)
/* 8019CE10  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CE14  C0 02 A2 04 */	lfs f0, lit_4362(r2)
/* 8019CE18  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CE1C  48 00 00 28 */	b lbl_8019CE44
/* 8019CE20  C0 02 A2 00 */	lfs f0, lit_4361(r2)
/* 8019CE24  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CE28  C0 02 A1 F0 */	lfs f0, lit_4357(r2)
/* 8019CE2C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019CE30  48 00 00 14 */	b lbl_8019CE44
/* 8019CE34  C0 02 A1 E0 */	lfs f0, lit_4353(r2)
/* 8019CE38  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8019CE3C  C0 02 A2 08 */	lfs f0, lit_4363(r2)
/* 8019CE40  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_8019CE44:
/* 8019CE44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019CE48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8019CE4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019CE50  7C 08 03 A6 */	mtlr r0
/* 8019CE54  38 21 00 10 */	addi r1, r1, 0x10
/* 8019CE58  4E 80 00 20 */	blr 
