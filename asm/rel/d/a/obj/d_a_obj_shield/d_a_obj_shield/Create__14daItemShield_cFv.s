lbl_80CD7094:
/* 80CD7094  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CD7098  7C 08 02 A6 */	mflr r0
/* 80CD709C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CD70A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CD70A4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CD70A8  7C 7E 1B 78 */	mr r30, r3
/* 80CD70AC  3C 80 80 CE */	lis r4, l_cyl_src@ha /* 0x80CD8274@ha */
/* 80CD70B0  3B E4 82 74 */	addi r31, r4, l_cyl_src@l /* 0x80CD8274@l */
/* 80CD70B4  4B FF FC E9 */	bl initBaseMtx__14daItemShield_cFv
/* 80CD70B8  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CD70BC  38 03 00 24 */	addi r0, r3, 0x24
/* 80CD70C0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CD70C4  38 7E 07 64 */	addi r3, r30, 0x764
/* 80CD70C8  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80CD70CC  FC 40 08 90 */	fmr f2, f1
/* 80CD70D0  4B 39 EE 89 */	bl SetWall__12dBgS_AcchCirFff
/* 80CD70D4  38 00 00 00 */	li r0, 0
/* 80CD70D8  90 01 00 08 */	stw r0, 8(r1)
/* 80CD70DC  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80CD70E0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CD70E4  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80CD70E8  7F C6 F3 78 */	mr r6, r30
/* 80CD70EC  38 E0 00 01 */	li r7, 1
/* 80CD70F0  39 1E 07 64 */	addi r8, r30, 0x764
/* 80CD70F4  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80CD70F8  39 40 00 00 */	li r10, 0
/* 80CD70FC  4B 39 F1 4D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CD7100  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80CD7104  38 80 00 00 */	li r4, 0
/* 80CD7108  38 A0 00 FF */	li r5, 0xff
/* 80CD710C  7F C6 F3 78 */	mr r6, r30
/* 80CD7110  4B 3A C7 51 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CD7114  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80CD7118  38 9F 00 00 */	addi r4, r31, 0
/* 80CD711C  4B 3A D7 99 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CD7120  38 1E 07 A4 */	addi r0, r30, 0x7a4
/* 80CD7124  90 1E 08 24 */	stw r0, 0x824(r30)
/* 80CD7128  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 80CD712C  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l /* 0x803AED78@l */
/* 80CD7130  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 80CD7134  54 00 10 3A */	slwi r0, r0, 2
/* 80CD7138  7C 63 02 14 */	add r3, r3, r0
/* 80CD713C  88 03 00 02 */	lbz r0, 2(r3)
/* 80CD7140  38 7E 09 04 */	addi r3, r30, 0x904
/* 80CD7144  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 80CD7148  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD714C  3C 00 43 30 */	lis r0, 0x4330
/* 80CD7150  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CD7154  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CD7158  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CD715C  4B 59 80 A5 */	bl SetR__8cM3dGCylFf
/* 80CD7160  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 80CD7164  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l /* 0x803AED78@l */
/* 80CD7168  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 80CD716C  54 00 10 3A */	slwi r0, r0, 2
/* 80CD7170  7C 63 02 14 */	add r3, r3, r0
/* 80CD7174  88 03 00 01 */	lbz r0, 1(r3)
/* 80CD7178  38 7E 09 04 */	addi r3, r30, 0x904
/* 80CD717C  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 80CD7180  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CD7184  3C 00 43 30 */	lis r0, 0x4330
/* 80CD7188  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CD718C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80CD7190  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CD7194  4B 59 80 65 */	bl SetH__8cM3dGCylFf
/* 80CD7198  38 00 00 0F */	li r0, 0xf
/* 80CD719C  98 1E 04 97 */	stb r0, 0x497(r30)
/* 80CD71A0  7F C3 F3 78 */	mr r3, r30
/* 80CD71A4  48 00 06 85 */	bl actionWaitInit__14daItemShield_cFv
/* 80CD71A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD71AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD71B0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CD71B4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CD71B8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CD71BC  7C 05 07 74 */	extsb r5, r0
/* 80CD71C0  4B 35 E1 A1 */	bl isSwitch__10dSv_info_cCFii
/* 80CD71C4  2C 03 00 00 */	cmpwi r3, 0
/* 80CD71C8  41 82 00 3C */	beq lbl_80CD7204
/* 80CD71CC  38 00 00 03 */	li r0, 3
/* 80CD71D0  98 1E 09 4A */	stb r0, 0x94a(r30)
/* 80CD71D4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80CD71D8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80CD71DC  38 00 00 00 */	li r0, 0
/* 80CD71E0  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80CD71E4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80CD71E8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CD71EC  4B 34 6A D1 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80CD71F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CD71F4  41 82 00 10 */	beq lbl_80CD7204
/* 80CD71F8  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80CD71FC  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80CD7200  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80CD7204:
/* 80CD7204  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CD7208  54 00 46 3E */	srwi r0, r0, 0x18
/* 80CD720C  98 1E 09 4D */	stb r0, 0x94d(r30)
/* 80CD7210  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD7214  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD7218  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CD721C  7F C4 F3 78 */	mr r4, r30
/* 80CD7220  38 A0 00 00 */	li r5, 0
/* 80CD7224  88 DE 09 4D */	lbz r6, 0x94d(r30)
/* 80CD7228  4B 37 05 31 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80CD722C  B0 7E 09 4E */	sth r3, 0x94e(r30)
/* 80CD7230  38 60 00 01 */	li r3, 1
/* 80CD7234  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CD7238  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CD723C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CD7240  7C 08 03 A6 */	mtlr r0
/* 80CD7244  38 21 00 30 */	addi r1, r1, 0x30
/* 80CD7248  4E 80 00 20 */	blr 
