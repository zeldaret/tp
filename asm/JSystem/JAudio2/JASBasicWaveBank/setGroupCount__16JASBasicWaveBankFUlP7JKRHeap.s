lbl_80298664:
/* 80298664  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80298668  7C 08 02 A6 */	mflr r0
/* 8029866C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80298670  39 61 00 20 */	addi r11, r1, 0x20
/* 80298674  48 0C 9B 69 */	bl _savegpr_29
/* 80298678  7C 7D 1B 78 */	mr r29, r3
/* 8029867C  7C 9E 23 78 */	mr r30, r4
/* 80298680  7C BF 2B 78 */	mr r31, r5
/* 80298684  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80298688  3C 80 80 2A */	lis r4, __dt__Q216JASBasicWaveBank10TWaveGroupFv@ha
/* 8029868C  38 84 8A 0C */	addi r4, r4, __dt__Q216JASBasicWaveBank10TWaveGroupFv@l
/* 80298690  48 0C 95 DD */	bl __destroy_new_array
/* 80298694  B3 DD 00 26 */	sth r30, 0x26(r29)
/* 80298698  57 C3 38 30 */	slwi r3, r30, 7
/* 8029869C  38 63 00 10 */	addi r3, r3, 0x10
/* 802986A0  7F E4 FB 78 */	mr r4, r31
/* 802986A4  38 A0 00 00 */	li r5, 0
/* 802986A8  48 03 66 69 */	bl __nwa__FUlP7JKRHeapi
/* 802986AC  3C 80 80 2A */	lis r4, __ct__Q216JASBasicWaveBank10TWaveGroupFv@ha
/* 802986B0  38 84 89 C0 */	addi r4, r4, __ct__Q216JASBasicWaveBank10TWaveGroupFv@l
/* 802986B4  3C A0 80 2A */	lis r5, __dt__Q216JASBasicWaveBank10TWaveGroupFv@ha
/* 802986B8  38 A5 8A 0C */	addi r5, r5, __dt__Q216JASBasicWaveBank10TWaveGroupFv@l
/* 802986BC  38 C0 00 80 */	li r6, 0x80
/* 802986C0  7F C7 F3 78 */	mr r7, r30
/* 802986C4  48 0C 98 51 */	bl __construct_new_array
/* 802986C8  90 7D 00 20 */	stw r3, 0x20(r29)
/* 802986CC  38 A0 00 00 */	li r5, 0
/* 802986D0  38 60 00 00 */	li r3, 0
/* 802986D4  48 00 00 18 */	b lbl_802986EC
lbl_802986D8:
/* 802986D8  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 802986DC  38 03 00 74 */	addi r0, r3, 0x74
/* 802986E0  7F A4 01 2E */	stwx r29, r4, r0
/* 802986E4  38 A5 00 01 */	addi r5, r5, 1
/* 802986E8  38 63 00 80 */	addi r3, r3, 0x80
lbl_802986EC:
/* 802986EC  A0 1D 00 26 */	lhz r0, 0x26(r29)
/* 802986F0  7C 05 00 00 */	cmpw r5, r0
/* 802986F4  41 80 FF E4 */	blt lbl_802986D8
/* 802986F8  39 61 00 20 */	addi r11, r1, 0x20
/* 802986FC  48 0C 9B 2D */	bl _restgpr_29
/* 80298700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80298704  7C 08 03 A6 */	mtlr r0
/* 80298708  38 21 00 20 */	addi r1, r1, 0x20
/* 8029870C  4E 80 00 20 */	blr 
