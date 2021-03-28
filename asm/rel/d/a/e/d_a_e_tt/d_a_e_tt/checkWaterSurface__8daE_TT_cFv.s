lbl_807BDE5C:
/* 807BDE5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807BDE60  7C 08 02 A6 */	mflr r0
/* 807BDE64  90 01 00 44 */	stw r0, 0x44(r1)
/* 807BDE68  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807BDE6C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807BDE70  39 61 00 30 */	addi r11, r1, 0x30
/* 807BDE74  4B BA 43 68 */	b _savegpr_29
/* 807BDE78  7C 7D 1B 78 */	mr r29, r3
/* 807BDE7C  3C 60 80 7C */	lis r3, lit_3908@ha
/* 807BDE80  3B E3 1F B8 */	addi r31, r3, lit_3908@l
/* 807BDE84  38 00 00 00 */	li r0, 0
/* 807BDE88  98 1D 06 FA */	stb r0, 0x6fa(r29)
/* 807BDE8C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 807BDE90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807BDE94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BDE98  4C 40 13 82 */	cror 2, 0, 2
/* 807BDE9C  40 82 00 A4 */	bne lbl_807BDF40
/* 807BDEA0  80 7D 04 D0 */	lwz r3, 0x4d0(r29)
/* 807BDEA4  80 1D 04 D4 */	lwz r0, 0x4d4(r29)
/* 807BDEA8  90 61 00 08 */	stw r3, 8(r1)
/* 807BDEAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BDEB0  80 1D 04 D8 */	lwz r0, 0x4d8(r29)
/* 807BDEB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BDEB8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 807BDEBC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807BDEC0  EC 01 00 2A */	fadds f0, f1, f0
/* 807BDEC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807BDEC8  38 7D 06 64 */	addi r3, r29, 0x664
/* 807BDECC  38 81 00 08 */	addi r4, r1, 8
/* 807BDED0  4B AA 9E 3C */	b SetPos__11cBgS_GndChkFPC3Vec
/* 807BDED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807BDED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807BDEDC  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 807BDEE0  7F C3 F3 78 */	mr r3, r30
/* 807BDEE4  38 9D 06 64 */	addi r4, r29, 0x664
/* 807BDEE8  4B 8B 65 B8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807BDEEC  FF E0 08 90 */	fmr f31, f1
/* 807BDEF0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 807BDEF4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 807BDEF8  41 82 00 48 */	beq lbl_807BDF40
/* 807BDEFC  7F C3 F3 78 */	mr r3, r30
/* 807BDF00  38 9D 06 78 */	addi r4, r29, 0x678
/* 807BDF04  4B 8B 6F 4C */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 807BDF08  2C 03 00 07 */	cmpwi r3, 7
/* 807BDF0C  40 82 00 34 */	bne lbl_807BDF40
/* 807BDF10  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807BDF14  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 807BDF18  4C 40 13 82 */	cror 2, 0, 2
/* 807BDF1C  40 82 00 24 */	bne lbl_807BDF40
/* 807BDF20  D3 FD 04 D4 */	stfs f31, 0x4d4(r29)
/* 807BDF24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807BDF28  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807BDF2C  38 00 00 01 */	li r0, 1
/* 807BDF30  98 1D 06 FA */	stb r0, 0x6fa(r29)
/* 807BDF34  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 807BDF38  60 00 00 20 */	ori r0, r0, 0x20
/* 807BDF3C  90 1D 07 68 */	stw r0, 0x768(r29)
lbl_807BDF40:
/* 807BDF40  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807BDF44  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807BDF48  39 61 00 30 */	addi r11, r1, 0x30
/* 807BDF4C  4B BA 42 DC */	b _restgpr_29
/* 807BDF50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807BDF54  7C 08 03 A6 */	mtlr r0
/* 807BDF58  38 21 00 40 */	addi r1, r1, 0x40
/* 807BDF5C  4E 80 00 20 */	blr 
