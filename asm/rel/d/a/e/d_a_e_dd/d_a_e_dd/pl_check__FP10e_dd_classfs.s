lbl_806A272C:
/* 806A272C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A2730  7C 08 02 A6 */	mflr r0
/* 806A2734  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A2738  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A273C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A2740  80 C5 5D AC */	lwz r6, 0x5dac(r5)
/* 806A2744  C0 03 06 A4 */	lfs f0, 0x6a4(r3)
/* 806A2748  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806A274C  40 80 00 48 */	bge lbl_806A2794
/* 806A2750  A8 A3 06 A0 */	lha r5, 0x6a0(r3)
/* 806A2754  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 806A2758  7C 05 00 50 */	subf r0, r5, r0
/* 806A275C  7C 05 07 34 */	extsh r5, r0
/* 806A2760  7C 80 07 34 */	extsh r0, r4
/* 806A2764  7C 05 00 00 */	cmpw r5, r0
/* 806A2768  40 80 00 2C */	bge lbl_806A2794
/* 806A276C  7C 04 00 D0 */	neg r0, r4
/* 806A2770  7C 00 07 34 */	extsh r0, r0
/* 806A2774  7C 05 00 00 */	cmpw r5, r0
/* 806A2778  40 81 00 1C */	ble lbl_806A2794
/* 806A277C  7C C4 33 78 */	mr r4, r6
/* 806A2780  4B FF FE CD */	bl otherBgCheckS__FP10fopAc_ac_cP10fopAc_ac_c
/* 806A2784  2C 03 00 00 */	cmpwi r3, 0
/* 806A2788  40 82 00 0C */	bne lbl_806A2794
/* 806A278C  38 60 00 01 */	li r3, 1
/* 806A2790  48 00 00 08 */	b lbl_806A2798
lbl_806A2794:
/* 806A2794  38 60 00 00 */	li r3, 0
lbl_806A2798:
/* 806A2798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A279C  7C 08 03 A6 */	mtlr r0
/* 806A27A0  38 21 00 10 */	addi r1, r1, 0x10
/* 806A27A4  4E 80 00 20 */	blr 
