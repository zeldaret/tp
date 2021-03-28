lbl_8060D880:
/* 8060D880  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8060D884  7C 08 02 A6 */	mflr r0
/* 8060D888  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060D88C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8060D890  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8060D894  7C 7E 1B 78 */	mr r30, r3
/* 8060D898  3C 80 80 61 */	lis r4, lit_3928@ha
/* 8060D89C  3B E4 FD E0 */	addi r31, r4, lit_3928@l
/* 8060D8A0  88 03 0A FA */	lbz r0, 0xafa(r3)
/* 8060D8A4  2C 00 00 01 */	cmpwi r0, 1
/* 8060D8A8  41 82 00 BC */	beq lbl_8060D964
/* 8060D8AC  40 80 01 FC */	bge lbl_8060DAA8
/* 8060D8B0  2C 00 00 00 */	cmpwi r0, 0
/* 8060D8B4  40 80 00 08 */	bge lbl_8060D8BC
/* 8060D8B8  48 00 01 F0 */	b lbl_8060DAA8
lbl_8060D8BC:
/* 8060D8BC  38 00 00 00 */	li r0, 0
/* 8060D8C0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8060D8C4  4B FF A4 81 */	bl offBodyCo__9daB_MGN_cFv
/* 8060D8C8  80 1E 1F BC */	lwz r0, 0x1fbc(r30)
/* 8060D8CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060D8D0  90 1E 1F BC */	stw r0, 0x1fbc(r30)
/* 8060D8D4  80 1E 21 0C */	lwz r0, 0x210c(r30)
/* 8060D8D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060D8DC  90 1E 21 0C */	stw r0, 0x210c(r30)
/* 8060D8E0  7F C3 F3 78 */	mr r3, r30
/* 8060D8E4  38 80 00 0A */	li r4, 0xa
/* 8060D8E8  38 A0 00 00 */	li r5, 0
/* 8060D8EC  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 8060D8F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060D8F4  4B FF A0 31 */	bl setBck__9daB_MGN_cFiUcff
/* 8060D8F8  3C 60 80 61 */	lis r3, stringBase0@ha
/* 8060D8FC  38 63 00 84 */	addi r3, r3, stringBase0@l
/* 8060D900  38 63 00 07 */	addi r3, r3, 7
/* 8060D904  38 80 00 39 */	li r4, 0x39
/* 8060D908  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8060D90C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8060D910  3C A5 00 02 */	addis r5, r5, 2
/* 8060D914  38 C0 00 80 */	li r6, 0x80
/* 8060D918  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8060D91C  4B A2 E9 D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060D920  7C 65 1B 78 */	mr r5, r3
/* 8060D924  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060D928  80 63 00 04 */	lwz r3, 4(r3)
/* 8060D92C  80 83 00 04 */	lwz r4, 4(r3)
/* 8060D930  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8060D934  38 84 00 58 */	addi r4, r4, 0x58
/* 8060D938  38 C0 00 01 */	li r6, 1
/* 8060D93C  38 E0 00 00 */	li r7, 0
/* 8060D940  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8060D944  39 00 00 00 */	li r8, 0
/* 8060D948  39 20 FF FF */	li r9, -1
/* 8060D94C  4B 9F FC F0 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8060D950  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 8060D954  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8060D958  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8060D95C  38 00 00 01 */	li r0, 1
/* 8060D960  98 1E 0A FA */	stb r0, 0xafa(r30)
lbl_8060D964:
/* 8060D964  38 7E 0A E8 */	addi r3, r30, 0xae8
/* 8060D968  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060D96C  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 8060D970  4B C6 2D D0 */	b cLib_chaseF__FPfff
/* 8060D974  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060D978  38 80 00 01 */	li r4, 1
/* 8060D97C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060D980  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060D984  40 82 00 18 */	bne lbl_8060D99C
/* 8060D988  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060D98C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060D990  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060D994  41 82 00 08 */	beq lbl_8060D99C
/* 8060D998  38 80 00 00 */	li r4, 0
lbl_8060D99C:
/* 8060D99C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060D9A0  41 82 00 14 */	beq lbl_8060D9B4
/* 8060D9A4  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 8060D9A8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8060D9AC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8060D9B0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8060D9B4:
/* 8060D9B4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8060D9B8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8060D9BC  4B D1 AA 70 */	b checkPass__12J3DFrameCtrlFf
/* 8060D9C0  2C 03 00 00 */	cmpwi r3, 0
/* 8060D9C4  41 82 00 A4 */	beq lbl_8060DA68
/* 8060D9C8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8060D9CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8060D9D0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8060D9D4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8060D9D8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8060D9DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8060D9E0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8060D9E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8060D9E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8060D9EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060D9F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8060D9F4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8060D9F8  38 80 00 00 */	li r4, 0
/* 8060D9FC  90 81 00 08 */	stw r4, 8(r1)
/* 8060DA00  38 00 FF FF */	li r0, -1
/* 8060DA04  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060DA08  90 81 00 10 */	stw r4, 0x10(r1)
/* 8060DA0C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8060DA10  90 81 00 18 */	stw r4, 0x18(r1)
/* 8060DA14  38 80 00 00 */	li r4, 0
/* 8060DA18  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C1B@ha */
/* 8060DA1C  38 A5 8C 1B */	addi r5, r5, 0x8C1B /* 0x00008C1B@l */
/* 8060DA20  38 C1 00 24 */	addi r6, r1, 0x24
/* 8060DA24  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8060DA28  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8060DA2C  39 20 00 00 */	li r9, 0
/* 8060DA30  39 40 00 FF */	li r10, 0xff
/* 8060DA34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8060DA38  4B A3 F0 58 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8060DA3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F7@ha */
/* 8060DA40  38 03 04 F7 */	addi r0, r3, 0x04F7 /* 0x000704F7@l */
/* 8060DA44  90 01 00 20 */	stw r0, 0x20(r1)
/* 8060DA48  38 7E 09 E0 */	addi r3, r30, 0x9e0
/* 8060DA4C  38 81 00 20 */	addi r4, r1, 0x20
/* 8060DA50  38 A0 00 00 */	li r5, 0
/* 8060DA54  38 C0 FF FF */	li r6, -1
/* 8060DA58  81 9E 09 E0 */	lwz r12, 0x9e0(r30)
/* 8060DA5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8060DA60  7D 89 03 A6 */	mtctr r12
/* 8060DA64  4E 80 04 21 */	bctrl 
lbl_8060DA68:
/* 8060DA68  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8060DA6C  38 80 00 01 */	li r4, 1
/* 8060DA70  88 03 00 05 */	lbz r0, 5(r3)
/* 8060DA74  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060DA78  40 82 00 18 */	bne lbl_8060DA90
/* 8060DA7C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060DA80  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060DA84  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060DA88  41 82 00 08 */	beq lbl_8060DA90
/* 8060DA8C  38 80 00 00 */	li r4, 0
lbl_8060DA90:
/* 8060DA90  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060DA94  41 82 00 14 */	beq lbl_8060DAA8
/* 8060DA98  7F C3 F3 78 */	mr r3, r30
/* 8060DA9C  38 80 00 07 */	li r4, 7
/* 8060DAA0  38 A0 00 01 */	li r5, 1
/* 8060DAA4  4B FF 9F 89 */	bl setActionMode__9daB_MGN_cFii
lbl_8060DAA8:
/* 8060DAA8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8060DAAC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8060DAB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8060DAB4  7C 08 03 A6 */	mtlr r0
/* 8060DAB8  38 21 00 40 */	addi r1, r1, 0x40
/* 8060DABC  4E 80 00 20 */	blr 
