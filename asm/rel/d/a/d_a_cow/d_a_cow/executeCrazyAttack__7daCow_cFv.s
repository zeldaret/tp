lbl_8065F144:
/* 8065F144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065F148  7C 08 02 A6 */	mflr r0
/* 8065F14C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065F150  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8065F154  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8065F158  7C 7F 1B 78 */	mr r31, r3
/* 8065F15C  3C 60 80 66 */	lis r3, lit_3987@ha /* 0x80662DB0@ha */
/* 8065F160  3B C3 2D B0 */	addi r30, r3, lit_3987@l /* 0x80662DB0@l */
/* 8065F164  88 1F 0C 61 */	lbz r0, 0xc61(r31)
/* 8065F168  2C 00 00 01 */	cmpwi r0, 1
/* 8065F16C  41 82 00 B0 */	beq lbl_8065F21C
/* 8065F170  40 80 00 10 */	bge lbl_8065F180
/* 8065F174  2C 00 00 00 */	cmpwi r0, 0
/* 8065F178  40 80 00 14 */	bge lbl_8065F18C
/* 8065F17C  48 00 01 74 */	b lbl_8065F2F0
lbl_8065F180:
/* 8065F180  2C 00 00 03 */	cmpwi r0, 3
/* 8065F184  40 80 01 6C */	bge lbl_8065F2F0
/* 8065F188  48 00 01 2C */	b lbl_8065F2B4
lbl_8065F18C:
/* 8065F18C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8065F190  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8065F194  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8065F198  4B C1 15 A9 */	bl cLib_chaseF__FPfff
/* 8065F19C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8065F1A0  38 63 00 0C */	addi r3, r3, 0xc
/* 8065F1A4  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8065F1A8  4B CC 92 85 */	bl checkPass__12J3DFrameCtrlFf
/* 8065F1AC  2C 03 00 00 */	cmpwi r3, 0
/* 8065F1B0  41 82 00 2C */	beq lbl_8065F1DC
/* 8065F1B4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007A@ha */
/* 8065F1B8  38 03 00 7A */	addi r0, r3, 0x007A /* 0x0005007A@l */
/* 8065F1BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8065F1C0  38 7F 05 7C */	addi r3, r31, 0x57c
/* 8065F1C4  38 81 00 0C */	addi r4, r1, 0xc
/* 8065F1C8  38 A0 FF FF */	li r5, -1
/* 8065F1CC  81 9F 05 7C */	lwz r12, 0x57c(r31)
/* 8065F1D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8065F1D4  7D 89 03 A6 */	mtctr r12
/* 8065F1D8  4E 80 04 21 */	bctrl 
lbl_8065F1DC:
/* 8065F1DC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8065F1E0  38 80 00 01 */	li r4, 1
/* 8065F1E4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065F1E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065F1EC  40 82 00 18 */	bne lbl_8065F204
/* 8065F1F0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8065F1F4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065F1F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065F1FC  41 82 00 08 */	beq lbl_8065F204
/* 8065F200  38 80 00 00 */	li r4, 0
lbl_8065F204:
/* 8065F204  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065F208  41 82 00 E8 */	beq lbl_8065F2F0
/* 8065F20C  7F E3 FB 78 */	mr r3, r31
/* 8065F210  38 80 00 00 */	li r4, 0
/* 8065F214  48 00 00 F5 */	bl initCrazyAway__7daCow_cFi
/* 8065F218  48 00 00 D8 */	b lbl_8065F2F0
lbl_8065F21C:
/* 8065F21C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8065F220  38 63 00 0C */	addi r3, r3, 0xc
/* 8065F224  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8065F228  4B CC 92 05 */	bl checkPass__12J3DFrameCtrlFf
/* 8065F22C  2C 03 00 00 */	cmpwi r3, 0
/* 8065F230  41 82 00 2C */	beq lbl_8065F25C
/* 8065F234  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007A@ha */
/* 8065F238  38 03 00 7A */	addi r0, r3, 0x007A /* 0x0005007A@l */
/* 8065F23C  90 01 00 08 */	stw r0, 8(r1)
/* 8065F240  38 7F 05 7C */	addi r3, r31, 0x57c
/* 8065F244  38 81 00 08 */	addi r4, r1, 8
/* 8065F248  38 A0 FF FF */	li r5, -1
/* 8065F24C  81 9F 05 7C */	lwz r12, 0x57c(r31)
/* 8065F250  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8065F254  7D 89 03 A6 */	mtctr r12
/* 8065F258  4E 80 04 21 */	bctrl 
lbl_8065F25C:
/* 8065F25C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8065F260  38 63 00 0C */	addi r3, r3, 0xc
/* 8065F264  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8065F268  4B CC 91 C5 */	bl checkPass__12J3DFrameCtrlFf
/* 8065F26C  2C 03 00 00 */	cmpwi r3, 0
/* 8065F270  41 82 00 80 */	beq lbl_8065F2F0
/* 8065F274  88 1F 0C 5F */	lbz r0, 0xc5f(r31)
/* 8065F278  28 00 00 03 */	cmplwi r0, 3
/* 8065F27C  40 82 00 14 */	bne lbl_8065F290
/* 8065F280  7F E3 FB 78 */	mr r3, r31
/* 8065F284  38 80 00 00 */	li r4, 0
/* 8065F288  48 00 00 81 */	bl initCrazyAway__7daCow_cFi
/* 8065F28C  48 00 00 64 */	b lbl_8065F2F0
lbl_8065F290:
/* 8065F290  7F E3 FB 78 */	mr r3, r31
/* 8065F294  38 80 00 15 */	li r4, 0x15
/* 8065F298  38 A0 00 00 */	li r5, 0
/* 8065F29C  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 8065F2A0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8065F2A4  4B FF 94 8D */	bl setBck__7daCow_cFiUcff
/* 8065F2A8  38 00 00 02 */	li r0, 2
/* 8065F2AC  98 1F 0C 61 */	stb r0, 0xc61(r31)
/* 8065F2B0  48 00 00 40 */	b lbl_8065F2F0
lbl_8065F2B4:
/* 8065F2B4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8065F2B8  38 80 00 01 */	li r4, 1
/* 8065F2BC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065F2C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065F2C4  40 82 00 18 */	bne lbl_8065F2DC
/* 8065F2C8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8065F2CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065F2D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065F2D4  41 82 00 08 */	beq lbl_8065F2DC
/* 8065F2D8  38 80 00 00 */	li r4, 0
lbl_8065F2DC:
/* 8065F2DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065F2E0  41 82 00 10 */	beq lbl_8065F2F0
/* 8065F2E4  7F E3 FB 78 */	mr r3, r31
/* 8065F2E8  38 80 00 00 */	li r4, 0
/* 8065F2EC  48 00 00 1D */	bl initCrazyAway__7daCow_cFi
lbl_8065F2F0:
/* 8065F2F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8065F2F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8065F2F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065F2FC  7C 08 03 A6 */	mtlr r0
/* 8065F300  38 21 00 20 */	addi r1, r1, 0x20
/* 8065F304  4E 80 00 20 */	blr 
