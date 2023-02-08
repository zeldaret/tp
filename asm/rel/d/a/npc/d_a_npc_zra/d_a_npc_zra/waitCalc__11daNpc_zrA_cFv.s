lbl_80B7FE18:
/* 80B7FE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7FE1C  7C 08 02 A6 */	mflr r0
/* 80B7FE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7FE24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7FE28  7C 7F 1B 78 */	mr r31, r3
/* 80B7FE2C  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 80B7FE30  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B7FE34  41 82 00 80 */	beq lbl_80B7FEB4
/* 80B7FE38  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80B7FE3C  2C 00 00 01 */	cmpwi r0, 1
/* 80B7FE40  41 82 00 60 */	beq lbl_80B7FEA0
/* 80B7FE44  38 80 00 14 */	li r4, 0x14
/* 80B7FE48  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FE4C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FE50  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7FE54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7FE58  7D 89 03 A6 */	mtctr r12
/* 80B7FE5C  4E 80 04 21 */	bctrl 
/* 80B7FE60  7F E3 FB 78 */	mr r3, r31
/* 80B7FE64  38 80 00 01 */	li r4, 1
/* 80B7FE68  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FE6C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FE70  38 A0 00 00 */	li r5, 0
/* 80B7FE74  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FE78  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FE7C  7D 89 03 A6 */	mtctr r12
/* 80B7FE80  4E 80 04 21 */	bctrl 
/* 80B7FE84  3C 60 80 B9 */	lis r3, lit_3939@ha /* 0x80B8C508@ha */
/* 80B7FE88  C0 03 C5 08 */	lfs f0, lit_3939@l(r3)  /* 0x80B8C508@l */
/* 80B7FE8C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B7FE90  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B7FE94  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B7FE98  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B7FE9C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80B7FEA0:
/* 80B7FEA0  38 00 00 01 */	li r0, 1
/* 80B7FEA4  98 1F 15 50 */	stb r0, 0x1550(r31)
/* 80B7FEA8  7F E3 FB 78 */	mr r3, r31
/* 80B7FEAC  48 00 24 55 */	bl calcModulation__11daNpc_zrA_cFv
/* 80B7FEB0  48 00 01 E0 */	b lbl_80B80090
lbl_80B7FEB4:
/* 80B7FEB4  38 00 00 00 */	li r0, 0
/* 80B7FEB8  98 1F 15 50 */	stb r0, 0x1550(r31)
/* 80B7FEBC  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80B7FEC0  2C 00 00 01 */	cmpwi r0, 1
/* 80B7FEC4  40 82 01 CC */	bne lbl_80B80090
/* 80B7FEC8  88 1F 15 76 */	lbz r0, 0x1576(r31)
/* 80B7FECC  2C 00 00 03 */	cmpwi r0, 3
/* 80B7FED0  41 82 00 B0 */	beq lbl_80B7FF80
/* 80B7FED4  40 80 00 14 */	bge lbl_80B7FEE8
/* 80B7FED8  2C 00 00 01 */	cmpwi r0, 1
/* 80B7FEDC  41 82 00 1C */	beq lbl_80B7FEF8
/* 80B7FEE0  40 80 00 5C */	bge lbl_80B7FF3C
/* 80B7FEE4  48 00 01 68 */	b lbl_80B8004C
lbl_80B7FEE8:
/* 80B7FEE8  2C 00 00 05 */	cmpwi r0, 5
/* 80B7FEEC  41 82 01 1C */	beq lbl_80B80008
/* 80B7FEF0  40 80 01 5C */	bge lbl_80B8004C
/* 80B7FEF4  48 00 00 D0 */	b lbl_80B7FFC4
lbl_80B7FEF8:
/* 80B7FEF8  38 80 00 01 */	li r4, 1
/* 80B7FEFC  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FF00  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FF04  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7FF08  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7FF0C  7D 89 03 A6 */	mtctr r12
/* 80B7FF10  4E 80 04 21 */	bctrl 
/* 80B7FF14  7F E3 FB 78 */	mr r3, r31
/* 80B7FF18  38 80 00 06 */	li r4, 6
/* 80B7FF1C  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FF20  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FF24  38 A0 00 00 */	li r5, 0
/* 80B7FF28  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FF2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FF30  7D 89 03 A6 */	mtctr r12
/* 80B7FF34  4E 80 04 21 */	bctrl 
/* 80B7FF38  48 00 01 58 */	b lbl_80B80090
lbl_80B7FF3C:
/* 80B7FF3C  38 80 00 02 */	li r4, 2
/* 80B7FF40  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FF44  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FF48  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7FF4C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7FF50  7D 89 03 A6 */	mtctr r12
/* 80B7FF54  4E 80 04 21 */	bctrl 
/* 80B7FF58  7F E3 FB 78 */	mr r3, r31
/* 80B7FF5C  38 80 00 07 */	li r4, 7
/* 80B7FF60  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FF64  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FF68  38 A0 00 00 */	li r5, 0
/* 80B7FF6C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FF70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FF74  7D 89 03 A6 */	mtctr r12
/* 80B7FF78  4E 80 04 21 */	bctrl 
/* 80B7FF7C  48 00 01 14 */	b lbl_80B80090
lbl_80B7FF80:
/* 80B7FF80  38 80 00 03 */	li r4, 3
/* 80B7FF84  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FF88  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FF8C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7FF90  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7FF94  7D 89 03 A6 */	mtctr r12
/* 80B7FF98  4E 80 04 21 */	bctrl 
/* 80B7FF9C  7F E3 FB 78 */	mr r3, r31
/* 80B7FFA0  38 80 00 08 */	li r4, 8
/* 80B7FFA4  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FFA8  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FFAC  38 A0 00 00 */	li r5, 0
/* 80B7FFB0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FFB4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FFB8  7D 89 03 A6 */	mtctr r12
/* 80B7FFBC  4E 80 04 21 */	bctrl 
/* 80B7FFC0  48 00 00 D0 */	b lbl_80B80090
lbl_80B7FFC4:
/* 80B7FFC4  38 80 00 04 */	li r4, 4
/* 80B7FFC8  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FFCC  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FFD0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7FFD4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7FFD8  7D 89 03 A6 */	mtctr r12
/* 80B7FFDC  4E 80 04 21 */	bctrl 
/* 80B7FFE0  7F E3 FB 78 */	mr r3, r31
/* 80B7FFE4  38 80 00 09 */	li r4, 9
/* 80B7FFE8  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FFEC  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FFF0  38 A0 00 00 */	li r5, 0
/* 80B7FFF4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FFF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FFFC  7D 89 03 A6 */	mtctr r12
/* 80B80000  4E 80 04 21 */	bctrl 
/* 80B80004  48 00 00 8C */	b lbl_80B80090
lbl_80B80008:
/* 80B80008  38 80 00 05 */	li r4, 5
/* 80B8000C  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B80010  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B80014  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B80018  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8001C  7D 89 03 A6 */	mtctr r12
/* 80B80020  4E 80 04 21 */	bctrl 
/* 80B80024  7F E3 FB 78 */	mr r3, r31
/* 80B80028  38 80 00 0A */	li r4, 0xa
/* 80B8002C  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B80030  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B80034  38 A0 00 00 */	li r5, 0
/* 80B80038  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8003C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B80040  7D 89 03 A6 */	mtctr r12
/* 80B80044  4E 80 04 21 */	bctrl 
/* 80B80048  48 00 00 48 */	b lbl_80B80090
lbl_80B8004C:
/* 80B8004C  7F E3 FB 78 */	mr r3, r31
/* 80B80050  38 80 00 14 */	li r4, 0x14
/* 80B80054  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B80058  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B8005C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B80060  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B80064  7D 89 03 A6 */	mtctr r12
/* 80B80068  4E 80 04 21 */	bctrl 
/* 80B8006C  7F E3 FB 78 */	mr r3, r31
/* 80B80070  38 80 00 00 */	li r4, 0
/* 80B80074  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B80078  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B8007C  38 A0 00 00 */	li r5, 0
/* 80B80080  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B80084  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B80088  7D 89 03 A6 */	mtctr r12
/* 80B8008C  4E 80 04 21 */	bctrl 
lbl_80B80090:
/* 80B80090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B80094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B80098  7C 08 03 A6 */	mtlr r0
/* 80B8009C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B800A0  4E 80 00 20 */	blr 
