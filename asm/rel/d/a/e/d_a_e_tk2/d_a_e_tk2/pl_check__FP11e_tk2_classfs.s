lbl_807BA7A8:
/* 807BA7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA7AC  7C 08 02 A6 */	mflr r0
/* 807BA7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA7B4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807BA7B8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807BA7BC  80 C5 5D AC */	lwz r6, 0x5dac(r5)
/* 807BA7C0  C0 03 06 84 */	lfs f0, 0x684(r3)
/* 807BA7C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807BA7C8  40 80 00 48 */	bge lbl_807BA810
/* 807BA7CC  A8 A3 06 80 */	lha r5, 0x680(r3)
/* 807BA7D0  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 807BA7D4  7C 05 00 50 */	subf r0, r5, r0
/* 807BA7D8  7C 05 07 34 */	extsh r5, r0
/* 807BA7DC  7C 80 07 34 */	extsh r0, r4
/* 807BA7E0  7C 05 00 00 */	cmpw r5, r0
/* 807BA7E4  40 80 00 2C */	bge lbl_807BA810
/* 807BA7E8  7C 04 00 D0 */	neg r0, r4
/* 807BA7EC  7C 00 07 34 */	extsh r0, r0
/* 807BA7F0  7C 05 00 00 */	cmpw r5, r0
/* 807BA7F4  40 81 00 1C */	ble lbl_807BA810
/* 807BA7F8  7C C4 33 78 */	mr r4, r6
/* 807BA7FC  4B FF FE D5 */	bl other_bg_check__FP11e_tk2_classP10fopAc_ac_c
/* 807BA800  2C 03 00 00 */	cmpwi r3, 0
/* 807BA804  40 82 00 0C */	bne lbl_807BA810
/* 807BA808  38 60 00 01 */	li r3, 1
/* 807BA80C  48 00 00 08 */	b lbl_807BA814
lbl_807BA810:
/* 807BA810  38 60 00 00 */	li r3, 0
lbl_807BA814:
/* 807BA814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA818  7C 08 03 A6 */	mtlr r0
/* 807BA81C  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA820  4E 80 00 20 */	blr 
