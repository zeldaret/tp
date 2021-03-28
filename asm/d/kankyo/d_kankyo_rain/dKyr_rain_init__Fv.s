lbl_8005CC5C:
/* 8005CC5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005CC60  7C 08 02 A6 */	mflr r0
/* 8005CC64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005CC68  39 61 00 20 */	addi r11, r1, 0x20
/* 8005CC6C  48 30 55 71 */	bl _savegpr_29
/* 8005CC70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8005CC74  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 8005CC78  83 A5 5D 74 */	lwz r29, 0x5d74(r5)
/* 8005CC7C  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 8005CC80  38 63 A5 78 */	addi r3, r3, d_kankyo_d_kankyo_rain__stringBase0@l
/* 8005CC84  38 63 00 10 */	addi r3, r3, 0x10
/* 8005CC88  38 80 00 4A */	li r4, 0x4a
/* 8005CC8C  3F C5 00 02 */	addis r30, r5, 2
/* 8005CC90  3B DE C2 F8 */	addi r30, r30, -15624
/* 8005CC94  7F C5 F3 78 */	mr r5, r30
/* 8005CC98  38 C0 00 80 */	li r6, 0x80
/* 8005CC9C  4B FD F6 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8005CCA0  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8005CCA4  3B E4 CA 54 */	addi r31, r4, g_env_light@l
/* 8005CCA8  80 9F 0E 84 */	lwz r4, 0xe84(r31)
/* 8005CCAC  90 64 00 10 */	stw r3, 0x10(r4)
/* 8005CCB0  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 8005CCB4  38 63 A5 78 */	addi r3, r3, d_kankyo_d_kankyo_rain__stringBase0@l
/* 8005CCB8  38 63 00 10 */	addi r3, r3, 0x10
/* 8005CCBC  38 80 00 57 */	li r4, 0x57
/* 8005CCC0  7F C5 F3 78 */	mr r5, r30
/* 8005CCC4  38 C0 00 80 */	li r6, 0x80
/* 8005CCC8  4B FD F6 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8005CCCC  80 9F 0E 84 */	lwz r4, 0xe84(r31)
/* 8005CCD0  90 64 00 14 */	stw r3, 0x14(r4)
/* 8005CCD4  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CCD8  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 8005CCDC  D0 03 36 D8 */	stfs f0, 0x36d8(r3)
/* 8005CCE0  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 8005CCE4  D0 03 36 DC */	stfs f0, 0x36dc(r3)
/* 8005CCE8  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 8005CCEC  D0 03 36 E0 */	stfs f0, 0x36e0(r3)
/* 8005CCF0  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CCF4  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8005CCF8  D0 03 36 E4 */	stfs f0, 0x36e4(r3)
/* 8005CCFC  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 8005CD00  D0 03 36 E8 */	stfs f0, 0x36e8(r3)
/* 8005CD04  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 8005CD08  D0 03 36 EC */	stfs f0, 0x36ec(r3)
/* 8005CD0C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005CD10  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD14  D0 03 36 FC */	stfs f0, 0x36fc(r3)
/* 8005CD18  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD1C  D0 03 37 00 */	stfs f0, 0x3700(r3)
/* 8005CD20  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD24  D0 03 37 04 */	stfs f0, 0x3704(r3)
/* 8005CD28  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD2C  D0 03 37 08 */	stfs f0, 0x3708(r3)
/* 8005CD30  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD34  D0 03 37 0C */	stfs f0, 0x370c(r3)
/* 8005CD38  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD3C  D0 03 37 10 */	stfs f0, 0x3710(r3)
/* 8005CD40  38 A0 00 00 */	li r5, 0
/* 8005CD44  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD48  98 A3 37 14 */	stb r5, 0x3714(r3)
/* 8005CD4C  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD50  D0 03 36 F0 */	stfs f0, 0x36f0(r3)
/* 8005CD54  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD58  D0 03 36 F4 */	stfs f0, 0x36f4(r3)
/* 8005CD5C  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD60  D0 03 36 F8 */	stfs f0, 0x36f8(r3)
/* 8005CD64  7C A3 2B 78 */	mr r3, r5
/* 8005CD68  38 00 00 FA */	li r0, 0xfa
/* 8005CD6C  7C 09 03 A6 */	mtctr r0
lbl_8005CD70:
/* 8005CD70  80 9F 0E 84 */	lwz r4, 0xe84(r31)
/* 8005CD74  38 03 00 18 */	addi r0, r3, 0x18
/* 8005CD78  7C A4 01 AE */	stbx r5, r4, r0
/* 8005CD7C  38 63 00 38 */	addi r3, r3, 0x38
/* 8005CD80  42 00 FF F0 */	bdnz lbl_8005CD70
/* 8005CD84  38 00 00 00 */	li r0, 0
/* 8005CD88  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 8005CD8C  B0 03 36 D0 */	sth r0, 0x36d0(r3)
/* 8005CD90  39 61 00 20 */	addi r11, r1, 0x20
/* 8005CD94  48 30 54 95 */	bl _restgpr_29
/* 8005CD98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005CD9C  7C 08 03 A6 */	mtlr r0
/* 8005CDA0  38 21 00 20 */	addi r1, r1, 0x20
/* 8005CDA4  4E 80 00 20 */	blr 
