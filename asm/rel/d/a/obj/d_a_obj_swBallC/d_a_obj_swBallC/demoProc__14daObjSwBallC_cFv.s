lbl_80CF63F4:
/* 80CF63F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CF63F8  7C 08 02 A6 */	mflr r0
/* 80CF63FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CF6400  39 61 00 30 */	addi r11, r1, 0x30
/* 80CF6404  4B 66 BD D0 */	b _savegpr_27
/* 80CF6408  7C 7B 1B 78 */	mr r27, r3
/* 80CF640C  3C 60 80 CF */	lis r3, l_color@ha
/* 80CF6410  3B C3 6C D4 */	addi r30, r3, l_color@l
/* 80CF6414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF6418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF641C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80CF6420  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80CF6424  7F 83 E3 78 */	mr r3, r28
/* 80CF6428  80 9B 05 78 */	lwz r4, 0x578(r27)
/* 80CF642C  3C A0 80 CF */	lis r5, action_table@ha
/* 80CF6430  38 A5 6E 1C */	addi r5, r5, action_table@l
/* 80CF6434  38 C0 00 0D */	li r6, 0xd
/* 80CF6438  38 E0 00 00 */	li r7, 0
/* 80CF643C  39 00 00 00 */	li r8, 0
/* 80CF6440  4B 35 19 D0 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80CF6444  7C 7F 1B 78 */	mr r31, r3
/* 80CF6448  7F 83 E3 78 */	mr r3, r28
/* 80CF644C  3C 80 80 CF */	lis r4, l_staffName@ha
/* 80CF6450  38 84 6D B8 */	addi r4, r4, l_staffName@l
/* 80CF6454  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF6458  38 A0 00 00 */	li r5, 0
/* 80CF645C  38 C0 00 00 */	li r6, 0
/* 80CF6460  4B 35 16 BC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80CF6464  90 7B 05 78 */	stw r3, 0x578(r27)
/* 80CF6468  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 80CF646C  64 00 80 00 */	oris r0, r0, 0x8000
/* 80CF6470  90 1D 05 8C */	stw r0, 0x58c(r29)
/* 80CF6474  7F 83 E3 78 */	mr r3, r28
/* 80CF6478  80 9B 05 78 */	lwz r4, 0x578(r27)
/* 80CF647C  4B 35 18 D0 */	b getIsAddvance__16dEvent_manager_cFi
/* 80CF6480  2C 03 00 00 */	cmpwi r3, 0
/* 80CF6484  41 82 01 F0 */	beq lbl_80CF6674
/* 80CF6488  28 1F 00 0C */	cmplwi r31, 0xc
/* 80CF648C  41 81 01 E8 */	bgt lbl_80CF6674
/* 80CF6490  3C 60 80 CF */	lis r3, lit_4112@ha
/* 80CF6494  38 63 6E 84 */	addi r3, r3, lit_4112@l
/* 80CF6498  57 E0 10 3A */	slwi r0, r31, 2
/* 80CF649C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80CF64A0  7C 09 03 A6 */	mtctr r0
/* 80CF64A4  4E 80 04 20 */	bctr 
lbl_80CF64A8:
/* 80CF64A8  7F 83 E3 78 */	mr r3, r28
/* 80CF64AC  80 9B 05 78 */	lwz r4, 0x578(r27)
/* 80CF64B0  3C A0 80 CF */	lis r5, struct_80CF6D08+0x0@ha
/* 80CF64B4  38 A5 6D 08 */	addi r5, r5, struct_80CF6D08+0x0@l
/* 80CF64B8  38 A5 00 81 */	addi r5, r5, 0x81
/* 80CF64BC  38 C0 00 03 */	li r6, 3
/* 80CF64C0  4B 35 1C 2C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CF64C4  28 03 00 00 */	cmplwi r3, 0
/* 80CF64C8  40 82 00 10 */	bne lbl_80CF64D8
/* 80CF64CC  38 00 00 01 */	li r0, 1
/* 80CF64D0  98 1B 05 80 */	stb r0, 0x580(r27)
/* 80CF64D4  48 00 01 A0 */	b lbl_80CF6674
lbl_80CF64D8:
/* 80CF64D8  80 03 00 00 */	lwz r0, 0(r3)
/* 80CF64DC  98 1B 05 80 */	stb r0, 0x580(r27)
/* 80CF64E0  48 00 01 94 */	b lbl_80CF6674
lbl_80CF64E4:
/* 80CF64E4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80CF64E8  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80CF64EC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF64F0  48 00 01 84 */	b lbl_80CF6674
lbl_80CF64F4:
/* 80CF64F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80CF64F8  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80CF64FC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF6500  48 00 01 74 */	b lbl_80CF6674
lbl_80CF6504:
/* 80CF6504  7F 63 DB 78 */	mr r3, r27
/* 80CF6508  48 00 03 11 */	bl setLightOnSwB__14daObjSwBallC_cFv
/* 80CF650C  48 00 01 68 */	b lbl_80CF6674
lbl_80CF6510:
/* 80CF6510  7F 63 DB 78 */	mr r3, r27
/* 80CF6514  48 00 03 75 */	bl setLightOffSwB__14daObjSwBallC_cFv
/* 80CF6518  48 00 01 5C */	b lbl_80CF6674
lbl_80CF651C:
/* 80CF651C  7F 63 DB 78 */	mr r3, r27
/* 80CF6520  48 00 03 D9 */	bl deleteLightBall__14daObjSwBallC_cFv
/* 80CF6524  48 00 01 50 */	b lbl_80CF6674
lbl_80CF6528:
/* 80CF6528  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CF652C  7C 03 07 74 */	extsb r3, r0
/* 80CF6530  4B 33 6B 3C */	b dComIfGp_getReverb__Fi
/* 80CF6534  7C 67 1B 78 */	mr r7, r3
/* 80CF6538  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080221@ha */
/* 80CF653C  38 03 02 21 */	addi r0, r3, 0x0221 /* 0x00080221@l */
/* 80CF6540  90 01 00 08 */	stw r0, 8(r1)
/* 80CF6544  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CF6548  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CF654C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF6550  38 81 00 08 */	addi r4, r1, 8
/* 80CF6554  38 BB 05 38 */	addi r5, r27, 0x538
/* 80CF6558  38 C0 00 00 */	li r6, 0
/* 80CF655C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80CF6560  FC 40 08 90 */	fmr f2, f1
/* 80CF6564  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80CF6568  FC 80 18 90 */	fmr f4, f3
/* 80CF656C  39 00 00 00 */	li r8, 0
/* 80CF6570  4B 5B 54 14 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF6574  48 00 01 00 */	b lbl_80CF6674
lbl_80CF6578:
/* 80CF6578  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CF657C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CF6580  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF6584  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80CF6588  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005E@ha */
/* 80CF658C  38 84 00 5E */	addi r4, r4, 0x005E /* 0x0200005E@l */
/* 80CF6590  4B 5B 96 04 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 80CF6594  38 00 00 37 */	li r0, 0x37
/* 80CF6598  98 1B 05 85 */	stb r0, 0x585(r27)
/* 80CF659C  7F 63 DB 78 */	mr r3, r27
/* 80CF65A0  48 00 02 79 */	bl setLightOnSwB__14daObjSwBallC_cFv
/* 80CF65A4  38 60 00 29 */	li r3, 0x29
/* 80CF65A8  38 80 00 00 */	li r4, 0
/* 80CF65AC  4B 52 7F 84 */	b dMeter2Info_setSword__FUcb
/* 80CF65B0  48 00 00 C4 */	b lbl_80CF6674
lbl_80CF65B4:
/* 80CF65B4  38 00 00 03 */	li r0, 3
/* 80CF65B8  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 80CF65BC  38 00 00 00 */	li r0, 0
/* 80CF65C0  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80CF65C4  38 00 00 02 */	li r0, 2
/* 80CF65C8  98 1B 05 80 */	stb r0, 0x580(r27)
/* 80CF65CC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CF65D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CF65D4  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80CF65D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CF65DC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80CF65E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CF65E4  7F A3 EB 78 */	mr r3, r29
/* 80CF65E8  38 81 00 0C */	addi r4, r1, 0xc
/* 80CF65EC  38 A0 00 00 */	li r5, 0
/* 80CF65F0  38 C0 00 00 */	li r6, 0
/* 80CF65F4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80CF65F8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CF65FC  7D 89 03 A6 */	mtctr r12
/* 80CF6600  4E 80 04 21 */	bctrl 
/* 80CF6604  38 00 00 04 */	li r0, 4
/* 80CF6608  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80CF660C  38 00 00 01 */	li r0, 1
/* 80CF6610  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80CF6614  38 00 00 00 */	li r0, 0
/* 80CF6618  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CF661C  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80CF6620  48 00 00 54 */	b lbl_80CF6674
lbl_80CF6624:
/* 80CF6624  38 00 00 03 */	li r0, 3
/* 80CF6628  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 80CF662C  38 60 00 00 */	li r3, 0
/* 80CF6630  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 80CF6634  38 00 00 02 */	li r0, 2
/* 80CF6638  98 1B 05 80 */	stb r0, 0x580(r27)
/* 80CF663C  38 00 00 04 */	li r0, 4
/* 80CF6640  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80CF6644  38 00 00 01 */	li r0, 1
/* 80CF6648  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80CF664C  90 7D 06 10 */	stw r3, 0x610(r29)
/* 80CF6650  B0 7D 06 0A */	sth r3, 0x60a(r29)
/* 80CF6654  48 00 00 20 */	b lbl_80CF6674
lbl_80CF6658:
/* 80CF6658  38 00 FF FF */	li r0, -1
/* 80CF665C  90 1B 05 88 */	stw r0, 0x588(r27)
/* 80CF6660  48 00 00 14 */	b lbl_80CF6674
lbl_80CF6664:
/* 80CF6664  38 00 00 01 */	li r0, 1
/* 80CF6668  98 1B 05 84 */	stb r0, 0x584(r27)
/* 80CF666C  38 60 00 49 */	li r3, 0x49
/* 80CF6670  4B 3A 18 1C */	b execItemGet__FUc
lbl_80CF6674:
/* 80CF6674  88 1B 05 84 */	lbz r0, 0x584(r27)
/* 80CF6678  28 00 00 00 */	cmplwi r0, 0
/* 80CF667C  41 82 00 10 */	beq lbl_80CF668C
/* 80CF6680  80 1D 05 90 */	lwz r0, 0x590(r29)
/* 80CF6684  60 00 00 10 */	ori r0, r0, 0x10
/* 80CF6688  90 1D 05 90 */	stw r0, 0x590(r29)
lbl_80CF668C:
/* 80CF668C  28 1F 00 0C */	cmplwi r31, 0xc
/* 80CF6690  41 81 01 2C */	bgt lbl_80CF67BC
/* 80CF6694  3C 60 80 CF */	lis r3, lit_4113@ha
/* 80CF6698  38 63 6E 50 */	addi r3, r3, lit_4113@l
/* 80CF669C  57 E0 10 3A */	slwi r0, r31, 2
/* 80CF66A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80CF66A4  7C 09 03 A6 */	mtctr r0
/* 80CF66A8  4E 80 04 20 */	bctr 
lbl_80CF66AC:
/* 80CF66AC  38 7B 05 80 */	addi r3, r27, 0x580
/* 80CF66B0  48 00 06 01 */	bl func_80CF6CB0
/* 80CF66B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF66B8  40 82 01 10 */	bne lbl_80CF67C8
/* 80CF66BC  7F 83 E3 78 */	mr r3, r28
/* 80CF66C0  80 9B 05 78 */	lwz r4, 0x578(r27)
/* 80CF66C4  4B 35 1A B8 */	b cutEnd__16dEvent_manager_cFi
/* 80CF66C8  48 00 01 00 */	b lbl_80CF67C8
lbl_80CF66CC:
/* 80CF66CC  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80CF66D0  4B 31 6D 58 */	b play__14mDoExt_baseAnmFv
/* 80CF66D4  2C 03 00 00 */	cmpwi r3, 0
/* 80CF66D8  41 82 00 F0 */	beq lbl_80CF67C8
/* 80CF66DC  7F 83 E3 78 */	mr r3, r28
/* 80CF66E0  80 9B 05 78 */	lwz r4, 0x578(r27)
/* 80CF66E4  4B 35 1A 98 */	b cutEnd__16dEvent_manager_cFi
/* 80CF66E8  48 00 00 E0 */	b lbl_80CF67C8
lbl_80CF66EC:
/* 80CF66EC  7F 83 E3 78 */	mr r3, r28
/* 80CF66F0  80 9B 05 78 */	lwz r4, 0x578(r27)
/* 80CF66F4  4B 35 1A 88 */	b cutEnd__16dEvent_manager_cFi
/* 80CF66F8  48 00 00 D0 */	b lbl_80CF67C8
lbl_80CF66FC:
/* 80CF66FC  7F 63 DB 78 */	mr r3, r27
/* 80CF6700  48 00 02 9D */	bl calcLightBallScale__14daObjSwBallC_cFv
/* 80CF6704  2C 03 00 00 */	cmpwi r3, 0
/* 80CF6708  41 82 00 C0 */	beq lbl_80CF67C8
/* 80CF670C  7F 63 DB 78 */	mr r3, r27
/* 80CF6710  48 00 01 E9 */	bl deleteLightBall__14daObjSwBallC_cFv
/* 80CF6714  7F 83 E3 78 */	mr r3, r28
/* 80CF6718  80 9B 05 78 */	lwz r4, 0x578(r27)
/* 80CF671C  4B 35 1A 60 */	b cutEnd__16dEvent_manager_cFi
/* 80CF6720  48 00 00 A8 */	b lbl_80CF67C8
lbl_80CF6724:
/* 80CF6724  80 7B 05 88 */	lwz r3, 0x588(r27)
/* 80CF6728  3C 03 00 01 */	addis r0, r3, 1
/* 80CF672C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF6730  40 82 00 18 */	bne lbl_80CF6748
/* 80CF6734  38 60 00 AE */	li r3, 0xae
/* 80CF6738  38 80 03 E8 */	li r4, 0x3e8
/* 80CF673C  4B 32 97 48 */	b fopMsgM_messageSet__FUlUl
/* 80CF6740  90 7B 05 88 */	stw r3, 0x588(r27)
/* 80CF6744  48 00 00 84 */	b lbl_80CF67C8
lbl_80CF6748:
/* 80CF6748  4B 32 92 DC */	b fopMsgM_SearchByID__FUi
/* 80CF674C  28 03 00 00 */	cmplwi r3, 0
/* 80CF6750  41 82 00 78 */	beq lbl_80CF67C8
/* 80CF6754  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CF6758  28 00 00 0E */	cmplwi r0, 0xe
/* 80CF675C  40 82 00 10 */	bne lbl_80CF676C
/* 80CF6760  38 00 00 10 */	li r0, 0x10
/* 80CF6764  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 80CF6768  48 00 00 60 */	b lbl_80CF67C8
lbl_80CF676C:
/* 80CF676C  28 00 00 12 */	cmplwi r0, 0x12
/* 80CF6770  40 82 00 58 */	bne lbl_80CF67C8
/* 80CF6774  38 00 00 13 */	li r0, 0x13
/* 80CF6778  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 80CF677C  7F 83 E3 78 */	mr r3, r28
/* 80CF6780  80 9B 05 78 */	lwz r4, 0x578(r27)
/* 80CF6784  4B 35 19 F8 */	b cutEnd__16dEvent_manager_cFi
/* 80CF6788  48 00 00 40 */	b lbl_80CF67C8
lbl_80CF678C:
/* 80CF678C  38 7B 05 80 */	addi r3, r27, 0x580
/* 80CF6790  48 00 05 21 */	bl func_80CF6CB0
/* 80CF6794  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF6798  40 82 00 30 */	bne lbl_80CF67C8
/* 80CF679C  38 00 00 02 */	li r0, 2
/* 80CF67A0  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 80CF67A4  38 00 00 01 */	li r0, 1
/* 80CF67A8  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80CF67AC  7F 83 E3 78 */	mr r3, r28
/* 80CF67B0  80 9B 05 78 */	lwz r4, 0x578(r27)
/* 80CF67B4  4B 35 19 C8 */	b cutEnd__16dEvent_manager_cFi
/* 80CF67B8  48 00 00 10 */	b lbl_80CF67C8
lbl_80CF67BC:
/* 80CF67BC  7F 83 E3 78 */	mr r3, r28
/* 80CF67C0  80 9B 05 78 */	lwz r4, 0x578(r27)
/* 80CF67C4  4B 35 19 B8 */	b cutEnd__16dEvent_manager_cFi
lbl_80CF67C8:
/* 80CF67C8  88 7B 05 85 */	lbz r3, 0x585(r27)
/* 80CF67CC  7C 60 07 75 */	extsb. r0, r3
/* 80CF67D0  41 80 00 2C */	blt lbl_80CF67FC
/* 80CF67D4  38 03 FF FF */	addi r0, r3, -1
/* 80CF67D8  98 1B 05 85 */	stb r0, 0x585(r27)
/* 80CF67DC  88 1B 05 85 */	lbz r0, 0x585(r27)
/* 80CF67E0  7C 00 07 75 */	extsb. r0, r0
/* 80CF67E4  40 82 00 18 */	bne lbl_80CF67FC
/* 80CF67E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CF67EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CF67F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF67F4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80CF67F8  4B 5B 96 20 */	b bgmStreamPlay__8Z2SeqMgrFv
lbl_80CF67FC:
/* 80CF67FC  38 60 00 00 */	li r3, 0
/* 80CF6800  39 61 00 30 */	addi r11, r1, 0x30
/* 80CF6804  4B 66 BA 1C */	b _restgpr_27
/* 80CF6808  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CF680C  7C 08 03 A6 */	mtlr r0
/* 80CF6810  38 21 00 30 */	addi r1, r1, 0x30
/* 80CF6814  4E 80 00 20 */	blr 
