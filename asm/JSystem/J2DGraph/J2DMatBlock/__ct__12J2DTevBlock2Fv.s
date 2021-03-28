lbl_802EC5B8:
/* 802EC5B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EC5BC  7C 08 02 A6 */	mflr r0
/* 802EC5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EC5C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EC5C8  7C 7F 1B 78 */	mr r31, r3
/* 802EC5CC  3C 60 80 3D */	lis r3, __vt__11J2DTevBlock@ha
/* 802EC5D0  38 03 CE 74 */	addi r0, r3, __vt__11J2DTevBlock@l
/* 802EC5D4  90 1F 00 00 */	stw r0, 0(r31)
/* 802EC5D8  3C 60 80 3D */	lis r3, __vt__12J2DTevBlock2@ha
/* 802EC5DC  38 03 CC FC */	addi r0, r3, __vt__12J2DTevBlock2@l
/* 802EC5E0  90 1F 00 00 */	stw r0, 0(r31)
/* 802EC5E4  38 7F 00 0A */	addi r3, r31, 0xa
/* 802EC5E8  3C 80 80 2F */	lis r4, __ct__11J2DTevOrderFv@ha
/* 802EC5EC  38 84 1B 70 */	addi r4, r4, __ct__11J2DTevOrderFv@l
/* 802EC5F0  38 A0 00 00 */	li r5, 0
/* 802EC5F4  38 C0 00 04 */	li r6, 4
/* 802EC5F8  38 E0 00 02 */	li r7, 2
/* 802EC5FC  48 07 57 65 */	bl __construct_array
/* 802EC600  38 7F 00 12 */	addi r3, r31, 0x12
/* 802EC604  3C 80 80 2F */	lis r4, __ct__13J2DGXColorS10Fv@ha
/* 802EC608  38 84 1B 90 */	addi r4, r4, __ct__13J2DGXColorS10Fv@l
/* 802EC60C  38 A0 00 00 */	li r5, 0
/* 802EC610  38 C0 00 08 */	li r6, 8
/* 802EC614  38 E0 00 04 */	li r7, 4
/* 802EC618  48 07 57 49 */	bl __construct_array
/* 802EC61C  38 7F 00 33 */	addi r3, r31, 0x33
/* 802EC620  3C 80 80 2F */	lis r4, __ct__11J2DTevStageFv@ha
/* 802EC624  38 84 19 40 */	addi r4, r4, __ct__11J2DTevStageFv@l
/* 802EC628  38 A0 00 00 */	li r5, 0
/* 802EC62C  38 C0 00 08 */	li r6, 8
/* 802EC630  38 E0 00 02 */	li r7, 2
/* 802EC634  48 07 57 2D */	bl __construct_array
/* 802EC638  38 7F 00 44 */	addi r3, r31, 0x44
/* 802EC63C  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha
/* 802EC640  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l
/* 802EC644  38 A0 00 00 */	li r5, 0
/* 802EC648  38 C0 00 04 */	li r6, 4
/* 802EC64C  38 E0 00 04 */	li r7, 4
/* 802EC650  48 07 57 11 */	bl __construct_array
/* 802EC654  38 7F 00 58 */	addi r3, r31, 0x58
/* 802EC658  3C 80 80 2F */	lis r4, __ct__19J2DTevSwapModeTableFv@ha
/* 802EC65C  38 84 19 34 */	addi r4, r4, __ct__19J2DTevSwapModeTableFv@l
/* 802EC660  38 A0 00 00 */	li r5, 0
/* 802EC664  38 C0 00 01 */	li r6, 1
/* 802EC668  38 E0 00 04 */	li r7, 4
/* 802EC66C  48 07 56 F5 */	bl __construct_array
/* 802EC670  38 7F 00 5C */	addi r3, r31, 0x5c
/* 802EC674  3C 80 80 2F */	lis r4, __ct__14J2DIndTevStageFv@ha
/* 802EC678  38 84 18 A0 */	addi r4, r4, __ct__14J2DIndTevStageFv@l
/* 802EC67C  38 A0 00 00 */	li r5, 0
/* 802EC680  38 C0 00 04 */	li r6, 4
/* 802EC684  38 E0 00 02 */	li r7, 2
/* 802EC688  48 07 56 D9 */	bl __construct_array
/* 802EC68C  38 00 00 00 */	li r0, 0
/* 802EC690  90 1F 00 64 */	stw r0, 0x64(r31)
/* 802EC694  90 1F 00 68 */	stw r0, 0x68(r31)
/* 802EC698  98 1F 00 78 */	stb r0, 0x78(r31)
/* 802EC69C  7F E3 FB 78 */	mr r3, r31
/* 802EC6A0  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EC6A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EC6A8  7D 89 03 A6 */	mtctr r12
/* 802EC6AC  4E 80 04 21 */	bctrl 
/* 802EC6B0  7F E3 FB 78 */	mr r3, r31
/* 802EC6B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EC6B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EC6BC  7C 08 03 A6 */	mtlr r0
/* 802EC6C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802EC6C4  4E 80 00 20 */	blr 
