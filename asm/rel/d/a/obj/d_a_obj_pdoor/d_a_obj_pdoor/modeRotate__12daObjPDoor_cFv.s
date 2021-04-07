lbl_80CAA6B4:
/* 80CAA6B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CAA6B8  7C 08 02 A6 */	mflr r0
/* 80CAA6BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CAA6C0  39 61 00 40 */	addi r11, r1, 0x40
/* 80CAA6C4  4B 6B 7B 19 */	bl _savegpr_29
/* 80CAA6C8  7C 7F 1B 78 */	mr r31, r3
/* 80CAA6CC  3C 60 80 CB */	lis r3, lit_3695@ha /* 0x80CAAB20@ha */
/* 80CAA6D0  3B C3 AB 20 */	addi r30, r3, lit_3695@l /* 0x80CAAB20@l */
/* 80CAA6D4  A8 7F 05 B8 */	lha r3, 0x5b8(r31)
/* 80CAA6D8  38 03 00 01 */	addi r0, r3, 1
/* 80CAA6DC  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80CAA6E0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80CAA6E4  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80CAA6E8  7C 00 07 74 */	extsb r0, r0
/* 80CAA6EC  54 03 70 22 */	slwi r3, r0, 0xe
/* 80CAA6F0  38 00 00 03 */	li r0, 3
/* 80CAA6F4  7C 03 03 D6 */	divw r0, r3, r0
/* 80CAA6F8  7C 04 02 14 */	add r0, r4, r0
/* 80CAA6FC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80CAA700  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 80CAA704  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 80CAA708  C8 3E 00 08 */	lfd f1, 8(r30)
/* 80CAA70C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CAA710  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAA714  3C 00 43 30 */	lis r0, 0x4330
/* 80CAA718  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CAA71C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CAA720  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CAA724  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80CAA728  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CAA72C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CAA730  FC 00 00 1E */	fctiwz f0, f0
/* 80CAA734  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80CAA738  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80CAA73C  B0 1F 05 BA */	sth r0, 0x5ba(r31)
/* 80CAA740  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80CAA744  2C 00 00 01 */	cmpwi r0, 1
/* 80CAA748  40 82 00 10 */	bne lbl_80CAA758
/* 80CAA74C  A8 1F 05 BA */	lha r0, 0x5ba(r31)
/* 80CAA750  7C 00 00 D0 */	neg r0, r0
/* 80CAA754  B0 1F 05 BA */	sth r0, 0x5ba(r31)
lbl_80CAA758:
/* 80CAA758  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80CAA75C  A8 1F 05 BA */	lha r0, 0x5ba(r31)
/* 80CAA760  7C 03 02 14 */	add r0, r3, r0
/* 80CAA764  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80CAA768  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CAA76C  7C 03 07 74 */	extsb r3, r0
/* 80CAA770  4B 38 28 FD */	bl dComIfGp_getReverb__Fi
/* 80CAA774  7C 67 1B 78 */	mr r7, r3
/* 80CAA778  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008031F@ha */
/* 80CAA77C  38 03 03 1F */	addi r0, r3, 0x031F /* 0x0008031F@l */
/* 80CAA780  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CAA784  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CAA788  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CAA78C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAA790  38 81 00 0C */	addi r4, r1, 0xc
/* 80CAA794  3B BF 05 38 */	addi r29, r31, 0x538
/* 80CAA798  7F A5 EB 78 */	mr r5, r29
/* 80CAA79C  38 C0 00 00 */	li r6, 0
/* 80CAA7A0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80CAA7A4  FC 40 08 90 */	fmr f2, f1
/* 80CAA7A8  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 80CAA7AC  FC 80 18 90 */	fmr f4, f3
/* 80CAA7B0  39 00 00 00 */	li r8, 0
/* 80CAA7B4  4B 60 1D 59 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CAA7B8  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 80CAA7BC  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80CAA7C0  40 82 01 90 */	bne lbl_80CAA950
/* 80CAA7C4  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80CAA7C8  2C 00 00 00 */	cmpwi r0, 0
/* 80CAA7CC  40 82 00 14 */	bne lbl_80CAA7E0
/* 80CAA7D0  88 7F 05 AC */	lbz r3, 0x5ac(r31)
/* 80CAA7D4  38 03 00 01 */	addi r0, r3, 1
/* 80CAA7D8  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80CAA7DC  48 00 00 10 */	b lbl_80CAA7EC
lbl_80CAA7E0:
/* 80CAA7E0  88 7F 05 AC */	lbz r3, 0x5ac(r31)
/* 80CAA7E4  38 03 FF FF */	addi r0, r3, -1
/* 80CAA7E8  98 1F 05 AC */	stb r0, 0x5ac(r31)
lbl_80CAA7EC:
/* 80CAA7EC  88 7F 05 AC */	lbz r3, 0x5ac(r31)
/* 80CAA7F0  7C 60 07 74 */	extsb r0, r3
/* 80CAA7F4  2C 00 00 01 */	cmpwi r0, 1
/* 80CAA7F8  40 82 00 40 */	bne lbl_80CAA838
/* 80CAA7FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA800  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA804  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAA808  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CAA80C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAA810  7C 05 07 74 */	extsb r5, r0
/* 80CAA814  4B 38 A9 ED */	bl onSwitch__10dSv_info_cFii
/* 80CAA818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA81C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA820  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAA824  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CAA828  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAA82C  7C 05 07 74 */	extsb r5, r0
/* 80CAA830  4B 38 AA 81 */	bl offSwitch__10dSv_info_cFii
/* 80CAA834  48 00 00 88 */	b lbl_80CAA8BC
lbl_80CAA838:
/* 80CAA838  2C 00 FF FF */	cmpwi r0, -1
/* 80CAA83C  40 82 00 40 */	bne lbl_80CAA87C
/* 80CAA840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA848  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAA84C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CAA850  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAA854  7C 05 07 74 */	extsb r5, r0
/* 80CAA858  4B 38 AA 59 */	bl offSwitch__10dSv_info_cFii
/* 80CAA85C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA860  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA864  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAA868  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CAA86C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAA870  7C 05 07 74 */	extsb r5, r0
/* 80CAA874  4B 38 A9 8D */	bl onSwitch__10dSv_info_cFii
/* 80CAA878  48 00 00 44 */	b lbl_80CAA8BC
lbl_80CAA87C:
/* 80CAA87C  7C 60 07 75 */	extsb. r0, r3
/* 80CAA880  40 82 00 3C */	bne lbl_80CAA8BC
/* 80CAA884  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA888  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA88C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAA890  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CAA894  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAA898  7C 05 07 74 */	extsb r5, r0
/* 80CAA89C  4B 38 AA 15 */	bl offSwitch__10dSv_info_cFii
/* 80CAA8A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA8A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA8A8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAA8AC  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CAA8B0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAA8B4  7C 05 07 74 */	extsb r5, r0
/* 80CAA8B8  4B 38 A9 F9 */	bl offSwitch__10dSv_info_cFii
lbl_80CAA8BC:
/* 80CAA8BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA8C0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA8C4  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80CAA8C8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80CAA8CC  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80CAA8D0  90 03 05 70 */	stw r0, 0x570(r3)
/* 80CAA8D4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CAA8D8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CAA8DC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80CAA8E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CAA8E4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CAA8E8  38 64 5B D4 */	addi r3, r4, 0x5bd4
/* 80CAA8EC  38 80 00 08 */	li r4, 8
/* 80CAA8F0  38 A0 00 1F */	li r5, 0x1f
/* 80CAA8F4  38 C1 00 10 */	addi r6, r1, 0x10
/* 80CAA8F8  4B 3C 51 2D */	bl StartShock__12dVibration_cFii4cXyz
/* 80CAA8FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CAA900  7C 03 07 74 */	extsb r3, r0
/* 80CAA904  4B 38 27 69 */	bl dComIfGp_getReverb__Fi
/* 80CAA908  7C 67 1B 78 */	mr r7, r3
/* 80CAA90C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080320@ha */
/* 80CAA910  38 03 03 20 */	addi r0, r3, 0x0320 /* 0x00080320@l */
/* 80CAA914  90 01 00 08 */	stw r0, 8(r1)
/* 80CAA918  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CAA91C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CAA920  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAA924  38 81 00 08 */	addi r4, r1, 8
/* 80CAA928  7F A5 EB 78 */	mr r5, r29
/* 80CAA92C  38 C0 00 00 */	li r6, 0
/* 80CAA930  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80CAA934  FC 40 08 90 */	fmr f2, f1
/* 80CAA938  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 80CAA93C  FC 80 18 90 */	fmr f4, f3
/* 80CAA940  39 00 00 00 */	li r8, 0
/* 80CAA944  4B 60 10 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CAA948  7F E3 FB 78 */	mr r3, r31
/* 80CAA94C  4B FF F9 D1 */	bl init_modeWait__12daObjPDoor_cFv
lbl_80CAA950:
/* 80CAA950  39 61 00 40 */	addi r11, r1, 0x40
/* 80CAA954  4B 6B 78 D5 */	bl _restgpr_29
/* 80CAA958  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CAA95C  7C 08 03 A6 */	mtlr r0
/* 80CAA960  38 21 00 40 */	addi r1, r1, 0x40
/* 80CAA964  4E 80 00 20 */	blr 
