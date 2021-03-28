lbl_80C7B6D4:
/* 80C7B6D4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C7B6D8  7C 08 02 A6 */	mflr r0
/* 80C7B6DC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C7B6E0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80C7B6E4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80C7B6E8  7C 7F 1B 78 */	mr r31, r3
/* 80C7B6EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C7B6F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7B6F4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C7B6F8  38 7F 06 50 */	addi r3, r31, 0x650
/* 80C7B6FC  4B 40 8F 5C */	b ChkCoHit__12dCcD_GObjInfFv
/* 80C7B700  28 03 00 00 */	cmplwi r3, 0
/* 80C7B704  41 82 00 EC */	beq lbl_80C7B7F0
/* 80C7B708  38 7F 07 38 */	addi r3, r31, 0x738
/* 80C7B70C  4B 40 7F 7C */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80C7B710  7C 65 1B 79 */	or. r5, r3, r3
/* 80C7B714  41 82 00 DC */	beq lbl_80C7B7F0
/* 80C7B718  A8 05 00 0E */	lha r0, 0xe(r5)
/* 80C7B71C  2C 00 01 98 */	cmpwi r0, 0x198
/* 80C7B720  40 82 00 D0 */	bne lbl_80C7B7F0
/* 80C7B724  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C7B728  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C7B72C  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80C7B730  4B 5E B4 04 */	b __mi__4cXyzCFRC3Vec
/* 80C7B734  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C7B738  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C7B73C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C7B740  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C7B744  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C7B748  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C7B74C  38 61 00 10 */	addi r3, r1, 0x10
/* 80C7B750  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C7B754  38 BF 05 B0 */	addi r5, r31, 0x5b0
/* 80C7B758  4B 5E B3 DC */	b __mi__4cXyzCFRC3Vec
/* 80C7B75C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C7B760  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C7B764  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C7B768  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C7B76C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C7B770  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C7B774  38 61 00 34 */	addi r3, r1, 0x34
/* 80C7B778  38 81 00 28 */	addi r4, r1, 0x28
/* 80C7B77C  4B 6C BA 18 */	b PSVECDotProduct
/* 80C7B780  3C 60 80 C8 */	lis r3, lit_3665@ha
/* 80C7B784  C0 03 C6 E8 */	lfs f0, lit_3665@l(r3)
/* 80C7B788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7B78C  4C 41 13 82 */	cror 2, 1, 2
/* 80C7B790  40 82 00 60 */	bne lbl_80C7B7F0
/* 80C7B794  88 7F 05 AC */	lbz r3, 0x5ac(r31)
/* 80C7B798  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C7B79C  7C 04 07 74 */	extsb r4, r0
/* 80C7B7A0  4B 3D 60 4C */	b dPath_GetRoomPath__Fii
/* 80C7B7A4  80 63 00 08 */	lwz r3, 8(r3)
/* 80C7B7A8  38 00 FF FF */	li r0, -1
/* 80C7B7AC  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 80C7B7B0  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80C7B7B4  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 80C7B7B8  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 80C7B7BC  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 80C7B7C0  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80C7B7C4  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 80C7B7C8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C7B7CC  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80C7B7D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C7B7D4  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80C7B7D8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C7B7DC  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80C7B7E0  38 00 00 00 */	li r0, 0
/* 80C7B7E4  B0 1F 05 AE */	sth r0, 0x5ae(r31)
/* 80C7B7E8  7F E3 FB 78 */	mr r3, r31
/* 80C7B7EC  48 00 04 69 */	bl init_modeWaitAttackType2__15daLv6TogeTrap_cFv
lbl_80C7B7F0:
/* 80C7B7F0  3C 60 80 C8 */	lis r3, searchSekizoAct__15daLv6TogeTrap_cFPvPv@ha
/* 80C7B7F4  38 63 A6 B0 */	addi r3, r3, searchSekizoAct__15daLv6TogeTrap_cFPvPv@l
/* 80C7B7F8  7F E4 FB 78 */	mr r4, r31
/* 80C7B7FC  4B 39 DF FC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C7B800  7C 64 1B 79 */	or. r4, r3, r3
/* 80C7B804  38 00 00 00 */	li r0, 0
/* 80C7B808  98 1F 06 09 */	stb r0, 0x609(r31)
/* 80C7B80C  3C 60 80 C8 */	lis r3, lit_4416@ha
/* 80C7B810  C0 03 C7 4C */	lfs f0, lit_4416@l(r3)
/* 80C7B814  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C7B818  41 82 00 1C */	beq lbl_80C7B834
/* 80C7B81C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80C7B820  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80C7B824  38 A1 00 40 */	addi r5, r1, 0x40
/* 80C7B828  38 C1 00 08 */	addi r6, r1, 8
/* 80C7B82C  4B 5E CE E4 */	b cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80C7B830  98 7F 06 09 */	stb r3, 0x609(r31)
lbl_80C7B834:
/* 80C7B834  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80C7B838  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C7B83C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80C7B840  38 C1 00 0C */	addi r6, r1, 0xc
/* 80C7B844  4B 5E CE CC */	b cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80C7B848  98 7F 06 08 */	stb r3, 0x608(r31)
/* 80C7B84C  88 7F 06 09 */	lbz r3, 0x609(r31)
/* 80C7B850  28 03 00 01 */	cmplwi r3, 1
/* 80C7B854  40 82 00 40 */	bne lbl_80C7B894
/* 80C7B858  88 1F 06 08 */	lbz r0, 0x608(r31)
/* 80C7B85C  28 00 00 01 */	cmplwi r0, 1
/* 80C7B860  40 82 00 34 */	bne lbl_80C7B894
/* 80C7B864  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C7B868  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C7B86C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C7B870  40 81 00 58 */	ble lbl_80C7B8C8
/* 80C7B874  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C7B878  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C7B87C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C7B880  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C7B884  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C7B888  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C7B88C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C7B890  48 00 00 38 */	b lbl_80C7B8C8
lbl_80C7B894:
/* 80C7B894  28 03 00 01 */	cmplwi r3, 1
/* 80C7B898  40 82 00 30 */	bne lbl_80C7B8C8
/* 80C7B89C  88 1F 06 08 */	lbz r0, 0x608(r31)
/* 80C7B8A0  28 00 00 00 */	cmplwi r0, 0
/* 80C7B8A4  40 82 00 24 */	bne lbl_80C7B8C8
/* 80C7B8A8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C7B8AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C7B8B0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C7B8B4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C7B8B8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C7B8BC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C7B8C0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C7B8C4  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_80C7B8C8:
/* 80C7B8C8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80C7B8CC  3C 60 80 C8 */	lis r3, lit_3665@ha
/* 80C7B8D0  C0 03 C6 E8 */	lfs f0, lit_3665@l(r3)
/* 80C7B8D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7B8D8  40 81 00 0C */	ble lbl_80C7B8E4
/* 80C7B8DC  FC 00 08 34 */	frsqrte f0, f1
/* 80C7B8E0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80C7B8E4:
/* 80C7B8E4  88 1F 06 09 */	lbz r0, 0x609(r31)
/* 80C7B8E8  28 00 00 01 */	cmplwi r0, 1
/* 80C7B8EC  41 82 00 10 */	beq lbl_80C7B8FC
/* 80C7B8F0  88 1F 06 08 */	lbz r0, 0x608(r31)
/* 80C7B8F4  28 00 00 01 */	cmplwi r0, 1
/* 80C7B8F8  40 82 00 78 */	bne lbl_80C7B970
lbl_80C7B8FC:
/* 80C7B8FC  3C 60 80 C8 */	lis r3, l_HIO@ha
/* 80C7B900  38 63 CA 64 */	addi r3, r3, l_HIO@l
/* 80C7B904  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C7B908  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7B90C  4C 40 13 82 */	cror 2, 0, 2
/* 80C7B910  40 82 00 60 */	bne lbl_80C7B970
/* 80C7B914  88 1F 05 DB */	lbz r0, 0x5db(r31)
/* 80C7B918  28 00 00 00 */	cmplwi r0, 0
/* 80C7B91C  40 82 00 54 */	bne lbl_80C7B970
/* 80C7B920  38 00 00 01 */	li r0, 1
/* 80C7B924  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 80C7B928  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80C7B92C  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 80C7B930  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 80C7B934  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 80C7B938  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80C7B93C  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 80C7B940  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80C7B944  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80C7B948  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C7B94C  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80C7B950  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80C7B954  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80C7B958  B0 1F 05 AE */	sth r0, 0x5ae(r31)
/* 80C7B95C  98 1F 05 DB */	stb r0, 0x5db(r31)
/* 80C7B960  C0 1F 05 D4 */	lfs f0, 0x5d4(r31)
/* 80C7B964  D0 1F 06 04 */	stfs f0, 0x604(r31)
/* 80C7B968  7F E3 FB 78 */	mr r3, r31
/* 80C7B96C  48 00 02 E9 */	bl init_modeWaitAttackType2__15daLv6TogeTrap_cFv
lbl_80C7B970:
/* 80C7B970  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80C7B974  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80C7B978  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C7B97C  7C 08 03 A6 */	mtlr r0
/* 80C7B980  38 21 00 60 */	addi r1, r1, 0x60
/* 80C7B984  4E 80 00 20 */	blr 
