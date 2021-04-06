lbl_80C2D21C:
/* 80C2D21C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C2D220  7C 08 02 A6 */	mflr r0
/* 80C2D224  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2D228  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C2D22C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C2D230  7C 7F 1B 78 */	mr r31, r3
/* 80C2D234  3C 60 80 C3 */	lis r3, lit_3775@ha /* 0x80C2E110@ha */
/* 80C2D238  3B C3 E1 10 */	addi r30, r3, lit_3775@l /* 0x80C2E110@l */
/* 80C2D23C  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C2D240  4B 45 72 21 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C2D244  28 03 00 00 */	cmplwi r3, 0
/* 80C2D248  41 82 01 44 */	beq lbl_80C2D38C
/* 80C2D24C  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C2D250  4B 45 72 A9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C2D254  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80C2D258  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80C2D25C  41 82 00 30 */	beq lbl_80C2D28C
/* 80C2D260  88 1F 07 37 */	lbz r0, 0x737(r31)
/* 80C2D264  28 00 00 00 */	cmplwi r0, 0
/* 80C2D268  40 82 01 10 */	bne lbl_80C2D378
/* 80C2D26C  38 00 00 01 */	li r0, 1
/* 80C2D270  98 1F 07 37 */	stb r0, 0x737(r31)
/* 80C2D274  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C2D278  4B 45 72 D1 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C2D27C  38 7F 07 04 */	addi r3, r31, 0x704
/* 80C2D280  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C2D284  4B 53 13 2D */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80C2D288  48 00 00 F0 */	b lbl_80C2D378
lbl_80C2D28C:
/* 80C2D28C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80C2D290  40 82 00 E8 */	bne lbl_80C2D378
/* 80C2D294  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80C2D298  41 82 00 E0 */	beq lbl_80C2D378
/* 80C2D29C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80C2D2A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C2D2A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C2D2A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C2D2AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2D2B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2D2B4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C2D2B8  28 1F 00 00 */	cmplwi r31, 0
/* 80C2D2BC  41 82 00 0C */	beq lbl_80C2D2C8
/* 80C2D2C0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C2D2C4  48 00 00 08 */	b lbl_80C2D2CC
lbl_80C2D2C8:
/* 80C2D2C8  38 80 FF FF */	li r4, -1
lbl_80C2D2CC:
/* 80C2D2CC  38 A1 00 08 */	addi r5, r1, 8
/* 80C2D2D0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C2D2D4  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80C2D2D8  7D 89 03 A6 */	mtctr r12
/* 80C2D2DC  4E 80 04 21 */	bctrl 
/* 80C2D2E0  38 00 00 01 */	li r0, 1
/* 80C2D2E4  98 1F 07 10 */	stb r0, 0x710(r31)
/* 80C2D2E8  38 00 00 02 */	li r0, 2
/* 80C2D2EC  98 1F 07 11 */	stb r0, 0x711(r31)
/* 80C2D2F0  38 00 00 00 */	li r0, 0
/* 80C2D2F4  98 1F 07 37 */	stb r0, 0x737(r31)
/* 80C2D2F8  3C 60 80 C3 */	lis r3, d_a_obj_kabuto__stringBase0@ha /* 0x80C2E218@ha */
/* 80C2D2FC  38 63 E2 18 */	addi r3, r3, d_a_obj_kabuto__stringBase0@l /* 0x80C2E218@l */
/* 80C2D300  38 80 00 06 */	li r4, 6
/* 80C2D304  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2D308  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2D30C  3C A5 00 02 */	addis r5, r5, 2
/* 80C2D310  38 C0 00 80 */	li r6, 0x80
/* 80C2D314  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2D318  4B 40 EF D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2D31C  7C 64 1B 78 */	mr r4, r3
/* 80C2D320  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80C2D324  38 A0 00 02 */	li r5, 2
/* 80C2D328  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80C2D32C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80C2D330  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80C2D334  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80C2D338  4B 3E 3B 39 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2D33C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80C2D340  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C2D344  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80C2D348  4B 63 A6 0D */	bl cM_rndF__Ff
/* 80C2D34C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80C2D350  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2D354  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 80C2D358  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80C2D35C  4B 63 A5 F9 */	bl cM_rndF__Ff
/* 80C2D360  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C2D364  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2D368  FC 00 00 1E */	fctiwz f0, f0
/* 80C2D36C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C2D370  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C2D374  B0 1F 07 14 */	sth r0, 0x714(r31)
lbl_80C2D378:
/* 80C2D378  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C2D37C  81 9F 06 08 */	lwz r12, 0x608(r31)
/* 80C2D380  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C2D384  7D 89 03 A6 */	mtctr r12
/* 80C2D388  4E 80 04 21 */	bctrl 
lbl_80C2D38C:
/* 80C2D38C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C2D390  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C2D394  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C2D398  7C 08 03 A6 */	mtlr r0
/* 80C2D39C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C2D3A0  4E 80 00 20 */	blr 
