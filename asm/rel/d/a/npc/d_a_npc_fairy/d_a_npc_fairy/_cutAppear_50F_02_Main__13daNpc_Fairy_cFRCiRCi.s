lbl_809B662C:
/* 809B662C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B6630  7C 08 02 A6 */	mflr r0
/* 809B6634  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B6638  39 61 00 30 */	addi r11, r1, 0x30
/* 809B663C  4B 9A BB A0 */	b _savegpr_29
/* 809B6640  7C 7E 1B 78 */	mr r30, r3
/* 809B6644  3C C0 80 9C */	lis r6, m__19daNpc_Fairy_Param_c@ha
/* 809B6648  3B A6 92 E4 */	addi r29, r6, m__19daNpc_Fairy_Param_c@l
/* 809B664C  3B E0 00 00 */	li r31, 0
/* 809B6650  80 DD 01 C8 */	lwz r6, 0x1c8(r29)
/* 809B6654  80 1D 01 CC */	lwz r0, 0x1cc(r29)
/* 809B6658  90 C1 00 0C */	stw r6, 0xc(r1)
/* 809B665C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809B6660  80 84 00 00 */	lwz r4, 0(r4)
/* 809B6664  38 04 FF F6 */	addi r0, r4, -10
/* 809B6668  28 00 00 1E */	cmplwi r0, 0x1e
/* 809B666C  41 81 01 A8 */	bgt lbl_809B6814
/* 809B6670  3C 80 80 9C */	lis r4, lit_6157@ha
/* 809B6674  38 84 9D B0 */	addi r4, r4, lit_6157@l
/* 809B6678  54 00 10 3A */	slwi r0, r0, 2
/* 809B667C  7C 04 00 2E */	lwzx r0, r4, r0
/* 809B6680  7C 09 03 A6 */	mtctr r0
/* 809B6684  4E 80 04 20 */	bctr 
lbl_809B6688:
/* 809B6688  A8 7E 0F 90 */	lha r3, 0xf90(r30)
/* 809B668C  38 03 FF FF */	addi r0, r3, -1
/* 809B6690  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B6694  7C 00 07 35 */	extsh. r0, r0
/* 809B6698  41 81 01 7C */	bgt lbl_809B6814
/* 809B669C  38 60 00 0B */	li r3, 0xb
/* 809B66A0  4B 7F 21 44 */	b dKy_change_colpat__FUc
/* 809B66A4  3B E0 00 01 */	li r31, 1
/* 809B66A8  48 00 01 6C */	b lbl_809B6814
lbl_809B66AC:
/* 809B66AC  A8 7E 0F 90 */	lha r3, 0xf90(r30)
/* 809B66B0  38 03 FF FF */	addi r0, r3, -1
/* 809B66B4  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B66B8  7C 00 07 35 */	extsh. r0, r0
/* 809B66BC  41 81 01 58 */	bgt lbl_809B6814
/* 809B66C0  3B E0 00 01 */	li r31, 1
/* 809B66C4  48 00 01 50 */	b lbl_809B6814
lbl_809B66C8:
/* 809B66C8  80 05 00 00 */	lwz r0, 0(r5)
/* 809B66CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B66D0  38 81 00 0C */	addi r4, r1, 0xc
/* 809B66D4  38 A0 00 00 */	li r5, 0
/* 809B66D8  38 C0 00 00 */	li r6, 0
/* 809B66DC  38 E0 00 00 */	li r7, 0
/* 809B66E0  4B 79 55 98 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B66E4  A8 7E 0F 90 */	lha r3, 0xf90(r30)
/* 809B66E8  38 03 FF FF */	addi r0, r3, -1
/* 809B66EC  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B66F0  7C 00 07 35 */	extsh. r0, r0
/* 809B66F4  41 81 01 20 */	bgt lbl_809B6814
/* 809B66F8  3B E0 00 01 */	li r31, 1
/* 809B66FC  48 00 01 18 */	b lbl_809B6814
lbl_809B6700:
/* 809B6700  80 05 00 00 */	lwz r0, 0(r5)
/* 809B6704  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B6708  38 81 00 0C */	addi r4, r1, 0xc
/* 809B670C  38 A0 00 01 */	li r5, 1
/* 809B6710  38 C0 00 00 */	li r6, 0
/* 809B6714  38 E0 00 00 */	li r7, 0
/* 809B6718  4B 79 55 60 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B671C  2C 03 00 00 */	cmpwi r3, 0
/* 809B6720  41 82 00 F4 */	beq lbl_809B6814
/* 809B6724  3B E0 00 01 */	li r31, 1
/* 809B6728  48 00 00 EC */	b lbl_809B6814
lbl_809B672C:
/* 809B672C  80 05 00 00 */	lwz r0, 0(r5)
/* 809B6730  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B6734  38 81 00 0C */	addi r4, r1, 0xc
/* 809B6738  38 A0 00 00 */	li r5, 0
/* 809B673C  38 C0 00 00 */	li r6, 0
/* 809B6740  38 E0 00 00 */	li r7, 0
/* 809B6744  4B 79 55 34 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B6748  2C 03 00 00 */	cmpwi r3, 0
/* 809B674C  41 82 00 C8 */	beq lbl_809B6814
/* 809B6750  3B E0 00 01 */	li r31, 1
/* 809B6754  48 00 00 C0 */	b lbl_809B6814
lbl_809B6758:
/* 809B6758  80 05 00 00 */	lwz r0, 0(r5)
/* 809B675C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B6760  38 81 00 0C */	addi r4, r1, 0xc
/* 809B6764  38 A0 00 00 */	li r5, 0
/* 809B6768  38 C0 00 00 */	li r6, 0
/* 809B676C  38 E0 00 00 */	li r7, 0
/* 809B6770  4B 79 55 08 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B6774  2C 03 00 00 */	cmpwi r3, 0
/* 809B6778  41 82 00 9C */	beq lbl_809B6814
/* 809B677C  3B E0 00 01 */	li r31, 1
/* 809B6780  48 00 00 94 */	b lbl_809B6814
lbl_809B6784:
/* 809B6784  80 05 00 00 */	lwz r0, 0(r5)
/* 809B6788  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B678C  38 81 00 0C */	addi r4, r1, 0xc
/* 809B6790  38 A0 00 00 */	li r5, 0
/* 809B6794  38 C0 00 00 */	li r6, 0
/* 809B6798  38 E0 00 00 */	li r7, 0
/* 809B679C  4B 79 54 DC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B67A0  2C 03 00 00 */	cmpwi r3, 0
/* 809B67A4  41 82 00 70 */	beq lbl_809B6814
/* 809B67A8  3B E0 00 01 */	li r31, 1
/* 809B67AC  48 00 00 68 */	b lbl_809B6814
lbl_809B67B0:
/* 809B67B0  38 00 00 9B */	li r0, 0x9b
/* 809B67B4  90 01 00 08 */	stw r0, 8(r1)
/* 809B67B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B67BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B67C0  80 63 00 00 */	lwz r3, 0(r3)
/* 809B67C4  38 81 00 08 */	addi r4, r1, 8
/* 809B67C8  38 A0 00 00 */	li r5, 0
/* 809B67CC  38 C0 00 00 */	li r6, 0
/* 809B67D0  38 E0 00 00 */	li r7, 0
/* 809B67D4  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 809B67D8  FC 40 08 90 */	fmr f2, f1
/* 809B67DC  C0 7D 00 E8 */	lfs f3, 0xe8(r29)
/* 809B67E0  FC 80 18 90 */	fmr f4, f3
/* 809B67E4  39 00 00 00 */	li r8, 0
/* 809B67E8  4B 8F 51 9C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809B67EC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809B67F0  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 809B67F4  C0 3D 00 E0 */	lfs f1, 0xe0(r29)
/* 809B67F8  38 80 00 00 */	li r4, 0
/* 809B67FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809B6800  7C 05 07 74 */	extsb r5, r0
/* 809B6804  38 C0 00 00 */	li r6, 0
/* 809B6808  38 E0 FF FF */	li r7, -1
/* 809B680C  4B 67 09 64 */	b dStage_changeScene__FifUlScsi
/* 809B6810  3B E0 00 01 */	li r31, 1
lbl_809B6814:
/* 809B6814  7F E3 FB 78 */	mr r3, r31
/* 809B6818  39 61 00 30 */	addi r11, r1, 0x30
/* 809B681C  4B 9A BA 0C */	b _restgpr_29
/* 809B6820  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B6824  7C 08 03 A6 */	mtlr r0
/* 809B6828  38 21 00 30 */	addi r1, r1, 0x30
/* 809B682C  4E 80 00 20 */	blr 
