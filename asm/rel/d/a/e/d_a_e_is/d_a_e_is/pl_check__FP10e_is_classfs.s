lbl_806F5E38:
/* 806F5E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F5E3C  7C 08 02 A6 */	mflr r0
/* 806F5E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F5E44  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806F5E48  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806F5E4C  80 C5 5D AC */	lwz r6, 0x5dac(r5)
/* 806F5E50  C0 03 06 A8 */	lfs f0, 0x6a8(r3)
/* 806F5E54  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806F5E58  40 80 00 48 */	bge lbl_806F5EA0
/* 806F5E5C  A8 A3 06 A6 */	lha r5, 0x6a6(r3)
/* 806F5E60  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 806F5E64  7C 05 00 50 */	subf r0, r5, r0
/* 806F5E68  7C 05 07 34 */	extsh r5, r0
/* 806F5E6C  7C 80 07 34 */	extsh r0, r4
/* 806F5E70  7C 05 00 00 */	cmpw r5, r0
/* 806F5E74  40 80 00 2C */	bge lbl_806F5EA0
/* 806F5E78  7C 04 00 D0 */	neg r0, r4
/* 806F5E7C  7C 00 07 34 */	extsh r0, r0
/* 806F5E80  7C 05 00 00 */	cmpw r5, r0
/* 806F5E84  40 81 00 1C */	ble lbl_806F5EA0
/* 806F5E88  7C C4 33 78 */	mr r4, r6
/* 806F5E8C  4B 92 6F 70 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806F5E90  2C 03 00 00 */	cmpwi r3, 0
/* 806F5E94  40 82 00 0C */	bne lbl_806F5EA0
/* 806F5E98  38 60 00 01 */	li r3, 1
/* 806F5E9C  48 00 00 08 */	b lbl_806F5EA4
lbl_806F5EA0:
/* 806F5EA0  38 60 00 00 */	li r3, 0
lbl_806F5EA4:
/* 806F5EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F5EA8  7C 08 03 A6 */	mtlr r0
/* 806F5EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 806F5EB0  4E 80 00 20 */	blr 
