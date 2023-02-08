lbl_8026DAE0:
/* 8026DAE0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8026DAE4  7C 08 02 A6 */	mflr r0
/* 8026DAE8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8026DAEC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8026DAF0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8026DAF4  39 61 00 40 */	addi r11, r1, 0x40
/* 8026DAF8  48 0F 46 E1 */	bl _savegpr_28
/* 8026DAFC  7C 7C 1B 78 */	mr r28, r3
/* 8026DB00  7C 9D 23 78 */	mr r29, r4
/* 8026DB04  7C BE 2B 78 */	mr r30, r5
/* 8026DB08  7C DF 33 78 */	mr r31, r6
/* 8026DB0C  7F A3 EB 78 */	mr r3, r29
/* 8026DB10  7F 84 E3 78 */	mr r4, r28
/* 8026DB14  38 A1 00 20 */	addi r5, r1, 0x20
/* 8026DB18  38 C1 00 14 */	addi r6, r1, 0x14
/* 8026DB1C  4B FF D9 CD */	bl cM3d_Cross_LinSph_CrossPos__FRC8cM3dGSphRC8cM3dGLinP3VecP3Vec
/* 8026DB20  2C 03 00 01 */	cmpwi r3, 1
/* 8026DB24  40 82 00 20 */	bne lbl_8026DB44
/* 8026DB28  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8026DB2C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026DB30  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8026DB34  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026DB38  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8026DB3C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8026DB40  48 00 00 DC */	b lbl_8026DC1C
lbl_8026DB44:
/* 8026DB44  2C 03 00 02 */	cmpwi r3, 2
/* 8026DB48  40 82 00 60 */	bne lbl_8026DBA8
/* 8026DB4C  38 61 00 20 */	addi r3, r1, 0x20
/* 8026DB50  7F 84 E3 78 */	mr r4, r28
/* 8026DB54  48 0D 98 49 */	bl PSVECSquareDistance
/* 8026DB58  FF E0 08 90 */	fmr f31, f1
/* 8026DB5C  38 61 00 14 */	addi r3, r1, 0x14
/* 8026DB60  7F 84 E3 78 */	mr r4, r28
/* 8026DB64  48 0D 98 39 */	bl PSVECSquareDistance
/* 8026DB68  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8026DB6C  40 80 00 20 */	bge lbl_8026DB8C
/* 8026DB70  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8026DB74  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026DB78  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8026DB7C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026DB80  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8026DB84  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8026DB88  48 00 00 94 */	b lbl_8026DC1C
lbl_8026DB8C:
/* 8026DB8C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8026DB90  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026DB94  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8026DB98  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026DB9C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8026DBA0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8026DBA4  48 00 00 78 */	b lbl_8026DC1C
lbl_8026DBA8:
/* 8026DBA8  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 8026DBAC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026DBB0  EC 01 00 2A */	fadds f0, f1, f0
/* 8026DBB4  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8026DBB8  D0 9F 00 00 */	stfs f4, 0(r31)
/* 8026DBBC  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8026DBC0  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8026DBC4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8026DBC8  D0 5F 00 08 */	stfs f2, 8(r31)
/* 8026DBCC  FC 00 02 10 */	fabs f0, f0
/* 8026DBD0  FC 20 00 18 */	frsp f1, f0
/* 8026DBD4  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026DBD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026DBDC  40 80 00 10 */	bge lbl_8026DBEC
/* 8026DBE0  D0 9F 00 00 */	stfs f4, 0(r31)
/* 8026DBE4  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8026DBE8  D0 5F 00 08 */	stfs f2, 8(r31)
lbl_8026DBEC:
/* 8026DBEC  7F C3 F3 78 */	mr r3, r30
/* 8026DBF0  7F A4 EB 78 */	mr r4, r29
/* 8026DBF4  38 A1 00 08 */	addi r5, r1, 8
/* 8026DBF8  48 0D 94 BD */	bl PSVECSubtract
/* 8026DBFC  38 61 00 08 */	addi r3, r1, 8
/* 8026DC00  7C 64 1B 78 */	mr r4, r3
/* 8026DC04  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026DC08  48 0D 94 D1 */	bl PSVECScale
/* 8026DC0C  7F E3 FB 78 */	mr r3, r31
/* 8026DC10  38 81 00 08 */	addi r4, r1, 8
/* 8026DC14  7F E5 FB 78 */	mr r5, r31
/* 8026DC18  48 0D 94 79 */	bl PSVECAdd
lbl_8026DC1C:
/* 8026DC1C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8026DC20  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8026DC24  39 61 00 40 */	addi r11, r1, 0x40
/* 8026DC28  48 0F 45 FD */	bl _restgpr_28
/* 8026DC2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8026DC30  7C 08 03 A6 */	mtlr r0
/* 8026DC34  38 21 00 50 */	addi r1, r1, 0x50
/* 8026DC38  4E 80 00 20 */	blr 
