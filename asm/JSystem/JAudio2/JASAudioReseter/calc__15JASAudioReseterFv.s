lbl_8029D200:
/* 8029D200  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029D204  7C 08 02 A6 */	mflr r0
/* 8029D208  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029D20C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029D210  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029D214  7C 7E 1B 78 */	mr r30, r3
/* 8029D218  80 63 00 00 */	lwz r3, 0(r3)
/* 8029D21C  28 03 00 00 */	cmplwi r3, 0
/* 8029D220  40 82 00 50 */	bne lbl_8029D270
/* 8029D224  3B E0 00 00 */	li r31, 0
lbl_8029D228:
/* 8029D228  7F E3 FB 78 */	mr r3, r31
/* 8029D22C  48 00 07 1D */	bl getHandle__13JASDSPChannelFUl
/* 8029D230  80 03 00 00 */	lwz r0, 0(r3)
/* 8029D234  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8029D238  40 82 00 08 */	bne lbl_8029D240
/* 8029D23C  48 00 01 05 */	bl drop__13JASDSPChannelFv
lbl_8029D240:
/* 8029D240  3B FF 00 01 */	addi r31, r31, 1
/* 8029D244  28 1F 00 40 */	cmplwi r31, 0x40
/* 8029D248  41 80 FF E0 */	blt lbl_8029D228
/* 8029D24C  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 8029D250  28 00 00 00 */	cmplwi r0, 0
/* 8029D254  41 82 00 0C */	beq lbl_8029D260
/* 8029D258  80 6D 86 0C */	lwz r3, data_80450B8C(r13)
/* 8029D25C  4B FF FB 65 */	bl stop__14JASAudioThreadFv
lbl_8029D260:
/* 8029D260  38 00 00 01 */	li r0, 1
/* 8029D264  90 1E 00 08 */	stw r0, 8(r30)
/* 8029D268  38 60 FF FF */	li r3, -1
/* 8029D26C  48 00 00 50 */	b lbl_8029D2BC
lbl_8029D270:
/* 8029D270  38 03 FF FF */	addi r0, r3, -1
/* 8029D274  90 1E 00 00 */	stw r0, 0(r30)
/* 8029D278  83 FE 00 00 */	lwz r31, 0(r30)
/* 8029D27C  48 00 0E DD */	bl getDSPLevel__9JASDriverFv
/* 8029D280  C8 42 BD 40 */	lfd f2, lit_156(r2)
/* 8029D284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029D288  3C 60 43 30 */	lis r3, 0x4330
/* 8029D28C  90 61 00 08 */	stw r3, 8(r1)
/* 8029D290  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029D294  EC 00 10 28 */	fsubs f0, f0, f2
/* 8029D298  EC 20 00 72 */	fmuls f1, f0, f1
/* 8029D29C  38 1F 00 01 */	addi r0, r31, 1
/* 8029D2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D2A4  90 61 00 10 */	stw r3, 0x10(r1)
/* 8029D2A8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8029D2AC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8029D2B0  EC 21 00 24 */	fdivs f1, f1, f0
/* 8029D2B4  48 00 0E 7D */	bl setDSPLevel__9JASDriverFf
/* 8029D2B8  38 60 00 00 */	li r3, 0
lbl_8029D2BC:
/* 8029D2BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029D2C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8029D2C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029D2C8  7C 08 03 A6 */	mtlr r0
/* 8029D2CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8029D2D0  4E 80 00 20 */	blr 
