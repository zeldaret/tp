lbl_8025E8B8:
/* 8025E8B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E8BC  7C 08 02 A6 */	mflr r0
/* 8025E8C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E8C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025E8C8  7C 7F 1B 78 */	mr r31, r3
/* 8025E8CC  38 60 01 18 */	li r3, 0x118
/* 8025E8D0  48 07 03 7D */	bl __nw__FUl
/* 8025E8D4  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E8D8  41 82 00 0C */	beq lbl_8025E8E4
/* 8025E8DC  48 09 9B BD */	bl __ct__9J2DScreenFv
/* 8025E8E0  7C 60 1B 78 */	mr r0, r3
lbl_8025E8E4:
/* 8025E8E4  90 1F 00 04 */	stw r0, 4(r31)
/* 8025E8E8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E8EC  3C 80 80 3A */	lis r4, d_d_timer__stringBase0@ha /* 0x8039A3D8@ha */
/* 8025E8F0  38 84 A3 D8 */	addi r4, r4, d_d_timer__stringBase0@l /* 0x8039A3D8@l */
/* 8025E8F4  38 84 00 89 */	addi r4, r4, 0x89
/* 8025E8F8  3C A0 00 02 */	lis r5, 2
/* 8025E8FC  80 DF 00 7C */	lwz r6, 0x7c(r31)
/* 8025E900  48 09 9D 49 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8025E904  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E908  4B FF 67 E1 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8025E90C  38 00 00 00 */	li r0, 0
/* 8025E910  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8025E914  38 60 00 6C */	li r3, 0x6c
/* 8025E918  48 07 03 35 */	bl __nw__FUl
/* 8025E91C  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E920  41 82 00 24 */	beq lbl_8025E944
/* 8025E924  80 9F 00 04 */	lwz r4, 4(r31)
/* 8025E928  3C A0 75 6D */	lis r5, 0x756D /* 0x756D5F6E@ha */
/* 8025E92C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x756D5F6E@l */
/* 8025E930  38 A0 00 6E */	li r5, 0x6e
/* 8025E934  38 E0 00 02 */	li r7, 2
/* 8025E938  39 00 00 00 */	li r8, 0
/* 8025E93C  4B FF 50 49 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E940  7C 60 1B 78 */	mr r0, r3
lbl_8025E944:
/* 8025E944  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8025E948  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8025E94C  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 8025E950  4B FF 6E 81 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025E954  38 00 00 00 */	li r0, 0
/* 8025E958  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8025E95C  38 60 00 6C */	li r3, 0x6c
/* 8025E960  48 07 02 ED */	bl __nw__FUl
/* 8025E964  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E968  41 82 00 28 */	beq lbl_8025E990
/* 8025E96C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8025E970  3C A0 5F 69 */	lis r5, 0x5F69 /* 0x5F695F6E@ha */
/* 8025E974  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F695F6E@l */
/* 8025E978  3C A0 00 72 */	lis r5, 0x0072 /* 0x00726964@ha */
/* 8025E97C  38 A5 69 64 */	addi r5, r5, 0x6964 /* 0x00726964@l */
/* 8025E980  38 E0 00 02 */	li r7, 2
/* 8025E984  39 00 00 00 */	li r8, 0
/* 8025E988  4B FF 4F FD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E98C  7C 60 1B 78 */	mr r0, r3
lbl_8025E990:
/* 8025E990  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8025E994  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8025E998  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 8025E99C  4B FF 6E 35 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025E9A0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E9A4  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F32@ha */
/* 8025E9A8  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x5F6E5F32@l */
/* 8025E9AC  38 A0 00 6E */	li r5, 0x6e
/* 8025E9B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E9B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E9B8  7D 89 03 A6 */	mtctr r12
/* 8025E9BC  4E 80 04 21 */	bctrl 
/* 8025E9C0  90 7F 00 5C */	stw r3, 0x5c(r31)
/* 8025E9C4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E9C8  3C 80 5F 32 */	lis r4, 0x5F32 /* 0x5F325F73@ha */
/* 8025E9CC  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F325F73@l */
/* 8025E9D0  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F6E@ha */
/* 8025E9D4  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x006E5F6E@l */
/* 8025E9D8  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E9DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E9E0  7D 89 03 A6 */	mtctr r12
/* 8025E9E4  4E 80 04 21 */	bctrl 
/* 8025E9E8  90 7F 00 60 */	stw r3, 0x60(r31)
/* 8025E9EC  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E9F0  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F31@ha */
/* 8025E9F4  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x5F6E5F31@l */
/* 8025E9F8  38 A0 00 6E */	li r5, 0x6e
/* 8025E9FC  81 83 00 00 */	lwz r12, 0(r3)
/* 8025EA00  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025EA04  7D 89 03 A6 */	mtctr r12
/* 8025EA08  4E 80 04 21 */	bctrl 
/* 8025EA0C  90 7F 00 64 */	stw r3, 0x64(r31)
/* 8025EA10  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025EA14  3C 80 5F 31 */	lis r4, 0x5F31 /* 0x5F315F73@ha */
/* 8025EA18  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F315F73@l */
/* 8025EA1C  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F6E@ha */
/* 8025EA20  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x006E5F6E@l */
/* 8025EA24  81 83 00 00 */	lwz r12, 0(r3)
/* 8025EA28  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025EA2C  7D 89 03 A6 */	mtctr r12
/* 8025EA30  4E 80 04 21 */	bctrl 
/* 8025EA34  90 7F 00 68 */	stw r3, 0x68(r31)
/* 8025EA38  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025EA3C  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F34@ha */
/* 8025EA40  38 C4 5F 34 */	addi r6, r4, 0x5F34 /* 0x5F6E5F34@l */
/* 8025EA44  38 A0 00 6E */	li r5, 0x6e
/* 8025EA48  81 83 00 00 */	lwz r12, 0(r3)
/* 8025EA4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025EA50  7D 89 03 A6 */	mtctr r12
/* 8025EA54  4E 80 04 21 */	bctrl 
/* 8025EA58  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 8025EA5C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025EA60  3C 80 5F 34 */	lis r4, 0x5F34 /* 0x5F345F73@ha */
/* 8025EA64  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F345F73@l */
/* 8025EA68  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F6E@ha */
/* 8025EA6C  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x006E5F6E@l */
/* 8025EA70  81 83 00 00 */	lwz r12, 0(r3)
/* 8025EA74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025EA78  7D 89 03 A6 */	mtctr r12
/* 8025EA7C  4E 80 04 21 */	bctrl 
/* 8025EA80  90 7F 00 70 */	stw r3, 0x70(r31)
/* 8025EA84  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025EA88  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F33@ha */
/* 8025EA8C  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x5F6E5F33@l */
/* 8025EA90  38 A0 00 6E */	li r5, 0x6e
/* 8025EA94  81 83 00 00 */	lwz r12, 0(r3)
/* 8025EA98  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025EA9C  7D 89 03 A6 */	mtctr r12
/* 8025EAA0  4E 80 04 21 */	bctrl 
/* 8025EAA4  90 7F 00 74 */	stw r3, 0x74(r31)
/* 8025EAA8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025EAAC  3C 80 5F 33 */	lis r4, 0x5F33 /* 0x5F335F73@ha */
/* 8025EAB0  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F335F73@l */
/* 8025EAB4  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F6E@ha */
/* 8025EAB8  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x006E5F6E@l */
/* 8025EABC  81 83 00 00 */	lwz r12, 0(r3)
/* 8025EAC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025EAC4  7D 89 03 A6 */	mtctr r12
/* 8025EAC8  4E 80 04 21 */	bctrl 
/* 8025EACC  90 7F 00 78 */	stw r3, 0x78(r31)
/* 8025EAD0  38 E0 00 00 */	li r7, 0
/* 8025EAD4  38 60 00 00 */	li r3, 0
/* 8025EAD8  38 A0 00 00 */	li r5, 0
lbl_8025EADC:
/* 8025EADC  38 80 00 00 */	li r4, 0
/* 8025EAE0  7C DF 1A 14 */	add r6, r31, r3
/* 8025EAE4  38 00 00 02 */	li r0, 2
/* 8025EAE8  7C 09 03 A6 */	mtctr r0
lbl_8025EAEC:
/* 8025EAEC  38 04 00 2C */	addi r0, r4, 0x2c
/* 8025EAF0  7C A6 01 2E */	stwx r5, r6, r0
/* 8025EAF4  38 84 00 04 */	addi r4, r4, 4
/* 8025EAF8  42 00 FF F4 */	bdnz lbl_8025EAEC
/* 8025EAFC  38 E7 00 01 */	addi r7, r7, 1
/* 8025EB00  2C 07 00 06 */	cmpwi r7, 6
/* 8025EB04  38 63 00 08 */	addi r3, r3, 8
/* 8025EB08  41 80 FF D4 */	blt lbl_8025EADC
/* 8025EB0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025EB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025EB14  7C 08 03 A6 */	mtlr r0
/* 8025EB18  38 21 00 10 */	addi r1, r1, 0x10
/* 8025EB1C  4E 80 00 20 */	blr 
