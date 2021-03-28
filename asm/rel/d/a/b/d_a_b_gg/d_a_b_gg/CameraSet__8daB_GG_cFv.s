lbl_805DFC58:
/* 805DFC58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805DFC5C  7C 08 02 A6 */	mflr r0
/* 805DFC60  90 01 00 34 */	stw r0, 0x34(r1)
/* 805DFC64  39 61 00 30 */	addi r11, r1, 0x30
/* 805DFC68  4B D8 25 74 */	b _savegpr_29
/* 805DFC6C  7C 7D 1B 78 */	mr r29, r3
/* 805DFC70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DFC74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DFC78  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805DFC7C  7C 00 07 74 */	extsb r0, r0
/* 805DFC80  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805DFC84  7C 63 02 14 */	add r3, r3, r0
/* 805DFC88  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 805DFC8C  4B BA 19 B4 */	b dCam_getBody__Fv
/* 805DFC90  7C 7E 1B 78 */	mr r30, r3
/* 805DFC94  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 805DFC98  28 00 00 02 */	cmplwi r0, 2
/* 805DFC9C  41 82 00 24 */	beq lbl_805DFCC0
/* 805DFCA0  7F A3 EB 78 */	mr r3, r29
/* 805DFCA4  38 80 00 02 */	li r4, 2
/* 805DFCA8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805DFCAC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805DFCB0  38 C0 00 00 */	li r6, 0
/* 805DFCB4  4B A3 BC 54 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805DFCB8  38 60 00 00 */	li r3, 0
/* 805DFCBC  48 00 00 A4 */	b lbl_805DFD60
lbl_805DFCC0:
/* 805DFCC0  38 7F 02 48 */	addi r3, r31, 0x248
/* 805DFCC4  4B B8 18 0C */	b Stop__9dCamera_cFv
/* 805DFCC8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805DFCCC  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 805DFCD0  EC 01 00 2A */	fadds f0, f1, f0
/* 805DFCD4  D0 1D 06 3C */	stfs f0, 0x63c(r29)
/* 805DFCD8  38 61 00 14 */	addi r3, r1, 0x14
/* 805DFCDC  7F C4 F3 78 */	mr r4, r30
/* 805DFCE0  4B BA 21 B8 */	b Center__9dCamera_cFv
/* 805DFCE4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805DFCE8  D0 1D 05 F4 */	stfs f0, 0x5f4(r29)
/* 805DFCEC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805DFCF0  D0 1D 05 F8 */	stfs f0, 0x5f8(r29)
/* 805DFCF4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805DFCF8  D0 1D 05 FC */	stfs f0, 0x5fc(r29)
/* 805DFCFC  C0 1D 05 F4 */	lfs f0, 0x5f4(r29)
/* 805DFD00  D0 1D 06 0C */	stfs f0, 0x60c(r29)
/* 805DFD04  C0 1D 05 F8 */	lfs f0, 0x5f8(r29)
/* 805DFD08  D0 1D 06 10 */	stfs f0, 0x610(r29)
/* 805DFD0C  C0 1D 05 FC */	lfs f0, 0x5fc(r29)
/* 805DFD10  D0 1D 06 14 */	stfs f0, 0x614(r29)
/* 805DFD14  38 61 00 08 */	addi r3, r1, 8
/* 805DFD18  7F C4 F3 78 */	mr r4, r30
/* 805DFD1C  4B BA 21 48 */	b Eye__9dCamera_cFv
/* 805DFD20  C0 01 00 08 */	lfs f0, 8(r1)
/* 805DFD24  D0 1D 06 00 */	stfs f0, 0x600(r29)
/* 805DFD28  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805DFD2C  D0 1D 06 04 */	stfs f0, 0x604(r29)
/* 805DFD30  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805DFD34  D0 1D 06 08 */	stfs f0, 0x608(r29)
/* 805DFD38  C0 1D 06 00 */	lfs f0, 0x600(r29)
/* 805DFD3C  D0 1D 06 18 */	stfs f0, 0x618(r29)
/* 805DFD40  C0 1D 06 04 */	lfs f0, 0x604(r29)
/* 805DFD44  D0 1D 06 1C */	stfs f0, 0x61c(r29)
/* 805DFD48  C0 1D 06 08 */	lfs f0, 0x608(r29)
/* 805DFD4C  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 805DFD50  38 7F 02 48 */	addi r3, r31, 0x248
/* 805DFD54  38 80 00 03 */	li r4, 3
/* 805DFD58  4B B8 32 B4 */	b SetTrimSize__9dCamera_cFl
/* 805DFD5C  38 60 00 01 */	li r3, 1
lbl_805DFD60:
/* 805DFD60  39 61 00 30 */	addi r11, r1, 0x30
/* 805DFD64  4B D8 24 C4 */	b _restgpr_29
/* 805DFD68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805DFD6C  7C 08 03 A6 */	mtlr r0
/* 805DFD70  38 21 00 30 */	addi r1, r1, 0x30
/* 805DFD74  4E 80 00 20 */	blr 
