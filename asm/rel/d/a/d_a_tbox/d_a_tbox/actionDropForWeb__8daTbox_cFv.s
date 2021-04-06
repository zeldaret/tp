lbl_80495250:
/* 80495250  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80495254  7C 08 02 A6 */	mflr r0
/* 80495258  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049525C  39 61 00 40 */	addi r11, r1, 0x40
/* 80495260  4B EC CF 7D */	bl _savegpr_29
/* 80495264  7C 7F 1B 78 */	mr r31, r3
/* 80495268  3C 80 80 49 */	lis r4, l_cull_size_box@ha /* 0x804961D4@ha */
/* 8049526C  3B C4 61 D4 */	addi r30, r4, l_cull_size_box@l /* 0x804961D4@l */
/* 80495270  38 80 00 00 */	li r4, 0
/* 80495274  4B B8 54 59 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80495278  38 7F 07 60 */	addi r3, r31, 0x760
/* 8049527C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80495280  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80495284  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 80495288  7F A4 EB 78 */	mr r4, r29
/* 8049528C  4B BE 18 21 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80495290  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80495294  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80495298  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8049529C  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 804952A0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804952A4  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 804952A8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804952AC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 804952B0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804952B4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804952B8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804952BC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 804952C0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804952C4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804952C8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804952CC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804952D0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804952D4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804952D8  7F E3 FB 78 */	mr r3, r31
/* 804952DC  48 00 01 B5 */	bl setBaseMtx__8daTbox_cFv
/* 804952E0  80 1F 07 8C */	lwz r0, 0x78c(r31)
/* 804952E4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804952E8  41 82 00 B8 */	beq lbl_804953A0
/* 804952EC  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 804952F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804952F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804952F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804952FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80495300  7C 03 07 74 */	extsb r3, r0
/* 80495304  38 00 00 00 */	li r0, 0
/* 80495308  90 01 00 08 */	stw r0, 8(r1)
/* 8049530C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80495310  90 01 00 10 */	stw r0, 0x10(r1)
/* 80495314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80495318  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049531C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80495320  38 80 00 E7 */	li r4, 0xe7
/* 80495324  38 BF 08 50 */	addi r5, r31, 0x850
/* 80495328  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8049532C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80495330  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80495334  39 21 00 24 */	addi r9, r1, 0x24
/* 80495338  39 40 00 00 */	li r10, 0
/* 8049533C  4B BB 7D 2D */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80495340  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80495344  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80495348  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 8049534C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80495350  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80495354  38 7D 4C 9C */	addi r3, r29, 0x4c9c
/* 80495358  38 80 00 04 */	li r4, 4
/* 8049535C  38 A0 00 1F */	li r5, 0x1f
/* 80495360  38 C1 00 18 */	addi r6, r1, 0x18
/* 80495364  4B BD A6 C1 */	bl StartShock__12dVibration_cFii4cXyz
/* 80495368  7F E3 FB 78 */	mr r3, r31
/* 8049536C  4B FF C0 B1 */	bl setDzb__8daTbox_cFv
/* 80495370  80 7F 07 3C */	lwz r3, 0x73c(r31)
/* 80495374  28 03 00 00 */	cmplwi r3, 0
/* 80495378  41 82 00 08 */	beq lbl_80495380
/* 8049537C  4B BE 66 45 */	bl Move__4dBgWFv
lbl_80495380:
/* 80495380  3C 60 80 49 */	lis r3, lit_6017@ha /* 0x804966F4@ha */
/* 80495384  38 83 66 F4 */	addi r4, r3, lit_6017@l /* 0x804966F4@l */
/* 80495388  80 64 00 00 */	lwz r3, 0(r4)
/* 8049538C  80 04 00 04 */	lwz r0, 4(r4)
/* 80495390  90 7F 07 40 */	stw r3, 0x740(r31)
/* 80495394  90 1F 07 44 */	stw r0, 0x744(r31)
/* 80495398  80 04 00 08 */	lwz r0, 8(r4)
/* 8049539C  90 1F 07 48 */	stw r0, 0x748(r31)
lbl_804953A0:
/* 804953A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804953A4  54 03 D6 BE */	rlwinm r3, r0, 0x1a, 0x1a, 0x1f
/* 804953A8  38 80 00 00 */	li r4, 0
/* 804953AC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804953B0  38 C0 FF FF */	li r6, -1
/* 804953B4  4B C0 70 19 */	bl setPosition__7dTres_cFiUcPC3Veci
/* 804953B8  38 60 00 01 */	li r3, 1
/* 804953BC  39 61 00 40 */	addi r11, r1, 0x40
/* 804953C0  4B EC CE 69 */	bl _restgpr_29
/* 804953C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804953C8  7C 08 03 A6 */	mtlr r0
/* 804953CC  38 21 00 40 */	addi r1, r1, 0x40
/* 804953D0  4E 80 00 20 */	blr 
