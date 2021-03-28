lbl_801CCE98:
/* 801CCE98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801CCE9C  7C 08 02 A6 */	mflr r0
/* 801CCEA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801CCEA4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801CCEA8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801CCEAC  7C 7E 1B 78 */	mr r30, r3
/* 801CCEB0  80 83 02 0C */	lwz r4, 0x20c(r3)
/* 801CCEB4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 801CCEB8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 801CCEBC  88 05 4E 0A */	lbz r0, 0x4e0a(r5)
/* 801CCEC0  7C 05 07 74 */	extsb r5, r0
/* 801CCEC4  4B FF E3 FD */	bl isRoomCheck__12dMenu_Fmap_cFii
/* 801CCEC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CCECC  41 82 00 CC */	beq lbl_801CCF98
/* 801CCED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801CCED4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801CCED8  88 03 00 7C */	lbz r0, 0x7c(r3)
/* 801CCEDC  28 00 00 00 */	cmplwi r0, 0
/* 801CCEE0  41 82 00 48 */	beq lbl_801CCF28
/* 801CCEE4  38 61 00 10 */	addi r3, r1, 0x10
/* 801CCEE8  4B E7 21 45 */	bl getMapRestartPos__10dMapInfo_nFv
/* 801CCEEC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801CCEF0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801CCEF4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801CCEF8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801CCEFC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801CCF00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801CCF04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801CCF08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801CCF0C  AB E3 0D BA */	lha r31, 0xdba(r3)
/* 801CCF10  80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 801CCF14  4B FF 97 19 */	bl dMenuFmap_getStartStageName__FPv
/* 801CCF18  7C 64 1B 78 */	mr r4, r3
/* 801CCF1C  38 61 00 08 */	addi r3, r1, 8
/* 801CCF20  48 19 BC 0D */	bl strcpy
/* 801CCF24  48 00 00 2C */	b lbl_801CCF50
lbl_801CCF28:
/* 801CCF28  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 801CCF2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801CCF30  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 801CCF34  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801CCF38  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 801CCF3C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801CCF40  AB E3 00 70 */	lha r31, 0x70(r3)
/* 801CCF44  38 83 00 72 */	addi r4, r3, 0x72
/* 801CCF48  38 61 00 08 */	addi r3, r1, 8
/* 801CCF4C  48 19 BB E1 */	bl strcpy
lbl_801CCF50:
/* 801CCF50  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CCF54  38 80 00 15 */	li r4, 0x15
/* 801CCF58  38 A1 00 08 */	addi r5, r1, 8
/* 801CCF5C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801CCF60  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801CCF64  C0 82 A7 64 */	lfs f4, lit_6987(r2)
/* 801CCF68  7F E0 07 34 */	extsh r0, r31
/* 801CCF6C  C8 62 A7 40 */	lfd f3, lit_4358(r2)
/* 801CCF70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801CCF74  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801CCF78  3C 00 43 30 */	lis r0, 0x4330
/* 801CCF7C  90 01 00 28 */	stw r0, 0x28(r1)
/* 801CCF80  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801CCF84  EC 00 18 28 */	fsubs f0, f0, f3
/* 801CCF88  EC 64 00 32 */	fmuls f3, f4, f0
/* 801CCF8C  38 C0 00 00 */	li r6, 0
/* 801CCF90  38 E0 00 00 */	li r7, 0
/* 801CCF94  48 00 54 89 */	bl setIcon2DPos__18dMenu_Fmap2DBack_cFUcPCcfffUcb
lbl_801CCF98:
/* 801CCF98  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801CCF9C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801CCFA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801CCFA4  7C 08 03 A6 */	mtlr r0
/* 801CCFA8  38 21 00 40 */	addi r1, r1, 0x40
/* 801CCFAC  4E 80 00 20 */	blr 
