lbl_801D98F0:
/* 801D98F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D98F4  7C 08 02 A6 */	mflr r0
/* 801D98F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D98FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9900  93 C1 00 08 */	stw r30, 8(r1)
/* 801D9904  7C 7F 1B 78 */	mr r31, r3
/* 801D9908  38 60 01 18 */	li r3, 0x118
/* 801D990C  48 0F 53 41 */	bl __nw__FUl
/* 801D9910  7C 60 1B 79 */	or. r0, r3, r3
/* 801D9914  41 82 00 0C */	beq lbl_801D9920
/* 801D9918  48 11 EB 81 */	bl __ct__9J2DScreenFv
/* 801D991C  7C 60 1B 78 */	mr r0, r3
lbl_801D9920:
/* 801D9920  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801D9924  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801D9928  3C 80 80 39 */	lis r4, d_menu_d_menu_insect__stringBase0@ha
/* 801D992C  38 84 68 C0 */	addi r4, r4, d_menu_d_menu_insect__stringBase0@l
/* 801D9930  38 84 00 4A */	addi r4, r4, 0x4a
/* 801D9934  3C A0 00 02 */	lis r5, 2
/* 801D9938  80 DF 00 08 */	lwz r6, 8(r31)
/* 801D993C  48 11 ED 0D */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801D9940  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801D9944  48 07 B7 A5 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801D9948  38 60 00 6C */	li r3, 0x6c
/* 801D994C  48 0F 53 01 */	bl __nw__FUl
/* 801D9950  7C 60 1B 79 */	or. r0, r3, r3
/* 801D9954  41 82 00 24 */	beq lbl_801D9978
/* 801D9958  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 801D995C  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801D9960  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801D9964  38 A0 00 6E */	li r5, 0x6e
/* 801D9968  38 E0 00 02 */	li r7, 2
/* 801D996C  39 00 00 00 */	li r8, 0
/* 801D9970  48 07 A0 15 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D9974  7C 60 1B 78 */	mr r0, r3
lbl_801D9978:
/* 801D9978  90 1F 00 68 */	stw r0, 0x68(r31)
/* 801D997C  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 801D9980  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D9984  48 07 BE 4D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D9988  38 60 00 6C */	li r3, 0x6c
/* 801D998C  48 0F 52 C1 */	bl __nw__FUl
/* 801D9990  7C 60 1B 79 */	or. r0, r3, r3
/* 801D9994  41 82 00 24 */	beq lbl_801D99B8
/* 801D9998  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 801D999C  3C A0 69 6E */	lis r5, 0x696E /* 0x696E5F6E@ha */
/* 801D99A0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x696E5F6E@l */
/* 801D99A4  38 A5 5F 77 */	addi r5, r5, 0x5f77
/* 801D99A8  38 E0 00 00 */	li r7, 0
/* 801D99AC  39 00 00 00 */	li r8, 0
/* 801D99B0  48 07 9F D5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D99B4  7C 60 1B 78 */	mr r0, r3
lbl_801D99B8:
/* 801D99B8  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 801D99BC  38 60 00 6C */	li r3, 0x6c
/* 801D99C0  48 0F 52 8D */	bl __nw__FUl
/* 801D99C4  7C 60 1B 79 */	or. r0, r3, r3
/* 801D99C8  41 82 00 28 */	beq lbl_801D99F0
/* 801D99CC  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 801D99D0  3C A0 6D 6F */	lis r5, 0x6D6F /* 0x6D6F5F6E@ha */
/* 801D99D4  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6D6F5F6E@l */
/* 801D99D8  3C A0 77 5F */	lis r5, 0x775F /* 0x775F645F@ha */
/* 801D99DC  38 A5 64 5F */	addi r5, r5, 0x645F /* 0x775F645F@l */
/* 801D99E0  38 E0 00 00 */	li r7, 0
/* 801D99E4  39 00 00 00 */	li r8, 0
/* 801D99E8  48 07 9F 9D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D99EC  7C 60 1B 78 */	mr r0, r3
lbl_801D99F0:
/* 801D99F0  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 801D99F4  88 1F 00 F6 */	lbz r0, 0xf6(r31)
/* 801D99F8  28 00 00 00 */	cmplwi r0, 0
/* 801D99FC  40 82 00 0C */	bne lbl_801D9A08
/* 801D9A00  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 801D9A04  48 07 BC 05 */	bl hide__13CPaneMgrAlphaFv
lbl_801D9A08:
/* 801D9A08  38 60 00 6C */	li r3, 0x6c
/* 801D9A0C  48 0F 52 41 */	bl __nw__FUl
/* 801D9A10  7C 60 1B 79 */	or. r0, r3, r3
/* 801D9A14  41 82 00 28 */	beq lbl_801D9A3C
/* 801D9A18  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 801D9A1C  3C A0 34 6C */	lis r5, 0x346C /* 0x346C696E@ha */
/* 801D9A20  38 C5 69 6E */	addi r6, r5, 0x696E /* 0x346C696E@l */
/* 801D9A24  3C A0 6D 67 */	lis r5, 0x6D67 /* 0x6D675F65@ha */
/* 801D9A28  38 A5 5F 65 */	addi r5, r5, 0x5F65 /* 0x6D675F65@l */
/* 801D9A2C  38 E0 00 00 */	li r7, 0
/* 801D9A30  39 00 00 00 */	li r8, 0
/* 801D9A34  48 07 9F 51 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801D9A38  7C 60 1B 78 */	mr r0, r3
lbl_801D9A3C:
/* 801D9A3C  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 801D9A40  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801D9A44  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 801D9A48  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 801D9A4C  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F33@ha */
/* 801D9A50  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x006E5F33@l */
/* 801D9A54  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9A58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D9A5C  7D 89 03 A6 */	mtctr r12
/* 801D9A60  4E 80 04 21 */	bctrl 
/* 801D9A64  38 00 00 00 */	li r0, 0
/* 801D9A68  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D9A6C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801D9A70  3C 80 6F 72 */	lis r4, 0x6F72 /* 0x6F725F32@ha */
/* 801D9A74  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x6F725F32@l */
/* 801D9A78  3C 80 6D 73 */	lis r4, 0x6D73 /* 0x6D735F66@ha */
/* 801D9A7C  38 A4 5F 66 */	addi r5, r4, 0x5F66 /* 0x6D735F66@l */
/* 801D9A80  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9A84  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D9A88  7D 89 03 A6 */	mtctr r12
/* 801D9A8C  4E 80 04 21 */	bctrl 
/* 801D9A90  90 7F 00 5C */	stw r3, 0x5c(r31)
/* 801D9A94  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801D9A98  3C 80 67 5F */	lis r4, 0x675F /* 0x675F6A70@ha */
/* 801D9A9C  38 C4 6A 70 */	addi r6, r4, 0x6A70 /* 0x675F6A70@l */
/* 801D9AA0  3C 80 77 5F */	lis r4, 0x775F /* 0x775F6D73@ha */
/* 801D9AA4  38 A4 6D 73 */	addi r5, r4, 0x6D73 /* 0x775F6D73@l */
/* 801D9AA8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9AAC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D9AB0  7D 89 03 A6 */	mtctr r12
/* 801D9AB4  4E 80 04 21 */	bctrl 
/* 801D9AB8  38 00 00 00 */	li r0, 0
/* 801D9ABC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D9AC0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801D9AC4  3C 80 6F 72 */	lis r4, 0x6F72 /* 0x6F725F33@ha */
/* 801D9AC8  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x6F725F33@l */
/* 801D9ACC  3C 80 6D 73 */	lis r4, 0x6D73 /* 0x6D735F66@ha */
/* 801D9AD0  38 A4 5F 66 */	addi r5, r4, 0x5F66 /* 0x6D735F66@l */
/* 801D9AD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9AD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D9ADC  7D 89 03 A6 */	mtctr r12
/* 801D9AE0  4E 80 04 21 */	bctrl 
/* 801D9AE4  38 00 00 00 */	li r0, 0
/* 801D9AE8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801D9AEC  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801D9AF0  3C 80 65 63 */	lis r4, 0x6563 /* 0x65637473@ha */
/* 801D9AF4  38 C4 74 73 */	addi r6, r4, 0x7473 /* 0x65637473@l */
/* 801D9AF8  3C 80 00 69 */	lis r4, 0x0069 /* 0x00696E73@ha */
/* 801D9AFC  38 A4 6E 73 */	addi r5, r4, 0x6E73 /* 0x00696E73@l */
/* 801D9B00  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9B04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D9B08  7D 89 03 A6 */	mtctr r12
/* 801D9B0C  4E 80 04 21 */	bctrl 
/* 801D9B10  90 7F 00 54 */	stw r3, 0x54(r31)
/* 801D9B14  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801D9B18  3C 80 63 74 */	lis r4, 0x6374 /* 0x63747373@ha */
/* 801D9B1C  38 C4 73 73 */	addi r6, r4, 0x7373 /* 0x63747373@l */
/* 801D9B20  3C 80 69 6E */	lis r4, 0x696E /* 0x696E7365@ha */
/* 801D9B24  38 A4 73 65 */	addi r5, r4, 0x7365 /* 0x696E7365@l */
/* 801D9B28  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9B2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D9B30  7D 89 03 A6 */	mtctr r12
/* 801D9B34  4E 80 04 21 */	bctrl 
/* 801D9B38  90 7F 00 58 */	stw r3, 0x58(r31)
/* 801D9B3C  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 801D9B40  83 C3 00 04 */	lwz r30, 4(r3)
/* 801D9B44  4B E3 AE AD */	bl mDoExt_getMesgFont__Fv
/* 801D9B48  7C 64 1B 78 */	mr r4, r3
/* 801D9B4C  7F C3 F3 78 */	mr r3, r30
/* 801D9B50  81 9E 00 00 */	lwz r12, 0(r30)
/* 801D9B54  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D9B58  7D 89 03 A6 */	mtctr r12
/* 801D9B5C  4E 80 04 21 */	bctrl 
/* 801D9B60  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 801D9B64  80 63 00 04 */	lwz r3, 4(r3)
/* 801D9B68  38 80 02 00 */	li r4, 0x200
/* 801D9B6C  3C A0 80 39 */	lis r5, d_menu_d_menu_insect__stringBase0@ha
/* 801D9B70  38 A5 68 C0 */	addi r5, r5, d_menu_d_menu_insect__stringBase0@l
/* 801D9B74  38 A5 00 32 */	addi r5, r5, 0x32
/* 801D9B78  4C C6 31 82 */	crclr 6
/* 801D9B7C  48 12 6B D1 */	bl setString__10J2DTextBoxFsPCce
/* 801D9B80  4B E3 AE 71 */	bl mDoExt_getMesgFont__Fv
/* 801D9B84  7C 64 1B 78 */	mr r4, r3
/* 801D9B88  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801D9B8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9B90  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D9B94  7D 89 03 A6 */	mtctr r12
/* 801D9B98  4E 80 04 21 */	bctrl 
/* 801D9B9C  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801D9BA0  38 80 01 00 */	li r4, 0x100
/* 801D9BA4  3C A0 80 39 */	lis r5, d_menu_d_menu_insect__stringBase0@ha
/* 801D9BA8  38 A5 68 C0 */	addi r5, r5, d_menu_d_menu_insect__stringBase0@l
/* 801D9BAC  38 A5 00 32 */	addi r5, r5, 0x32
/* 801D9BB0  4C C6 31 82 */	crclr 6
/* 801D9BB4  48 12 6B 99 */	bl setString__10J2DTextBoxFsPCce
/* 801D9BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9BBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D9BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9BC4  7C 08 03 A6 */	mtlr r0
/* 801D9BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9BCC  4E 80 00 20 */	blr 
