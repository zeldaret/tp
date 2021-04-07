lbl_806FB2EC:
/* 806FB2EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806FB2F0  7C 08 02 A6 */	mflr r0
/* 806FB2F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FB2F8  39 61 00 20 */	addi r11, r1, 0x20
/* 806FB2FC  4B C6 6E E1 */	bl _savegpr_29
/* 806FB300  7C 7E 1B 78 */	mr r30, r3
/* 806FB304  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FB308  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FB30C  83 FD 5D AC */	lwz r31, 0x5dac(r29)
/* 806FB310  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 806FB314  28 00 00 00 */	cmplwi r0, 0
/* 806FB318  40 82 00 8C */	bne lbl_806FB3A4
/* 806FB31C  7F E4 FB 78 */	mr r4, r31
/* 806FB320  4B 91 F4 C1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FB324  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FF890@ha */
/* 806FB328  38 63 F8 90 */	addi r3, r3, l_HIO@l /* 0x806FF890@l */
/* 806FB32C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806FB330  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FB334  40 81 00 70 */	ble lbl_806FB3A4
/* 806FB338  7F C3 F3 78 */	mr r3, r30
/* 806FB33C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FB340  4B 91 F4 A1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FB344  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FF890@ha */
/* 806FB348  38 63 F8 90 */	addi r3, r3, l_HIO@l /* 0x806FF890@l */
/* 806FB34C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806FB350  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FB354  4C 40 13 82 */	cror 2, 0, 2
/* 806FB358  40 82 00 4C */	bne lbl_806FB3A4
/* 806FB35C  7F C3 F3 78 */	mr r3, r30
/* 806FB360  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FB364  4B 92 1A 99 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FB368  2C 03 00 00 */	cmpwi r3, 0
/* 806FB36C  40 82 00 38 */	bne lbl_806FB3A4
/* 806FB370  3C 60 80 70 */	lis r3, lit_4202@ha /* 0x806FF630@ha */
/* 806FB374  C0 23 F6 30 */	lfs f1, lit_4202@l(r3)  /* 0x806FF630@l */
/* 806FB378  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806FB37C  EC 21 00 2A */	fadds f1, f1, f0
/* 806FB380  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806FB384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FB388  4C 41 13 82 */	cror 2, 1, 2
/* 806FB38C  40 82 00 18 */	bne lbl_806FB3A4
/* 806FB390  7F C3 F3 78 */	mr r3, r30
/* 806FB394  38 80 00 03 */	li r4, 3
/* 806FB398  38 A0 00 00 */	li r5, 0
/* 806FB39C  4B FF F8 E5 */	bl setActionMode__8daE_KK_cFii
/* 806FB3A0  48 00 01 3C */	b lbl_806FB4DC
lbl_806FB3A4:
/* 806FB3A4  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 806FB3A8  28 00 00 00 */	cmplwi r0, 0
/* 806FB3AC  40 82 00 E0 */	bne lbl_806FB48C
/* 806FB3B0  7F C3 F3 78 */	mr r3, r30
/* 806FB3B4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FB3B8  4B 91 F4 29 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FB3BC  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FF890@ha */
/* 806FB3C0  38 63 F8 90 */	addi r3, r3, l_HIO@l /* 0x806FF890@l */
/* 806FB3C4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806FB3C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FB3CC  4C 40 13 82 */	cror 2, 0, 2
/* 806FB3D0  40 82 00 BC */	bne lbl_806FB48C
/* 806FB3D4  7F C3 F3 78 */	mr r3, r30
/* 806FB3D8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FB3DC  4B 92 1A 21 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FB3E0  2C 03 00 00 */	cmpwi r3, 0
/* 806FB3E4  40 82 00 A8 */	bne lbl_806FB48C
/* 806FB3E8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FB3EC  A8 04 05 6C */	lha r0, 0x56c(r4)
/* 806FB3F0  7C 00 07 35 */	extsh. r0, r0
/* 806FB3F4  41 82 00 24 */	beq lbl_806FB418
/* 806FB3F8  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FB3FC  2C 00 00 00 */	cmpwi r0, 0
/* 806FB400  41 82 00 18 */	beq lbl_806FB418
/* 806FB404  7F C3 F3 78 */	mr r3, r30
/* 806FB408  38 80 00 00 */	li r4, 0
/* 806FB40C  38 A0 00 00 */	li r5, 0
/* 806FB410  4B FF F8 71 */	bl setActionMode__8daE_KK_cFii
/* 806FB414  48 00 00 C8 */	b lbl_806FB4DC
lbl_806FB418:
/* 806FB418  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 806FB41C  28 00 00 00 */	cmplwi r0, 0
/* 806FB420  40 82 00 BC */	bne lbl_806FB4DC
/* 806FB424  7F C3 F3 78 */	mr r3, r30
/* 806FB428  4B 92 19 D5 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FB42C  2C 03 00 00 */	cmpwi r3, 0
/* 806FB430  40 82 00 48 */	bne lbl_806FB478
/* 806FB434  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FB438  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FB43C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806FB440  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 806FB444  40 82 00 34 */	bne lbl_806FB478
/* 806FB448  3C 60 80 70 */	lis r3, lit_4203@ha /* 0x806FF634@ha */
/* 806FB44C  C0 23 F6 34 */	lfs f1, lit_4203@l(r3)  /* 0x806FF634@l */
/* 806FB450  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806FB454  EC 21 00 2A */	fadds f1, f1, f0
/* 806FB458  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806FB45C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FB460  40 81 00 18 */	ble lbl_806FB478
/* 806FB464  7F C3 F3 78 */	mr r3, r30
/* 806FB468  38 80 00 08 */	li r4, 8
/* 806FB46C  38 A0 00 00 */	li r5, 0
/* 806FB470  4B FF F8 11 */	bl setActionMode__8daE_KK_cFii
/* 806FB474  48 00 00 68 */	b lbl_806FB4DC
lbl_806FB478:
/* 806FB478  7F C3 F3 78 */	mr r3, r30
/* 806FB47C  38 80 00 03 */	li r4, 3
/* 806FB480  38 A0 00 00 */	li r5, 0
/* 806FB484  4B FF F7 FD */	bl setActionMode__8daE_KK_cFii
/* 806FB488  48 00 00 54 */	b lbl_806FB4DC
lbl_806FB48C:
/* 806FB48C  A8 7E 06 72 */	lha r3, 0x672(r30)
/* 806FB490  7C 60 07 35 */	extsh. r0, r3
/* 806FB494  40 82 00 24 */	bne lbl_806FB4B8
/* 806FB498  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FB49C  2C 00 00 00 */	cmpwi r0, 0
/* 806FB4A0  41 82 00 18 */	beq lbl_806FB4B8
/* 806FB4A4  7F C3 F3 78 */	mr r3, r30
/* 806FB4A8  38 80 00 00 */	li r4, 0
/* 806FB4AC  38 A0 00 00 */	li r5, 0
/* 806FB4B0  4B FF F7 D1 */	bl setActionMode__8daE_KK_cFii
/* 806FB4B4  48 00 00 28 */	b lbl_806FB4DC
lbl_806FB4B8:
/* 806FB4B8  7C 60 07 35 */	extsh. r0, r3
/* 806FB4BC  40 82 00 20 */	bne lbl_806FB4DC
/* 806FB4C0  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FB4C4  2C 00 00 02 */	cmpwi r0, 2
/* 806FB4C8  41 82 00 14 */	beq lbl_806FB4DC
/* 806FB4CC  7F C3 F3 78 */	mr r3, r30
/* 806FB4D0  38 80 00 02 */	li r4, 2
/* 806FB4D4  38 A0 00 00 */	li r5, 0
/* 806FB4D8  4B FF F7 A9 */	bl setActionMode__8daE_KK_cFii
lbl_806FB4DC:
/* 806FB4DC  39 61 00 20 */	addi r11, r1, 0x20
/* 806FB4E0  4B C6 6D 49 */	bl _restgpr_29
/* 806FB4E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FB4E8  7C 08 03 A6 */	mtlr r0
/* 806FB4EC  38 21 00 20 */	addi r1, r1, 0x20
/* 806FB4F0  4E 80 00 20 */	blr 
