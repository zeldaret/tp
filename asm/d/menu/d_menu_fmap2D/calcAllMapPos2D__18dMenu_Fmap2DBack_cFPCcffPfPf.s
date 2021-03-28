lbl_801D0D50:
/* 801D0D50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D0D54  7C 08 02 A6 */	mflr r0
/* 801D0D58  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D0D5C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801D0D60  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801D0D64  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801D0D68  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 801D0D6C  39 61 00 20 */	addi r11, r1, 0x20
/* 801D0D70  48 19 14 6D */	bl _savegpr_29
/* 801D0D74  7C 7D 1B 78 */	mr r29, r3
/* 801D0D78  7C 80 23 78 */	mr r0, r4
/* 801D0D7C  FF C0 08 90 */	fmr f30, f1
/* 801D0D80  FF E0 10 90 */	fmr f31, f2
/* 801D0D84  7C BE 2B 78 */	mr r30, r5
/* 801D0D88  7C DF 33 78 */	mr r31, r6
/* 801D0D8C  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801D0D90  7C 05 03 78 */	mr r5, r0
/* 801D0D94  38 C1 00 0C */	addi r6, r1, 0xc
/* 801D0D98  38 E1 00 08 */	addi r7, r1, 8
/* 801D0D9C  48 00 1F 2D */	bl calcOffset__18dMenu_Fmap2DBack_cFUcPCcPfPf
/* 801D0DA0  88 1D 12 27 */	lbz r0, 0x1227(r29)
/* 801D0DA4  54 00 10 3A */	slwi r0, r0, 2
/* 801D0DA8  7F A3 EB 78 */	mr r3, r29
/* 801D0DAC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801D0DB0  EC 3E 00 2A */	fadds f1, f30, f0
/* 801D0DB4  C0 01 00 08 */	lfs f0, 8(r1)
/* 801D0DB8  EC 5F 00 2A */	fadds f2, f31, f0
/* 801D0DBC  7F C4 F3 78 */	mr r4, r30
/* 801D0DC0  7F E5 FB 78 */	mr r5, r31
/* 801D0DC4  7C DD 02 14 */	add r6, r29, r0
/* 801D0DC8  C0 66 0F 0C */	lfs f3, 0xf0c(r6)
/* 801D0DCC  C0 86 0F 2C */	lfs f4, 0xf2c(r6)
/* 801D0DD0  C0 BD 0F 9C */	lfs f5, 0xf9c(r29)
/* 801D0DD4  48 00 00 2D */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPffff
/* 801D0DD8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801D0DDC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801D0DE0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 801D0DE4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801D0DE8  39 61 00 20 */	addi r11, r1, 0x20
/* 801D0DEC  48 19 14 3D */	bl _restgpr_29
/* 801D0DF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D0DF4  7C 08 03 A6 */	mtlr r0
/* 801D0DF8  38 21 00 40 */	addi r1, r1, 0x40
/* 801D0DFC  4E 80 00 20 */	blr 
