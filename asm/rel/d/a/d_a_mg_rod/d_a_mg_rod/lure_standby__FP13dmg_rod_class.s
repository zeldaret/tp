lbl_804AC41C:
/* 804AC41C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804AC420  7C 08 02 A6 */	mflr r0
/* 804AC424  90 01 00 94 */	stw r0, 0x94(r1)
/* 804AC428  39 61 00 90 */	addi r11, r1, 0x90
/* 804AC42C  4B EB 5D A5 */	bl _savegpr_26
/* 804AC430  7C 7D 1B 78 */	mr r29, r3
/* 804AC434  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804AC438  3B C3 B5 34 */	addi r30, r3, lit_3879@l /* 0x804BB534@l */
/* 804AC43C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AC440  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AC444  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 804AC448  3B 60 00 00 */	li r27, 0
/* 804AC44C  3B 40 00 00 */	li r26, 0
/* 804AC450  38 00 00 00 */	li r0, 0
/* 804AC454  98 1D 10 A6 */	stb r0, 0x10a6(r29)
/* 804AC458  98 1D 10 0D */	stb r0, 0x100d(r29)
/* 804AC45C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804AC460  4B C4 7A D9 */	bl checkCanoeFishingRodGrabOrPut__9daAlink_cCFv
/* 804AC464  2C 03 00 00 */	cmpwi r3, 0
/* 804AC468  41 82 00 0C */	beq lbl_804AC474
/* 804AC46C  38 00 00 05 */	li r0, 5
/* 804AC470  98 1D 14 6C */	stb r0, 0x146c(r29)
lbl_804AC474:
/* 804AC474  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 804AC478  A8 1D 05 82 */	lha r0, 0x582(r29)
/* 804AC47C  2C 00 00 00 */	cmpwi r0, 0
/* 804AC480  41 82 00 08 */	beq lbl_804AC488
/* 804AC484  C0 3E 01 04 */	lfs f1, 0x104(r30)
lbl_804AC488:
/* 804AC488  38 7D 0F 5C */	addi r3, r29, 0xf5c
/* 804AC48C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804AC490  FC 60 10 90 */	fmr f3, f2
/* 804AC494  4B DC 35 A9 */	bl cLib_addCalc2__FPffff
/* 804AC498  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 804AC49C  D0 1D 0F 64 */	stfs f0, 0xf64(r29)
/* 804AC4A0  C0 1D 07 64 */	lfs f0, 0x764(r29)
/* 804AC4A4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804AC4A8  C0 1D 07 68 */	lfs f0, 0x768(r29)
/* 804AC4AC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804AC4B0  C0 1D 07 6C */	lfs f0, 0x76c(r29)
/* 804AC4B4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 804AC4B8  38 61 00 48 */	addi r3, r1, 0x48
/* 804AC4BC  38 9D 06 AC */	addi r4, r29, 0x6ac
/* 804AC4C0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804AC4C4  4B DB A6 71 */	bl __mi__4cXyzCFRC3Vec
/* 804AC4C8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804AC4CC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804AC4D0  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 804AC4D4  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 804AC4D8  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 804AC4DC  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 804AC4E0  4B DB B1 95 */	bl cM_atan2s__Fff
/* 804AC4E4  7C 03 00 D0 */	neg r0, r3
/* 804AC4E8  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 804AC4EC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 804AC4F0  EC 20 00 32 */	fmuls f1, f0, f0
/* 804AC4F4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804AC4F8  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AC4FC  EC 41 00 2A */	fadds f2, f1, f0
/* 804AC500  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AC504  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AC508  40 81 00 0C */	ble lbl_804AC514
/* 804AC50C  FC 00 10 34 */	frsqrte f0, f2
/* 804AC510  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AC514:
/* 804AC514  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 804AC518  4B DB B1 5D */	bl cM_atan2s__Fff
/* 804AC51C  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 804AC520  A8 1D 05 7C */	lha r0, 0x57c(r29)
/* 804AC524  2C 00 00 00 */	cmpwi r0, 0
/* 804AC528  41 82 00 2C */	beq lbl_804AC554
/* 804AC52C  38 00 E4 A8 */	li r0, -7000
/* 804AC530  B0 1D 14 F8 */	sth r0, 0x14f8(r29)
/* 804AC534  A8 7D 14 F8 */	lha r3, 0x14f8(r29)
/* 804AC538  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 804AC53C  38 00 00 00 */	li r0, 0
/* 804AC540  B0 04 31 60 */	sth r0, 0x3160(r4)
/* 804AC544  B0 04 31 62 */	sth r0, 0x3162(r4)
/* 804AC548  B0 64 31 64 */	sth r3, 0x3164(r4)
/* 804AC54C  38 60 00 00 */	li r3, 0
/* 804AC550  48 00 06 2C */	b lbl_804ACB7C
lbl_804AC554:
/* 804AC554  3C 60 80 4C */	lis r3, struct_804BBBD4+0x0@ha /* 0x804BBBD4@ha */
/* 804AC558  88 03 BB D4 */	lbz r0, struct_804BBBD4+0x0@l(r3)  /* 0x804BBBD4@l */
/* 804AC55C  28 00 00 00 */	cmplwi r0, 0
/* 804AC560  41 82 00 20 */	beq lbl_804AC580
/* 804AC564  38 00 00 04 */	li r0, 4
/* 804AC568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AC56C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AC570  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 804AC574  38 00 00 00 */	li r0, 0
/* 804AC578  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 804AC57C  48 00 00 1C */	b lbl_804AC598
lbl_804AC580:
/* 804AC580  38 00 00 2A */	li r0, 0x2a
/* 804AC584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AC588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AC58C  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 804AC590  38 00 00 00 */	li r0, 0
/* 804AC594  98 03 5E 57 */	stb r0, 0x5e57(r3)
lbl_804AC598:
/* 804AC598  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 804AC59C  C4 03 D2 E8 */	lfsu f0, m_cpadInfo__8mDoCPd_c@l(r3)  /* 0x803DD2E8@l */
/* 804AC5A0  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AC5A4  D0 1D 14 C8 */	stfs f0, 0x14c8(r29)
/* 804AC5A8  C0 23 00 00 */	lfs f1, 0(r3)
/* 804AC5AC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AC5B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AC5B4  40 80 00 14 */	bge lbl_804AC5C8
/* 804AC5B8  C0 3D 14 C8 */	lfs f1, 0x14c8(r29)
/* 804AC5BC  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 804AC5C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AC5C4  D0 1D 14 C8 */	stfs f0, 0x14c8(r29)
lbl_804AC5C8:
/* 804AC5C8  C0 3D 14 C8 */	lfs f1, 0x14c8(r29)
/* 804AC5CC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804AC5D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AC5D4  40 81 00 0C */	ble lbl_804AC5E0
/* 804AC5D8  D0 1D 14 C8 */	stfs f0, 0x14c8(r29)
/* 804AC5DC  48 00 00 14 */	b lbl_804AC5F0
lbl_804AC5E0:
/* 804AC5E0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 804AC5E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AC5E8  40 80 00 08 */	bge lbl_804AC5F0
/* 804AC5EC  D0 1D 14 C8 */	stfs f0, 0x14c8(r29)
lbl_804AC5F0:
/* 804AC5F0  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 804AC5F4  C0 1D 14 DC */	lfs f0, 0x14dc(r29)
/* 804AC5F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 804AC5FC  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 804AC600  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AC604  FC 00 00 1E */	fctiwz f0, f0
/* 804AC608  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 804AC60C  80 81 00 74 */	lwz r4, 0x74(r1)
/* 804AC610  7C 80 07 34 */	extsh r0, r4
/* 804AC614  2C 00 1B 58 */	cmpwi r0, 0x1b58
/* 804AC618  40 81 00 0C */	ble lbl_804AC624
/* 804AC61C  38 80 1B 58 */	li r4, 0x1b58
/* 804AC620  48 00 00 10 */	b lbl_804AC630
lbl_804AC624:
/* 804AC624  2C 00 E4 A8 */	cmpwi r0, -7000
/* 804AC628  40 80 00 08 */	bge lbl_804AC630
/* 804AC62C  38 80 E4 A8 */	li r4, -7000
lbl_804AC630:
/* 804AC630  38 7D 14 F8 */	addi r3, r29, 0x14f8
/* 804AC634  38 A0 00 02 */	li r5, 2
/* 804AC638  38 C0 0F A0 */	li r6, 0xfa0
/* 804AC63C  4B DC 3F CD */	bl cLib_addCalcAngleS2__FPssss
/* 804AC640  C0 5D 14 E0 */	lfs f2, 0x14e0(r29)
/* 804AC644  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AC648  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AC64C  40 80 00 4C */	bge lbl_804AC698
/* 804AC650  C0 1D 14 DC */	lfs f0, 0x14dc(r29)
/* 804AC654  EC 20 10 28 */	fsubs f1, f0, f2
/* 804AC658  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 804AC65C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AC660  4C 41 13 82 */	cror 2, 1, 2
/* 804AC664  40 82 00 34 */	bne lbl_804AC698
/* 804AC668  3B 40 00 01 */	li r26, 1
/* 804AC66C  FC 00 12 10 */	fabs f0, f2
/* 804AC670  FC 00 00 18 */	frsp f0, f0
/* 804AC674  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 804AC678  C0 1D 06 FC */	lfs f0, 0x6fc(r29)
/* 804AC67C  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AC680  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 804AC684  C0 3D 06 FC */	lfs f1, 0x6fc(r29)
/* 804AC688  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 804AC68C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AC690  40 80 00 08 */	bge lbl_804AC698
/* 804AC694  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
lbl_804AC698:
/* 804AC698  A8 7D 14 F8 */	lha r3, 0x14f8(r29)
/* 804AC69C  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 804AC6A0  38 00 00 00 */	li r0, 0
/* 804AC6A4  B0 04 31 60 */	sth r0, 0x3160(r4)
/* 804AC6A8  B0 04 31 62 */	sth r0, 0x3162(r4)
/* 804AC6AC  B0 64 31 64 */	sth r3, 0x3164(r4)
/* 804AC6B0  38 61 00 3C */	addi r3, r1, 0x3c
/* 804AC6B4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804AC6B8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 804AC6BC  4B DB A4 79 */	bl __mi__4cXyzCFRC3Vec
/* 804AC6C0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804AC6C4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804AC6C8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804AC6CC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804AC6D0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804AC6D4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804AC6D8  38 61 00 60 */	addi r3, r1, 0x60
/* 804AC6DC  4B E9 AA 5D */	bl PSVECSquareMag
/* 804AC6E0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AC6E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AC6E8  40 81 00 58 */	ble lbl_804AC740
/* 804AC6EC  FC 00 08 34 */	frsqrte f0, f1
/* 804AC6F0  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804AC6F4  FC 44 00 32 */	fmul f2, f4, f0
/* 804AC6F8  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804AC6FC  FC 00 00 32 */	fmul f0, f0, f0
/* 804AC700  FC 01 00 32 */	fmul f0, f1, f0
/* 804AC704  FC 03 00 28 */	fsub f0, f3, f0
/* 804AC708  FC 02 00 32 */	fmul f0, f2, f0
/* 804AC70C  FC 44 00 32 */	fmul f2, f4, f0
/* 804AC710  FC 00 00 32 */	fmul f0, f0, f0
/* 804AC714  FC 01 00 32 */	fmul f0, f1, f0
/* 804AC718  FC 03 00 28 */	fsub f0, f3, f0
/* 804AC71C  FC 02 00 32 */	fmul f0, f2, f0
/* 804AC720  FC 44 00 32 */	fmul f2, f4, f0
/* 804AC724  FC 00 00 32 */	fmul f0, f0, f0
/* 804AC728  FC 01 00 32 */	fmul f0, f1, f0
/* 804AC72C  FC 03 00 28 */	fsub f0, f3, f0
/* 804AC730  FC 02 00 32 */	fmul f0, f2, f0
/* 804AC734  FC 21 00 32 */	fmul f1, f1, f0
/* 804AC738  FC 20 08 18 */	frsp f1, f1
/* 804AC73C  48 00 00 88 */	b lbl_804AC7C4
lbl_804AC740:
/* 804AC740  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804AC744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AC748  40 80 00 10 */	bge lbl_804AC758
/* 804AC74C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AC750  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804AC754  48 00 00 70 */	b lbl_804AC7C4
lbl_804AC758:
/* 804AC758  D0 21 00 08 */	stfs f1, 8(r1)
/* 804AC75C  80 81 00 08 */	lwz r4, 8(r1)
/* 804AC760  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804AC764  3C 00 7F 80 */	lis r0, 0x7f80
/* 804AC768  7C 03 00 00 */	cmpw r3, r0
/* 804AC76C  41 82 00 14 */	beq lbl_804AC780
/* 804AC770  40 80 00 40 */	bge lbl_804AC7B0
/* 804AC774  2C 03 00 00 */	cmpwi r3, 0
/* 804AC778  41 82 00 20 */	beq lbl_804AC798
/* 804AC77C  48 00 00 34 */	b lbl_804AC7B0
lbl_804AC780:
/* 804AC780  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AC784  41 82 00 0C */	beq lbl_804AC790
/* 804AC788  38 00 00 01 */	li r0, 1
/* 804AC78C  48 00 00 28 */	b lbl_804AC7B4
lbl_804AC790:
/* 804AC790  38 00 00 02 */	li r0, 2
/* 804AC794  48 00 00 20 */	b lbl_804AC7B4
lbl_804AC798:
/* 804AC798  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AC79C  41 82 00 0C */	beq lbl_804AC7A8
/* 804AC7A0  38 00 00 05 */	li r0, 5
/* 804AC7A4  48 00 00 10 */	b lbl_804AC7B4
lbl_804AC7A8:
/* 804AC7A8  38 00 00 03 */	li r0, 3
/* 804AC7AC  48 00 00 08 */	b lbl_804AC7B4
lbl_804AC7B0:
/* 804AC7B0  38 00 00 04 */	li r0, 4
lbl_804AC7B4:
/* 804AC7B4  2C 00 00 01 */	cmpwi r0, 1
/* 804AC7B8  40 82 00 0C */	bne lbl_804AC7C4
/* 804AC7BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AC7C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804AC7C4:
/* 804AC7C4  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 804AC7C8  EC 20 00 72 */	fmuls f1, f0, f1
/* 804AC7CC  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 804AC7D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AC7D4  40 81 00 1C */	ble lbl_804AC7F0
/* 804AC7D8  D0 3D 06 E0 */	stfs f1, 0x6e0(r29)
/* 804AC7DC  C0 3D 06 E0 */	lfs f1, 0x6e0(r29)
/* 804AC7E0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804AC7E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AC7E8  40 81 00 08 */	ble lbl_804AC7F0
/* 804AC7EC  D0 1D 06 E0 */	stfs f0, 0x6e0(r29)
lbl_804AC7F0:
/* 804AC7F0  A8 1D 05 7A */	lha r0, 0x57a(r29)
/* 804AC7F4  2C 00 00 00 */	cmpwi r0, 0
/* 804AC7F8  41 82 02 14 */	beq lbl_804ACA0C
/* 804AC7FC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804AC800  D0 3D 06 E0 */	stfs f1, 0x6e0(r29)
/* 804AC804  A8 1D 05 7A */	lha r0, 0x57a(r29)
/* 804AC808  2C 00 00 03 */	cmpwi r0, 3
/* 804AC80C  40 82 00 30 */	bne lbl_804AC83C
/* 804AC810  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AC814  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804AC818  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804AC81C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AC820  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AC824  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AC828  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804AC82C  38 80 00 03 */	li r4, 3
/* 804AC830  38 A0 00 01 */	li r5, 1
/* 804AC834  38 C1 00 30 */	addi r6, r1, 0x30
/* 804AC838  4B BC 31 ED */	bl StartShock__12dVibration_cFii4cXyz
lbl_804AC83C:
/* 804AC83C  88 1D 06 E8 */	lbz r0, 0x6e8(r29)
/* 804AC840  7C 00 07 75 */	extsb. r0, r0
/* 804AC844  41 82 00 78 */	beq lbl_804AC8BC
/* 804AC848  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AC84C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AC850  80 63 00 00 */	lwz r3, 0(r3)
/* 804AC854  A8 9D 06 C4 */	lha r4, 0x6c4(r29)
/* 804AC858  4B B5 FB 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AC85C  88 1D 06 E8 */	lbz r0, 0x6e8(r29)
/* 804AC860  2C 00 00 01 */	cmpwi r0, 1
/* 804AC864  40 82 00 0C */	bne lbl_804AC870
/* 804AC868  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 804AC86C  48 00 00 08 */	b lbl_804AC874
lbl_804AC870:
/* 804AC870  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
lbl_804AC874:
/* 804AC874  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804AC878  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AC87C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804AC880  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804AC884  38 61 00 60 */	addi r3, r1, 0x60
/* 804AC888  38 81 00 54 */	addi r4, r1, 0x54
/* 804AC88C  4B DC 46 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AC890  38 61 00 24 */	addi r3, r1, 0x24
/* 804AC894  38 81 00 54 */	addi r4, r1, 0x54
/* 804AC898  38 BC 05 38 */	addi r5, r28, 0x538
/* 804AC89C  4B DB A2 49 */	bl __pl__4cXyzCFRC3Vec
/* 804AC8A0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804AC8A4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804AC8A8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804AC8AC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804AC8B0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804AC8B4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 804AC8B8  3B 60 00 01 */	li r27, 1
lbl_804AC8BC:
/* 804AC8BC  A8 1D 05 7A */	lha r0, 0x57a(r29)
/* 804AC8C0  2C 00 00 01 */	cmpwi r0, 1
/* 804AC8C4  40 82 01 DC */	bne lbl_804ACAA0
/* 804AC8C8  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 804AC8CC  A8 04 30 0C */	lha r0, 0x300c(r4)
/* 804AC8D0  2C 00 00 00 */	cmpwi r0, 0
/* 804AC8D4  40 82 00 34 */	bne lbl_804AC908
/* 804AC8D8  38 60 00 00 */	li r3, 0
/* 804AC8DC  A0 04 1F BC */	lhz r0, 0x1fbc(r4)
/* 804AC8E0  28 00 00 5D */	cmplwi r0, 0x5d
/* 804AC8E4  41 82 00 10 */	beq lbl_804AC8F4
/* 804AC8E8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804AC8EC  28 00 02 60 */	cmplwi r0, 0x260
/* 804AC8F0  40 82 00 08 */	bne lbl_804AC8F8
lbl_804AC8F4:
/* 804AC8F4  38 60 00 01 */	li r3, 1
lbl_804AC8F8:
/* 804AC8F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AC8FC  41 82 00 0C */	beq lbl_804AC908
/* 804AC900  38 00 00 01 */	li r0, 1
/* 804AC904  B0 04 30 0C */	sth r0, 0x300c(r4)
lbl_804AC908:
/* 804AC908  38 00 00 03 */	li r0, 3
/* 804AC90C  B0 1D 0F 7E */	sth r0, 0xf7e(r29)
/* 804AC910  38 00 00 00 */	li r0, 0
/* 804AC914  98 1D 10 A8 */	stb r0, 0x10a8(r29)
/* 804AC918  B0 1D 13 B6 */	sth r0, 0x13b6(r29)
/* 804AC91C  A8 7D 06 C4 */	lha r3, 0x6c4(r29)
/* 804AC920  38 03 7E 0C */	addi r0, r3, 0x7e0c
/* 804AC924  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 804AC928  C0 3D 06 FC */	lfs f1, 0x6fc(r29)
/* 804AC92C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804AC930  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AC934  40 81 00 08 */	ble lbl_804AC93C
/* 804AC938  FC 20 00 90 */	fmr f1, f0
lbl_804AC93C:
/* 804AC93C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 804AC940  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AC944  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804AC948  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AC94C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AC950  80 63 00 00 */	lwz r3, 0(r3)
/* 804AC954  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 804AC958  4B B5 FA 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AC95C  88 1D 06 E8 */	lbz r0, 0x6e8(r29)
/* 804AC960  7C 00 07 75 */	extsb. r0, r0
/* 804AC964  41 82 00 40 */	beq lbl_804AC9A4
/* 804AC968  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 804AC96C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804AC970  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AC974  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804AC978  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804AC97C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804AC980  88 1D 06 E8 */	lbz r0, 0x6e8(r29)
/* 804AC984  2C 00 00 01 */	cmpwi r0, 1
/* 804AC988  40 82 00 10 */	bne lbl_804AC998
/* 804AC98C  38 00 EC 78 */	li r0, -5000
/* 804AC990  B0 1D 14 FA */	sth r0, 0x14fa(r29)
/* 804AC994  48 00 00 38 */	b lbl_804AC9CC
lbl_804AC998:
/* 804AC998  38 00 13 88 */	li r0, 0x1388
/* 804AC99C  B0 1D 14 FA */	sth r0, 0x14fa(r29)
/* 804AC9A0  48 00 00 2C */	b lbl_804AC9CC
lbl_804AC9A4:
/* 804AC9A4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 804AC9A8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804AC9AC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AC9B0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804AC9B4  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 804AC9B8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804AC9BC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804AC9C0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804AC9C4  38 00 00 00 */	li r0, 0
/* 804AC9C8  B0 1D 14 FA */	sth r0, 0x14fa(r29)
lbl_804AC9CC:
/* 804AC9CC  38 61 00 60 */	addi r3, r1, 0x60
/* 804AC9D0  38 81 00 54 */	addi r4, r1, 0x54
/* 804AC9D4  4B DC 45 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AC9D8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804AC9DC  38 81 00 54 */	addi r4, r1, 0x54
/* 804AC9E0  7C 65 1B 78 */	mr r5, r3
/* 804AC9E4  4B E9 A6 AD */	bl PSVECAdd
/* 804AC9E8  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 804AC9EC  D0 1D 14 10 */	stfs f0, 0x1410(r29)
/* 804AC9F0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AC9F4  D0 1D 0F 64 */	stfs f0, 0xf64(r29)
/* 804AC9F8  38 00 EC 78 */	li r0, -5000
/* 804AC9FC  B0 1D 14 F8 */	sth r0, 0x14f8(r29)
/* 804ACA00  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 804ACA04  D0 1D 06 E0 */	stfs f0, 0x6e0(r29)
/* 804ACA08  48 00 00 98 */	b lbl_804ACAA0
lbl_804ACA0C:
/* 804ACA0C  2C 1A 00 00 */	cmpwi r26, 0
/* 804ACA10  41 82 00 64 */	beq lbl_804ACA74
/* 804ACA14  2C 1A 00 01 */	cmpwi r26, 1
/* 804ACA18  40 82 00 10 */	bne lbl_804ACA28
/* 804ACA1C  38 00 00 05 */	li r0, 5
/* 804ACA20  B0 1D 05 7A */	sth r0, 0x57a(r29)
/* 804ACA24  48 00 00 0C */	b lbl_804ACA30
lbl_804ACA28:
/* 804ACA28  38 00 00 04 */	li r0, 4
/* 804ACA2C  B0 1D 05 7A */	sth r0, 0x57a(r29)
lbl_804ACA30:
/* 804ACA30  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804ACA34  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020078@ha */
/* 804ACA38  38 84 00 78 */	addi r4, r4, 0x0078 /* 0x00020078@l */
/* 804ACA3C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804ACA40  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 804ACA44  7D 89 03 A6 */	mtctr r12
/* 804ACA48  4E 80 04 21 */	bctrl 
/* 804ACA4C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804ACA50  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002008D@ha */
/* 804ACA54  38 84 00 8D */	addi r4, r4, 0x008D /* 0x0002008D@l */
/* 804ACA58  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804ACA5C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 804ACA60  7D 89 03 A6 */	mtctr r12
/* 804ACA64  4E 80 04 21 */	bctrl 
/* 804ACA68  38 00 00 1E */	li r0, 0x1e
/* 804ACA6C  98 1D 15 14 */	stb r0, 0x1514(r29)
/* 804ACA70  48 00 00 30 */	b lbl_804ACAA0
lbl_804ACA74:
/* 804ACA74  A8 1D 14 F8 */	lha r0, 0x14f8(r29)
/* 804ACA78  2C 00 13 88 */	cmpwi r0, 0x1388
/* 804ACA7C  40 80 00 24 */	bge lbl_804ACAA0
/* 804ACA80  38 00 00 50 */	li r0, 0x50
/* 804ACA84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804ACA88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804ACA8C  98 03 5E 3F */	stb r0, 0x5e3f(r3)
/* 804ACA90  38 00 00 02 */	li r0, 2
/* 804ACA94  98 03 5E 31 */	stb r0, 0x5e31(r3)
/* 804ACA98  38 00 00 00 */	li r0, 0
/* 804ACA9C  98 03 5E 59 */	stb r0, 0x5e59(r3)
lbl_804ACAA0:
/* 804ACAA0  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 804ACAA4  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 804ACAA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804ACAAC  D0 1D 06 F8 */	stfs f0, 0x6f8(r29)
/* 804ACAB0  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804ACAB4  7F A4 EB 78 */	mr r4, r29
/* 804ACAB8  4B C4 73 95 */	bl checkFishingRodGrab__9daAlink_cCFP10fopAc_ac_c
/* 804ACABC  2C 03 00 00 */	cmpwi r3, 0
/* 804ACAC0  40 82 00 B8 */	bne lbl_804ACB78
/* 804ACAC4  38 00 00 00 */	li r0, 0
/* 804ACAC8  B0 1D 0F 7E */	sth r0, 0xf7e(r29)
/* 804ACACC  B0 1D 13 B4 */	sth r0, 0x13b4(r29)
/* 804ACAD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804ACAD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804ACAD8  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804ACADC  7C 00 07 74 */	extsb r0, r0
/* 804ACAE0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804ACAE4  7C 63 02 14 */	add r3, r3, r0
/* 804ACAE8  83 43 5D 74 */	lwz r26, 0x5d74(r3)
/* 804ACAEC  C0 1D 13 C4 */	lfs f0, 0x13c4(r29)
/* 804ACAF0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804ACAF4  C0 1D 13 C8 */	lfs f0, 0x13c8(r29)
/* 804ACAF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804ACAFC  C0 1D 13 CC */	lfs f0, 0x13cc(r29)
/* 804ACB00  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804ACB04  C0 1D 13 B8 */	lfs f0, 0x13b8(r29)
/* 804ACB08  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804ACB0C  C0 1D 13 BC */	lfs f0, 0x13bc(r29)
/* 804ACB10  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804ACB14  C0 1D 13 C0 */	lfs f0, 0x13c0(r29)
/* 804ACB18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804ACB1C  38 7A 02 48 */	addi r3, r26, 0x248
/* 804ACB20  38 81 00 18 */	addi r4, r1, 0x18
/* 804ACB24  38 A1 00 0C */	addi r5, r1, 0xc
/* 804ACB28  C0 3D 14 08 */	lfs f1, 0x1408(r29)
/* 804ACB2C  38 C0 00 00 */	li r6, 0
/* 804ACB30  4B CD 40 71 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 804ACB34  38 7A 02 48 */	addi r3, r26, 0x248
/* 804ACB38  4B CB 49 75 */	bl Start__9dCamera_cFv
/* 804ACB3C  38 7A 02 48 */	addi r3, r26, 0x248
/* 804ACB40  38 80 00 00 */	li r4, 0
/* 804ACB44  4B CB 64 C9 */	bl SetTrimSize__9dCamera_cFl
/* 804ACB48  4B D4 D5 85 */	bl dMw_onMenuRing__Fv
/* 804ACB4C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804ACB50  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002008A@ha */
/* 804ACB54  38 84 00 8A */	addi r4, r4, 0x008A /* 0x0002008A@l */
/* 804ACB58  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804ACB5C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 804ACB60  7D 89 03 A6 */	mtctr r12
/* 804ACB64  4E 80 04 21 */	bctrl 
/* 804ACB68  38 00 00 1E */	li r0, 0x1e
/* 804ACB6C  B0 1D 05 7C */	sth r0, 0x57c(r29)
/* 804ACB70  38 00 00 05 */	li r0, 5
/* 804ACB74  98 1D 14 6C */	stb r0, 0x146c(r29)
lbl_804ACB78:
/* 804ACB78  7F 63 DB 78 */	mr r3, r27
lbl_804ACB7C:
/* 804ACB7C  39 61 00 90 */	addi r11, r1, 0x90
/* 804ACB80  4B EB 56 9D */	bl _restgpr_26
/* 804ACB84  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804ACB88  7C 08 03 A6 */	mtlr r0
/* 804ACB8C  38 21 00 90 */	addi r1, r1, 0x90
/* 804ACB90  4E 80 00 20 */	blr 
