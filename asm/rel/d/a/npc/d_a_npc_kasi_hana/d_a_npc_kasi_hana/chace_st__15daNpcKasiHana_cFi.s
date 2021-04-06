lbl_80A1E184:
/* 80A1E184  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1E188  7C 08 02 A6 */	mflr r0
/* 80A1E18C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1E190  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1E194  7C 7F 1B 78 */	mr r31, r3
/* 80A1E198  A8 03 14 06 */	lha r0, 0x1406(r3)
/* 80A1E19C  2C 00 00 00 */	cmpwi r0, 0
/* 80A1E1A0  41 82 00 18 */	beq lbl_80A1E1B8
/* 80A1E1A4  40 80 00 08 */	bge lbl_80A1E1AC
/* 80A1E1A8  48 00 00 68 */	b lbl_80A1E210
lbl_80A1E1AC:
/* 80A1E1AC  2C 00 00 02 */	cmpwi r0, 2
/* 80A1E1B0  40 80 00 60 */	bge lbl_80A1E210
/* 80A1E1B4  48 00 00 20 */	b lbl_80A1E1D4
lbl_80A1E1B8:
/* 80A1E1B8  38 00 00 01 */	li r0, 1
/* 80A1E1BC  98 1F 14 45 */	stb r0, 0x1445(r31)
/* 80A1E1C0  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1E1C4  C0 03 10 80 */	lfs f0, lit_3908@l(r3)  /* 0x80A21080@l */
/* 80A1E1C8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A1E1CC  B0 1F 14 06 */	sth r0, 0x1406(r31)
/* 80A1E1D0  48 00 00 40 */	b lbl_80A1E210
lbl_80A1E1D4:
/* 80A1E1D4  38 80 0C 00 */	li r4, 0xc00
/* 80A1E1D8  48 00 0F C1 */	bl _turn_to_link__15daNpcKasiHana_cFs
/* 80A1E1DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A1E1E0  41 82 00 30 */	beq lbl_80A1E210
/* 80A1E1E4  3C 60 80 A2 */	lis r3, lit_5485@ha /* 0x80A21614@ha */
/* 80A1E1E8  38 83 16 14 */	addi r4, r3, lit_5485@l /* 0x80A21614@l */
/* 80A1E1EC  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1E1F0  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1E1F4  90 61 00 08 */	stw r3, 8(r1)
/* 80A1E1F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1E1FC  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1E200  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1E204  7F E3 FB 78 */	mr r3, r31
/* 80A1E208  38 81 00 08 */	addi r4, r1, 8
/* 80A1E20C  4B FF F5 71 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
lbl_80A1E210:
/* 80A1E210  38 60 00 01 */	li r3, 1
/* 80A1E214  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A1E218  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1E21C  7C 08 03 A6 */	mtlr r0
/* 80A1E220  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1E224  4E 80 00 20 */	blr 
