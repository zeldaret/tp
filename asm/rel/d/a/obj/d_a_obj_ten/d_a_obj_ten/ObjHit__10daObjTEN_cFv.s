lbl_80D0A8C8:
/* 80D0A8C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0A8CC  7C 08 02 A6 */	mflr r0
/* 80D0A8D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D0A8D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D0A8D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D0A8DC  7C 7F 1B 78 */	mr r31, r3
/* 80D0A8E0  3C 60 80 D1 */	lis r3, lit_3775@ha
/* 80D0A8E4  3B C3 B8 F0 */	addi r30, r3, lit_3775@l
/* 80D0A8E8  38 7F 06 64 */	addi r3, r31, 0x664
/* 80D0A8EC  4B 37 9B 74 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80D0A8F0  28 03 00 00 */	cmplwi r3, 0
/* 80D0A8F4  41 82 01 44 */	beq lbl_80D0AA38
/* 80D0A8F8  38 7F 06 64 */	addi r3, r31, 0x664
/* 80D0A8FC  4B 37 9B FC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80D0A900  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80D0A904  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80D0A908  41 82 00 30 */	beq lbl_80D0A938
/* 80D0A90C  88 1F 07 A8 */	lbz r0, 0x7a8(r31)
/* 80D0A910  28 00 00 00 */	cmplwi r0, 0
/* 80D0A914  40 82 01 10 */	bne lbl_80D0AA24
/* 80D0A918  38 00 00 01 */	li r0, 1
/* 80D0A91C  98 1F 07 A8 */	stb r0, 0x7a8(r31)
/* 80D0A920  38 7F 06 64 */	addi r3, r31, 0x664
/* 80D0A924  4B 37 9C 24 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80D0A928  38 7F 07 9C */	addi r3, r31, 0x79c
/* 80D0A92C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D0A930  4B 45 3C 80 */	b initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80D0A934  48 00 00 F0 */	b lbl_80D0AA24
lbl_80D0A938:
/* 80D0A938  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80D0A93C  40 82 00 E8 */	bne lbl_80D0AA24
/* 80D0A940  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80D0A944  41 82 00 E0 */	beq lbl_80D0AA24
/* 80D0A948  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D0A94C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D0A950  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D0A954  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D0A958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0A95C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0A960  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D0A964  28 1F 00 00 */	cmplwi r31, 0
/* 80D0A968  41 82 00 0C */	beq lbl_80D0A974
/* 80D0A96C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D0A970  48 00 00 08 */	b lbl_80D0A978
lbl_80D0A974:
/* 80D0A974  38 80 FF FF */	li r4, -1
lbl_80D0A978:
/* 80D0A978  38 A1 00 08 */	addi r5, r1, 8
/* 80D0A97C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D0A980  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80D0A984  7D 89 03 A6 */	mtctr r12
/* 80D0A988  4E 80 04 21 */	bctrl 
/* 80D0A98C  38 00 00 01 */	li r0, 1
/* 80D0A990  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80D0A994  38 00 00 02 */	li r0, 2
/* 80D0A998  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80D0A99C  38 00 00 00 */	li r0, 0
/* 80D0A9A0  98 1F 07 A8 */	stb r0, 0x7a8(r31)
/* 80D0A9A4  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D0A9A8  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D0A9AC  38 80 00 06 */	li r4, 6
/* 80D0A9B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D0A9B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D0A9B8  3C A5 00 02 */	addis r5, r5, 2
/* 80D0A9BC  38 C0 00 80 */	li r6, 0x80
/* 80D0A9C0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D0A9C4  4B 33 19 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0A9C8  7C 64 1B 78 */	mr r4, r3
/* 80D0A9CC  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80D0A9D0  38 A0 00 02 */	li r5, 2
/* 80D0A9D4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D0A9D8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80D0A9DC  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 80D0A9E0  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 80D0A9E4  4B 30 64 8C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D0A9E8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D0A9EC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D0A9F0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D0A9F4  4B 55 CF 60 */	b cM_rndF__Ff
/* 80D0A9F8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D0A9FC  EC 00 08 2A */	fadds f0, f0, f1
/* 80D0AA00  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80D0AA04  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D0AA08  4B 55 CF 4C */	b cM_rndF__Ff
/* 80D0AA0C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80D0AA10  EC 00 08 2A */	fadds f0, f0, f1
/* 80D0AA14  FC 00 00 1E */	fctiwz f0, f0
/* 80D0AA18  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D0AA1C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D0AA20  B0 1F 05 EC */	sth r0, 0x5ec(r31)
lbl_80D0AA24:
/* 80D0AA24  38 7F 06 64 */	addi r3, r31, 0x664
/* 80D0AA28  81 9F 06 A0 */	lwz r12, 0x6a0(r31)
/* 80D0AA2C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D0AA30  7D 89 03 A6 */	mtctr r12
/* 80D0AA34  4E 80 04 21 */	bctrl 
lbl_80D0AA38:
/* 80D0AA38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D0AA3C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D0AA40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D0AA44  7C 08 03 A6 */	mtlr r0
/* 80D0AA48  38 21 00 30 */	addi r1, r1, 0x30
/* 80D0AA4C  4E 80 00 20 */	blr 
