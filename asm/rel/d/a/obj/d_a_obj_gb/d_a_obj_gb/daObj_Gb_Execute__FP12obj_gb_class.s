lbl_80BF63F8:
/* 80BF63F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BF63FC  7C 08 02 A6 */	mflr r0
/* 80BF6400  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BF6404  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BF6408  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BF640C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BF6410  4B 76 BD C1 */	bl _savegpr_26
/* 80BF6414  7C 7E 1B 78 */	mr r30, r3
/* 80BF6418  3C 60 80 BF */	lis r3, lit_3890@ha /* 0x80BF6DBC@ha */
/* 80BF641C  3B E3 6D BC */	addi r31, r3, lit_3890@l /* 0x80BF6DBC@l */
/* 80BF6420  A8 7E 05 8E */	lha r3, 0x58e(r30)
/* 80BF6424  38 03 00 01 */	addi r0, r3, 1
/* 80BF6428  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80BF642C  38 60 00 00 */	li r3, 0
/* 80BF6430  38 00 00 02 */	li r0, 2
/* 80BF6434  7C 09 03 A6 */	mtctr r0
lbl_80BF6438:
/* 80BF6438  38 A3 05 8A */	addi r5, r3, 0x58a
/* 80BF643C  7C 9E 2A AE */	lhax r4, r30, r5
/* 80BF6440  2C 04 00 00 */	cmpwi r4, 0
/* 80BF6444  41 82 00 0C */	beq lbl_80BF6450
/* 80BF6448  38 04 FF FF */	addi r0, r4, -1
/* 80BF644C  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_80BF6450:
/* 80BF6450  38 63 00 02 */	addi r3, r3, 2
/* 80BF6454  42 00 FF E4 */	bdnz lbl_80BF6438
/* 80BF6458  A8 1E 05 88 */	lha r0, 0x588(r30)
/* 80BF645C  2C 00 00 01 */	cmpwi r0, 1
/* 80BF6460  41 82 01 E4 */	beq lbl_80BF6644
/* 80BF6464  40 80 02 3C */	bge lbl_80BF66A0
/* 80BF6468  2C 00 00 00 */	cmpwi r0, 0
/* 80BF646C  40 80 00 08 */	bge lbl_80BF6474
/* 80BF6470  48 00 02 30 */	b lbl_80BF66A0
lbl_80BF6474:
/* 80BF6474  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80BF6478  28 00 00 00 */	cmplwi r0, 0
/* 80BF647C  40 82 00 B8 */	bne lbl_80BF6534
/* 80BF6480  3B 40 00 00 */	li r26, 0
/* 80BF6484  3B A0 00 00 */	li r29, 0
/* 80BF6488  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80BF648C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802AA@ha */
/* 80BF6490  3B 63 02 AA */	addi r27, r3, 0x02AA /* 0x000802AA@l */
/* 80BF6494  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BF6498  3B 83 13 68 */	addi r28, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
lbl_80BF649C:
/* 80BF649C  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 80BF64A0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80BF64A4  40 80 00 48 */	bge lbl_80BF64EC
/* 80BF64A8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A9@ha */
/* 80BF64AC  38 03 02 A9 */	addi r0, r3, 0x02A9 /* 0x000802A9@l */
/* 80BF64B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF64B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BF64B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BF64BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF64C0  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF64C4  38 BD 05 94 */	addi r5, r29, 0x594
/* 80BF64C8  7C BE 2A 14 */	add r5, r30, r5
/* 80BF64CC  38 C0 00 00 */	li r6, 0
/* 80BF64D0  38 E0 00 00 */	li r7, 0
/* 80BF64D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BF64D8  FC 40 08 90 */	fmr f2, f1
/* 80BF64DC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80BF64E0  FC 80 18 90 */	fmr f4, f3
/* 80BF64E4  39 00 00 00 */	li r8, 0
/* 80BF64E8  4B 6B 54 9D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BF64EC:
/* 80BF64EC  93 61 00 10 */	stw r27, 0x10(r1)
/* 80BF64F0  80 7C 00 00 */	lwz r3, 0(r28)
/* 80BF64F4  38 81 00 10 */	addi r4, r1, 0x10
/* 80BF64F8  38 BD 05 94 */	addi r5, r29, 0x594
/* 80BF64FC  7C BE 2A 14 */	add r5, r30, r5
/* 80BF6500  38 C0 00 00 */	li r6, 0
/* 80BF6504  38 E0 00 00 */	li r7, 0
/* 80BF6508  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BF650C  FC 40 08 90 */	fmr f2, f1
/* 80BF6510  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80BF6514  FC 80 18 90 */	fmr f4, f3
/* 80BF6518  39 00 00 00 */	li r8, 0
/* 80BF651C  4B 6B 5F F1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BF6520  3B 5A 00 01 */	addi r26, r26, 1
/* 80BF6524  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80BF6528  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BF652C  41 80 FF 70 */	blt lbl_80BF649C
/* 80BF6530  48 00 00 94 */	b lbl_80BF65C4
lbl_80BF6534:
/* 80BF6534  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 80BF6538  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BF653C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF6540  40 80 00 44 */	bge lbl_80BF6584
/* 80BF6544  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A9@ha */
/* 80BF6548  38 03 02 A9 */	addi r0, r3, 0x02A9 /* 0x000802A9@l */
/* 80BF654C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BF6550  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BF6554  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BF6558  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF655C  38 81 00 0C */	addi r4, r1, 0xc
/* 80BF6560  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BF6564  38 C0 00 00 */	li r6, 0
/* 80BF6568  38 E0 00 00 */	li r7, 0
/* 80BF656C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BF6570  FC 40 08 90 */	fmr f2, f1
/* 80BF6574  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80BF6578  FC 80 18 90 */	fmr f4, f3
/* 80BF657C  39 00 00 00 */	li r8, 0
/* 80BF6580  4B 6B 54 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BF6584:
/* 80BF6584  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802AA@ha */
/* 80BF6588  38 03 02 AA */	addi r0, r3, 0x02AA /* 0x000802AA@l */
/* 80BF658C  90 01 00 08 */	stw r0, 8(r1)
/* 80BF6590  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BF6594  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BF6598  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF659C  38 81 00 08 */	addi r4, r1, 8
/* 80BF65A0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BF65A4  38 C0 00 00 */	li r6, 0
/* 80BF65A8  38 E0 00 00 */	li r7, 0
/* 80BF65AC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BF65B0  FC 40 08 90 */	fmr f2, f1
/* 80BF65B4  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80BF65B8  FC 80 18 90 */	fmr f4, f3
/* 80BF65BC  39 00 00 00 */	li r8, 0
/* 80BF65C0  4B 6B 5F 4D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BF65C4:
/* 80BF65C4  38 7E 05 90 */	addi r3, r30, 0x590
/* 80BF65C8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BF65CC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80BF65D0  FC 60 10 90 */	fmr f3, f2
/* 80BF65D4  4B 67 94 69 */	bl cLib_addCalc2__FPffff
/* 80BF65D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF65DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF65E0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80BF65E4  3C 80 80 BF */	lis r4, d_a_obj_gb__stringBase0@ha /* 0x80BF6DEC@ha */
/* 80BF65E8  38 84 6D EC */	addi r4, r4, d_a_obj_gb__stringBase0@l /* 0x80BF6DEC@l */
/* 80BF65EC  4B 77 23 A9 */	bl strcmp
/* 80BF65F0  2C 03 00 00 */	cmpwi r3, 0
/* 80BF65F4  41 82 00 AC */	beq lbl_80BF66A0
/* 80BF65F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF65FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF6600  80 9E 05 84 */	lwz r4, 0x584(r30)
/* 80BF6604  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BF6608  7C 05 07 74 */	extsb r5, r0
/* 80BF660C  4B 43 ED 55 */	bl isSwitch__10dSv_info_cCFii
/* 80BF6610  2C 03 00 00 */	cmpwi r3, 0
/* 80BF6614  40 82 00 24 */	bne lbl_80BF6638
/* 80BF6618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF661C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF6620  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 80BF6624  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BF6628  7C 05 07 74 */	extsb r5, r0
/* 80BF662C  4B 43 ED 35 */	bl isSwitch__10dSv_info_cCFii
/* 80BF6630  2C 03 00 00 */	cmpwi r3, 0
/* 80BF6634  40 82 00 6C */	bne lbl_80BF66A0
lbl_80BF6638:
/* 80BF6638  38 00 00 01 */	li r0, 1
/* 80BF663C  B0 1E 05 88 */	sth r0, 0x588(r30)
/* 80BF6640  48 00 00 60 */	b lbl_80BF66A0
lbl_80BF6644:
/* 80BF6644  38 7E 05 90 */	addi r3, r30, 0x590
/* 80BF6648  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BF664C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80BF6650  FC 60 10 90 */	fmr f3, f2
/* 80BF6654  4B 67 93 E9 */	bl cLib_addCalc2__FPffff
/* 80BF6658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF665C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF6660  80 9E 05 84 */	lwz r4, 0x584(r30)
/* 80BF6664  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BF6668  7C 05 07 74 */	extsb r5, r0
/* 80BF666C  4B 43 EC F5 */	bl isSwitch__10dSv_info_cCFii
/* 80BF6670  2C 03 00 00 */	cmpwi r3, 0
/* 80BF6674  40 82 00 2C */	bne lbl_80BF66A0
/* 80BF6678  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF667C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF6680  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 80BF6684  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BF6688  7C 05 07 74 */	extsb r5, r0
/* 80BF668C  4B 43 EC D5 */	bl isSwitch__10dSv_info_cCFii
/* 80BF6690  2C 03 00 00 */	cmpwi r3, 0
/* 80BF6694  41 82 00 0C */	beq lbl_80BF66A0
/* 80BF6698  38 00 00 00 */	li r0, 0
/* 80BF669C  B0 1E 05 88 */	sth r0, 0x588(r30)
lbl_80BF66A0:
/* 80BF66A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF66A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF66A8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BF66AC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80BF66B0  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BF66B4  4B 75 02 35 */	bl PSMTXTrans
/* 80BF66B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF66BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF66C0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BF66C4  4B 41 5D 71 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BF66C8  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80BF66CC  28 00 00 00 */	cmplwi r0, 0
/* 80BF66D0  40 82 00 18 */	bne lbl_80BF66E8
/* 80BF66D4  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80BF66D8  C0 5E 04 F0 */	lfs f2, 0x4f0(r30)
/* 80BF66DC  FC 60 08 90 */	fmr f3, f1
/* 80BF66E0  4B 41 67 59 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80BF66E4  48 00 00 14 */	b lbl_80BF66F8
lbl_80BF66E8:
/* 80BF66E8  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80BF66EC  C0 5E 04 F0 */	lfs f2, 0x4f0(r30)
/* 80BF66F0  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80BF66F4  4B 41 67 45 */	bl scaleM__14mDoMtx_stack_cFfff
lbl_80BF66F8:
/* 80BF66F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF66FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF6700  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80BF6704  38 84 00 24 */	addi r4, r4, 0x24
/* 80BF6708  4B 74 FD A9 */	bl PSMTXCopy
/* 80BF670C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80BF6710  4B 41 6D 19 */	bl play__14mDoExt_baseAnmFv
/* 80BF6714  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 80BF6718  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80BF671C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80BF6720  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 80BF6724  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BF6728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF672C  40 80 00 24 */	bge lbl_80BF6750
/* 80BF6730  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BF6734  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80BF6738  FC 60 08 90 */	fmr f3, f1
/* 80BF673C  4B 41 66 61 */	bl transM__14mDoMtx_stack_cFfff
/* 80BF6740  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BF6744  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80BF6748  FC 60 08 90 */	fmr f3, f1
/* 80BF674C  4B 41 66 ED */	bl scaleM__14mDoMtx_stack_cFfff
lbl_80BF6750:
/* 80BF6750  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF6754  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF6758  38 9E 06 88 */	addi r4, r30, 0x688
/* 80BF675C  4B 74 FD 55 */	bl PSMTXCopy
/* 80BF6760  80 7E 06 B8 */	lwz r3, 0x6b8(r30)
/* 80BF6764  4B 48 52 5D */	bl Move__4dBgWFv
/* 80BF6768  38 60 00 01 */	li r3, 1
/* 80BF676C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BF6770  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BF6774  39 61 00 30 */	addi r11, r1, 0x30
/* 80BF6778  4B 76 BA A5 */	bl _restgpr_26
/* 80BF677C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BF6780  7C 08 03 A6 */	mtlr r0
/* 80BF6784  38 21 00 40 */	addi r1, r1, 0x40
/* 80BF6788  4E 80 00 20 */	blr 
