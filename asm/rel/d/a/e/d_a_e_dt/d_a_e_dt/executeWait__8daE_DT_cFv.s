lbl_806B0200:
/* 806B0200  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B0204  7C 08 02 A6 */	mflr r0
/* 806B0208  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B020C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806B0210  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806B0214  7C 7E 1B 78 */	mr r30, r3
/* 806B0218  3C 80 80 6B */	lis r4, lit_3792@ha /* 0x806B5CD4@ha */
/* 806B021C  3B E4 5C D4 */	addi r31, r4, lit_3792@l /* 0x806B5CD4@l */
/* 806B0220  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 806B0224  2C 00 00 01 */	cmpwi r0, 1
/* 806B0228  41 82 00 28 */	beq lbl_806B0250
/* 806B022C  40 80 00 10 */	bge lbl_806B023C
/* 806B0230  2C 00 00 00 */	cmpwi r0, 0
/* 806B0234  40 80 00 14 */	bge lbl_806B0248
/* 806B0238  48 00 01 08 */	b lbl_806B0340
lbl_806B023C:
/* 806B023C  2C 00 00 03 */	cmpwi r0, 3
/* 806B0240  40 80 01 00 */	bge lbl_806B0340
/* 806B0244  48 00 00 CC */	b lbl_806B0310
lbl_806B0248:
/* 806B0248  38 00 00 00 */	li r0, 0
/* 806B024C  90 1E 07 58 */	stw r0, 0x758(r30)
lbl_806B0250:
/* 806B0250  7F C3 F3 78 */	mr r3, r30
/* 806B0254  38 80 00 0F */	li r4, 0xf
/* 806B0258  4B FF E4 99 */	bl checkBck__8daE_DT_cFi
/* 806B025C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B0260  41 82 00 5C */	beq lbl_806B02BC
/* 806B0264  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B0268  38 63 00 0C */	addi r3, r3, 0xc
/* 806B026C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B0270  4B C7 81 BD */	bl checkPass__12J3DFrameCtrlFf
/* 806B0274  2C 03 00 00 */	cmpwi r3, 0
/* 806B0278  40 82 00 1C */	bne lbl_806B0294
/* 806B027C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B0280  38 63 00 0C */	addi r3, r3, 0xc
/* 806B0284  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806B0288  4B C7 81 A5 */	bl checkPass__12J3DFrameCtrlFf
/* 806B028C  2C 03 00 00 */	cmpwi r3, 0
/* 806B0290  41 82 00 2C */	beq lbl_806B02BC
lbl_806B0294:
/* 806B0294  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007031A@ha */
/* 806B0298  38 03 03 1A */	addi r0, r3, 0x031A /* 0x0007031A@l */
/* 806B029C  90 01 00 08 */	stw r0, 8(r1)
/* 806B02A0  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B02A4  38 81 00 08 */	addi r4, r1, 8
/* 806B02A8  38 A0 FF FF */	li r5, -1
/* 806B02AC  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B02B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B02B4  7D 89 03 A6 */	mtctr r12
/* 806B02B8  4E 80 04 21 */	bctrl 
lbl_806B02BC:
/* 806B02BC  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 806B02C0  2C 00 00 00 */	cmpwi r0, 0
/* 806B02C4  40 82 00 7C */	bne lbl_806B0340
/* 806B02C8  7F C3 F3 78 */	mr r3, r30
/* 806B02CC  38 80 00 17 */	li r4, 0x17
/* 806B02D0  38 A0 00 02 */	li r5, 2
/* 806B02D4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B02D8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B02DC  4B FF E3 71 */	bl setBck__8daE_DT_cFiUcff
/* 806B02E0  38 00 00 02 */	li r0, 2
/* 806B02E4  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B02E8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 806B02EC  4B BB 76 A1 */	bl cM_rndFX__Ff
/* 806B02F0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806B02F4  EC 00 08 2A */	fadds f0, f0, f1
/* 806B02F8  FC 00 00 1E */	fctiwz f0, f0
/* 806B02FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806B0300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B0304  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806B0308  90 1E 07 58 */	stw r0, 0x758(r30)
/* 806B030C  48 00 00 34 */	b lbl_806B0340
lbl_806B0310:
/* 806B0310  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 806B0314  2C 00 00 00 */	cmpwi r0, 0
/* 806B0318  40 82 00 28 */	bne lbl_806B0340
/* 806B031C  38 80 00 0F */	li r4, 0xf
/* 806B0320  38 A0 00 02 */	li r5, 2
/* 806B0324  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B0328  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B032C  4B FF E3 21 */	bl setBck__8daE_DT_cFiUcff
/* 806B0330  38 00 00 01 */	li r0, 1
/* 806B0334  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B0338  38 00 00 B4 */	li r0, 0xb4
/* 806B033C  90 1E 07 58 */	stw r0, 0x758(r30)
lbl_806B0340:
/* 806B0340  7F C3 F3 78 */	mr r3, r30
/* 806B0344  38 80 00 01 */	li r4, 1
/* 806B0348  38 A0 00 00 */	li r5, 0
/* 806B034C  4B FF E4 01 */	bl setActionMode__8daE_DT_cFii
/* 806B0350  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806B0354  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806B0358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B035C  7C 08 03 A6 */	mtlr r0
/* 806B0360  38 21 00 20 */	addi r1, r1, 0x20
/* 806B0364  4E 80 00 20 */	blr 
