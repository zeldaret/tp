lbl_809F07F8:
/* 809F07F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809F07FC  7C 08 02 A6 */	mflr r0
/* 809F0800  90 01 00 34 */	stw r0, 0x34(r1)
/* 809F0804  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809F0808  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809F080C  39 61 00 20 */	addi r11, r1, 0x20
/* 809F0810  4B 97 19 CD */	bl _savegpr_29
/* 809F0814  7C 7D 1B 78 */	mr r29, r3
/* 809F0818  3C 80 80 9F */	lis r4, lit_3900@ha /* 0x809F2C50@ha */
/* 809F081C  3B C4 2C 50 */	addi r30, r4, lit_3900@l /* 0x809F2C50@l */
/* 809F0820  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F0824  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F0828  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F082C  4B 62 9E E5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F0830  B0 7D 0D A0 */	sth r3, 0xda0(r29)
/* 809F0834  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 809F0838  A8 9D 0D A0 */	lha r4, 0xda0(r29)
/* 809F083C  38 A0 00 03 */	li r5, 3
/* 809F0840  38 C0 06 00 */	li r6, 0x600
/* 809F0844  4B 87 FD C5 */	bl cLib_addCalcAngleS2__FPssss
/* 809F0848  7F A3 EB 78 */	mr r3, r29
/* 809F084C  48 00 05 89 */	bl setAngle__12daNpcGuard_cFv
/* 809F0850  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 809F0854  38 80 00 01 */	li r4, 1
/* 809F0858  88 03 00 11 */	lbz r0, 0x11(r3)
/* 809F085C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809F0860  40 82 00 18 */	bne lbl_809F0878
/* 809F0864  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 809F0868  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809F086C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809F0870  41 82 00 08 */	beq lbl_809F0878
/* 809F0874  38 80 00 00 */	li r4, 0
lbl_809F0878:
/* 809F0878  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 809F087C  41 82 00 10 */	beq lbl_809F088C
/* 809F0880  7F A3 EB 78 */	mr r3, r29
/* 809F0884  38 80 00 02 */	li r4, 2
/* 809F0888  4B FF F5 99 */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
lbl_809F088C:
/* 809F088C  C8 3E 00 08 */	lfd f1, 8(r30)
/* 809F0890  C8 5E 00 10 */	lfd f2, 0x10(r30)
/* 809F0894  4B 97 BE ED */	bl pow
/* 809F0898  FF E0 08 18 */	frsp f31, f1
/* 809F089C  7F A3 EB 78 */	mr r3, r29
/* 809F08A0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F08A4  4B 62 A1 F1 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F08A8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 809F08AC  40 81 00 10 */	ble lbl_809F08BC
/* 809F08B0  7F A3 EB 78 */	mr r3, r29
/* 809F08B4  38 80 00 01 */	li r4, 1
/* 809F08B8  4B FF F5 69 */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
lbl_809F08BC:
/* 809F08BC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809F08C0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809F08C4  39 61 00 20 */	addi r11, r1, 0x20
/* 809F08C8  4B 97 19 61 */	bl _restgpr_29
/* 809F08CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809F08D0  7C 08 03 A6 */	mtlr r0
/* 809F08D4  38 21 00 30 */	addi r1, r1, 0x30
/* 809F08D8  4E 80 00 20 */	blr 
