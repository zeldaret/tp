lbl_80969200:
/* 80969200  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80969204  7C 08 02 A6 */	mflr r0
/* 80969208  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096920C  39 61 00 20 */	addi r11, r1, 0x20
/* 80969210  4B 9F 8F C9 */	bl _savegpr_28
/* 80969214  7C 7F 1B 78 */	mr r31, r3
/* 80969218  3C 80 80 97 */	lis r4, l_cyl_src@ha /* 0x8096C920@ha */
/* 8096921C  3B A4 C9 20 */	addi r29, r4, l_cyl_src@l /* 0x8096C920@l */
/* 80969220  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80969224  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80969228  7D 89 03 A6 */	mtctr r12
/* 8096922C  4E 80 04 21 */	bctrl 
/* 80969230  7F E3 FB 78 */	mr r3, r31
/* 80969234  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80969238  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8096923C  7D 89 03 A6 */	mtctr r12
/* 80969240  4E 80 04 21 */	bctrl 
/* 80969244  2C 03 00 00 */	cmpwi r3, 0
/* 80969248  41 82 00 9C */	beq lbl_809692E4
/* 8096924C  7F E3 FB 78 */	mr r3, r31
/* 80969250  38 9F 07 A8 */	addi r4, r31, 0x7a8
/* 80969254  4B 6B 14 79 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80969258  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 8096925C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80969260  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80969264  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80969268  4B 70 D8 45 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8096926C  80 1F 06 AC */	lwz r0, 0x6ac(r31)
/* 80969270  90 1F 0A 44 */	stw r0, 0xa44(r31)
/* 80969274  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80969278  90 1F 0A 48 */	stw r0, 0xa48(r31)
/* 8096927C  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 80969280  90 1F 0A 4C */	stw r0, 0xa4c(r31)
/* 80969284  88 1F 06 B8 */	lbz r0, 0x6b8(r31)
/* 80969288  98 1F 0A 50 */	stb r0, 0xa50(r31)
/* 8096928C  A0 1F 06 C0 */	lhz r0, 0x6c0(r31)
/* 80969290  B0 1F 0A 58 */	sth r0, 0xa58(r31)
/* 80969294  A0 1F 06 C2 */	lhz r0, 0x6c2(r31)
/* 80969298  B0 1F 0A 5A */	sth r0, 0xa5a(r31)
/* 8096929C  80 1F 06 C4 */	lwz r0, 0x6c4(r31)
/* 809692A0  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 809692A4  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 809692A8  90 1F 0A 60 */	stw r0, 0xa60(r31)
/* 809692AC  C0 1F 06 D0 */	lfs f0, 0x6d0(r31)
/* 809692B0  D0 1F 0A 68 */	stfs f0, 0xa68(r31)
/* 809692B4  C0 1F 06 D4 */	lfs f0, 0x6d4(r31)
/* 809692B8  D0 1F 0A 6C */	stfs f0, 0xa6c(r31)
/* 809692BC  C0 1F 06 D8 */	lfs f0, 0x6d8(r31)
/* 809692C0  D0 1F 0A 70 */	stfs f0, 0xa70(r31)
/* 809692C4  80 1F 06 DC */	lwz r0, 0x6dc(r31)
/* 809692C8  90 1F 0A 74 */	stw r0, 0xa74(r31)
/* 809692CC  C0 1F 06 E0 */	lfs f0, 0x6e0(r31)
/* 809692D0  D0 1F 0A 78 */	stfs f0, 0xa78(r31)
/* 809692D4  80 1F 06 E4 */	lwz r0, 0x6e4(r31)
/* 809692D8  90 1F 0A 7C */	stw r0, 0xa7c(r31)
/* 809692DC  C0 1F 06 68 */	lfs f0, 0x668(r31)
/* 809692E0  D0 1F 09 80 */	stfs f0, 0x980(r31)
lbl_809692E4:
/* 809692E4  C0 3D 00 D0 */	lfs f1, 0xd0(r29)
/* 809692E8  C0 1F 09 80 */	lfs f0, 0x980(r31)
/* 809692EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809692F0  41 82 00 24 */	beq lbl_80969314
/* 809692F4  38 7F 0A 58 */	addi r3, r31, 0xa58
/* 809692F8  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 809692FC  4B 7E C2 71 */	bl daNpcF_getGroundAngle__FP13cBgS_PolyInfos
/* 80969300  B0 7F 09 98 */	sth r3, 0x998(r31)
/* 80969304  7F E3 FB 78 */	mr r3, r31
/* 80969308  4B 7E 9A 7D */	bl setEnvTevColor__8daNpcF_cFv
/* 8096930C  7F E3 FB 78 */	mr r3, r31
/* 80969310  4B 7E 9A D1 */	bl setRoomNo__8daNpcF_cFv
lbl_80969314:
/* 80969314  7F E3 FB 78 */	mr r3, r31
/* 80969318  4B 7E 9C 29 */	bl playAllAnm__8daNpcF_cFv
/* 8096931C  7F E3 FB 78 */	mr r3, r31
/* 80969320  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80969324  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80969328  7D 89 03 A6 */	mtctr r12
/* 8096932C  4E 80 04 21 */	bctrl 
/* 80969330  7F E3 FB 78 */	mr r3, r31
/* 80969334  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80969338  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8096933C  7D 89 03 A6 */	mtctr r12
/* 80969340  4E 80 04 21 */	bctrl 
/* 80969344  38 7F 09 78 */	addi r3, r31, 0x978
/* 80969348  C0 3D 00 D4 */	lfs f1, 0xd4(r29)
/* 8096934C  C0 5D 00 C8 */	lfs f2, 0xc8(r29)
/* 80969350  4B 90 73 F1 */	bl cLib_chaseF__FPfff
/* 80969354  7F E3 FB 78 */	mr r3, r31
/* 80969358  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8096935C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80969360  7D 89 03 A6 */	mtctr r12
/* 80969364  4E 80 04 21 */	bctrl 
/* 80969368  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 8096936C  28 00 00 00 */	cmplwi r0, 0
/* 80969370  41 82 00 38 */	beq lbl_809693A8
/* 80969374  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80969378  64 00 00 40 */	oris r0, r0, 0x40
/* 8096937C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80969380  7F E3 FB 78 */	mr r3, r31
/* 80969384  4B 7E C4 D1 */	bl daNpcF_chkDoBtnEqSpeak__FP10fopAc_ac_c
/* 80969388  2C 03 00 00 */	cmpwi r3, 0
/* 8096938C  41 82 00 1C */	beq lbl_809693A8
/* 80969390  38 00 00 3B */	li r0, 0x3b
/* 80969394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80969398  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096939C  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 809693A0  38 00 00 00 */	li r0, 0
/* 809693A4  98 03 5E 57 */	stb r0, 0x5e57(r3)
lbl_809693A8:
/* 809693A8  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809693AC  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 809693B0  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809693B4  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 809693B8  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809693BC  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 809693C0  3B A0 00 00 */	li r29, 0
/* 809693C4  93 BF 09 30 */	stw r29, 0x930(r31)
/* 809693C8  9B BF 09 E9 */	stb r29, 0x9e9(r31)
/* 809693CC  9B BF 09 ED */	stb r29, 0x9ed(r31)
/* 809693D0  9B BF 09 EB */	stb r29, 0x9eb(r31)
/* 809693D4  9B BF 09 EF */	stb r29, 0x9ef(r31)
/* 809693D8  9B BF 09 F3 */	stb r29, 0x9f3(r31)
/* 809693DC  3B 80 00 00 */	li r28, 0
/* 809693E0  3B C0 00 00 */	li r30, 0
lbl_809693E4:
/* 809693E4  80 1F 09 38 */	lwz r0, 0x938(r31)
/* 809693E8  2C 00 00 00 */	cmpwi r0, 0
/* 809693EC  41 82 00 10 */	beq lbl_809693FC
/* 809693F0  80 1F 09 34 */	lwz r0, 0x934(r31)
/* 809693F4  7C 00 E0 00 */	cmpw r0, r28
/* 809693F8  41 82 00 30 */	beq lbl_80969428
lbl_809693FC:
/* 809693FC  7C 7F EA 14 */	add r3, r31, r29
/* 80969400  80 03 09 3C */	lwz r0, 0x93c(r3)
/* 80969404  2C 00 00 00 */	cmpwi r0, 0
/* 80969408  41 82 00 20 */	beq lbl_80969428
/* 8096940C  38 63 09 3C */	addi r3, r3, 0x93c
/* 80969410  48 00 33 81 */	bl func_8096C790
/* 80969414  2C 03 00 00 */	cmpwi r3, 0
/* 80969418  40 82 00 10 */	bne lbl_80969428
/* 8096941C  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80969420  7C 7F 1A 14 */	add r3, r31, r3
/* 80969424  4B 7E 72 BD */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80969428:
/* 80969428  3B 9C 00 01 */	addi r28, r28, 1
/* 8096942C  2C 1C 00 05 */	cmpwi r28, 5
/* 80969430  3B DE 00 08 */	addi r30, r30, 8
/* 80969434  3B BD 00 04 */	addi r29, r29, 4
/* 80969438  41 80 FF AC */	blt lbl_809693E4
/* 8096943C  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80969440  2C 00 00 00 */	cmpwi r0, 0
/* 80969444  41 82 00 0C */	beq lbl_80969450
/* 80969448  38 7F 09 54 */	addi r3, r31, 0x954
/* 8096944C  48 00 33 45 */	bl func_8096C790
lbl_80969450:
/* 80969450  39 61 00 20 */	addi r11, r1, 0x20
/* 80969454  4B 9F 8D D1 */	bl _restgpr_28
/* 80969458  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096945C  7C 08 03 A6 */	mtlr r0
/* 80969460  38 21 00 20 */	addi r1, r1, 0x20
/* 80969464  4E 80 00 20 */	blr 
