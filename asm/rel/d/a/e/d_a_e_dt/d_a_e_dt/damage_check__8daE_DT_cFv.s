lbl_806AE758:
/* 806AE758  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AE75C  7C 08 02 A6 */	mflr r0
/* 806AE760  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AE764  39 61 00 30 */	addi r11, r1, 0x30
/* 806AE768  4B CB 3A 75 */	bl _savegpr_29
/* 806AE76C  7C 7D 1B 78 */	mr r29, r3
/* 806AE770  3C 60 80 6B */	lis r3, lit_3792@ha /* 0x806B5CD4@ha */
/* 806AE774  3B E3 5C D4 */	addi r31, r3, lit_3792@l /* 0x806B5CD4@l */
/* 806AE778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AE77C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AE780  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 806AE784  88 1D 07 6C */	lbz r0, 0x76c(r29)
/* 806AE788  28 00 00 00 */	cmplwi r0, 0
/* 806AE78C  40 82 00 68 */	bne lbl_806AE7F4
/* 806AE790  38 7D 09 D8 */	addi r3, r29, 0x9d8
/* 806AE794  4B 9D 5C CD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806AE798  28 03 00 00 */	cmplwi r3, 0
/* 806AE79C  40 82 00 14 */	bne lbl_806AE7B0
/* 806AE7A0  38 7D 0B 10 */	addi r3, r29, 0xb10
/* 806AE7A4  4B 9D 5C BD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806AE7A8  28 03 00 00 */	cmplwi r3, 0
/* 806AE7AC  41 82 00 48 */	beq lbl_806AE7F4
lbl_806AE7B0:
/* 806AE7B0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806AE7B4  D0 1D 07 48 */	stfs f0, 0x748(r29)
/* 806AE7B8  38 00 00 00 */	li r0, 0
/* 806AE7BC  B0 1D 07 4C */	sth r0, 0x74c(r29)
/* 806AE7C0  38 00 00 0A */	li r0, 0xa
/* 806AE7C4  98 1D 07 6C */	stb r0, 0x76c(r29)
/* 806AE7C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007031C@ha */
/* 806AE7CC  38 03 03 1C */	addi r0, r3, 0x031C /* 0x0007031C@l */
/* 806AE7D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806AE7D4  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 806AE7D8  38 81 00 10 */	addi r4, r1, 0x10
/* 806AE7DC  38 A0 00 00 */	li r5, 0
/* 806AE7E0  38 C0 FF FF */	li r6, -1
/* 806AE7E4  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 806AE7E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806AE7EC  7D 89 03 A6 */	mtctr r12
/* 806AE7F0  4E 80 04 21 */	bctrl 
lbl_806AE7F4:
/* 806AE7F4  88 1D 07 6D */	lbz r0, 0x76d(r29)
/* 806AE7F8  28 00 00 00 */	cmplwi r0, 0
/* 806AE7FC  40 82 00 BC */	bne lbl_806AE8B8
/* 806AE800  38 7D 0C 48 */	addi r3, r29, 0xc48
/* 806AE804  4B 9D 5C 5D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806AE808  28 03 00 00 */	cmplwi r3, 0
/* 806AE80C  41 82 00 AC */	beq lbl_806AE8B8
/* 806AE810  38 00 06 00 */	li r0, 0x600
/* 806AE814  B0 1D 07 4E */	sth r0, 0x74e(r29)
/* 806AE818  38 00 00 00 */	li r0, 0
/* 806AE81C  B0 1D 07 50 */	sth r0, 0x750(r29)
/* 806AE820  38 00 00 0A */	li r0, 0xa
/* 806AE824  98 1D 07 6D */	stb r0, 0x76d(r29)
/* 806AE828  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806AE82C  80 63 00 04 */	lwz r3, 4(r3)
/* 806AE830  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AE834  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AE838  38 63 06 30 */	addi r3, r3, 0x630
/* 806AE83C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AE840  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AE844  4B C9 7C 6D */	bl PSMTXCopy
/* 806AE848  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806AE84C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 806AE850  FC 60 10 90 */	fmr f3, f2
/* 806AE854  4B 95 E5 49 */	bl transM__14mDoMtx_stack_cFfff
/* 806AE858  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AE85C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AE860  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806AE864  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806AE868  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806AE86C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806AE870  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806AE874  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806AE878  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007031E@ha */
/* 806AE87C  38 03 03 1E */	addi r0, r3, 0x031E /* 0x0007031E@l */
/* 806AE880  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AE884  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806AE888  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806AE88C  80 63 00 00 */	lwz r3, 0(r3)
/* 806AE890  38 81 00 0C */	addi r4, r1, 0xc
/* 806AE894  38 A1 00 14 */	addi r5, r1, 0x14
/* 806AE898  38 C0 00 00 */	li r6, 0
/* 806AE89C  38 E0 00 00 */	li r7, 0
/* 806AE8A0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806AE8A4  FC 40 08 90 */	fmr f2, f1
/* 806AE8A8  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 806AE8AC  FC 80 18 90 */	fmr f4, f3
/* 806AE8B0  39 00 00 00 */	li r8, 0
/* 806AE8B4  4B BF D0 D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806AE8B8:
/* 806AE8B8  88 1D 07 6E */	lbz r0, 0x76e(r29)
/* 806AE8BC  28 00 00 00 */	cmplwi r0, 0
/* 806AE8C0  40 82 00 BC */	bne lbl_806AE97C
/* 806AE8C4  38 7D 0D 80 */	addi r3, r29, 0xd80
/* 806AE8C8  4B 9D 5B 99 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806AE8CC  28 03 00 00 */	cmplwi r3, 0
/* 806AE8D0  41 82 00 AC */	beq lbl_806AE97C
/* 806AE8D4  38 00 06 00 */	li r0, 0x600
/* 806AE8D8  B0 1D 07 52 */	sth r0, 0x752(r29)
/* 806AE8DC  38 00 00 00 */	li r0, 0
/* 806AE8E0  B0 1D 07 54 */	sth r0, 0x754(r29)
/* 806AE8E4  38 00 00 0A */	li r0, 0xa
/* 806AE8E8  98 1D 07 6E */	stb r0, 0x76e(r29)
/* 806AE8EC  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806AE8F0  80 63 00 04 */	lwz r3, 4(r3)
/* 806AE8F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AE8F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AE8FC  38 63 06 F0 */	addi r3, r3, 0x6f0
/* 806AE900  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AE904  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AE908  4B C9 7B A9 */	bl PSMTXCopy
/* 806AE90C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806AE910  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 806AE914  FC 60 10 90 */	fmr f3, f2
/* 806AE918  4B 95 E4 85 */	bl transM__14mDoMtx_stack_cFfff
/* 806AE91C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AE920  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AE924  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806AE928  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806AE92C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806AE930  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806AE934  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806AE938  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806AE93C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007031E@ha */
/* 806AE940  38 03 03 1E */	addi r0, r3, 0x031E /* 0x0007031E@l */
/* 806AE944  90 01 00 08 */	stw r0, 8(r1)
/* 806AE948  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806AE94C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806AE950  80 63 00 00 */	lwz r3, 0(r3)
/* 806AE954  38 81 00 08 */	addi r4, r1, 8
/* 806AE958  38 A1 00 14 */	addi r5, r1, 0x14
/* 806AE95C  38 C0 00 00 */	li r6, 0
/* 806AE960  38 E0 00 00 */	li r7, 0
/* 806AE964  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806AE968  FC 40 08 90 */	fmr f2, f1
/* 806AE96C  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 806AE970  FC 80 18 90 */	fmr f4, f3
/* 806AE974  39 00 00 00 */	li r8, 0
/* 806AE978  4B BF D0 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806AE97C:
/* 806AE97C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 806AE980  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806AE984  41 82 00 2C */	beq lbl_806AE9B0
/* 806AE988  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 806AE98C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 806AE990  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 806AE994  38 00 00 00 */	li r0, 0
/* 806AE998  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806AE99C  7F A3 EB 78 */	mr r3, r29
/* 806AE9A0  38 80 00 09 */	li r4, 9
/* 806AE9A4  38 A0 00 00 */	li r5, 0
/* 806AE9A8  4B FF FD A5 */	bl setActionMode__8daE_DT_cFii
/* 806AE9AC  48 00 01 84 */	b lbl_806AEB30
lbl_806AE9B0:
/* 806AE9B0  80 1D 07 60 */	lwz r0, 0x760(r29)
/* 806AE9B4  2C 00 00 00 */	cmpwi r0, 0
/* 806AE9B8  40 82 01 78 */	bne lbl_806AEB30
/* 806AE9BC  38 7D 09 B8 */	addi r3, r29, 0x9b8
/* 806AE9C0  4B 9D 4E 71 */	bl Move__10dCcD_GSttsFv
/* 806AE9C4  38 7D 0E B8 */	addi r3, r29, 0xeb8
/* 806AE9C8  4B 9D 5A 99 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806AE9CC  28 03 00 00 */	cmplwi r3, 0
/* 806AE9D0  41 82 01 60 */	beq lbl_806AEB30
/* 806AE9D4  38 7D 0E B8 */	addi r3, r29, 0xeb8
/* 806AE9D8  4B 9D 5B 21 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806AE9DC  90 7D 11 28 */	stw r3, 0x1128(r29)
/* 806AE9E0  80 7D 11 28 */	lwz r3, 0x1128(r29)
/* 806AE9E4  4B BB 50 65 */	bl GetAc__8cCcD_ObjFv
/* 806AE9E8  7F A3 EB 78 */	mr r3, r29
/* 806AE9EC  38 9D 11 28 */	addi r4, r29, 0x1128
/* 806AE9F0  4B 9D 92 15 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806AE9F4  80 7D 11 28 */	lwz r3, 0x1128(r29)
/* 806AE9F8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806AE9FC  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 806AEA00  41 82 00 10 */	beq lbl_806AEA10
/* 806AEA04  38 00 00 14 */	li r0, 0x14
/* 806AEA08  90 1D 07 60 */	stw r0, 0x760(r29)
/* 806AEA0C  48 00 00 0C */	b lbl_806AEA18
lbl_806AEA10:
/* 806AEA10  38 00 00 0A */	li r0, 0xa
/* 806AEA14  90 1D 07 60 */	stw r0, 0x760(r29)
lbl_806AEA18:
/* 806AEA18  A0 1D 11 44 */	lhz r0, 0x1144(r29)
/* 806AEA1C  28 00 00 01 */	cmplwi r0, 1
/* 806AEA20  41 81 00 0C */	bgt lbl_806AEA2C
/* 806AEA24  38 00 00 0A */	li r0, 0xa
/* 806AEA28  90 1D 07 60 */	stw r0, 0x760(r29)
lbl_806AEA2C:
/* 806AEA2C  38 7D 0E B8 */	addi r3, r29, 0xeb8
/* 806AEA30  81 9D 0E F4 */	lwz r12, 0xef4(r29)
/* 806AEA34  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806AEA38  7D 89 03 A6 */	mtctr r12
/* 806AEA3C  4E 80 04 21 */	bctrl 
/* 806AEA40  3B E0 00 00 */	li r31, 0
/* 806AEA44  A0 1E 05 6E */	lhz r0, 0x56e(r30)
/* 806AEA48  28 00 00 00 */	cmplwi r0, 0
/* 806AEA4C  40 82 00 20 */	bne lbl_806AEA6C
/* 806AEA50  88 1E 05 69 */	lbz r0, 0x569(r30)
/* 806AEA54  28 00 00 04 */	cmplwi r0, 4
/* 806AEA58  40 80 00 14 */	bge lbl_806AEA6C
/* 806AEA5C  80 7D 11 28 */	lwz r3, 0x1128(r29)
/* 806AEA60  88 03 00 14 */	lbz r0, 0x14(r3)
/* 806AEA64  28 00 00 04 */	cmplwi r0, 4
/* 806AEA68  41 80 00 0C */	blt lbl_806AEA74
lbl_806AEA6C:
/* 806AEA6C  3B E0 00 01 */	li r31, 1
/* 806AEA70  48 00 00 2C */	b lbl_806AEA9C
lbl_806AEA74:
/* 806AEA74  88 03 00 77 */	lbz r0, 0x77(r3)
/* 806AEA78  2C 00 00 01 */	cmpwi r0, 1
/* 806AEA7C  40 82 00 20 */	bne lbl_806AEA9C
/* 806AEA80  88 7D 07 74 */	lbz r3, 0x774(r29)
/* 806AEA84  38 03 00 01 */	addi r0, r3, 1
/* 806AEA88  98 1D 07 74 */	stb r0, 0x774(r29)
/* 806AEA8C  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 806AEA90  28 00 00 02 */	cmplwi r0, 2
/* 806AEA94  41 80 00 08 */	blt lbl_806AEA9C
/* 806AEA98  3B E0 00 01 */	li r31, 1
lbl_806AEA9C:
/* 806AEA9C  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 806AEAA0  28 00 00 0A */	cmplwi r0, 0xa
/* 806AEAA4  40 82 00 3C */	bne lbl_806AEAE0
/* 806AEAA8  7F C3 F3 78 */	mr r3, r30
/* 806AEAAC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 806AEAB0  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 806AEAB4  7D 89 03 A6 */	mtctr r12
/* 806AEAB8  4E 80 04 21 */	bctrl 
/* 806AEABC  2C 03 00 00 */	cmpwi r3, 0
/* 806AEAC0  41 82 00 20 */	beq lbl_806AEAE0
/* 806AEAC4  38 00 00 03 */	li r0, 3
/* 806AEAC8  90 1D 07 60 */	stw r0, 0x760(r29)
/* 806AEACC  7F A3 EB 78 */	mr r3, r29
/* 806AEAD0  38 80 00 07 */	li r4, 7
/* 806AEAD4  38 A0 00 00 */	li r5, 0
/* 806AEAD8  4B FF FC 75 */	bl setActionMode__8daE_DT_cFii
/* 806AEADC  48 00 00 38 */	b lbl_806AEB14
lbl_806AEAE0:
/* 806AEAE0  2C 1F 00 00 */	cmpwi r31, 0
/* 806AEAE4  41 82 00 20 */	beq lbl_806AEB04
/* 806AEAE8  38 00 00 00 */	li r0, 0
/* 806AEAEC  98 1D 07 74 */	stb r0, 0x774(r29)
/* 806AEAF0  7F A3 EB 78 */	mr r3, r29
/* 806AEAF4  38 80 00 05 */	li r4, 5
/* 806AEAF8  38 A0 00 02 */	li r5, 2
/* 806AEAFC  4B FF FC 51 */	bl setActionMode__8daE_DT_cFii
/* 806AEB00  48 00 00 14 */	b lbl_806AEB14
lbl_806AEB04:
/* 806AEB04  7F A3 EB 78 */	mr r3, r29
/* 806AEB08  38 80 00 07 */	li r4, 7
/* 806AEB0C  38 A0 00 00 */	li r5, 0
/* 806AEB10  4B FF FC 3D */	bl setActionMode__8daE_DT_cFii
lbl_806AEB14:
/* 806AEB14  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806AEB18  2C 00 00 00 */	cmpwi r0, 0
/* 806AEB1C  41 81 00 14 */	bgt lbl_806AEB30
/* 806AEB20  7F A3 EB 78 */	mr r3, r29
/* 806AEB24  38 80 00 09 */	li r4, 9
/* 806AEB28  38 A0 00 02 */	li r5, 2
/* 806AEB2C  4B FF FC 21 */	bl setActionMode__8daE_DT_cFii
lbl_806AEB30:
/* 806AEB30  39 61 00 30 */	addi r11, r1, 0x30
/* 806AEB34  4B CB 36 F5 */	bl _restgpr_29
/* 806AEB38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AEB3C  7C 08 03 A6 */	mtlr r0
/* 806AEB40  38 21 00 30 */	addi r1, r1, 0x30
/* 806AEB44  4E 80 00 20 */	blr 
