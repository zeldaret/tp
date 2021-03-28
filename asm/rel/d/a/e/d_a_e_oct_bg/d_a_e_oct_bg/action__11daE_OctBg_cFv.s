lbl_8073651C:
/* 8073651C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80736520  7C 08 02 A6 */	mflr r0
/* 80736524  90 01 00 64 */	stw r0, 0x64(r1)
/* 80736528  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8073652C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80736530  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80736534  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80736538  7C 7E 1B 78 */	mr r30, r3
/* 8073653C  3C 60 80 74 */	lis r3, lit_3768@ha
/* 80736540  3B E3 9D 60 */	addi r31, r3, lit_3768@l
/* 80736544  88 7E 0B AE */	lbz r3, 0xbae(r30)
/* 80736548  28 03 00 00 */	cmplwi r3, 0
/* 8073654C  41 82 00 0C */	beq lbl_80736558
/* 80736550  38 03 FF FF */	addi r0, r3, -1
/* 80736554  98 1E 0B AE */	stb r0, 0xbae(r30)
lbl_80736558:
/* 80736558  A0 7E 0B B0 */	lhz r3, 0xbb0(r30)
/* 8073655C  28 03 00 00 */	cmplwi r3, 0
/* 80736560  41 82 00 0C */	beq lbl_8073656C
/* 80736564  38 03 FF FF */	addi r0, r3, -1
/* 80736568  B0 1E 0B B0 */	sth r0, 0xbb0(r30)
lbl_8073656C:
/* 8073656C  88 7E 0B AF */	lbz r3, 0xbaf(r30)
/* 80736570  28 03 00 00 */	cmplwi r3, 0
/* 80736574  41 82 00 0C */	beq lbl_80736580
/* 80736578  38 03 FF FF */	addi r0, r3, -1
/* 8073657C  98 1E 0B AF */	stb r0, 0xbaf(r30)
lbl_80736580:
/* 80736580  88 7E 0B AD */	lbz r3, 0xbad(r30)
/* 80736584  28 03 00 00 */	cmplwi r3, 0
/* 80736588  41 82 00 0C */	beq lbl_80736594
/* 8073658C  38 03 FF FF */	addi r0, r3, -1
/* 80736590  98 1E 0B AD */	stb r0, 0xbad(r30)
lbl_80736594:
/* 80736594  7F C3 F3 78 */	mr r3, r30
/* 80736598  4B FF FE 81 */	bl checkExplode__11daE_OctBg_cFv
/* 8073659C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807365A0  40 82 02 80 */	bne lbl_80736820
/* 807365A4  7F C3 F3 78 */	mr r3, r30
/* 807365A8  48 00 28 89 */	bl damage_check__11daE_OctBg_cFv
/* 807365AC  7F C3 F3 78 */	mr r3, r30
/* 807365B0  39 9E 0B 58 */	addi r12, r30, 0xb58
/* 807365B4  4B C2 BA D0 */	b __ptmf_scall
/* 807365B8  60 00 00 00 */	nop 
/* 807365BC  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 807365C0  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807365C4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807365C8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807365CC  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 807365D0  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 807365D4  7F C3 F3 78 */	mr r3, r30
/* 807365D8  38 9E 08 84 */	addi r4, r30, 0x884
/* 807365DC  4B 8E 40 F0 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 807365E0  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 807365E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807365E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807365EC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807365F0  4B 94 04 BC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 807365F4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807365F8  88 9E 0B 74 */	lbz r4, 0xb74(r30)
/* 807365FC  4B B8 B5 80 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 80736600  A8 1E 0B 8C */	lha r0, 0xb8c(r30)
/* 80736604  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80736608  40 81 00 10 */	ble lbl_80736618
/* 8073660C  38 00 20 00 */	li r0, 0x2000
/* 80736610  B0 1E 0B 8C */	sth r0, 0xb8c(r30)
/* 80736614  48 00 00 14 */	b lbl_80736628
lbl_80736618:
/* 80736618  2C 00 E0 00 */	cmpwi r0, -8192
/* 8073661C  40 80 00 0C */	bge lbl_80736628
/* 80736620  38 00 E0 00 */	li r0, -8192
/* 80736624  B0 1E 0B 8C */	sth r0, 0xb8c(r30)
lbl_80736628:
/* 80736628  38 7E 0B 8A */	addi r3, r30, 0xb8a
/* 8073662C  A8 9E 0B 8C */	lha r4, 0xb8c(r30)
/* 80736630  38 A0 00 10 */	li r5, 0x10
/* 80736634  38 C0 01 00 */	li r6, 0x100
/* 80736638  38 E0 00 10 */	li r7, 0x10
/* 8073663C  4B B3 9F 04 */	b cLib_addCalcAngleS__FPsssss
/* 80736640  A8 1E 0B 80 */	lha r0, 0xb80(r30)
/* 80736644  C8 3F 00 28 */	lfd f1, 0x28(r31)
/* 80736648  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073664C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80736650  3C 00 43 30 */	lis r0, 0x4330
/* 80736654  90 01 00 10 */	stw r0, 0x10(r1)
/* 80736658  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8073665C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80736660  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80736664  EF E1 00 24 */	fdivs f31, f1, f0
/* 80736668  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8073666C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80736670  40 81 00 08 */	ble lbl_80736678
/* 80736674  FF E0 00 90 */	fmr f31, f0
lbl_80736678:
/* 80736678  A8 1E 0B 7C */	lha r0, 0xb7c(r30)
/* 8073667C  2C 00 00 00 */	cmpwi r0, 0
/* 80736680  40 80 00 3C */	bge lbl_807366BC
/* 80736684  A8 1E 0B 7E */	lha r0, 0xb7e(r30)
/* 80736688  2C 00 00 00 */	cmpwi r0, 0
/* 8073668C  41 80 00 30 */	blt lbl_807366BC
/* 80736690  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A7@ha */
/* 80736694  38 03 02 A7 */	addi r0, r3, 0x02A7 /* 0x000702A7@l */
/* 80736698  90 01 00 0C */	stw r0, 0xc(r1)
/* 8073669C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807366A0  38 81 00 0C */	addi r4, r1, 0xc
/* 807366A4  38 A0 00 00 */	li r5, 0
/* 807366A8  38 C0 FF FF */	li r6, -1
/* 807366AC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807366B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807366B4  7D 89 03 A6 */	mtctr r12
/* 807366B8  4E 80 04 21 */	bctrl 
lbl_807366BC:
/* 807366BC  88 1E 0B 75 */	lbz r0, 0xb75(r30)
/* 807366C0  28 00 00 00 */	cmplwi r0, 0
/* 807366C4  41 82 00 48 */	beq lbl_8073670C
/* 807366C8  A8 1E 0B 7C */	lha r0, 0xb7c(r30)
/* 807366CC  2C 00 00 00 */	cmpwi r0, 0
/* 807366D0  40 81 00 3C */	ble lbl_8073670C
/* 807366D4  A8 1E 0B 7E */	lha r0, 0xb7e(r30)
/* 807366D8  2C 00 00 00 */	cmpwi r0, 0
/* 807366DC  41 81 00 30 */	bgt lbl_8073670C
/* 807366E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A7@ha */
/* 807366E4  38 03 02 A7 */	addi r0, r3, 0x02A7 /* 0x000702A7@l */
/* 807366E8  90 01 00 08 */	stw r0, 8(r1)
/* 807366EC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807366F0  38 81 00 08 */	addi r4, r1, 8
/* 807366F4  38 A0 00 00 */	li r5, 0
/* 807366F8  38 C0 FF FF */	li r6, -1
/* 807366FC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80736700  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80736704  7D 89 03 A6 */	mtctr r12
/* 80736708  4E 80 04 21 */	bctrl 
lbl_8073670C:
/* 8073670C  A8 1E 0B 7C */	lha r0, 0xb7c(r30)
/* 80736710  B0 1E 0B 7E */	sth r0, 0xb7e(r30)
/* 80736714  A8 1E 0B 7C */	lha r0, 0xb7c(r30)
/* 80736718  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8073671C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80736720  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l
/* 80736724  7C 25 04 2E */	lfsx f1, r5, r0
/* 80736728  A8 1E 0B 82 */	lha r0, 0xb82(r30)
/* 8073672C  C8 5F 00 28 */	lfd f2, 0x28(r31)
/* 80736730  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80736734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80736738  3C 80 43 30 */	lis r4, 0x4330
/* 8073673C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80736740  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80736744  EC 00 10 28 */	fsubs f0, f0, f2
/* 80736748  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8073674C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80736750  FC 00 00 1E */	fctiwz f0, f0
/* 80736754  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80736758  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8073675C  B0 1E 0B 84 */	sth r0, 0xb84(r30)
/* 80736760  A8 7E 0B 7C */	lha r3, 0xb7c(r30)
/* 80736764  38 03 40 00 */	addi r0, r3, 0x4000
/* 80736768  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8073676C  7C 65 04 2E */	lfsx f3, r5, r0
/* 80736770  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80736774  A8 1E 0B 82 */	lha r0, 0xb82(r30)
/* 80736778  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073677C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80736780  90 81 00 20 */	stw r4, 0x20(r1)
/* 80736784  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80736788  EC 00 10 28 */	fsubs f0, f0, f2
/* 8073678C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80736790  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80736794  EC 01 00 32 */	fmuls f0, f1, f0
/* 80736798  FC 00 00 1E */	fctiwz f0, f0
/* 8073679C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807367A0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807367A4  B0 1E 0B 86 */	sth r0, 0xb86(r30)
/* 807367A8  A8 7E 0B 7C */	lha r3, 0xb7c(r30)
/* 807367AC  3C 63 00 01 */	addis r3, r3, 1
/* 807367B0  38 03 80 00 */	addi r0, r3, -32768
/* 807367B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807367B8  7C 65 04 2E */	lfsx f3, r5, r0
/* 807367BC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807367C0  A8 1E 0B 82 */	lha r0, 0xb82(r30)
/* 807367C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807367C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 807367CC  90 81 00 30 */	stw r4, 0x30(r1)
/* 807367D0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 807367D4  EC 00 10 28 */	fsubs f0, f0, f2
/* 807367D8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 807367DC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 807367E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807367E4  FC 00 00 1E */	fctiwz f0, f0
/* 807367E8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 807367EC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 807367F0  B0 1E 0B 88 */	sth r0, 0xb88(r30)
/* 807367F4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807367F8  7C 03 07 74 */	extsb r3, r0
/* 807367FC  4B 8F 68 70 */	b dComIfGp_getReverb__Fi
/* 80736800  7C 65 1B 78 */	mr r5, r3
/* 80736804  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80736808  38 80 00 00 */	li r4, 0
/* 8073680C  4B 8D A8 A4 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80736810  7F C3 F3 78 */	mr r3, r30
/* 80736814  48 00 02 65 */	bl mtx_set__11daE_OctBg_cFv
/* 80736818  7F C3 F3 78 */	mr r3, r30
/* 8073681C  48 00 00 AD */	bl cc_set__11daE_OctBg_cFv
lbl_80736820:
/* 80736820  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80736824  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80736828  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8073682C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80736830  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80736834  7C 08 03 A6 */	mtlr r0
/* 80736838  38 21 00 60 */	addi r1, r1, 0x60
/* 8073683C  4E 80 00 20 */	blr 
