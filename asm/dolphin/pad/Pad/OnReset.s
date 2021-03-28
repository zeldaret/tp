lbl_8034FA84:
/* 8034FA84  7C 08 02 A6 */	mflr r0
/* 8034FA88  90 01 00 04 */	stw r0, 4(r1)
/* 8034FA8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034FA90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034FA94  3B E3 00 00 */	addi r31, r3, 0
/* 8034FA98  80 0D 92 E8 */	lwz r0, SamplingCallback(r13)
/* 8034FA9C  28 00 00 00 */	cmplwi r0, 0
/* 8034FAA0  41 82 00 0C */	beq lbl_8034FAAC
/* 8034FAA4  38 60 00 00 */	li r3, 0
/* 8034FAA8  48 00 00 F9 */	bl PADSetSamplingCallback
lbl_8034FAAC:
/* 8034FAAC  2C 1F 00 00 */	cmpwi r31, 0
/* 8034FAB0  40 82 00 70 */	bne lbl_8034FB20
/* 8034FAB4  80 0D 92 D0 */	lwz r0, ResettingBits(r13)
/* 8034FAB8  3B E0 00 00 */	li r31, 0
/* 8034FABC  38 7F 00 00 */	addi r3, r31, 0
/* 8034FAC0  28 00 00 00 */	cmplwi r0, 0
/* 8034FAC4  40 82 00 14 */	bne lbl_8034FAD8
/* 8034FAC8  80 0D 84 A4 */	lwz r0, ResettingChan(r13)
/* 8034FACC  2C 00 00 20 */	cmpwi r0, 0x20
/* 8034FAD0  40 82 00 08 */	bne lbl_8034FAD8
/* 8034FAD4  38 60 00 01 */	li r3, 1
lbl_8034FAD8:
/* 8034FAD8  2C 03 00 00 */	cmpwi r3, 0
/* 8034FADC  41 82 00 14 */	beq lbl_8034FAF0
/* 8034FAE0  4B FF 50 C1 */	bl SIBusy
/* 8034FAE4  2C 03 00 00 */	cmpwi r3, 0
/* 8034FAE8  40 82 00 08 */	bne lbl_8034FAF0
/* 8034FAEC  3B E0 00 01 */	li r31, 1
lbl_8034FAF0:
/* 8034FAF0  80 0D 92 EC */	lwz r0, recalibrated(r13)
/* 8034FAF4  2C 00 00 00 */	cmpwi r0, 0
/* 8034FAF8  40 82 00 20 */	bne lbl_8034FB18
/* 8034FAFC  2C 1F 00 00 */	cmpwi r31, 0
/* 8034FB00  41 82 00 18 */	beq lbl_8034FB18
/* 8034FB04  3C 60 F0 00 */	lis r3, 0xf000
/* 8034FB08  4B FF F1 35 */	bl PADRecalibrate
/* 8034FB0C  90 6D 92 EC */	stw r3, recalibrated(r13)
/* 8034FB10  38 60 00 00 */	li r3, 0
/* 8034FB14  48 00 00 18 */	b lbl_8034FB2C
lbl_8034FB18:
/* 8034FB18  7F E3 FB 78 */	mr r3, r31
/* 8034FB1C  48 00 00 10 */	b lbl_8034FB2C
lbl_8034FB20:
/* 8034FB20  38 00 00 00 */	li r0, 0
/* 8034FB24  90 0D 92 EC */	stw r0, recalibrated(r13)
/* 8034FB28  38 60 00 01 */	li r3, 1
lbl_8034FB2C:
/* 8034FB2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FB30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034FB34  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FB38  7C 08 03 A6 */	mtlr r0
/* 8034FB3C  4E 80 00 20 */	blr 
