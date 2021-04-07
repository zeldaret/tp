lbl_805688FC:
/* 805688FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80568900  7C 08 02 A6 */	mflr r0
/* 80568904  90 01 00 24 */	stw r0, 0x24(r1)
/* 80568908  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056890C  7C 7F 1B 78 */	mr r31, r3
/* 80568910  88 03 10 C4 */	lbz r0, 0x10c4(r3)
/* 80568914  28 00 00 03 */	cmplwi r0, 3
/* 80568918  41 82 01 00 */	beq lbl_80568A18
/* 8056891C  28 00 00 08 */	cmplwi r0, 8
/* 80568920  41 82 00 F8 */	beq lbl_80568A18
/* 80568924  28 00 00 0D */	cmplwi r0, 0xd
/* 80568928  41 82 00 F0 */	beq lbl_80568A18
/* 8056892C  3C 80 80 57 */	lis r4, l_motionAnmData@ha /* 0x805720E8@ha */
/* 80568930  38 A4 20 E8 */	addi r5, r4, l_motionAnmData@l /* 0x805720E8@l */
/* 80568934  80 05 02 1C */	lwz r0, 0x21c(r5)
/* 80568938  54 00 10 3A */	slwi r0, r0, 2
/* 8056893C  3C 80 80 57 */	lis r4, l_resNameList@ha /* 0x80571CF4@ha */
/* 80568940  38 84 1C F4 */	addi r4, r4, l_resNameList@l /* 0x80571CF4@l */
/* 80568944  7C 84 00 2E */	lwzx r4, r4, r0
/* 80568948  80 A5 02 14 */	lwz r5, 0x214(r5)
/* 8056894C  4B BD F7 0D */	bl getTrnsfrmAnmP__8daNpcT_cFPCci
/* 80568950  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80568954  80 04 00 08 */	lwz r0, 8(r4)
/* 80568958  7C 03 00 40 */	cmplw r3, r0
/* 8056895C  40 82 00 44 */	bne lbl_805689A0
/* 80568960  38 64 00 0C */	addi r3, r4, 0xc
/* 80568964  3C 80 80 57 */	lis r4, lit_5760@ha /* 0x8057181C@ha */
/* 80568968  C0 24 18 1C */	lfs f1, lit_5760@l(r4)  /* 0x8057181C@l */
/* 8056896C  4B DB FA C1 */	bl checkPass__12J3DFrameCtrlFf
/* 80568970  2C 03 00 00 */	cmpwi r3, 0
/* 80568974  41 82 00 2C */	beq lbl_805689A0
/* 80568978  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500D6@ha */
/* 8056897C  38 03 00 D6 */	addi r0, r3, 0x00D6 /* 0x000500D6@l */
/* 80568980  90 01 00 0C */	stw r0, 0xc(r1)
/* 80568984  38 7F 05 80 */	addi r3, r31, 0x580
/* 80568988  38 81 00 0C */	addi r4, r1, 0xc
/* 8056898C  38 A0 FF FF */	li r5, -1
/* 80568990  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80568994  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80568998  7D 89 03 A6 */	mtctr r12
/* 8056899C  4E 80 04 21 */	bctrl 
lbl_805689A0:
/* 805689A0  7F E3 FB 78 */	mr r3, r31
/* 805689A4  3C 80 80 57 */	lis r4, l_motionAnmData@ha /* 0x805720E8@ha */
/* 805689A8  38 A4 20 E8 */	addi r5, r4, l_motionAnmData@l /* 0x805720E8@l */
/* 805689AC  80 05 02 38 */	lwz r0, 0x238(r5)
/* 805689B0  54 00 10 3A */	slwi r0, r0, 2
/* 805689B4  3C 80 80 57 */	lis r4, l_resNameList@ha /* 0x80571CF4@ha */
/* 805689B8  38 84 1C F4 */	addi r4, r4, l_resNameList@l /* 0x80571CF4@l */
/* 805689BC  7C 84 00 2E */	lwzx r4, r4, r0
/* 805689C0  80 A5 02 30 */	lwz r5, 0x230(r5)
/* 805689C4  4B BD F6 95 */	bl getTrnsfrmAnmP__8daNpcT_cFPCci
/* 805689C8  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 805689CC  80 04 00 08 */	lwz r0, 8(r4)
/* 805689D0  7C 03 00 40 */	cmplw r3, r0
/* 805689D4  40 82 00 44 */	bne lbl_80568A18
/* 805689D8  38 64 00 0C */	addi r3, r4, 0xc
/* 805689DC  3C 80 80 57 */	lis r4, lit_5761@ha /* 0x80571820@ha */
/* 805689E0  C0 24 18 20 */	lfs f1, lit_5761@l(r4)  /* 0x80571820@l */
/* 805689E4  4B DB FA 49 */	bl checkPass__12J3DFrameCtrlFf
/* 805689E8  2C 03 00 00 */	cmpwi r3, 0
/* 805689EC  41 82 00 2C */	beq lbl_80568A18
/* 805689F0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500D7@ha */
/* 805689F4  38 03 00 D7 */	addi r0, r3, 0x00D7 /* 0x000500D7@l */
/* 805689F8  90 01 00 08 */	stw r0, 8(r1)
/* 805689FC  38 7F 05 80 */	addi r3, r31, 0x580
/* 80568A00  38 81 00 08 */	addi r4, r1, 8
/* 80568A04  38 A0 FF FF */	li r5, -1
/* 80568A08  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80568A0C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80568A10  7D 89 03 A6 */	mtctr r12
/* 80568A14  4E 80 04 21 */	bctrl 
lbl_80568A18:
/* 80568A18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80568A1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80568A20  7C 08 03 A6 */	mtlr r0
/* 80568A24  38 21 00 20 */	addi r1, r1, 0x20
/* 80568A28  4E 80 00 20 */	blr 
