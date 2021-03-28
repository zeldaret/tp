lbl_80167C24:
/* 80167C24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80167C28  7C 08 02 A6 */	mflr r0
/* 80167C2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80167C30  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80167C34  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80167C38  39 61 00 20 */	addi r11, r1, 0x20
/* 80167C3C  48 1F A5 A1 */	bl _savegpr_29
/* 80167C40  7C 7D 1B 78 */	mr r29, r3
/* 80167C44  7C 9E 23 78 */	mr r30, r4
/* 80167C48  7C DF 33 78 */	mr r31, r6
/* 80167C4C  38 DD 00 64 */	addi r6, r29, 0x64
/* 80167C50  38 FD 00 70 */	addi r7, r29, 0x70
/* 80167C54  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 80167C58  A9 03 00 54 */	lha r8, 0x54(r3)
/* 80167C5C  C0 42 9C E8 */	lfs f2, lit_6630(r2)
/* 80167C60  4B FF D5 D9 */	bl radiusActorInSight__9dCamera_cFP10fopAc_ac_cP10fopAc_ac_cP4cXyzP4cXyzfsf
/* 80167C64  FF E0 08 90 */	fmr f31, f1
/* 80167C68  7F A3 EB 78 */	mr r3, r29
/* 80167C6C  7F C4 F3 78 */	mr r4, r30
/* 80167C70  7F E5 FB 78 */	mr r5, r31
/* 80167C74  38 DD 00 64 */	addi r6, r29, 0x64
/* 80167C78  38 FD 00 70 */	addi r7, r29, 0x70
/* 80167C7C  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 80167C80  A9 1D 00 54 */	lha r8, 0x54(r29)
/* 80167C84  C0 42 9C E8 */	lfs f2, lit_6630(r2)
/* 80167C88  4B FF D5 B1 */	bl radiusActorInSight__9dCamera_cFP10fopAc_ac_cP10fopAc_ac_cP4cXyzP4cXyzfsf
/* 80167C8C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80167C90  40 81 00 08 */	ble lbl_80167C98
/* 80167C94  FC 20 F8 90 */	fmr f1, f31
lbl_80167C98:
/* 80167C98  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80167C9C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80167CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80167CA4  48 1F A5 85 */	bl _restgpr_29
/* 80167CA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80167CAC  7C 08 03 A6 */	mtlr r0
/* 80167CB0  38 21 00 30 */	addi r1, r1, 0x30
/* 80167CB4  4E 80 00 20 */	blr 
