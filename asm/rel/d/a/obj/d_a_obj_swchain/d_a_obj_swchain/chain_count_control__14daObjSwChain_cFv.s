lbl_80CFA4A8:
/* 80CFA4A8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CFA4AC  7C 08 02 A6 */	mflr r0
/* 80CFA4B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CFA4B4  39 61 00 60 */	addi r11, r1, 0x60
/* 80CFA4B8  4B 66 7D 18 */	b _savegpr_26
/* 80CFA4BC  7C 7A 1B 78 */	mr r26, r3
/* 80CFA4C0  3C 80 80 D0 */	lis r4, lit_3734@ha
/* 80CFA4C4  3B A4 B6 EC */	addi r29, r4, lit_3734@l
/* 80CFA4C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CFA4CC  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80CFA4D0  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 80CFA4D4  48 00 0F 7D */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFA4D8  1C 03 00 50 */	mulli r0, r3, 0x50
/* 80CFA4DC  80 7A 0A 74 */	lwz r3, 0xa74(r26)
/* 80CFA4E0  7F 63 02 14 */	add r27, r3, r0
/* 80CFA4E4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80CFA4E8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CFA4EC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80CFA4F0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CFA4F4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80CFA4F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CFA4FC  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80CFA500  7C 1F 07 74 */	extsb r31, r0
/* 80CFA504  38 61 00 3C */	addi r3, r1, 0x3c
/* 80CFA508  38 9B 00 34 */	addi r4, r27, 0x34
/* 80CFA50C  4B 64 CE 90 */	b PSVECSquareDistance
/* 80CFA510  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFA514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFA518  40 81 00 58 */	ble lbl_80CFA570
/* 80CFA51C  FC 00 08 34 */	frsqrte f0, f1
/* 80CFA520  C8 9D 00 18 */	lfd f4, 0x18(r29)
/* 80CFA524  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFA528  C8 7D 00 20 */	lfd f3, 0x20(r29)
/* 80CFA52C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFA530  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFA534  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFA538  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFA53C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFA540  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFA544  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFA548  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFA54C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFA550  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFA554  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFA558  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFA55C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFA560  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFA564  FC 21 00 32 */	fmul f1, f1, f0
/* 80CFA568  FC 20 08 18 */	frsp f1, f1
/* 80CFA56C  48 00 00 88 */	b lbl_80CFA5F4
lbl_80CFA570:
/* 80CFA570  C8 1D 00 28 */	lfd f0, 0x28(r29)
/* 80CFA574  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFA578  40 80 00 10 */	bge lbl_80CFA588
/* 80CFA57C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CFA580  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CFA584  48 00 00 70 */	b lbl_80CFA5F4
lbl_80CFA588:
/* 80CFA588  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CFA58C  80 81 00 08 */	lwz r4, 8(r1)
/* 80CFA590  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CFA594  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CFA598  7C 03 00 00 */	cmpw r3, r0
/* 80CFA59C  41 82 00 14 */	beq lbl_80CFA5B0
/* 80CFA5A0  40 80 00 40 */	bge lbl_80CFA5E0
/* 80CFA5A4  2C 03 00 00 */	cmpwi r3, 0
/* 80CFA5A8  41 82 00 20 */	beq lbl_80CFA5C8
/* 80CFA5AC  48 00 00 34 */	b lbl_80CFA5E0
lbl_80CFA5B0:
/* 80CFA5B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFA5B4  41 82 00 0C */	beq lbl_80CFA5C0
/* 80CFA5B8  38 00 00 01 */	li r0, 1
/* 80CFA5BC  48 00 00 28 */	b lbl_80CFA5E4
lbl_80CFA5C0:
/* 80CFA5C0  38 00 00 02 */	li r0, 2
/* 80CFA5C4  48 00 00 20 */	b lbl_80CFA5E4
lbl_80CFA5C8:
/* 80CFA5C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFA5CC  41 82 00 0C */	beq lbl_80CFA5D8
/* 80CFA5D0  38 00 00 05 */	li r0, 5
/* 80CFA5D4  48 00 00 10 */	b lbl_80CFA5E4
lbl_80CFA5D8:
/* 80CFA5D8  38 00 00 03 */	li r0, 3
/* 80CFA5DC  48 00 00 08 */	b lbl_80CFA5E4
lbl_80CFA5E0:
/* 80CFA5E0  38 00 00 04 */	li r0, 4
lbl_80CFA5E4:
/* 80CFA5E4  2C 00 00 01 */	cmpwi r0, 1
/* 80CFA5E8  40 82 00 0C */	bne lbl_80CFA5F4
/* 80CFA5EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CFA5F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CFA5F4:
/* 80CFA5F4  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80CFA5F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFA5FC  40 81 01 84 */	ble lbl_80CFA780
/* 80CFA600  88 7A 0A 64 */	lbz r3, 0xa64(r26)
/* 80CFA604  88 9A 0A 65 */	lbz r4, 0xa65(r26)
/* 80CFA608  7C 03 20 40 */	cmplw r3, r4
/* 80CFA60C  41 80 00 20 */	blt lbl_80CFA62C
/* 80CFA610  2C 1F 00 04 */	cmpwi r31, 4
/* 80CFA614  41 82 00 0C */	beq lbl_80CFA620
/* 80CFA618  2C 1F 00 06 */	cmpwi r31, 6
/* 80CFA61C  40 82 02 7C */	bne lbl_80CFA898
lbl_80CFA620:
/* 80CFA620  88 1A 0A 67 */	lbz r0, 0xa67(r26)
/* 80CFA624  7C 03 00 40 */	cmplw r3, r0
/* 80CFA628  40 80 02 70 */	bge lbl_80CFA898
lbl_80CFA62C:
/* 80CFA62C  38 A0 00 01 */	li r5, 1
/* 80CFA630  2C 1F 00 04 */	cmpwi r31, 4
/* 80CFA634  41 82 00 40 */	beq lbl_80CFA674
/* 80CFA638  2C 1F 00 06 */	cmpwi r31, 6
/* 80CFA63C  41 82 00 38 */	beq lbl_80CFA674
/* 80CFA640  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80CFA644  EC 41 00 28 */	fsubs f2, f1, f0
/* 80CFA648  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80CFA64C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CFA650  48 00 00 0C */	b lbl_80CFA65C
lbl_80CFA654:
/* 80CFA654  EC 42 08 28 */	fsubs f2, f2, f1
/* 80CFA658  38 A5 00 01 */	addi r5, r5, 1
lbl_80CFA65C:
/* 80CFA65C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CFA660  41 81 FF F4 */	bgt lbl_80CFA654
/* 80CFA664  7C 03 2A 14 */	add r0, r3, r5
/* 80CFA668  7C 00 20 00 */	cmpw r0, r4
/* 80CFA66C  41 80 00 08 */	blt lbl_80CFA674
/* 80CFA670  7C A3 20 50 */	subf r5, r3, r4
lbl_80CFA674:
/* 80CFA674  88 1A 0A 64 */	lbz r0, 0xa64(r26)
/* 80CFA678  7C 00 2A 14 */	add r0, r0, r5
/* 80CFA67C  98 1A 0A 64 */	stb r0, 0xa64(r26)
/* 80CFA680  88 7A 0A 64 */	lbz r3, 0xa64(r26)
/* 80CFA684  88 1A 0A 66 */	lbz r0, 0xa66(r26)
/* 80CFA688  7C 03 00 40 */	cmplw r3, r0
/* 80CFA68C  41 80 00 0C */	blt lbl_80CFA698
/* 80CFA690  38 00 00 01 */	li r0, 1
/* 80CFA694  98 1A 0A 9E */	stb r0, 0xa9e(r26)
lbl_80CFA698:
/* 80CFA698  88 1A 0A 6A */	lbz r0, 0xa6a(r26)
/* 80CFA69C  28 00 00 00 */	cmplwi r0, 0
/* 80CFA6A0  40 82 00 48 */	bne lbl_80CFA6E8
/* 80CFA6A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008015A@ha */
/* 80CFA6A8  38 03 01 5A */	addi r0, r3, 0x015A /* 0x0008015A@l */
/* 80CFA6AC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CFA6B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CFA6B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CFA6B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CFA6BC  38 81 00 20 */	addi r4, r1, 0x20
/* 80CFA6C0  38 BA 04 A8 */	addi r5, r26, 0x4a8
/* 80CFA6C4  38 C0 00 00 */	li r6, 0
/* 80CFA6C8  38 E0 00 00 */	li r7, 0
/* 80CFA6CC  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80CFA6D0  FC 40 08 90 */	fmr f2, f1
/* 80CFA6D4  C0 7D 00 78 */	lfs f3, 0x78(r29)
/* 80CFA6D8  FC 80 18 90 */	fmr f4, f3
/* 80CFA6DC  39 00 00 00 */	li r8, 0
/* 80CFA6E0  4B 5B 12 A4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CFA6E4  48 00 00 44 */	b lbl_80CFA728
lbl_80CFA6E8:
/* 80CFA6E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008015B@ha */
/* 80CFA6EC  38 03 01 5B */	addi r0, r3, 0x015B /* 0x0008015B@l */
/* 80CFA6F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CFA6F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CFA6F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CFA6FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CFA700  38 81 00 1C */	addi r4, r1, 0x1c
/* 80CFA704  38 BA 04 A8 */	addi r5, r26, 0x4a8
/* 80CFA708  38 C0 00 00 */	li r6, 0
/* 80CFA70C  38 E0 00 00 */	li r7, 0
/* 80CFA710  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80CFA714  FC 40 08 90 */	fmr f2, f1
/* 80CFA718  C0 7D 00 78 */	lfs f3, 0x78(r29)
/* 80CFA71C  FC 80 18 90 */	fmr f4, f3
/* 80CFA720  39 00 00 00 */	li r8, 0
/* 80CFA724  4B 5B 12 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CFA728:
/* 80CFA728  7F 43 D3 78 */	mr r3, r26
/* 80CFA72C  48 00 0D 25 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFA730  1C 63 00 50 */	mulli r3, r3, 0x50
/* 80CFA734  80 1A 0A 74 */	lwz r0, 0xa74(r26)
/* 80CFA738  7C 60 1A 14 */	add r3, r0, r3
/* 80CFA73C  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 80CFA740  C0 3B 00 34 */	lfs f1, 0x34(r27)
/* 80CFA744  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80CFA748  EC 01 00 2A */	fadds f0, f1, f0
/* 80CFA74C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CFA750  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80CFA754  C0 3B 00 38 */	lfs f1, 0x38(r27)
/* 80CFA758  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80CFA75C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CFA760  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CFA764  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80CFA768  C0 3B 00 3C */	lfs f1, 0x3c(r27)
/* 80CFA76C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80CFA770  EC 01 00 2A */	fadds f0, f1, f0
/* 80CFA774  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CFA778  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80CFA77C  48 00 01 1C */	b lbl_80CFA898
lbl_80CFA780:
/* 80CFA780  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80CFA784  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFA788  40 80 01 10 */	bge lbl_80CFA898
/* 80CFA78C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80CFA790  C0 1A 0A 90 */	lfs f0, 0xa90(r26)
/* 80CFA794  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CFA798  40 82 01 00 */	bne lbl_80CFA898
/* 80CFA79C  88 7A 0A 64 */	lbz r3, 0xa64(r26)
/* 80CFA7A0  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80CFA7A4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CFA7A8  7C 03 00 40 */	cmplw r3, r0
/* 80CFA7AC  40 81 00 EC */	ble lbl_80CFA898
/* 80CFA7B0  2C 1F 00 04 */	cmpwi r31, 4
/* 80CFA7B4  41 82 00 0C */	beq lbl_80CFA7C0
/* 80CFA7B8  2C 1F 00 06 */	cmpwi r31, 6
/* 80CFA7BC  40 82 00 DC */	bne lbl_80CFA898
lbl_80CFA7C0:
/* 80CFA7C0  88 7A 0A 64 */	lbz r3, 0xa64(r26)
/* 80CFA7C4  38 03 FF FF */	addi r0, r3, -1
/* 80CFA7C8  98 1A 0A 64 */	stb r0, 0xa64(r26)
/* 80CFA7CC  88 1A 0A 61 */	lbz r0, 0xa61(r26)
/* 80CFA7D0  28 00 00 00 */	cmplwi r0, 0
/* 80CFA7D4  40 82 00 94 */	bne lbl_80CFA868
/* 80CFA7D8  88 1A 0A 6B */	lbz r0, 0xa6b(r26)
/* 80CFA7DC  28 00 00 00 */	cmplwi r0, 0
/* 80CFA7E0  40 82 00 48 */	bne lbl_80CFA828
/* 80CFA7E4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008015C@ha */
/* 80CFA7E8  38 03 01 5C */	addi r0, r3, 0x015C /* 0x0008015C@l */
/* 80CFA7EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CFA7F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CFA7F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CFA7F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CFA7FC  38 81 00 18 */	addi r4, r1, 0x18
/* 80CFA800  38 BA 04 A8 */	addi r5, r26, 0x4a8
/* 80CFA804  38 C0 00 00 */	li r6, 0
/* 80CFA808  38 E0 00 00 */	li r7, 0
/* 80CFA80C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80CFA810  FC 40 08 90 */	fmr f2, f1
/* 80CFA814  C0 7D 00 78 */	lfs f3, 0x78(r29)
/* 80CFA818  FC 80 18 90 */	fmr f4, f3
/* 80CFA81C  39 00 00 00 */	li r8, 0
/* 80CFA820  4B 5B 11 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CFA824  48 00 00 44 */	b lbl_80CFA868
lbl_80CFA828:
/* 80CFA828  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008015D@ha */
/* 80CFA82C  38 03 01 5D */	addi r0, r3, 0x015D /* 0x0008015D@l */
/* 80CFA830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFA834  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CFA838  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CFA83C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CFA840  38 81 00 14 */	addi r4, r1, 0x14
/* 80CFA844  38 BA 04 A8 */	addi r5, r26, 0x4a8
/* 80CFA848  38 C0 00 00 */	li r6, 0
/* 80CFA84C  38 E0 00 00 */	li r7, 0
/* 80CFA850  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80CFA854  FC 40 08 90 */	fmr f2, f1
/* 80CFA858  C0 7D 00 78 */	lfs f3, 0x78(r29)
/* 80CFA85C  FC 80 18 90 */	fmr f4, f3
/* 80CFA860  39 00 00 00 */	li r8, 0
/* 80CFA864  4B 5B 11 20 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CFA868:
/* 80CFA868  2C 1F 00 04 */	cmpwi r31, 4
/* 80CFA86C  41 82 00 0C */	beq lbl_80CFA878
/* 80CFA870  2C 1F 00 06 */	cmpwi r31, 6
/* 80CFA874  40 82 00 24 */	bne lbl_80CFA898
lbl_80CFA878:
/* 80CFA878  88 7A 0A 64 */	lbz r3, 0xa64(r26)
/* 80CFA87C  88 1A 0A 69 */	lbz r0, 0xa69(r26)
/* 80CFA880  7C 03 00 40 */	cmplw r3, r0
/* 80CFA884  40 80 00 0C */	bge lbl_80CFA890
/* 80CFA888  98 1A 0A 67 */	stb r0, 0xa67(r26)
/* 80CFA88C  48 00 00 0C */	b lbl_80CFA898
lbl_80CFA890:
/* 80CFA890  38 03 00 01 */	addi r0, r3, 1
/* 80CFA894  98 1A 0A 67 */	stb r0, 0xa67(r26)
lbl_80CFA898:
/* 80CFA898  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80CFA89C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CFA8A0  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80CFA8A4  7D 89 03 A6 */	mtctr r12
/* 80CFA8A8  4E 80 04 21 */	bctrl 
/* 80CFA8AC  7C 7B 1B 78 */	mr r27, r3
/* 80CFA8B0  2C 1F 00 04 */	cmpwi r31, 4
/* 80CFA8B4  41 82 00 0C */	beq lbl_80CFA8C0
/* 80CFA8B8  2C 1F 00 06 */	cmpwi r31, 6
/* 80CFA8BC  40 82 01 28 */	bne lbl_80CFA9E4
lbl_80CFA8C0:
/* 80CFA8C0  88 7A 0A 64 */	lbz r3, 0xa64(r26)
/* 80CFA8C4  88 1A 0A 67 */	lbz r0, 0xa67(r26)
/* 80CFA8C8  7C 03 00 40 */	cmplw r3, r0
/* 80CFA8CC  40 82 01 18 */	bne lbl_80CFA9E4
/* 80CFA8D0  7F 43 D3 78 */	mr r3, r26
/* 80CFA8D4  48 00 0B 7D */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFA8D8  1C 03 00 50 */	mulli r0, r3, 0x50
/* 80CFA8DC  80 7A 0A 74 */	lwz r3, 0xa74(r26)
/* 80CFA8E0  7C 83 02 14 */	add r4, r3, r0
/* 80CFA8E4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80CFA8E8  D0 04 00 34 */	stfs f0, 0x34(r4)
/* 80CFA8EC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80CFA8F0  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 80CFA8F4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80CFA8F8  D0 04 00 3C */	stfs f0, 0x3c(r4)
/* 80CFA8FC  28 1B 00 00 */	cmplwi r27, 0
/* 80CFA900  40 82 00 14 */	bne lbl_80CFA914
/* 80CFA904  C0 3A 0A 90 */	lfs f1, 0xa90(r26)
/* 80CFA908  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80CFA90C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFA910  41 81 00 1C */	bgt lbl_80CFA92C
lbl_80CFA914:
/* 80CFA914  28 1B 00 00 */	cmplwi r27, 0
/* 80CFA918  41 82 00 90 */	beq lbl_80CFA9A8
/* 80CFA91C  C0 3A 0A 90 */	lfs f1, 0xa90(r26)
/* 80CFA920  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80CFA924  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFA928  40 81 00 80 */	ble lbl_80CFA9A8
lbl_80CFA92C:
/* 80CFA92C  88 7A 0A 68 */	lbz r3, 0xa68(r26)
/* 80CFA930  38 03 00 01 */	addi r0, r3, 1
/* 80CFA934  98 1A 0A 68 */	stb r0, 0xa68(r26)
/* 80CFA938  88 1A 0A 68 */	lbz r0, 0xa68(r26)
/* 80CFA93C  28 00 00 0F */	cmplwi r0, 0xf
/* 80CFA940  40 81 03 F8 */	ble lbl_80CFAD38
/* 80CFA944  7F 83 E3 78 */	mr r3, r28
/* 80CFA948  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80CFA94C  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80CFA950  7D 89 03 A6 */	mtctr r12
/* 80CFA954  4E 80 04 21 */	bctrl 
/* 80CFA958  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 80CFA95C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFA960  40 81 03 D8 */	ble lbl_80CFAD38
/* 80CFA964  7F 83 E3 78 */	mr r3, r28
/* 80CFA968  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80CFA96C  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80CFA970  7D 89 03 A6 */	mtctr r12
/* 80CFA974  4E 80 04 21 */	bctrl 
/* 80CFA978  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80CFA97C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFA980  40 80 03 B8 */	bge lbl_80CFAD38
/* 80CFA984  88 7A 0A 67 */	lbz r3, 0xa67(r26)
/* 80CFA988  88 1A 0A 65 */	lbz r0, 0xa65(r26)
/* 80CFA98C  7C 03 00 40 */	cmplw r3, r0
/* 80CFA990  40 80 00 0C */	bge lbl_80CFA99C
/* 80CFA994  38 03 00 01 */	addi r0, r3, 1
/* 80CFA998  98 1A 0A 67 */	stb r0, 0xa67(r26)
lbl_80CFA99C:
/* 80CFA99C  38 00 00 00 */	li r0, 0
/* 80CFA9A0  98 1A 0A 68 */	stb r0, 0xa68(r26)
/* 80CFA9A4  48 00 03 94 */	b lbl_80CFAD38
lbl_80CFA9A8:
/* 80CFA9A8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80CFA9AC  C0 1A 0A 90 */	lfs f0, 0xa90(r26)
/* 80CFA9B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CFA9B4  41 82 00 24 */	beq lbl_80CFA9D8
/* 80CFA9B8  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80CFA9BC  FC 00 02 10 */	fabs f0, f0
/* 80CFA9C0  FC 20 00 18 */	frsp f1, f0
/* 80CFA9C4  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80CFA9C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFA9CC  40 80 00 0C */	bge lbl_80CFA9D8
/* 80CFA9D0  38 00 00 01 */	li r0, 1
/* 80CFA9D4  98 1A 0A 9C */	stb r0, 0xa9c(r26)
lbl_80CFA9D8:
/* 80CFA9D8  38 00 00 00 */	li r0, 0
/* 80CFA9DC  98 1A 0A 68 */	stb r0, 0xa68(r26)
/* 80CFA9E0  48 00 03 58 */	b lbl_80CFAD38
lbl_80CFA9E4:
/* 80CFA9E4  88 7A 0A 64 */	lbz r3, 0xa64(r26)
/* 80CFA9E8  88 1A 0A 65 */	lbz r0, 0xa65(r26)
/* 80CFA9EC  7C 03 00 40 */	cmplw r3, r0
/* 80CFA9F0  40 82 03 48 */	bne lbl_80CFAD38
/* 80CFA9F4  7F 43 D3 78 */	mr r3, r26
/* 80CFA9F8  48 00 0A 59 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFA9FC  1C 03 00 50 */	mulli r0, r3, 0x50
/* 80CFAA00  80 7A 0A 74 */	lwz r3, 0xa74(r26)
/* 80CFAA04  7C 83 02 14 */	add r4, r3, r0
/* 80CFAA08  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80CFAA0C  D0 04 00 34 */	stfs f0, 0x34(r4)
/* 80CFAA10  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80CFAA14  D0 04 00 38 */	stfs f0, 0x38(r4)
/* 80CFAA18  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80CFAA1C  D0 04 00 3C */	stfs f0, 0x3c(r4)
/* 80CFAA20  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80CFAA24  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CFAA28  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80CFAA2C  7D 89 03 A6 */	mtctr r12
/* 80CFAA30  4E 80 04 21 */	bctrl 
/* 80CFAA34  2C 03 00 00 */	cmpwi r3, 0
/* 80CFAA38  40 82 00 14 */	bne lbl_80CFAA4C
/* 80CFAA3C  C0 3A 0A 90 */	lfs f1, 0xa90(r26)
/* 80CFAA40  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80CFAA44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFAA48  41 81 00 30 */	bgt lbl_80CFAA78
lbl_80CFAA4C:
/* 80CFAA4C  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80CFAA50  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CFAA54  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80CFAA58  7D 89 03 A6 */	mtctr r12
/* 80CFAA5C  4E 80 04 21 */	bctrl 
/* 80CFAA60  2C 03 00 00 */	cmpwi r3, 0
/* 80CFAA64  41 82 01 A4 */	beq lbl_80CFAC08
/* 80CFAA68  C0 3A 0A 90 */	lfs f1, 0xa90(r26)
/* 80CFAA6C  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80CFAA70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFAA74  40 81 01 94 */	ble lbl_80CFAC08
lbl_80CFAA78:
/* 80CFAA78  88 7A 0A 68 */	lbz r3, 0xa68(r26)
/* 80CFAA7C  38 03 00 01 */	addi r0, r3, 1
/* 80CFAA80  98 1A 0A 68 */	stb r0, 0xa68(r26)
/* 80CFAA84  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80CFAA88  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CFAA8C  28 04 00 FF */	cmplwi r4, 0xff
/* 80CFAA90  41 82 02 A8 */	beq lbl_80CFAD38
/* 80CFAA94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFAA98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFAA9C  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80CFAAA0  7C 05 07 74 */	extsb r5, r0
/* 80CFAAA4  4B 33 A8 BC */	b isSwitch__10dSv_info_cCFii
/* 80CFAAA8  2C 03 00 00 */	cmpwi r3, 0
/* 80CFAAAC  40 82 02 8C */	bne lbl_80CFAD38
/* 80CFAAB0  88 1A 0A 68 */	lbz r0, 0xa68(r26)
/* 80CFAAB4  28 00 00 00 */	cmplwi r0, 0
/* 80CFAAB8  41 82 02 80 */	beq lbl_80CFAD38
/* 80CFAABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFAAC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFAAC4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CFAAC8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CFAACC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CFAAD0  41 82 01 00 */	beq lbl_80CFABD0
/* 80CFAAD4  7F 83 E3 78 */	mr r3, r28
/* 80CFAAD8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80CFAADC  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80CFAAE0  7D 89 03 A6 */	mtctr r12
/* 80CFAAE4  4E 80 04 21 */	bctrl 
/* 80CFAAE8  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 80CFAAEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFAAF0  40 81 02 48 */	ble lbl_80CFAD38
/* 80CFAAF4  7F 83 E3 78 */	mr r3, r28
/* 80CFAAF8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80CFAAFC  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80CFAB00  7D 89 03 A6 */	mtctr r12
/* 80CFAB04  4E 80 04 21 */	bctrl 
/* 80CFAB08  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80CFAB0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFAB10  40 80 02 28 */	bge lbl_80CFAD38
/* 80CFAB14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFAB18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFAB1C  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80CFAB20  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CFAB24  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80CFAB28  7C 05 07 74 */	extsb r5, r0
/* 80CFAB2C  4B 33 A6 D4 */	b onSwitch__10dSv_info_cFii
/* 80CFAB30  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80CFAB34  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CFAB38  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80CFAB3C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CFAB40  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CFAB44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFAB48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFAB4C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CFAB50  38 80 00 04 */	li r4, 4
/* 80CFAB54  38 A0 00 1F */	li r5, 0x1f
/* 80CFAB58  38 C1 00 30 */	addi r6, r1, 0x30
/* 80CFAB5C  4B 37 4E C8 */	b StartShock__12dVibration_cFii4cXyz
/* 80CFAB60  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80CFAB64  7C 00 07 75 */	extsb. r0, r0
/* 80CFAB68  41 82 00 24 */	beq lbl_80CFAB8C
/* 80CFAB6C  2C 00 00 02 */	cmpwi r0, 2
/* 80CFAB70  41 82 00 1C */	beq lbl_80CFAB8C
/* 80CFAB74  2C 00 00 05 */	cmpwi r0, 5
/* 80CFAB78  41 82 00 14 */	beq lbl_80CFAB8C
/* 80CFAB7C  2C 00 00 09 */	cmpwi r0, 9
/* 80CFAB80  41 82 00 0C */	beq lbl_80CFAB8C
/* 80CFAB84  2C 00 00 0D */	cmpwi r0, 0xd
/* 80CFAB88  40 82 01 B0 */	bne lbl_80CFAD38
lbl_80CFAB8C:
/* 80CFAB8C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008015E@ha */
/* 80CFAB90  38 03 01 5E */	addi r0, r3, 0x015E /* 0x0008015E@l */
/* 80CFAB94  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CFAB98  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CFAB9C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CFABA0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CFABA4  38 81 00 10 */	addi r4, r1, 0x10
/* 80CFABA8  38 BA 04 A8 */	addi r5, r26, 0x4a8
/* 80CFABAC  38 C0 00 00 */	li r6, 0
/* 80CFABB0  38 E0 00 00 */	li r7, 0
/* 80CFABB4  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80CFABB8  FC 40 08 90 */	fmr f2, f1
/* 80CFABBC  C0 7D 00 78 */	lfs f3, 0x78(r29)
/* 80CFABC0  FC 80 18 90 */	fmr f4, f3
/* 80CFABC4  39 00 00 00 */	li r8, 0
/* 80CFABC8  4B 5B 0D BC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CFABCC  48 00 01 6C */	b lbl_80CFAD38
lbl_80CFABD0:
/* 80CFABD0  7F 83 E3 78 */	mr r3, r28
/* 80CFABD4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80CFABD8  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80CFABDC  7D 89 03 A6 */	mtctr r12
/* 80CFABE0  4E 80 04 21 */	bctrl 
/* 80CFABE4  C0 1D 00 94 */	lfs f0, 0x94(r29)
/* 80CFABE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFABEC  40 80 01 4C */	bge lbl_80CFAD38
/* 80CFABF0  80 1C 05 8C */	lwz r0, 0x58c(r28)
/* 80CFABF4  64 00 01 00 */	oris r0, r0, 0x100
/* 80CFABF8  90 1C 05 8C */	stw r0, 0x58c(r28)
/* 80CFABFC  38 00 00 1E */	li r0, 0x1e
/* 80CFAC00  98 1A 0A 6D */	stb r0, 0xa6d(r26)
/* 80CFAC04  48 00 01 34 */	b lbl_80CFAD38
lbl_80CFAC08:
/* 80CFAC08  88 1A 0A 6D */	lbz r0, 0xa6d(r26)
/* 80CFAC0C  28 00 00 00 */	cmplwi r0, 0
/* 80CFAC10  41 82 00 E8 */	beq lbl_80CFACF8
/* 80CFAC14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFAC18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFAC1C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CFAC20  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CFAC24  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CFAC28  40 82 00 D0 */	bne lbl_80CFACF8
/* 80CFAC2C  38 7A 0A 6D */	addi r3, r26, 0xa6d
/* 80CFAC30  48 00 0A 6D */	bl func_80CFB69C
/* 80CFAC34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFAC38  40 82 01 00 */	bne lbl_80CFAD38
/* 80CFAC3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFAC40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFAC44  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80CFAC48  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CFAC4C  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80CFAC50  7C 05 07 74 */	extsb r5, r0
/* 80CFAC54  4B 33 A5 AC */	b onSwitch__10dSv_info_cFii
/* 80CFAC58  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80CFAC5C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CFAC60  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80CFAC64  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CFAC68  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CFAC6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFAC70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFAC74  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CFAC78  38 80 00 04 */	li r4, 4
/* 80CFAC7C  38 A0 00 1F */	li r5, 0x1f
/* 80CFAC80  38 C1 00 24 */	addi r6, r1, 0x24
/* 80CFAC84  4B 37 4D A0 */	b StartShock__12dVibration_cFii4cXyz
/* 80CFAC88  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80CFAC8C  7C 00 07 75 */	extsb. r0, r0
/* 80CFAC90  41 82 00 24 */	beq lbl_80CFACB4
/* 80CFAC94  2C 00 00 02 */	cmpwi r0, 2
/* 80CFAC98  41 82 00 1C */	beq lbl_80CFACB4
/* 80CFAC9C  2C 00 00 05 */	cmpwi r0, 5
/* 80CFACA0  41 82 00 14 */	beq lbl_80CFACB4
/* 80CFACA4  2C 00 00 09 */	cmpwi r0, 9
/* 80CFACA8  41 82 00 0C */	beq lbl_80CFACB4
/* 80CFACAC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80CFACB0  40 82 00 88 */	bne lbl_80CFAD38
lbl_80CFACB4:
/* 80CFACB4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008015E@ha */
/* 80CFACB8  38 03 01 5E */	addi r0, r3, 0x015E /* 0x0008015E@l */
/* 80CFACBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CFACC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CFACC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CFACC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CFACCC  38 81 00 0C */	addi r4, r1, 0xc
/* 80CFACD0  38 BA 04 A8 */	addi r5, r26, 0x4a8
/* 80CFACD4  38 C0 00 00 */	li r6, 0
/* 80CFACD8  38 E0 00 00 */	li r7, 0
/* 80CFACDC  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80CFACE0  FC 40 08 90 */	fmr f2, f1
/* 80CFACE4  C0 7D 00 78 */	lfs f3, 0x78(r29)
/* 80CFACE8  FC 80 18 90 */	fmr f4, f3
/* 80CFACEC  39 00 00 00 */	li r8, 0
/* 80CFACF0  4B 5B 0C 94 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CFACF4  48 00 00 44 */	b lbl_80CFAD38
lbl_80CFACF8:
/* 80CFACF8  38 00 00 00 */	li r0, 0
/* 80CFACFC  98 1A 0A 68 */	stb r0, 0xa68(r26)
/* 80CFAD00  98 1A 0A 6D */	stb r0, 0xa6d(r26)
/* 80CFAD04  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80CFAD08  7C 00 07 74 */	extsb r0, r0
/* 80CFAD0C  2C 00 00 04 */	cmpwi r0, 4
/* 80CFAD10  41 82 00 0C */	beq lbl_80CFAD1C
/* 80CFAD14  2C 00 00 06 */	cmpwi r0, 6
/* 80CFAD18  40 82 00 20 */	bne lbl_80CFAD38
lbl_80CFAD1C:
/* 80CFAD1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFAD20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFAD24  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80CFAD28  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CFAD2C  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80CFAD30  7C 05 07 74 */	extsb r5, r0
/* 80CFAD34  4B 33 A5 7C */	b offSwitch__10dSv_info_cFii
lbl_80CFAD38:
/* 80CFAD38  39 61 00 60 */	addi r11, r1, 0x60
/* 80CFAD3C  4B 66 74 E0 */	b _restgpr_26
/* 80CFAD40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CFAD44  7C 08 03 A6 */	mtlr r0
/* 80CFAD48  38 21 00 60 */	addi r1, r1, 0x60
/* 80CFAD4C  4E 80 00 20 */	blr 
