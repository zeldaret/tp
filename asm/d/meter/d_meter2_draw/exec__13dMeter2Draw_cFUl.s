lbl_8021135C:
/* 8021135C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80211360  7C 08 02 A6 */	mflr r0
/* 80211364  90 01 00 14 */	stw r0, 0x14(r1)
/* 80211368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021136C  93 C1 00 08 */	stw r30, 8(r1)
/* 80211370  7C 7F 1B 78 */	mr r31, r3
/* 80211374  7C 9E 23 78 */	mr r30, r4
/* 80211378  C0 03 07 78 */	lfs f0, 0x778(r3)
/* 8021137C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80211380  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80211384  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80211388  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8021138C  41 82 00 2C */	beq lbl_802113B8
/* 80211390  D0 3F 07 78 */	stfs f1, 0x778(r31)
/* 80211394  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80211398  80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 8021139C  80 63 00 04 */	lwz r3, 4(r3)
/* 802113A0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802113A4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802113A8  81 83 00 00 */	lwz r12, 0(r3)
/* 802113AC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802113B0  7D 89 03 A6 */	mtctr r12
/* 802113B4  4E 80 04 21 */	bctrl 
lbl_802113B8:
/* 802113B8  C0 1F 07 7C */	lfs f0, 0x77c(r31)
/* 802113BC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802113C0  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802113C4  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 802113C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802113CC  41 82 00 14 */	beq lbl_802113E0
/* 802113D0  D0 3F 07 7C */	stfs f1, 0x77c(r31)
/* 802113D4  80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 802113D8  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 802113DC  48 04 43 F5 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_802113E0:
/* 802113E0  57 C0 01 CF */	rlwinm. r0, r30, 0, 7, 7
/* 802113E4  41 82 00 94 */	beq lbl_80211478
/* 802113E8  C0 1F 07 80 */	lfs f0, 0x780(r31)
/* 802113EC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802113F0  38 A3 EB C8 */	addi r5, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802113F4  C0 45 00 90 */	lfs f2, 0x90(r5)
/* 802113F8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 802113FC  40 82 00 14 */	bne lbl_80211410
/* 80211400  C0 3F 07 84 */	lfs f1, 0x784(r31)
/* 80211404  C0 05 00 98 */	lfs f0, 0x98(r5)
/* 80211408  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8021140C  41 82 00 28 */	beq lbl_80211434
lbl_80211410:
/* 80211410  D0 5F 07 80 */	stfs f2, 0x780(r31)
/* 80211414  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80211418  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021141C  C0 04 00 98 */	lfs f0, 0x98(r4)
/* 80211420  D0 1F 07 84 */	stfs f0, 0x784(r31)
/* 80211424  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80211428  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 8021142C  C0 44 00 98 */	lfs f2, 0x98(r4)
/* 80211430  48 04 31 81 */	bl paneTrans__8CPaneMgrFff
lbl_80211434:
/* 80211434  C0 1F 07 88 */	lfs f0, 0x788(r31)
/* 80211438  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021143C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80211440  C0 23 00 80 */	lfs f1, 0x80(r3)
/* 80211444  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80211448  41 82 00 BC */	beq lbl_80211504
/* 8021144C  D0 3F 07 88 */	stfs f1, 0x788(r31)
/* 80211450  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80211454  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80211458  80 63 00 04 */	lwz r3, 4(r3)
/* 8021145C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80211460  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80211464  81 83 00 00 */	lwz r12, 0(r3)
/* 80211468  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8021146C  7D 89 03 A6 */	mtctr r12
/* 80211470  4E 80 04 21 */	bctrl 
/* 80211474  48 00 00 90 */	b lbl_80211504
lbl_80211478:
/* 80211478  C0 1F 07 80 */	lfs f0, 0x780(r31)
/* 8021147C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80211480  38 A3 EB C8 */	addi r5, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80211484  C0 45 00 8C */	lfs f2, 0x8c(r5)
/* 80211488  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8021148C  40 82 00 14 */	bne lbl_802114A0
/* 80211490  C0 3F 07 84 */	lfs f1, 0x784(r31)
/* 80211494  C0 05 00 94 */	lfs f0, 0x94(r5)
/* 80211498  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8021149C  41 82 00 28 */	beq lbl_802114C4
lbl_802114A0:
/* 802114A0  D0 5F 07 80 */	stfs f2, 0x780(r31)
/* 802114A4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802114A8  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802114AC  C0 04 00 94 */	lfs f0, 0x94(r4)
/* 802114B0  D0 1F 07 84 */	stfs f0, 0x784(r31)
/* 802114B4  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 802114B8  C0 25 00 8C */	lfs f1, 0x8c(r5)
/* 802114BC  C0 44 00 94 */	lfs f2, 0x94(r4)
/* 802114C0  48 04 30 F1 */	bl paneTrans__8CPaneMgrFff
lbl_802114C4:
/* 802114C4  C0 1F 07 88 */	lfs f0, 0x788(r31)
/* 802114C8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802114CC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802114D0  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 802114D4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802114D8  41 82 00 2C */	beq lbl_80211504
/* 802114DC  D0 3F 07 88 */	stfs f1, 0x788(r31)
/* 802114E0  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 802114E4  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 802114E8  80 63 00 04 */	lwz r3, 4(r3)
/* 802114EC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802114F0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802114F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802114F8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802114FC  7D 89 03 A6 */	mtctr r12
/* 80211500  4E 80 04 21 */	bctrl 
lbl_80211504:
/* 80211504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80211508  83 C1 00 08 */	lwz r30, 8(r1)
/* 8021150C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80211510  7C 08 03 A6 */	mtlr r0
/* 80211514  38 21 00 10 */	addi r1, r1, 0x10
/* 80211518  4E 80 00 20 */	blr 
