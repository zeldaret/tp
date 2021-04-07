lbl_80A1E228:
/* 80A1E228  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A1E22C  7C 08 02 A6 */	mflr r0
/* 80A1E230  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A1E234  39 61 00 50 */	addi r11, r1, 0x50
/* 80A1E238  4B 94 3F A5 */	bl _savegpr_29
/* 80A1E23C  7C 7F 1B 78 */	mr r31, r3
/* 80A1E240  3C 80 80 A2 */	lis r4, lit_3908@ha /* 0x80A21080@ha */
/* 80A1E244  3B A4 10 80 */	addi r29, r4, lit_3908@l /* 0x80A21080@l */
/* 80A1E248  A8 03 14 06 */	lha r0, 0x1406(r3)
/* 80A1E24C  2C 00 00 00 */	cmpwi r0, 0
/* 80A1E250  41 82 00 18 */	beq lbl_80A1E268
/* 80A1E254  40 80 00 08 */	bge lbl_80A1E25C
/* 80A1E258  48 00 01 38 */	b lbl_80A1E390
lbl_80A1E25C:
/* 80A1E25C  2C 00 00 02 */	cmpwi r0, 2
/* 80A1E260  40 80 01 30 */	bge lbl_80A1E390
/* 80A1E264  48 00 00 64 */	b lbl_80A1E2C8
lbl_80A1E268:
/* 80A1E268  38 00 00 01 */	li r0, 1
/* 80A1E26C  98 1F 14 45 */	stb r0, 0x1445(r31)
/* 80A1E270  38 80 00 09 */	li r4, 9
/* 80A1E274  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80A1E278  38 A0 00 00 */	li r5, 0
/* 80A1E27C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A1E280  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1E284  7D 89 03 A6 */	mtctr r12
/* 80A1E288  4E 80 04 21 */	bctrl 
/* 80A1E28C  7F E3 FB 78 */	mr r3, r31
/* 80A1E290  38 80 00 00 */	li r4, 0
/* 80A1E294  4B FF F5 91 */	bl setLookMode__15daNpcKasiHana_cFi
/* 80A1E298  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80A1E29C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A1E2A0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A1E2A4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A1E2A8  38 7D 00 48 */	addi r3, r29, 0x48
/* 80A1E2AC  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 80A1E2B0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A1E2B4  38 7F 14 48 */	addi r3, r31, 0x1448
/* 80A1E2B8  4B FF DB 21 */	bl chgWeightLight__15daNpcKasi_Mng_cFv
/* 80A1E2BC  38 00 00 01 */	li r0, 1
/* 80A1E2C0  B0 1F 14 06 */	sth r0, 0x1406(r31)
/* 80A1E2C4  48 00 00 CC */	b lbl_80A1E390
lbl_80A1E2C8:
/* 80A1E2C8  38 61 00 20 */	addi r3, r1, 0x20
/* 80A1E2CC  7F E4 FB 78 */	mr r4, r31
/* 80A1E2D0  48 00 00 DD */	bl getChacePos__15daNpcKasiHana_cFv
/* 80A1E2D4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A1E2D8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A1E2DC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A1E2E0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A1E2E4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A1E2E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A1E2EC  7F E3 FB 78 */	mr r3, r31
/* 80A1E2F0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A1E2F4  38 A0 08 00 */	li r5, 0x800
/* 80A1E2F8  48 00 0E ED */	bl _turn_pos__15daNpcKasiHana_cFRC4cXyzs
/* 80A1E2FC  7F E3 FB 78 */	mr r3, r31
/* 80A1E300  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1E304  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1E308  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A1E30C  48 00 0F 35 */	bl actor_front_check__15daNpcKasiHana_cFP10fopAc_ac_c
/* 80A1E310  2C 03 00 00 */	cmpwi r3, 0
/* 80A1E314  41 82 00 50 */	beq lbl_80A1E364
/* 80A1E318  7F E3 FB 78 */	mr r3, r31
/* 80A1E31C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A1E320  4B 5F C6 45 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A1E324  38 7D 00 48 */	addi r3, r29, 0x48
/* 80A1E328  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80A1E32C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A1E330  40 80 00 60 */	bge lbl_80A1E390
/* 80A1E334  3C 60 80 A2 */	lis r3, lit_5502@ha /* 0x80A21620@ha */
/* 80A1E338  38 83 16 20 */	addi r4, r3, lit_5502@l /* 0x80A21620@l */
/* 80A1E33C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1E340  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1E344  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A1E348  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A1E34C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1E350  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A1E354  7F E3 FB 78 */	mr r3, r31
/* 80A1E358  38 81 00 14 */	addi r4, r1, 0x14
/* 80A1E35C  4B FF F4 21 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1E360  48 00 00 30 */	b lbl_80A1E390
lbl_80A1E364:
/* 80A1E364  3C 60 80 A2 */	lis r3, lit_5505@ha /* 0x80A2162C@ha */
/* 80A1E368  38 83 16 2C */	addi r4, r3, lit_5505@l /* 0x80A2162C@l */
/* 80A1E36C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1E370  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1E374  90 61 00 08 */	stw r3, 8(r1)
/* 80A1E378  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1E37C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1E380  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1E384  7F E3 FB 78 */	mr r3, r31
/* 80A1E388  38 81 00 08 */	addi r4, r1, 8
/* 80A1E38C  4B FF F3 F1 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
lbl_80A1E390:
/* 80A1E390  38 60 00 01 */	li r3, 1
/* 80A1E394  39 61 00 50 */	addi r11, r1, 0x50
/* 80A1E398  4B 94 3E 91 */	bl _restgpr_29
/* 80A1E39C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A1E3A0  7C 08 03 A6 */	mtlr r0
/* 80A1E3A4  38 21 00 50 */	addi r1, r1, 0x50
/* 80A1E3A8  4E 80 00 20 */	blr 
