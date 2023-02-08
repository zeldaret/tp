lbl_8023AE68:
/* 8023AE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023AE6C  7C 08 02 A6 */	mflr r0
/* 8023AE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023AE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023AE78  7C 7F 1B 78 */	mr r31, r3
/* 8023AE7C  88 83 01 0E */	lbz r4, 0x10e(r3)
/* 8023AE80  28 04 00 FF */	cmplwi r4, 0xff
/* 8023AE84  40 82 00 64 */	bne lbl_8023AEE8
/* 8023AE88  88 1F 01 0F */	lbz r0, 0x10f(r31)
/* 8023AE8C  28 00 00 00 */	cmplwi r0, 0
/* 8023AE90  40 82 00 18 */	bne lbl_8023AEA8
/* 8023AE94  C0 02 B1 84 */	lfs f0, lit_4604(r2)
/* 8023AE98  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023AE9C  38 80 00 00 */	li r4, 0
/* 8023AEA0  48 00 09 D1 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AEA4  48 00 00 38 */	b lbl_8023AEDC
lbl_8023AEA8:
/* 8023AEA8  28 00 00 01 */	cmplwi r0, 1
/* 8023AEAC  40 82 00 18 */	bne lbl_8023AEC4
/* 8023AEB0  C0 02 B1 88 */	lfs f0, lit_4605(r2)
/* 8023AEB4  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023AEB8  38 80 00 01 */	li r4, 1
/* 8023AEBC  48 00 09 B5 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AEC0  48 00 00 1C */	b lbl_8023AEDC
lbl_8023AEC4:
/* 8023AEC4  28 00 00 02 */	cmplwi r0, 2
/* 8023AEC8  40 82 00 14 */	bne lbl_8023AEDC
/* 8023AECC  C0 02 B1 90 */	lfs f0, lit_4607(r2)
/* 8023AED0  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023AED4  38 80 00 02 */	li r4, 2
/* 8023AED8  48 00 09 99 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
lbl_8023AEDC:
/* 8023AEDC  38 00 00 03 */	li r0, 3
/* 8023AEE0  98 1F 01 13 */	stb r0, 0x113(r31)
/* 8023AEE4  48 00 02 50 */	b lbl_8023B134
lbl_8023AEE8:
/* 8023AEE8  88 1F 01 0F */	lbz r0, 0x10f(r31)
/* 8023AEEC  2C 00 00 01 */	cmpwi r0, 1
/* 8023AEF0  41 82 00 D8 */	beq lbl_8023AFC8
/* 8023AEF4  40 80 00 10 */	bge lbl_8023AF04
/* 8023AEF8  2C 00 00 00 */	cmpwi r0, 0
/* 8023AEFC  40 80 00 14 */	bge lbl_8023AF10
/* 8023AF00  48 00 02 34 */	b lbl_8023B134
lbl_8023AF04:
/* 8023AF04  2C 00 00 03 */	cmpwi r0, 3
/* 8023AF08  40 80 02 2C */	bge lbl_8023B134
/* 8023AF0C  48 00 01 74 */	b lbl_8023B080
lbl_8023AF10:
/* 8023AF10  28 04 00 01 */	cmplwi r4, 1
/* 8023AF14  40 82 00 58 */	bne lbl_8023AF6C
/* 8023AF18  88 1F 01 08 */	lbz r0, 0x108(r31)
/* 8023AF1C  28 00 00 00 */	cmplwi r0, 0
/* 8023AF20  41 82 00 10 */	beq lbl_8023AF30
/* 8023AF24  C0 02 B1 84 */	lfs f0, lit_4604(r2)
/* 8023AF28  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023AF2C  48 00 00 14 */	b lbl_8023AF40
lbl_8023AF30:
/* 8023AF30  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023AF34  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023AF38  EC 01 00 2A */	fadds f0, f1, f0
/* 8023AF3C  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
lbl_8023AF40:
/* 8023AF40  7F E3 FB 78 */	mr r3, r31
/* 8023AF44  38 80 00 00 */	li r4, 0
/* 8023AF48  48 00 09 29 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AF4C  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023AF50  C0 02 B1 84 */	lfs f0, lit_4604(r2)
/* 8023AF54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8023AF58  4C 41 13 82 */	cror 2, 1, 2
/* 8023AF5C  40 82 01 D8 */	bne lbl_8023B134
/* 8023AF60  38 00 00 03 */	li r0, 3
/* 8023AF64  98 1F 01 13 */	stb r0, 0x113(r31)
/* 8023AF68  48 00 01 CC */	b lbl_8023B134
lbl_8023AF6C:
/* 8023AF6C  28 04 00 02 */	cmplwi r4, 2
/* 8023AF70  40 82 01 C4 */	bne lbl_8023B134
/* 8023AF74  88 1F 01 08 */	lbz r0, 0x108(r31)
/* 8023AF78  28 00 00 00 */	cmplwi r0, 0
/* 8023AF7C  41 82 00 10 */	beq lbl_8023AF8C
/* 8023AF80  C0 02 B1 8C */	lfs f0, lit_4606(r2)
/* 8023AF84  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023AF88  48 00 00 14 */	b lbl_8023AF9C
lbl_8023AF8C:
/* 8023AF8C  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023AF90  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023AF94  EC 01 00 2A */	fadds f0, f1, f0
/* 8023AF98  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
lbl_8023AF9C:
/* 8023AF9C  7F E3 FB 78 */	mr r3, r31
/* 8023AFA0  38 80 00 00 */	li r4, 0
/* 8023AFA4  48 00 08 CD */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AFA8  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023AFAC  C0 02 B1 8C */	lfs f0, lit_4606(r2)
/* 8023AFB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8023AFB4  4C 41 13 82 */	cror 2, 1, 2
/* 8023AFB8  40 82 01 7C */	bne lbl_8023B134
/* 8023AFBC  38 00 00 03 */	li r0, 3
/* 8023AFC0  98 1F 01 13 */	stb r0, 0x113(r31)
/* 8023AFC4  48 00 01 70 */	b lbl_8023B134
lbl_8023AFC8:
/* 8023AFC8  28 04 00 00 */	cmplwi r4, 0
/* 8023AFCC  40 82 00 58 */	bne lbl_8023B024
/* 8023AFD0  88 1F 01 08 */	lbz r0, 0x108(r31)
/* 8023AFD4  28 00 00 00 */	cmplwi r0, 0
/* 8023AFD8  41 82 00 10 */	beq lbl_8023AFE8
/* 8023AFDC  C0 02 B1 88 */	lfs f0, lit_4605(r2)
/* 8023AFE0  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023AFE4  48 00 00 14 */	b lbl_8023AFF8
lbl_8023AFE8:
/* 8023AFE8  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023AFEC  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023AFF0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023AFF4  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
lbl_8023AFF8:
/* 8023AFF8  7F E3 FB 78 */	mr r3, r31
/* 8023AFFC  38 80 00 01 */	li r4, 1
/* 8023B000  48 00 08 71 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023B004  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023B008  C0 02 B1 88 */	lfs f0, lit_4605(r2)
/* 8023B00C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8023B010  4C 40 13 82 */	cror 2, 0, 2
/* 8023B014  40 82 01 20 */	bne lbl_8023B134
/* 8023B018  38 00 00 03 */	li r0, 3
/* 8023B01C  98 1F 01 13 */	stb r0, 0x113(r31)
/* 8023B020  48 00 01 14 */	b lbl_8023B134
lbl_8023B024:
/* 8023B024  28 04 00 02 */	cmplwi r4, 2
/* 8023B028  40 82 01 0C */	bne lbl_8023B134
/* 8023B02C  88 1F 01 08 */	lbz r0, 0x108(r31)
/* 8023B030  28 00 00 00 */	cmplwi r0, 0
/* 8023B034  41 82 00 10 */	beq lbl_8023B044
/* 8023B038  C0 02 B1 8C */	lfs f0, lit_4606(r2)
/* 8023B03C  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023B040  48 00 00 14 */	b lbl_8023B054
lbl_8023B044:
/* 8023B044  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023B048  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B04C  EC 01 00 2A */	fadds f0, f1, f0
/* 8023B050  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
lbl_8023B054:
/* 8023B054  7F E3 FB 78 */	mr r3, r31
/* 8023B058  38 80 00 01 */	li r4, 1
/* 8023B05C  48 00 08 15 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023B060  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023B064  C0 02 B1 8C */	lfs f0, lit_4606(r2)
/* 8023B068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8023B06C  4C 41 13 82 */	cror 2, 1, 2
/* 8023B070  40 82 00 C4 */	bne lbl_8023B134
/* 8023B074  38 00 00 03 */	li r0, 3
/* 8023B078  98 1F 01 13 */	stb r0, 0x113(r31)
/* 8023B07C  48 00 00 B8 */	b lbl_8023B134
lbl_8023B080:
/* 8023B080  28 04 00 01 */	cmplwi r4, 1
/* 8023B084  40 82 00 58 */	bne lbl_8023B0DC
/* 8023B088  88 1F 01 08 */	lbz r0, 0x108(r31)
/* 8023B08C  28 00 00 00 */	cmplwi r0, 0
/* 8023B090  41 82 00 10 */	beq lbl_8023B0A0
/* 8023B094  C0 02 B1 90 */	lfs f0, lit_4607(r2)
/* 8023B098  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023B09C  48 00 00 14 */	b lbl_8023B0B0
lbl_8023B0A0:
/* 8023B0A0  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023B0A4  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B0A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023B0AC  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
lbl_8023B0B0:
/* 8023B0B0  7F E3 FB 78 */	mr r3, r31
/* 8023B0B4  38 80 00 02 */	li r4, 2
/* 8023B0B8  48 00 07 B9 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023B0BC  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023B0C0  C0 02 B1 90 */	lfs f0, lit_4607(r2)
/* 8023B0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8023B0C8  4C 40 13 82 */	cror 2, 0, 2
/* 8023B0CC  40 82 00 68 */	bne lbl_8023B134
/* 8023B0D0  38 00 00 03 */	li r0, 3
/* 8023B0D4  98 1F 01 13 */	stb r0, 0x113(r31)
/* 8023B0D8  48 00 00 5C */	b lbl_8023B134
lbl_8023B0DC:
/* 8023B0DC  28 04 00 00 */	cmplwi r4, 0
/* 8023B0E0  40 82 00 54 */	bne lbl_8023B134
/* 8023B0E4  88 1F 01 08 */	lbz r0, 0x108(r31)
/* 8023B0E8  28 00 00 00 */	cmplwi r0, 0
/* 8023B0EC  41 82 00 10 */	beq lbl_8023B0FC
/* 8023B0F0  C0 02 B1 88 */	lfs f0, lit_4605(r2)
/* 8023B0F4  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023B0F8  48 00 00 14 */	b lbl_8023B10C
lbl_8023B0FC:
/* 8023B0FC  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023B100  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023B104  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023B108  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
lbl_8023B10C:
/* 8023B10C  7F E3 FB 78 */	mr r3, r31
/* 8023B110  38 80 00 02 */	li r4, 2
/* 8023B114  48 00 07 5D */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023B118  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8023B11C  C0 02 B1 88 */	lfs f0, lit_4605(r2)
/* 8023B120  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8023B124  4C 40 13 82 */	cror 2, 0, 2
/* 8023B128  40 82 00 0C */	bne lbl_8023B134
/* 8023B12C  38 00 00 03 */	li r0, 3
/* 8023B130  98 1F 01 13 */	stb r0, 0x113(r31)
lbl_8023B134:
/* 8023B134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023B138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023B13C  7C 08 03 A6 */	mtlr r0
/* 8023B140  38 21 00 10 */	addi r1, r1, 0x10
/* 8023B144  4E 80 00 20 */	blr 
