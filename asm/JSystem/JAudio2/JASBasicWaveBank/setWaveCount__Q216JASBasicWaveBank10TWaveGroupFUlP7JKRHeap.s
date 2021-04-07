lbl_80298A84:
/* 80298A84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80298A88  7C 08 02 A6 */	mflr r0
/* 80298A8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80298A90  39 61 00 20 */	addi r11, r1, 0x20
/* 80298A94  48 0C 97 49 */	bl _savegpr_29
/* 80298A98  7C 7D 1B 78 */	mr r29, r3
/* 80298A9C  7C 9E 23 78 */	mr r30, r4
/* 80298AA0  7C BF 2B 78 */	mr r31, r5
/* 80298AA4  80 63 00 78 */	lwz r3, 0x78(r3)
/* 80298AA8  28 03 00 00 */	cmplwi r3, 0
/* 80298AAC  41 82 00 0C */	beq lbl_80298AB8
/* 80298AB0  38 63 FF F0 */	addi r3, r3, -16
/* 80298AB4  48 03 62 AD */	bl __dla__FPv
lbl_80298AB8:
/* 80298AB8  B3 DD 00 7C */	sth r30, 0x7c(r29)
/* 80298ABC  57 C3 18 38 */	slwi r3, r30, 3
/* 80298AC0  38 63 00 10 */	addi r3, r3, 0x10
/* 80298AC4  7F E4 FB 78 */	mr r4, r31
/* 80298AC8  38 A0 00 00 */	li r5, 0
/* 80298ACC  48 03 62 45 */	bl __nwa__FUlP7JKRHeapi
/* 80298AD0  3C 80 80 2A */	lis r4, __ct__Q216JASBasicWaveBank14TGroupWaveInfoFv@ha /* 0x80298C4C@ha */
/* 80298AD4  38 84 8C 4C */	addi r4, r4, __ct__Q216JASBasicWaveBank14TGroupWaveInfoFv@l /* 0x80298C4C@l */
/* 80298AD8  38 A0 00 00 */	li r5, 0
/* 80298ADC  38 C0 00 08 */	li r6, 8
/* 80298AE0  7F C7 F3 78 */	mr r7, r30
/* 80298AE4  48 0C 94 31 */	bl __construct_new_array
/* 80298AE8  90 7D 00 78 */	stw r3, 0x78(r29)
/* 80298AEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80298AF0  48 0C 97 39 */	bl _restgpr_29
/* 80298AF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80298AF8  7C 08 03 A6 */	mtlr r0
/* 80298AFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80298B00  4E 80 00 20 */	blr 
