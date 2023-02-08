lbl_80BEAAE4:
/* 80BEAAE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BEAAE8  7C 08 02 A6 */	mflr r0
/* 80BEAAEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BEAAF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BEAAF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BEAAF8  7C 7E 1B 78 */	mr r30, r3
/* 80BEAAFC  3C 60 80 BF */	lis r3, lit_3656@ha /* 0x80BEB4C4@ha */
/* 80BEAB00  3B E3 B4 C4 */	addi r31, r3, lit_3656@l /* 0x80BEB4C4@l */
/* 80BEAB04  C0 5E 04 F0 */	lfs f2, 0x4f0(r30)
/* 80BEAB08  38 7E 09 48 */	addi r3, r30, 0x948
/* 80BEAB0C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BEAB10  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80BEAB14  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BEAB18  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80BEAB1C  4B 68 5C 25 */	bl cLib_chaseF__FPfff
/* 80BEAB20  A0 7E 09 78 */	lhz r3, 0x978(r30)
/* 80BEAB24  28 03 00 00 */	cmplwi r3, 0
/* 80BEAB28  40 82 00 10 */	bne lbl_80BEAB38
/* 80BEAB2C  7F C3 F3 78 */	mr r3, r30
/* 80BEAB30  48 00 01 39 */	bl actionOnInit__15daObjFPillar2_cFv
/* 80BEAB34  48 00 00 50 */	b lbl_80BEAB84
lbl_80BEAB38:
/* 80BEAB38  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BEAB3C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BEAB40  28 04 00 FF */	cmplwi r4, 0xff
/* 80BEAB44  41 82 00 38 */	beq lbl_80BEAB7C
/* 80BEAB48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BEAB4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BEAB50  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BEAB54  7C 05 07 74 */	extsb r5, r0
/* 80BEAB58  4B 44 A8 09 */	bl isSwitch__10dSv_info_cCFii
/* 80BEAB5C  2C 03 00 00 */	cmpwi r3, 0
/* 80BEAB60  41 82 00 10 */	beq lbl_80BEAB70
/* 80BEAB64  7F C3 F3 78 */	mr r3, r30
/* 80BEAB68  4B FF FC A1 */	bl actionOffInit__15daObjFPillar2_cFv
/* 80BEAB6C  48 00 00 18 */	b lbl_80BEAB84
lbl_80BEAB70:
/* 80BEAB70  38 00 00 00 */	li r0, 0
/* 80BEAB74  B0 1E 09 78 */	sth r0, 0x978(r30)
/* 80BEAB78  48 00 00 0C */	b lbl_80BEAB84
lbl_80BEAB7C:
/* 80BEAB7C  38 03 FF FF */	addi r0, r3, -1
/* 80BEAB80  B0 1E 09 78 */	sth r0, 0x978(r30)
lbl_80BEAB84:
/* 80BEAB84  A0 1E 09 7A */	lhz r0, 0x97a(r30)
/* 80BEAB88  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BEAB8C  2C 00 00 01 */	cmpwi r0, 1
/* 80BEAB90  41 82 00 14 */	beq lbl_80BEABA4
/* 80BEAB94  40 80 00 BC */	bge lbl_80BEAC50
/* 80BEAB98  2C 00 00 00 */	cmpwi r0, 0
/* 80BEAB9C  40 80 00 50 */	bge lbl_80BEABEC
/* 80BEABA0  48 00 00 B0 */	b lbl_80BEAC50
lbl_80BEABA4:
/* 80BEABA4  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80BEABA8  D0 1E 09 DC */	stfs f0, 0x9dc(r30)
/* 80BEABAC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80BEABB0  D0 1E 09 E0 */	stfs f0, 0x9e0(r30)
/* 80BEABB4  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80BEABB8  D0 1E 09 E4 */	stfs f0, 0x9e4(r30)
/* 80BEABBC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080122@ha */
/* 80BEABC0  38 03 01 22 */	addi r0, r3, 0x0122 /* 0x00080122@l */
/* 80BEABC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BEABC8  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 80BEABCC  38 81 00 0C */	addi r4, r1, 0xc
/* 80BEABD0  38 A0 00 00 */	li r5, 0
/* 80BEABD4  38 C0 FF FF */	li r6, -1
/* 80BEABD8  81 9E 09 CC */	lwz r12, 0x9cc(r30)
/* 80BEABDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80BEABE0  7D 89 03 A6 */	mtctr r12
/* 80BEABE4  4E 80 04 21 */	bctrl 
/* 80BEABE8  48 00 00 68 */	b lbl_80BEAC50
lbl_80BEABEC:
/* 80BEABEC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80BEABF0  D0 1E 09 DC */	stfs f0, 0x9dc(r30)
/* 80BEABF4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80BEABF8  D0 1E 09 E0 */	stfs f0, 0x9e0(r30)
/* 80BEABFC  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80BEAC00  D0 1E 09 E4 */	stfs f0, 0x9e4(r30)
/* 80BEAC04  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BEAC08  7C 03 07 74 */	extsb r3, r0
/* 80BEAC0C  4B 44 24 61 */	bl dComIfGp_getReverb__Fi
/* 80BEAC10  7C 67 1B 78 */	mr r7, r3
/* 80BEAC14  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080125@ha */
/* 80BEAC18  38 03 01 25 */	addi r0, r3, 0x0125 /* 0x00080125@l */
/* 80BEAC1C  90 01 00 08 */	stw r0, 8(r1)
/* 80BEAC20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BEAC24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BEAC28  80 63 00 00 */	lwz r3, 0(r3)
/* 80BEAC2C  38 81 00 08 */	addi r4, r1, 8
/* 80BEAC30  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BEAC34  38 C0 00 00 */	li r6, 0
/* 80BEAC38  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BEAC3C  FC 40 08 90 */	fmr f2, f1
/* 80BEAC40  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80BEAC44  FC 80 18 90 */	fmr f4, f3
/* 80BEAC48  39 00 00 00 */	li r8, 0
/* 80BEAC4C  4B 6C 18 C1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BEAC50:
/* 80BEAC50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BEAC54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BEAC58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BEAC5C  7C 08 03 A6 */	mtlr r0
/* 80BEAC60  38 21 00 20 */	addi r1, r1, 0x20
/* 80BEAC64  4E 80 00 20 */	blr 
