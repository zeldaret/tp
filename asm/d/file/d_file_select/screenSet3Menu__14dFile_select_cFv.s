lbl_8018C8F4:
/* 8018C8F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8018C8F8  7C 08 02 A6 */	mflr r0
/* 8018C8FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8018C900  39 61 00 50 */	addi r11, r1, 0x50
/* 8018C904  48 1D 58 C5 */	bl _savegpr_24
/* 8018C908  7C 7F 1B 78 */	mr r31, r3
/* 8018C90C  3C 60 80 3C */	lis r3, cNullVec__6Z2Calc@ha /* 0x803BA848@ha */
/* 8018C910  3B 83 A8 48 */	addi r28, r3, cNullVec__6Z2Calc@l /* 0x803BA848@l */
/* 8018C914  38 60 01 18 */	li r3, 0x118
/* 8018C918  48 14 23 35 */	bl __nw__FUl
/* 8018C91C  7C 60 1B 79 */	or. r0, r3, r3
/* 8018C920  41 82 00 0C */	beq lbl_8018C92C
/* 8018C924  48 16 BB 75 */	bl __ct__9J2DScreenFv
/* 8018C928  7C 60 1B 78 */	mr r0, r3
lbl_8018C92C:
/* 8018C92C  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8018C930  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8018C934  3C 80 80 39 */	lis r4, d_file_d_file_select__stringBase0@ha /* 0x80394388@ha */
/* 8018C938  38 84 43 88 */	addi r4, r4, d_file_d_file_select__stringBase0@l /* 0x80394388@l */
/* 8018C93C  38 84 02 68 */	addi r4, r4, 0x268
/* 8018C940  3C A0 01 10 */	lis r5, 0x110
/* 8018C944  80 DF 00 08 */	lwz r6, 8(r31)
/* 8018C948  48 16 BD 01 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8018C94C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8018C950  48 0C 87 99 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8018C954  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha /* 0x80394388@ha */
/* 8018C958  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l /* 0x80394388@l */
/* 8018C95C  38 63 02 8B */	addi r3, r3, 0x28b
/* 8018C960  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C964  48 14 79 0D */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018C968  7C 79 1B 78 */	mr r25, r3
/* 8018C96C  48 17 C1 01 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C970  90 7F 03 28 */	stw r3, 0x328(r31)
/* 8018C974  7F 23 CB 78 */	mr r3, r25
/* 8018C978  48 17 C0 F5 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C97C  90 7F 03 2C */	stw r3, 0x32c(r31)
/* 8018C980  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 8018C984  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8018C988  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C98C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C990  7D 89 03 A6 */	mtctr r12
/* 8018C994  4E 80 04 21 */	bctrl 
/* 8018C998  80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 8018C99C  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8018C9A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C9A4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C9A8  7D 89 03 A6 */	mtctr r12
/* 8018C9AC  4E 80 04 21 */	bctrl 
/* 8018C9B0  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha /* 0x80394388@ha */
/* 8018C9B4  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l /* 0x80394388@l */
/* 8018C9B8  38 63 02 AE */	addi r3, r3, 0x2ae
/* 8018C9BC  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C9C0  48 14 78 B1 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018C9C4  48 17 C0 A9 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018C9C8  90 7F 03 30 */	stw r3, 0x330(r31)
/* 8018C9CC  80 7F 03 30 */	lwz r3, 0x330(r31)
/* 8018C9D0  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8018C9D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C9D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018C9DC  7D 89 03 A6 */	mtctr r12
/* 8018C9E0  4E 80 04 21 */	bctrl 
/* 8018C9E4  38 00 00 00 */	li r0, 0
/* 8018C9E8  90 1F 03 34 */	stw r0, 0x334(r31)
/* 8018C9EC  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha /* 0x80394388@ha */
/* 8018C9F0  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l /* 0x80394388@l */
/* 8018C9F4  38 63 02 D1 */	addi r3, r3, 0x2d1
/* 8018C9F8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018C9FC  48 14 78 75 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018CA00  48 17 C0 6D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018CA04  90 7F 03 38 */	stw r3, 0x338(r31)
/* 8018CA08  80 7F 03 38 */	lwz r3, 0x338(r31)
/* 8018CA0C  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8018CA10  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CA14  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018CA18  7D 89 03 A6 */	mtctr r12
/* 8018CA1C  4E 80 04 21 */	bctrl 
/* 8018CA20  38 00 00 00 */	li r0, 0
/* 8018CA24  90 1F 03 3C */	stw r0, 0x33c(r31)
/* 8018CA28  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8018CA2C  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E755F6E@ha */
/* 8018CA30  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x6E755F6E@l */
/* 8018CA34  3C 80 00 77 */	lis r4, 0x0077 /* 0x00776D65@ha */
/* 8018CA38  38 A4 6D 65 */	addi r5, r4, 0x6D65 /* 0x00776D65@l */
/* 8018CA3C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CA40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018CA44  7D 89 03 A6 */	mtctr r12
/* 8018CA48  4E 80 04 21 */	bctrl 
/* 8018CA4C  90 7F 01 18 */	stw r3, 0x118(r31)
/* 8018CA50  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 8018CA54  80 9F 03 28 */	lwz r4, 0x328(r31)
/* 8018CA58  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CA5C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8018CA60  7D 89 03 A6 */	mtctr r12
/* 8018CA64  4E 80 04 21 */	bctrl 
/* 8018CA68  C0 02 9F AC */	lfs f0, lit_7146(r2)
/* 8018CA6C  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 8018CA70  D0 03 00 08 */	stfs f0, 8(r3)
/* 8018CA74  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 8018CA78  48 16 B5 55 */	bl animationTransform__7J2DPaneFv
/* 8018CA7C  3B 60 00 00 */	li r27, 0
/* 8018CA80  3B 40 00 00 */	li r26, 0
/* 8018CA84  3B C0 00 00 */	li r30, 0
/* 8018CA88  3B 3C 07 70 */	addi r25, r28, 0x770
lbl_8018CA8C:
/* 8018CA8C  38 60 00 6C */	li r3, 0x6c
/* 8018CA90  48 14 21 BD */	bl __nw__FUl
/* 8018CA94  7C 60 1B 79 */	or. r0, r3, r3
/* 8018CA98  41 82 00 28 */	beq lbl_8018CAC0
/* 8018CA9C  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8018CAA0  38 1C 07 58 */	addi r0, r28, 0x758
/* 8018CAA4  7C C0 F2 14 */	add r6, r0, r30
/* 8018CAA8  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018CAAC  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018CAB0  38 E0 00 00 */	li r7, 0
/* 8018CAB4  39 00 00 00 */	li r8, 0
/* 8018CAB8  48 0C 6E CD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018CABC  7C 60 1B 78 */	mr r0, r3
lbl_8018CAC0:
/* 8018CAC0  7F BF D2 14 */	add r29, r31, r26
/* 8018CAC4  90 1D 03 40 */	stw r0, 0x340(r29)
/* 8018CAC8  38 60 00 6C */	li r3, 0x6c
/* 8018CACC  48 14 21 81 */	bl __nw__FUl
/* 8018CAD0  7C 60 1B 79 */	or. r0, r3, r3
/* 8018CAD4  41 82 00 28 */	beq lbl_8018CAFC
/* 8018CAD8  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8018CADC  38 1C 07 88 */	addi r0, r28, 0x788
/* 8018CAE0  7C C0 F2 14 */	add r6, r0, r30
/* 8018CAE4  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018CAE8  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018CAEC  38 E0 00 00 */	li r7, 0
/* 8018CAF0  39 00 00 00 */	li r8, 0
/* 8018CAF4  48 0C 6E 91 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018CAF8  7C 60 1B 78 */	mr r0, r3
lbl_8018CAFC:
/* 8018CAFC  90 1D 03 94 */	stw r0, 0x394(r29)
/* 8018CB00  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8018CB04  7C D9 F2 14 */	add r6, r25, r30
/* 8018CB08  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018CB0C  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018CB10  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CB14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018CB18  7D 89 03 A6 */	mtctr r12
/* 8018CB1C  4E 80 04 21 */	bctrl 
/* 8018CB20  38 00 00 00 */	li r0, 0
/* 8018CB24  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018CB28  80 7D 03 94 */	lwz r3, 0x394(r29)
/* 8018CB2C  83 03 00 04 */	lwz r24, 4(r3)
/* 8018CB30  4B E8 7E C1 */	bl mDoExt_getMesgFont__Fv
/* 8018CB34  7C 64 1B 78 */	mr r4, r3
/* 8018CB38  7F 03 C3 78 */	mr r3, r24
/* 8018CB3C  81 98 00 00 */	lwz r12, 0(r24)
/* 8018CB40  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8018CB44  7D 89 03 A6 */	mtctr r12
/* 8018CB48  4E 80 04 21 */	bctrl 
/* 8018CB4C  38 61 00 08 */	addi r3, r1, 8
/* 8018CB50  38 8D 81 4C */	la r4, l_msgNum(r13) /* 804506CC-_SDA_BASE_ */
/* 8018CB54  7C 84 D8 AE */	lbzx r4, r4, r27
/* 8018CB58  4B E9 35 69 */	bl fopMsgM_messageGet__FPcUl
/* 8018CB5C  80 7D 03 94 */	lwz r3, 0x394(r29)
/* 8018CB60  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CB64  38 81 00 08 */	addi r4, r1, 8
/* 8018CB68  4C C6 31 82 */	crclr 6
/* 8018CB6C  48 17 3A F5 */	bl setString__10J2DTextBoxFPCce
/* 8018CB70  38 60 00 6C */	li r3, 0x6c
/* 8018CB74  48 14 20 D9 */	bl __nw__FUl
/* 8018CB78  7C 60 1B 79 */	or. r0, r3, r3
/* 8018CB7C  41 82 00 28 */	beq lbl_8018CBA4
/* 8018CB80  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8018CB84  38 1C 07 10 */	addi r0, r28, 0x710
/* 8018CB88  7C C0 F2 14 */	add r6, r0, r30
/* 8018CB8C  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018CB90  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018CB94  38 E0 00 00 */	li r7, 0
/* 8018CB98  39 00 00 00 */	li r8, 0
/* 8018CB9C  48 0C 6D E9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018CBA0  7C 60 1B 78 */	mr r0, r3
lbl_8018CBA4:
/* 8018CBA4  90 1D 03 64 */	stw r0, 0x364(r29)
/* 8018CBA8  38 60 00 6C */	li r3, 0x6c
/* 8018CBAC  48 14 20 A1 */	bl __nw__FUl
/* 8018CBB0  7C 60 1B 79 */	or. r0, r3, r3
/* 8018CBB4  41 82 00 28 */	beq lbl_8018CBDC
/* 8018CBB8  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8018CBBC  38 1C 07 28 */	addi r0, r28, 0x728
/* 8018CBC0  7C C0 F2 14 */	add r6, r0, r30
/* 8018CBC4  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018CBC8  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018CBCC  38 E0 00 00 */	li r7, 0
/* 8018CBD0  39 00 00 00 */	li r8, 0
/* 8018CBD4  48 0C 6D B1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018CBD8  7C 60 1B 78 */	mr r0, r3
lbl_8018CBDC:
/* 8018CBDC  90 1D 03 70 */	stw r0, 0x370(r29)
/* 8018CBE0  38 60 00 6C */	li r3, 0x6c
/* 8018CBE4  48 14 20 69 */	bl __nw__FUl
/* 8018CBE8  7C 60 1B 79 */	or. r0, r3, r3
/* 8018CBEC  41 82 00 28 */	beq lbl_8018CC14
/* 8018CBF0  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8018CBF4  38 1C 07 40 */	addi r0, r28, 0x740
/* 8018CBF8  7C C0 F2 14 */	add r6, r0, r30
/* 8018CBFC  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018CC00  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018CC04  38 E0 00 00 */	li r7, 0
/* 8018CC08  39 00 00 00 */	li r8, 0
/* 8018CC0C  48 0C 6D 79 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018CC10  7C 60 1B 78 */	mr r0, r3
lbl_8018CC14:
/* 8018CC14  90 1D 03 7C */	stw r0, 0x37c(r29)
/* 8018CC18  80 7D 03 64 */	lwz r3, 0x364(r29)
/* 8018CC1C  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CC20  80 9F 03 30 */	lwz r4, 0x330(r31)
/* 8018CC24  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CC28  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018CC2C  7D 89 03 A6 */	mtctr r12
/* 8018CC30  4E 80 04 21 */	bctrl 
/* 8018CC34  80 7D 03 70 */	lwz r3, 0x370(r29)
/* 8018CC38  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CC3C  80 9F 03 30 */	lwz r4, 0x330(r31)
/* 8018CC40  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CC44  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018CC48  7D 89 03 A6 */	mtctr r12
/* 8018CC4C  4E 80 04 21 */	bctrl 
/* 8018CC50  80 7D 03 7C */	lwz r3, 0x37c(r29)
/* 8018CC54  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CC58  80 9F 03 30 */	lwz r4, 0x330(r31)
/* 8018CC5C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CC60  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018CC64  7D 89 03 A6 */	mtctr r12
/* 8018CC68  4E 80 04 21 */	bctrl 
/* 8018CC6C  80 7D 03 70 */	lwz r3, 0x370(r29)
/* 8018CC70  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CC74  80 9F 03 38 */	lwz r4, 0x338(r31)
/* 8018CC78  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CC7C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018CC80  7D 89 03 A6 */	mtctr r12
/* 8018CC84  4E 80 04 21 */	bctrl 
/* 8018CC88  80 7D 03 7C */	lwz r3, 0x37c(r29)
/* 8018CC8C  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CC90  80 9F 03 38 */	lwz r4, 0x338(r31)
/* 8018CC94  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CC98  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018CC9C  7D 89 03 A6 */	mtctr r12
/* 8018CCA0  4E 80 04 21 */	bctrl 
/* 8018CCA4  3B 7B 00 01 */	addi r27, r27, 1
/* 8018CCA8  2C 1B 00 03 */	cmpwi r27, 3
/* 8018CCAC  3B 5A 00 04 */	addi r26, r26, 4
/* 8018CCB0  3B DE 00 08 */	addi r30, r30, 8
/* 8018CCB4  41 80 FD D8 */	blt lbl_8018CA8C
/* 8018CCB8  39 61 00 50 */	addi r11, r1, 0x50
/* 8018CCBC  48 1D 55 59 */	bl _restgpr_24
/* 8018CCC0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8018CCC4  7C 08 03 A6 */	mtlr r0
/* 8018CCC8  38 21 00 50 */	addi r1, r1, 0x50
/* 8018CCCC  4E 80 00 20 */	blr 
