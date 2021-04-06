lbl_805A63F8:
/* 805A63F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A63FC  7C 08 02 A6 */	mflr r0
/* 805A6400  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A6404  39 61 00 30 */	addi r11, r1, 0x30
/* 805A6408  4B DB BD D1 */	bl _savegpr_28
/* 805A640C  7C 7C 1B 78 */	mr r28, r3
/* 805A6410  3C 60 80 5A */	lis r3, lit_3863@ha /* 0x805A696C@ha */
/* 805A6414  3B E3 69 6C */	addi r31, r3, lit_3863@l /* 0x805A696C@l */
/* 805A6418  88 1C 05 6C */	lbz r0, 0x56c(r28)
/* 805A641C  28 00 00 00 */	cmplwi r0, 0
/* 805A6420  41 82 00 50 */	beq lbl_805A6470
/* 805A6424  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 805A6428  7C 03 07 74 */	extsb r3, r0
/* 805A642C  4B A8 6C 41 */	bl dComIfGp_getReverb__Fi
/* 805A6430  7C 67 1B 78 */	mr r7, r3
/* 805A6434  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800E7@ha */
/* 805A6438  38 03 00 E7 */	addi r0, r3, 0x00E7 /* 0x000800E7@l */
/* 805A643C  90 01 00 08 */	stw r0, 8(r1)
/* 805A6440  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805A6444  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805A6448  80 63 00 00 */	lwz r3, 0(r3)
/* 805A644C  38 81 00 08 */	addi r4, r1, 8
/* 805A6450  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805A6454  38 C0 00 00 */	li r6, 0
/* 805A6458  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A645C  FC 40 08 90 */	fmr f2, f1
/* 805A6460  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 805A6464  FC 80 18 90 */	fmr f4, f3
/* 805A6468  39 00 00 00 */	li r8, 0
/* 805A646C  4B D0 60 A1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_805A6470:
/* 805A6470  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 805A6474  83 A3 10 18 */	lwz r29, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 805A6478  28 1D 00 00 */	cmplwi r29, 0
/* 805A647C  40 82 00 0C */	bne lbl_805A6488
/* 805A6480  38 60 00 01 */	li r3, 1
/* 805A6484  48 00 04 A0 */	b lbl_805A6924
lbl_805A6488:
/* 805A6488  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A648C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6490  83 C4 5D B4 */	lwz r30, 0x5db4(r4)
/* 805A6494  88 1C 05 6B */	lbz r0, 0x56b(r28)
/* 805A6498  28 00 00 FF */	cmplwi r0, 0xff
/* 805A649C  40 82 00 40 */	bne lbl_805A64DC
/* 805A64A0  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 805A64A4  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 805A64A8  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 805A64AC  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 805A64B0  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 805A64B4  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 805A64B8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805A64BC  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 805A64C0  C0 1C 05 50 */	lfs f0, 0x550(r28)
/* 805A64C4  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 805A64C8  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 805A64CC  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 805A64D0  C0 1C 05 58 */	lfs f0, 0x558(r28)
/* 805A64D4  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 805A64D8  48 00 00 14 */	b lbl_805A64EC
lbl_805A64DC:
/* 805A64DC  7F 83 E3 78 */	mr r3, r28
/* 805A64E0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805A64E4  4B A7 42 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805A64E8  B0 7C 04 E6 */	sth r3, 0x4e6(r28)
lbl_805A64EC:
/* 805A64EC  A0 7C 05 6E */	lhz r3, 0x56e(r28)
/* 805A64F0  28 03 00 04 */	cmplwi r3, 4
/* 805A64F4  40 82 00 48 */	bne lbl_805A653C
/* 805A64F8  38 7C 05 C8 */	addi r3, r28, 0x5c8
/* 805A64FC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805A6500  4B DA 0E 9D */	bl PSVECSquareDistance
/* 805A6504  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805A6508  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A650C  40 80 04 14 */	bge lbl_805A6920
/* 805A6510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A6514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6518  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805A651C  4B A9 BF 4D */	bl reset__14dEvt_control_cFv
/* 805A6520  38 00 00 02 */	li r0, 2
/* 805A6524  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 805A6528  38 00 00 01 */	li r0, 1
/* 805A652C  90 1E 06 14 */	stw r0, 0x614(r30)
/* 805A6530  38 00 00 00 */	li r0, 0
/* 805A6534  B0 1C 05 6E */	sth r0, 0x56e(r28)
/* 805A6538  48 00 03 E8 */	b lbl_805A6920
lbl_805A653C:
/* 805A653C  28 03 00 03 */	cmplwi r3, 3
/* 805A6540  40 82 00 C4 */	bne lbl_805A6604
/* 805A6544  7F C3 F3 78 */	mr r3, r30
/* 805A6548  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 805A654C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 805A6550  7D 89 03 A6 */	mtctr r12
/* 805A6554  4E 80 04 21 */	bctrl 
/* 805A6558  28 03 00 00 */	cmplwi r3, 0
/* 805A655C  41 82 00 40 */	beq lbl_805A659C
/* 805A6560  7F C3 F3 78 */	mr r3, r30
/* 805A6564  38 9C 05 C8 */	addi r4, r28, 0x5c8
/* 805A6568  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 805A656C  38 C0 00 00 */	li r6, 0
/* 805A6570  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 805A6574  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805A6578  7D 89 03 A6 */	mtctr r12
/* 805A657C  4E 80 04 21 */	bctrl 
/* 805A6580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A6584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6588  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805A658C  4B A9 BE DD */	bl reset__14dEvt_control_cFv
/* 805A6590  38 00 00 00 */	li r0, 0
/* 805A6594  B0 1C 05 6E */	sth r0, 0x56e(r28)
/* 805A6598  48 00 03 88 */	b lbl_805A6920
lbl_805A659C:
/* 805A659C  38 00 00 04 */	li r0, 4
/* 805A65A0  B0 1C 05 6E */	sth r0, 0x56e(r28)
/* 805A65A4  38 80 00 03 */	li r4, 3
/* 805A65A8  B0 9E 06 04 */	sth r4, 0x604(r30)
/* 805A65AC  38 60 00 00 */	li r3, 0
/* 805A65B0  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 805A65B4  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 805A65B8  28 00 00 00 */	cmplwi r0, 0
/* 805A65BC  40 82 00 18 */	bne lbl_805A65D4
/* 805A65C0  90 9E 06 14 */	stw r4, 0x614(r30)
/* 805A65C4  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 805A65C8  90 7E 06 10 */	stw r3, 0x610(r30)
/* 805A65CC  B0 7E 06 0A */	sth r3, 0x60a(r30)
/* 805A65D0  48 00 00 18 */	b lbl_805A65E8
lbl_805A65D4:
/* 805A65D4  38 00 00 02 */	li r0, 2
/* 805A65D8  90 1E 06 14 */	stw r0, 0x614(r30)
/* 805A65DC  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 805A65E0  90 7E 06 10 */	stw r3, 0x610(r30)
/* 805A65E4  B0 7E 06 0A */	sth r3, 0x60a(r30)
lbl_805A65E8:
/* 805A65E8  C0 1C 05 C8 */	lfs f0, 0x5c8(r28)
/* 805A65EC  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 805A65F0  C0 1C 05 CC */	lfs f0, 0x5cc(r28)
/* 805A65F4  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 805A65F8  C0 1C 05 D0 */	lfs f0, 0x5d0(r28)
/* 805A65FC  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 805A6600  48 00 03 20 */	b lbl_805A6920
lbl_805A6604:
/* 805A6604  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 805A6608  28 00 00 01 */	cmplwi r0, 1
/* 805A660C  40 82 01 F8 */	bne lbl_805A6804
/* 805A6610  28 03 00 02 */	cmplwi r3, 2
/* 805A6614  40 82 00 BC */	bne lbl_805A66D0
/* 805A6618  38 60 00 00 */	li r3, 0
/* 805A661C  80 1D 08 94 */	lwz r0, 0x894(r29)
/* 805A6620  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805A6624  40 82 00 20 */	bne lbl_805A6644
/* 805A6628  88 1D 08 4E */	lbz r0, 0x84e(r29)
/* 805A662C  28 00 00 03 */	cmplwi r0, 3
/* 805A6630  41 82 00 14 */	beq lbl_805A6644
/* 805A6634  28 00 00 04 */	cmplwi r0, 4
/* 805A6638  41 82 00 0C */	beq lbl_805A6644
/* 805A663C  28 00 00 02 */	cmplwi r0, 2
/* 805A6640  40 82 00 08 */	bne lbl_805A6648
lbl_805A6644:
/* 805A6644  38 60 00 01 */	li r3, 1
lbl_805A6648:
/* 805A6648  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A664C  41 82 00 50 */	beq lbl_805A669C
/* 805A6650  38 80 00 00 */	li r4, 0
/* 805A6654  A0 1D 05 E4 */	lhz r0, 0x5e4(r29)
/* 805A6658  28 00 02 1C */	cmplwi r0, 0x21c
/* 805A665C  40 82 00 38 */	bne lbl_805A6694
/* 805A6660  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 805A6664  38 A0 00 01 */	li r5, 1
/* 805A6668  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805A666C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805A6670  40 82 00 18 */	bne lbl_805A6688
/* 805A6674  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805A6678  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805A667C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805A6680  41 82 00 08 */	beq lbl_805A6688
/* 805A6684  7C 85 23 78 */	mr r5, r4
lbl_805A6688:
/* 805A6688  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 805A668C  41 82 00 08 */	beq lbl_805A6694
/* 805A6690  38 80 00 01 */	li r4, 1
lbl_805A6694:
/* 805A6694  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805A6698  41 82 02 88 */	beq lbl_805A6920
lbl_805A669C:
/* 805A669C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A66A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A66A4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805A66A8  7F 84 E3 78 */	mr r4, r28
/* 805A66AC  4B A9 BE 6D */	bl reset__14dEvt_control_cFPv
/* 805A66B0  7F 83 E3 78 */	mr r3, r28
/* 805A66B4  38 80 04 00 */	li r4, 0x400
/* 805A66B8  38 A0 01 4F */	li r5, 0x14f
/* 805A66BC  38 C0 00 01 */	li r6, 1
/* 805A66C0  4B A7 52 49 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805A66C4  38 00 00 03 */	li r0, 3
/* 805A66C8  B0 1C 05 6E */	sth r0, 0x56e(r28)
/* 805A66CC  48 00 02 54 */	b lbl_805A6920
lbl_805A66D0:
/* 805A66D0  38 00 00 00 */	li r0, 0
/* 805A66D4  88 9D 08 4E */	lbz r4, 0x84e(r29)
/* 805A66D8  28 04 00 02 */	cmplwi r4, 2
/* 805A66DC  41 82 00 0C */	beq lbl_805A66E8
/* 805A66E0  28 04 00 01 */	cmplwi r4, 1
/* 805A66E4  40 82 00 08 */	bne lbl_805A66EC
lbl_805A66E8:
/* 805A66E8  38 00 00 01 */	li r0, 1
lbl_805A66EC:
/* 805A66EC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805A66F0  40 82 02 30 */	bne lbl_805A6920
/* 805A66F4  28 03 00 00 */	cmplwi r3, 0
/* 805A66F8  40 82 00 68 */	bne lbl_805A6760
/* 805A66FC  38 7C 05 74 */	addi r3, r28, 0x574
/* 805A6700  7F 84 E3 78 */	mr r4, r28
/* 805A6704  A8 1C 04 E8 */	lha r0, 0x4e8(r28)
/* 805A6708  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805A670C  38 C0 00 00 */	li r6, 0
/* 805A6710  38 E0 00 00 */	li r7, 0
/* 805A6714  4B CA 38 7D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805A6718  38 00 00 10 */	li r0, 0x10
/* 805A671C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A6720  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805A6724  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805A6728  80 63 00 00 */	lwz r3, 0(r3)
/* 805A672C  38 81 00 10 */	addi r4, r1, 0x10
/* 805A6730  38 A0 00 00 */	li r5, 0
/* 805A6734  38 C0 00 00 */	li r6, 0
/* 805A6738  38 E0 00 00 */	li r7, 0
/* 805A673C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A6740  FC 40 08 90 */	fmr f2, f1
/* 805A6744  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 805A6748  FC 80 18 90 */	fmr f4, f3
/* 805A674C  39 00 00 00 */	li r8, 0
/* 805A6750  4B D0 52 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805A6754  38 00 00 01 */	li r0, 1
/* 805A6758  B0 1C 05 6E */	sth r0, 0x56e(r28)
/* 805A675C  48 00 01 C4 */	b lbl_805A6920
lbl_805A6760:
/* 805A6760  38 7C 05 74 */	addi r3, r28, 0x574
/* 805A6764  7F 84 E3 78 */	mr r4, r28
/* 805A6768  38 A0 00 00 */	li r5, 0
/* 805A676C  38 C0 00 00 */	li r6, 0
/* 805A6770  4B CA 3B 69 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 805A6774  2C 03 00 00 */	cmpwi r3, 0
/* 805A6778  41 82 01 A8 */	beq lbl_805A6920
/* 805A677C  38 00 00 02 */	li r0, 2
/* 805A6780  B0 1C 05 6E */	sth r0, 0x56e(r28)
/* 805A6784  38 00 00 11 */	li r0, 0x11
/* 805A6788  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A678C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805A6790  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805A6794  80 63 00 00 */	lwz r3, 0(r3)
/* 805A6798  38 81 00 0C */	addi r4, r1, 0xc
/* 805A679C  38 A0 00 00 */	li r5, 0
/* 805A67A0  38 C0 00 00 */	li r6, 0
/* 805A67A4  38 E0 00 00 */	li r7, 0
/* 805A67A8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A67AC  FC 40 08 90 */	fmr f2, f1
/* 805A67B0  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 805A67B4  FC 80 18 90 */	fmr f4, f3
/* 805A67B8  39 00 00 00 */	li r8, 0
/* 805A67BC  4B D0 51 C9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805A67C0  38 60 00 00 */	li r3, 0
/* 805A67C4  80 1D 08 94 */	lwz r0, 0x894(r29)
/* 805A67C8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805A67CC  40 82 00 20 */	bne lbl_805A67EC
/* 805A67D0  88 1D 08 4E */	lbz r0, 0x84e(r29)
/* 805A67D4  28 00 00 03 */	cmplwi r0, 3
/* 805A67D8  41 82 00 14 */	beq lbl_805A67EC
/* 805A67DC  28 00 00 04 */	cmplwi r0, 4
/* 805A67E0  41 82 00 0C */	beq lbl_805A67EC
/* 805A67E4  28 00 00 02 */	cmplwi r0, 2
/* 805A67E8  40 82 00 08 */	bne lbl_805A67F0
lbl_805A67EC:
/* 805A67EC  38 60 00 01 */	li r3, 1
lbl_805A67F0:
/* 805A67F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A67F4  41 82 01 2C */	beq lbl_805A6920
/* 805A67F8  38 00 00 04 */	li r0, 4
/* 805A67FC  98 1D 08 4E */	stb r0, 0x84e(r29)
/* 805A6800  48 00 01 20 */	b lbl_805A6920
lbl_805A6804:
/* 805A6804  88 9C 05 69 */	lbz r4, 0x569(r28)
/* 805A6808  28 04 00 FF */	cmplwi r4, 0xff
/* 805A680C  41 82 00 20 */	beq lbl_805A682C
/* 805A6810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A6814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6818  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 805A681C  7C 05 07 74 */	extsb r5, r0
/* 805A6820  4B A8 EB 41 */	bl isSwitch__10dSv_info_cCFii
/* 805A6824  2C 03 00 00 */	cmpwi r3, 0
/* 805A6828  40 82 00 38 */	bne lbl_805A6860
lbl_805A682C:
/* 805A682C  A0 1C 05 72 */	lhz r0, 0x572(r28)
/* 805A6830  28 00 FF FF */	cmplwi r0, 0xffff
/* 805A6834  41 82 00 3C */	beq lbl_805A6870
/* 805A6838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A683C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6840  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805A6844  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 805A6848  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805A684C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805A6850  7C 84 02 2E */	lhzx r4, r4, r0
/* 805A6854  4B A8 E1 69 */	bl isEventBit__11dSv_event_cCFUs
/* 805A6858  2C 03 00 00 */	cmpwi r3, 0
/* 805A685C  41 82 00 14 */	beq lbl_805A6870
lbl_805A6860:
/* 805A6860  7F 83 E3 78 */	mr r3, r28
/* 805A6864  4B A7 34 19 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 805A6868  38 60 00 01 */	li r3, 1
/* 805A686C  48 00 00 B8 */	b lbl_805A6924
lbl_805A6870:
/* 805A6870  88 9C 05 68 */	lbz r4, 0x568(r28)
/* 805A6874  28 04 00 FF */	cmplwi r4, 0xff
/* 805A6878  41 82 00 20 */	beq lbl_805A6898
/* 805A687C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A6880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6884  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 805A6888  7C 05 07 74 */	extsb r5, r0
/* 805A688C  4B A8 EA D5 */	bl isSwitch__10dSv_info_cCFii
/* 805A6890  2C 03 00 00 */	cmpwi r3, 0
/* 805A6894  41 82 00 38 */	beq lbl_805A68CC
lbl_805A6898:
/* 805A6898  A0 1C 05 70 */	lhz r0, 0x570(r28)
/* 805A689C  28 00 FF FF */	cmplwi r0, 0xffff
/* 805A68A0  41 82 00 34 */	beq lbl_805A68D4
/* 805A68A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A68A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A68AC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805A68B0  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 805A68B4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805A68B8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805A68BC  7C 84 02 2E */	lhzx r4, r4, r0
/* 805A68C0  4B A8 E0 FD */	bl isEventBit__11dSv_event_cCFUs
/* 805A68C4  2C 03 00 00 */	cmpwi r3, 0
/* 805A68C8  40 82 00 0C */	bne lbl_805A68D4
lbl_805A68CC:
/* 805A68CC  38 60 00 01 */	li r3, 1
/* 805A68D0  48 00 00 54 */	b lbl_805A6924
lbl_805A68D4:
/* 805A68D4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805A68D8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805A68DC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805A68E0  4C 40 13 82 */	cror 2, 0, 2
/* 805A68E4  40 82 00 3C */	bne lbl_805A6920
/* 805A68E8  C0 1C 05 C4 */	lfs f0, 0x5c4(r28)
/* 805A68EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805A68F0  4C 41 13 82 */	cror 2, 1, 2
/* 805A68F4  40 82 00 2C */	bne lbl_805A6920
/* 805A68F8  7F 83 E3 78 */	mr r3, r28
/* 805A68FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A6900  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6904  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805A6908  4B A7 41 8D */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805A690C  C0 1C 05 C0 */	lfs f0, 0x5c0(r28)
/* 805A6910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A6914  40 80 00 0C */	bge lbl_805A6920
/* 805A6918  7F 83 E3 78 */	mr r3, r28
/* 805A691C  4B FF FA A9 */	bl eventOrder__12daTagMstop_cFv
lbl_805A6920:
/* 805A6920  38 60 00 01 */	li r3, 1
lbl_805A6924:
/* 805A6924  39 61 00 30 */	addi r11, r1, 0x30
/* 805A6928  4B DB B8 FD */	bl _restgpr_28
/* 805A692C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A6930  7C 08 03 A6 */	mtlr r0
/* 805A6934  38 21 00 30 */	addi r1, r1, 0x30
/* 805A6938  4E 80 00 20 */	blr 
