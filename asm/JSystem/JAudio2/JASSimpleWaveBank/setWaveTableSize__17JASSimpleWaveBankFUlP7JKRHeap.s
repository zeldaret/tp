lbl_80298DE0:
/* 80298DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80298DE4  7C 08 02 A6 */	mflr r0
/* 80298DE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80298DEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80298DF0  48 0C 93 ED */	bl _savegpr_29
/* 80298DF4  7C 7D 1B 78 */	mr r29, r3
/* 80298DF8  7C 9E 23 78 */	mr r30, r4
/* 80298DFC  7C BF 2B 78 */	mr r31, r5
/* 80298E00  80 63 00 78 */	lwz r3, 0x78(r3)
/* 80298E04  3C 80 80 2A */	lis r4, __dt__Q217JASSimpleWaveBank11TWaveHandleFv@ha /* 0x80298D84@ha */
/* 80298E08  38 84 8D 84 */	addi r4, r4, __dt__Q217JASSimpleWaveBank11TWaveHandleFv@l /* 0x80298D84@l */
/* 80298E0C  48 0C 8E 61 */	bl __destroy_new_array
/* 80298E10  1C 7E 00 2C */	mulli r3, r30, 0x2c
/* 80298E14  38 63 00 10 */	addi r3, r3, 0x10
/* 80298E18  7F E4 FB 78 */	mr r4, r31
/* 80298E1C  38 A0 00 00 */	li r5, 0
/* 80298E20  48 03 5E F1 */	bl __nwa__FUlP7JKRHeapi
/* 80298E24  3C 80 80 2A */	lis r4, __ct__Q217JASSimpleWaveBank11TWaveHandleFv@ha /* 0x80298F5C@ha */
/* 80298E28  38 84 8F 5C */	addi r4, r4, __ct__Q217JASSimpleWaveBank11TWaveHandleFv@l /* 0x80298F5C@l */
/* 80298E2C  3C A0 80 2A */	lis r5, __dt__Q217JASSimpleWaveBank11TWaveHandleFv@ha /* 0x80298D84@ha */
/* 80298E30  38 A5 8D 84 */	addi r5, r5, __dt__Q217JASSimpleWaveBank11TWaveHandleFv@l /* 0x80298D84@l */
/* 80298E34  38 C0 00 2C */	li r6, 0x2c
/* 80298E38  7F C7 F3 78 */	mr r7, r30
/* 80298E3C  48 0C 90 D9 */	bl __construct_new_array
/* 80298E40  90 7D 00 78 */	stw r3, 0x78(r29)
/* 80298E44  93 DD 00 7C */	stw r30, 0x7c(r29)
/* 80298E48  39 61 00 20 */	addi r11, r1, 0x20
/* 80298E4C  48 0C 93 DD */	bl _restgpr_29
/* 80298E50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80298E54  7C 08 03 A6 */	mtlr r0
/* 80298E58  38 21 00 20 */	addi r1, r1, 0x20
/* 80298E5C  4E 80 00 20 */	blr 
