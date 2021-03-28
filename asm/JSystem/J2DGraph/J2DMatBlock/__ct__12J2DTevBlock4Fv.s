lbl_802ED8BC:
/* 802ED8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ED8C0  7C 08 02 A6 */	mflr r0
/* 802ED8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ED8C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ED8CC  7C 7F 1B 78 */	mr r31, r3
/* 802ED8D0  3C 60 80 3D */	lis r3, __vt__11J2DTevBlock@ha
/* 802ED8D4  38 03 CE 74 */	addi r0, r3, __vt__11J2DTevBlock@l
/* 802ED8D8  90 1F 00 00 */	stw r0, 0(r31)
/* 802ED8DC  3C 60 80 3D */	lis r3, __vt__12J2DTevBlock4@ha
/* 802ED8E0  38 03 CC 40 */	addi r0, r3, __vt__12J2DTevBlock4@l
/* 802ED8E4  90 1F 00 00 */	stw r0, 0(r31)
/* 802ED8E8  38 7F 00 0E */	addi r3, r31, 0xe
/* 802ED8EC  3C 80 80 2F */	lis r4, __ct__11J2DTevOrderFv@ha
/* 802ED8F0  38 84 1B 70 */	addi r4, r4, __ct__11J2DTevOrderFv@l
/* 802ED8F4  38 A0 00 00 */	li r5, 0
/* 802ED8F8  38 C0 00 04 */	li r6, 4
/* 802ED8FC  38 E0 00 04 */	li r7, 4
/* 802ED900  48 07 44 61 */	bl __construct_array
/* 802ED904  38 7F 00 1E */	addi r3, r31, 0x1e
/* 802ED908  3C 80 80 2F */	lis r4, __ct__13J2DGXColorS10Fv@ha
/* 802ED90C  38 84 1B 90 */	addi r4, r4, __ct__13J2DGXColorS10Fv@l
/* 802ED910  38 A0 00 00 */	li r5, 0
/* 802ED914  38 C0 00 08 */	li r6, 8
/* 802ED918  38 E0 00 04 */	li r7, 4
/* 802ED91C  48 07 44 45 */	bl __construct_array
/* 802ED920  38 7F 00 3F */	addi r3, r31, 0x3f
/* 802ED924  3C 80 80 2F */	lis r4, __ct__11J2DTevStageFv@ha
/* 802ED928  38 84 19 40 */	addi r4, r4, __ct__11J2DTevStageFv@l
/* 802ED92C  38 A0 00 00 */	li r5, 0
/* 802ED930  38 C0 00 08 */	li r6, 8
/* 802ED934  38 E0 00 04 */	li r7, 4
/* 802ED938  48 07 44 29 */	bl __construct_array
/* 802ED93C  38 7F 00 60 */	addi r3, r31, 0x60
/* 802ED940  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha
/* 802ED944  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l
/* 802ED948  38 A0 00 00 */	li r5, 0
/* 802ED94C  38 C0 00 04 */	li r6, 4
/* 802ED950  38 E0 00 04 */	li r7, 4
/* 802ED954  48 07 44 0D */	bl __construct_array
/* 802ED958  38 7F 00 78 */	addi r3, r31, 0x78
/* 802ED95C  3C 80 80 2F */	lis r4, __ct__19J2DTevSwapModeTableFv@ha
/* 802ED960  38 84 19 34 */	addi r4, r4, __ct__19J2DTevSwapModeTableFv@l
/* 802ED964  38 A0 00 00 */	li r5, 0
/* 802ED968  38 C0 00 01 */	li r6, 1
/* 802ED96C  38 E0 00 04 */	li r7, 4
/* 802ED970  48 07 43 F1 */	bl __construct_array
/* 802ED974  38 7F 00 7C */	addi r3, r31, 0x7c
/* 802ED978  3C 80 80 2F */	lis r4, __ct__14J2DIndTevStageFv@ha
/* 802ED97C  38 84 18 A0 */	addi r4, r4, __ct__14J2DIndTevStageFv@l
/* 802ED980  38 A0 00 00 */	li r5, 0
/* 802ED984  38 C0 00 04 */	li r6, 4
/* 802ED988  38 E0 00 04 */	li r7, 4
/* 802ED98C  48 07 43 D5 */	bl __construct_array
/* 802ED990  38 60 00 00 */	li r3, 0
/* 802ED994  7C 64 1B 78 */	mr r4, r3
/* 802ED998  38 00 00 04 */	li r0, 4
/* 802ED99C  7C 09 03 A6 */	mtctr r0
lbl_802ED9A0:
/* 802ED9A0  38 03 00 8C */	addi r0, r3, 0x8c
/* 802ED9A4  7C 9F 01 2E */	stwx r4, r31, r0
/* 802ED9A8  38 63 00 04 */	addi r3, r3, 4
/* 802ED9AC  42 00 FF F4 */	bdnz lbl_802ED9A0
/* 802ED9B0  38 00 00 00 */	li r0, 0
/* 802ED9B4  98 1F 00 B0 */	stb r0, 0xb0(r31)
/* 802ED9B8  7F E3 FB 78 */	mr r3, r31
/* 802ED9BC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802ED9C0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802ED9C4  7D 89 03 A6 */	mtctr r12
/* 802ED9C8  4E 80 04 21 */	bctrl 
/* 802ED9CC  7F E3 FB 78 */	mr r3, r31
/* 802ED9D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ED9D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ED9D8  7C 08 03 A6 */	mtlr r0
/* 802ED9DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802ED9E0  4E 80 00 20 */	blr 
