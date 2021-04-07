lbl_802EB88C:
/* 802EB88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB890  7C 08 02 A6 */	mflr r0
/* 802EB894  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EB898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EB89C  7C 7F 1B 78 */	mr r31, r3
/* 802EB8A0  3C 60 80 3D */	lis r3, __vt__11J2DTevBlock@ha /* 0x803CCE74@ha */
/* 802EB8A4  38 03 CE 74 */	addi r0, r3, __vt__11J2DTevBlock@l /* 0x803CCE74@l */
/* 802EB8A8  90 1F 00 00 */	stw r0, 0(r31)
/* 802EB8AC  3C 60 80 3D */	lis r3, __vt__12J2DTevBlock1@ha /* 0x803CCDB8@ha */
/* 802EB8B0  38 03 CD B8 */	addi r0, r3, __vt__12J2DTevBlock1@l /* 0x803CCDB8@l */
/* 802EB8B4  90 1F 00 00 */	stw r0, 0(r31)
/* 802EB8B8  38 7F 00 08 */	addi r3, r31, 8
/* 802EB8BC  3C 80 80 2F */	lis r4, __ct__11J2DTevOrderFv@ha /* 0x802F1B70@ha */
/* 802EB8C0  38 84 1B 70 */	addi r4, r4, __ct__11J2DTevOrderFv@l /* 0x802F1B70@l */
/* 802EB8C4  38 A0 00 00 */	li r5, 0
/* 802EB8C8  38 C0 00 04 */	li r6, 4
/* 802EB8CC  38 E0 00 01 */	li r7, 1
/* 802EB8D0  48 07 64 91 */	bl __construct_array
/* 802EB8D4  38 7F 00 0C */	addi r3, r31, 0xc
/* 802EB8D8  3C 80 80 2F */	lis r4, __ct__13J2DGXColorS10Fv@ha /* 0x802F1B90@ha */
/* 802EB8DC  38 84 1B 90 */	addi r4, r4, __ct__13J2DGXColorS10Fv@l /* 0x802F1B90@l */
/* 802EB8E0  38 A0 00 00 */	li r5, 0
/* 802EB8E4  38 C0 00 08 */	li r6, 8
/* 802EB8E8  38 E0 00 04 */	li r7, 4
/* 802EB8EC  48 07 64 75 */	bl __construct_array
/* 802EB8F0  38 7F 00 2C */	addi r3, r31, 0x2c
/* 802EB8F4  3C 80 80 2F */	lis r4, __ct__11J2DTevStageFv@ha /* 0x802F1940@ha */
/* 802EB8F8  38 84 19 40 */	addi r4, r4, __ct__11J2DTevStageFv@l /* 0x802F1940@l */
/* 802EB8FC  38 A0 00 00 */	li r5, 0
/* 802EB900  38 C0 00 08 */	li r6, 8
/* 802EB904  38 E0 00 01 */	li r7, 1
/* 802EB908  48 07 64 59 */	bl __construct_array
/* 802EB90C  38 7F 00 34 */	addi r3, r31, 0x34
/* 802EB910  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 802EB914  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 802EB918  38 A0 00 00 */	li r5, 0
/* 802EB91C  38 C0 00 04 */	li r6, 4
/* 802EB920  38 E0 00 04 */	li r7, 4
/* 802EB924  48 07 64 3D */	bl __construct_array
/* 802EB928  38 7F 00 46 */	addi r3, r31, 0x46
/* 802EB92C  3C 80 80 2F */	lis r4, __ct__19J2DTevSwapModeTableFv@ha /* 0x802F1934@ha */
/* 802EB930  38 84 19 34 */	addi r4, r4, __ct__19J2DTevSwapModeTableFv@l /* 0x802F1934@l */
/* 802EB934  38 A0 00 00 */	li r5, 0
/* 802EB938  38 C0 00 01 */	li r6, 1
/* 802EB93C  38 E0 00 04 */	li r7, 4
/* 802EB940  48 07 64 21 */	bl __construct_array
/* 802EB944  38 7F 00 4C */	addi r3, r31, 0x4c
/* 802EB948  3C 80 80 2F */	lis r4, __ct__14J2DIndTevStageFv@ha /* 0x802F18A0@ha */
/* 802EB94C  38 84 18 A0 */	addi r4, r4, __ct__14J2DIndTevStageFv@l /* 0x802F18A0@l */
/* 802EB950  38 A0 00 00 */	li r5, 0
/* 802EB954  38 C0 00 04 */	li r6, 4
/* 802EB958  38 E0 00 01 */	li r7, 1
/* 802EB95C  48 07 64 05 */	bl __construct_array
/* 802EB960  38 00 00 00 */	li r0, 0
/* 802EB964  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802EB968  98 1F 00 5C */	stb r0, 0x5c(r31)
/* 802EB96C  7F E3 FB 78 */	mr r3, r31
/* 802EB970  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EB974  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EB978  7D 89 03 A6 */	mtctr r12
/* 802EB97C  4E 80 04 21 */	bctrl 
/* 802EB980  7F E3 FB 78 */	mr r3, r31
/* 802EB984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EB988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EB98C  7C 08 03 A6 */	mtlr r0
/* 802EB990  38 21 00 10 */	addi r1, r1, 0x10
/* 802EB994  4E 80 00 20 */	blr 
