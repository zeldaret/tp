lbl_806B6DF4:
/* 806B6DF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B6DF8  7C 08 02 A6 */	mflr r0
/* 806B6DFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B6E00  39 61 00 20 */	addi r11, r1, 0x20
/* 806B6E04  4B CA B3 D8 */	b _savegpr_29
/* 806B6E08  7C 7E 1B 78 */	mr r30, r3
/* 806B6E0C  3B E0 00 00 */	li r31, 0
/* 806B6E10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806B6E14  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 806B6E18  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806B6E1C  4B 96 39 C4 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B6E20  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806B6E24  38 63 91 FC */	addi r3, r3, l_HIO@l
/* 806B6E28  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806B6E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B6E30  4C 40 13 82 */	cror 2, 0, 2
/* 806B6E34  40 82 00 38 */	bne lbl_806B6E6C
/* 806B6E38  80 1E 06 9C */	lwz r0, 0x69c(r30)
/* 806B6E3C  2C 00 00 00 */	cmpwi r0, 0
/* 806B6E40  40 82 00 24 */	bne lbl_806B6E64
/* 806B6E44  7F C3 F3 78 */	mr r3, r30
/* 806B6E48  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806B6E4C  4B 96 38 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B6E50  B0 7E 06 94 */	sth r3, 0x694(r30)
/* 806B6E54  38 00 00 1E */	li r0, 0x1e
/* 806B6E58  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 806B6E5C  38 00 00 00 */	li r0, 0
/* 806B6E60  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_806B6E64:
/* 806B6E64  3B E0 00 01 */	li r31, 1
/* 806B6E68  48 00 00 34 */	b lbl_806B6E9C
lbl_806B6E6C:
/* 806B6E6C  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 806B6E70  2C 00 00 01 */	cmpwi r0, 1
/* 806B6E74  41 82 00 28 */	beq lbl_806B6E9C
/* 806B6E78  80 1E 06 9C */	lwz r0, 0x69c(r30)
/* 806B6E7C  2C 00 00 00 */	cmpwi r0, 0
/* 806B6E80  40 82 00 1C */	bne lbl_806B6E9C
/* 806B6E84  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 806B6E88  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806B6E8C  38 00 00 1E */	li r0, 0x1e
/* 806B6E90  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 806B6E94  38 00 00 00 */	li r0, 0
/* 806B6E98  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_806B6E9C:
/* 806B6E9C  38 7E 06 96 */	addi r3, r30, 0x696
/* 806B6EA0  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806B6EA4  38 C4 91 FC */	addi r6, r4, l_HIO@l
/* 806B6EA8  A8 86 00 12 */	lha r4, 0x12(r6)
/* 806B6EAC  38 A0 00 01 */	li r5, 1
/* 806B6EB0  A8 C6 00 14 */	lha r6, 0x14(r6)
/* 806B6EB4  4B BB 97 54 */	b cLib_addCalcAngleS2__FPssss
/* 806B6EB8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806B6EBC  A8 9E 06 94 */	lha r4, 0x694(r30)
/* 806B6EC0  38 A0 00 01 */	li r5, 1
/* 806B6EC4  A8 DE 06 96 */	lha r6, 0x696(r30)
/* 806B6EC8  4B BB 97 40 */	b cLib_addCalcAngleS2__FPssss
/* 806B6ECC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 806B6ED0  28 00 00 01 */	cmplwi r0, 1
/* 806B6ED4  40 82 00 50 */	bne lbl_806B6F24
/* 806B6ED8  A8 7E 06 94 */	lha r3, 0x694(r30)
/* 806B6EDC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806B6EE0  7C 03 00 50 */	subf r0, r3, r0
/* 806B6EE4  7C 03 07 34 */	extsh r3, r0
/* 806B6EE8  4B CA E1 E8 */	b abs
/* 806B6EEC  2C 03 02 00 */	cmpwi r3, 0x200
/* 806B6EF0  40 81 00 34 */	ble lbl_806B6F24
/* 806B6EF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070387@ha */
/* 806B6EF8  38 03 03 87 */	addi r0, r3, 0x0387 /* 0x00070387@l */
/* 806B6EFC  90 01 00 08 */	stw r0, 8(r1)
/* 806B6F00  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6F04  38 81 00 08 */	addi r4, r1, 8
/* 806B6F08  38 A0 00 00 */	li r5, 0
/* 806B6F0C  38 C0 FF FF */	li r6, -1
/* 806B6F10  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6F14  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806B6F18  7D 89 03 A6 */	mtctr r12
/* 806B6F1C  4E 80 04 21 */	bctrl 
/* 806B6F20  3B E0 00 00 */	li r31, 0
lbl_806B6F24:
/* 806B6F24  7F E3 FB 78 */	mr r3, r31
/* 806B6F28  39 61 00 20 */	addi r11, r1, 0x20
/* 806B6F2C  4B CA B2 FC */	b _restgpr_29
/* 806B6F30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B6F34  7C 08 03 A6 */	mtlr r0
/* 806B6F38  38 21 00 20 */	addi r1, r1, 0x20
/* 806B6F3C  4E 80 00 20 */	blr 
