lbl_80A1FA9C:
/* 80A1FA9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1FAA0  7C 08 02 A6 */	mflr r0
/* 80A1FAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1FAA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1FAAC  7C 7F 1B 78 */	mr r31, r3
/* 80A1FAB0  80 04 00 00 */	lwz r0, 0(r4)
/* 80A1FAB4  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A1FAB8  41 82 00 88 */	beq lbl_80A1FB40
/* 80A1FABC  40 80 00 1C */	bge lbl_80A1FAD8
/* 80A1FAC0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A1FAC4  41 82 00 2C */	beq lbl_80A1FAF0
/* 80A1FAC8  41 80 00 E4 */	blt lbl_80A1FBAC
/* 80A1FACC  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A1FAD0  40 80 00 30 */	bge lbl_80A1FB00
/* 80A1FAD4  48 00 00 D8 */	b lbl_80A1FBAC
lbl_80A1FAD8:
/* 80A1FAD8  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A1FADC  41 82 00 9C */	beq lbl_80A1FB78
/* 80A1FAE0  40 80 00 CC */	bge lbl_80A1FBAC
/* 80A1FAE4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A1FAE8  41 82 00 70 */	beq lbl_80A1FB58
/* 80A1FAEC  48 00 00 C0 */	b lbl_80A1FBAC
lbl_80A1FAF0:
/* 80A1FAF0  80 1F 14 68 */	lwz r0, 0x1468(r31)
/* 80A1FAF4  60 00 00 04 */	ori r0, r0, 4
/* 80A1FAF8  90 1F 14 68 */	stw r0, 0x1468(r31)
/* 80A1FAFC  48 00 00 B0 */	b lbl_80A1FBAC
lbl_80A1FB00:
/* 80A1FB00  38 80 00 00 */	li r4, 0
/* 80A1FB04  3C A0 80 A2 */	lis r5, lit_3998@ha /* 0x80A21090@ha */
/* 80A1FB08  C0 25 10 90 */	lfs f1, lit_3998@l(r5)  /* 0x80A21090@l */
/* 80A1FB0C  38 A0 00 00 */	li r5, 0
/* 80A1FB10  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A1FB14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1FB18  7D 89 03 A6 */	mtctr r12
/* 80A1FB1C  4E 80 04 21 */	bctrl 
/* 80A1FB20  80 1F 14 68 */	lwz r0, 0x1468(r31)
/* 80A1FB24  60 00 04 00 */	ori r0, r0, 0x400
/* 80A1FB28  90 1F 14 68 */	stw r0, 0x1468(r31)
/* 80A1FB2C  7F E3 FB 78 */	mr r3, r31
/* 80A1FB30  80 9F 14 38 */	lwz r4, 0x1438(r31)
/* 80A1FB34  38 A0 00 00 */	li r5, 0
/* 80A1FB38  4B 73 41 E5 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A1FB3C  48 00 00 70 */	b lbl_80A1FBAC
lbl_80A1FB40:
/* 80A1FB40  80 1F 14 68 */	lwz r0, 0x1468(r31)
/* 80A1FB44  60 00 10 00 */	ori r0, r0, 0x1000
/* 80A1FB48  90 1F 14 68 */	stw r0, 0x1468(r31)
/* 80A1FB4C  38 00 00 18 */	li r0, 0x18
/* 80A1FB50  90 1F 14 30 */	stw r0, 0x1430(r31)
/* 80A1FB54  48 00 00 58 */	b lbl_80A1FBAC
lbl_80A1FB58:
/* 80A1FB58  38 80 00 00 */	li r4, 0
/* 80A1FB5C  4B FF DC C9 */	bl setLookMode__15daNpcKasiHana_cFi
/* 80A1FB60  80 1F 14 68 */	lwz r0, 0x1468(r31)
/* 80A1FB64  60 00 00 40 */	ori r0, r0, 0x40
/* 80A1FB68  90 1F 14 68 */	stw r0, 0x1468(r31)
/* 80A1FB6C  38 7F 14 48 */	addi r3, r31, 0x1448
/* 80A1FB70  4B FF B5 69 */	bl calcCenterPos__15daNpcKasi_Mng_cFv
/* 80A1FB74  48 00 00 38 */	b lbl_80A1FBAC
lbl_80A1FB78:
/* 80A1FB78  38 00 00 56 */	li r0, 0x56
/* 80A1FB7C  90 1F 14 30 */	stw r0, 0x1430(r31)
/* 80A1FB80  80 1F 14 68 */	lwz r0, 0x1468(r31)
/* 80A1FB84  60 00 08 00 */	ori r0, r0, 0x800
/* 80A1FB88  90 1F 14 68 */	stw r0, 0x1468(r31)
/* 80A1FB8C  38 80 00 01 */	li r4, 1
/* 80A1FB90  3C A0 80 A2 */	lis r5, lit_3998@ha /* 0x80A21090@ha */
/* 80A1FB94  C0 25 10 90 */	lfs f1, lit_3998@l(r5)  /* 0x80A21090@l */
/* 80A1FB98  38 A0 00 00 */	li r5, 0
/* 80A1FB9C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A1FBA0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1FBA4  7D 89 03 A6 */	mtctr r12
/* 80A1FBA8  4E 80 04 21 */	bctrl 
lbl_80A1FBAC:
/* 80A1FBAC  38 60 00 01 */	li r3, 1
/* 80A1FBB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1FBB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1FBB8  7C 08 03 A6 */	mtlr r0
/* 80A1FBBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1FBC0  4E 80 00 20 */	blr 
