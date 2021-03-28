lbl_809943B0:
/* 809943B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809943B4  7C 08 02 A6 */	mflr r0
/* 809943B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809943BC  39 61 00 40 */	addi r11, r1, 0x40
/* 809943C0  4B 9C DE 1C */	b _savegpr_29
/* 809943C4  7C 7E 1B 78 */	mr r30, r3
/* 809943C8  3C 80 80 99 */	lis r4, m__20daNpc_clerkA_Param_c@ha
/* 809943CC  3B E4 58 70 */	addi r31, r4, m__20daNpc_clerkA_Param_c@l
/* 809943D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809943D4  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 809943D8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809943DC  4B 68 63 34 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809943E0  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 809943E4  2C 00 00 02 */	cmpwi r0, 2
/* 809943E8  41 82 00 CC */	beq lbl_809944B4
/* 809943EC  40 80 03 DC */	bge lbl_809947C8
/* 809943F0  2C 00 00 00 */	cmpwi r0, 0
/* 809943F4  40 80 00 0C */	bge lbl_80994400
/* 809943F8  48 00 03 D0 */	b lbl_809947C8
/* 809943FC  48 00 03 CC */	b lbl_809947C8
lbl_80994400:
/* 80994400  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80994404  2C 00 00 00 */	cmpwi r0, 0
/* 80994408  40 82 00 AC */	bne lbl_809944B4
/* 8099440C  80 1E 10 E0 */	lwz r0, 0x10e0(r30)
/* 80994410  2C 00 00 02 */	cmpwi r0, 2
/* 80994414  40 82 00 14 */	bne lbl_80994428
/* 80994418  7F C3 F3 78 */	mr r3, r30
/* 8099441C  38 80 00 01 */	li r4, 1
/* 80994420  4B 80 5C B0 */	b shop_init__13dShopSystem_cFb
/* 80994424  48 00 00 38 */	b lbl_8099445C
lbl_80994428:
/* 80994428  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 8099442C  4B 80 1E E0 */	b Save__16ShopCam_action_cFv
/* 80994430  7F C3 F3 78 */	mr r3, r30
/* 80994434  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 80994438  38 A0 00 00 */	li r5, 0
/* 8099443C  4B 7B 77 B4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80994440  7F C3 F3 78 */	mr r3, r30
/* 80994444  38 80 00 00 */	li r4, 0
/* 80994448  4B 80 5C 88 */	b shop_init__13dShopSystem_cFb
/* 8099444C  38 00 00 01 */	li r0, 1
/* 80994450  90 1E 10 E8 */	stw r0, 0x10e8(r30)
/* 80994454  38 00 00 00 */	li r0, 0
/* 80994458  98 1E 0E 26 */	stb r0, 0xe26(r30)
lbl_8099445C:
/* 8099445C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80994460  2C 00 00 00 */	cmpwi r0, 0
/* 80994464  41 82 00 24 */	beq lbl_80994488
/* 80994468  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8099446C  4B 7B 12 90 */	b remove__18daNpcT_ActorMngr_cFv
/* 80994470  38 00 00 00 */	li r0, 0
/* 80994474  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80994478  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8099447C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80994480  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80994484  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80994488:
/* 80994488  38 60 00 00 */	li r3, 0
/* 8099448C  B0 7E 0C D4 */	sth r3, 0xcd4(r30)
/* 80994490  B0 7E 0C D6 */	sth r3, 0xcd6(r30)
/* 80994494  38 00 00 01 */	li r0, 1
/* 80994498  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8099449C  A8 1E 0D D8 */	lha r0, 0xdd8(r30)
/* 809944A0  2C 00 00 01 */	cmpwi r0, 1
/* 809944A4  40 82 00 08 */	bne lbl_809944AC
/* 809944A8  B0 7E 0D D8 */	sth r3, 0xdd8(r30)
lbl_809944AC:
/* 809944AC  38 00 00 02 */	li r0, 2
/* 809944B0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809944B4:
/* 809944B4  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809944B8  2C 00 00 00 */	cmpwi r0, 0
/* 809944BC  40 82 02 B4 */	bne lbl_80994770
/* 809944C0  7F C3 F3 78 */	mr r3, r30
/* 809944C4  7F C4 F3 78 */	mr r4, r30
/* 809944C8  38 BE 09 74 */	addi r5, r30, 0x974
/* 809944CC  4B 80 5C 8C */	b shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c
/* 809944D0  90 7E 10 E0 */	stw r3, 0x10e0(r30)
/* 809944D4  80 1E 10 E0 */	lwz r0, 0x10e0(r30)
/* 809944D8  2C 00 00 00 */	cmpwi r0, 0
/* 809944DC  41 82 00 30 */	beq lbl_8099450C
/* 809944E0  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809944E4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809944E8  4B 7B 11 F8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809944EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809944F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809944F4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809944F8  4B 6A DF 70 */	b reset__14dEvt_control_cFv
/* 809944FC  38 00 00 03 */	li r0, 3
/* 80994500  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80994504  38 00 00 01 */	li r0, 1
/* 80994508  98 1E 10 EE */	stb r0, 0x10ee(r30)
lbl_8099450C:
/* 8099450C  38 00 00 00 */	li r0, 0
/* 80994510  88 7E 0F 70 */	lbz r3, 0xf70(r30)
/* 80994514  28 03 00 02 */	cmplwi r3, 2
/* 80994518  41 82 00 1C */	beq lbl_80994534
/* 8099451C  28 03 00 03 */	cmplwi r3, 3
/* 80994520  41 82 00 14 */	beq lbl_80994534
/* 80994524  28 03 00 04 */	cmplwi r3, 4
/* 80994528  41 82 00 0C */	beq lbl_80994534
/* 8099452C  28 03 00 05 */	cmplwi r3, 5
/* 80994530  40 82 00 08 */	bne lbl_80994538
lbl_80994534:
/* 80994534  38 00 00 01 */	li r0, 1
lbl_80994538:
/* 80994538  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8099453C  41 82 01 34 */	beq lbl_80994670
/* 80994540  88 BE 0F 6E */	lbz r5, 0xf6e(r30)
/* 80994544  28 05 00 00 */	cmplwi r5, 0
/* 80994548  41 82 01 28 */	beq lbl_80994670
/* 8099454C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80994550  2C 00 00 03 */	cmpwi r0, 3
/* 80994554  40 82 00 40 */	bne lbl_80994594
/* 80994558  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8099455C  2C 00 00 04 */	cmpwi r0, 4
/* 80994560  41 82 00 28 */	beq lbl_80994588
/* 80994564  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80994568  4B 7B 11 94 */	b remove__18daNpcT_ActorMngr_cFv
/* 8099456C  38 00 00 00 */	li r0, 0
/* 80994570  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80994574  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80994578  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8099457C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80994580  38 00 00 04 */	li r0, 4
/* 80994584  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80994588:
/* 80994588  38 00 00 00 */	li r0, 0
/* 8099458C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80994590  48 00 01 E0 */	b lbl_80994770
lbl_80994594:
/* 80994594  38 61 00 08 */	addi r3, r1, 8
/* 80994598  38 9E 0E 48 */	addi r4, r30, 0xe48
/* 8099459C  38 A5 FF FF */	addi r5, r5, -1
/* 809945A0  4B 80 24 00 */	b getCurrentPos__15dShopItemCtrl_cFi
/* 809945A4  C0 01 00 08 */	lfs f0, 8(r1)
/* 809945A8  D0 1E 0D 6C */	stfs f0, 0xd6c(r30)
/* 809945AC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809945B0  D0 1E 0D 70 */	stfs f0, 0xd70(r30)
/* 809945B4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809945B8  D0 1E 0D 74 */	stfs f0, 0xd74(r30)
/* 809945BC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 809945C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809945C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809945C8  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 809945CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809945D0  38 7E 0D 6C */	addi r3, r30, 0xd6c
/* 809945D4  4B 67 87 90 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809945D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809945DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809945E0  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 809945E4  4B 67 7E 50 */	b mDoMtx_YrotM__FPA4_fs
/* 809945E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809945EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809945F0  38 81 00 14 */	addi r4, r1, 0x14
/* 809945F4  38 BE 0D 6C */	addi r5, r30, 0xd6c
/* 809945F8  4B 9B 27 74 */	b PSMTXMultVec
/* 809945FC  80 7E 0B C8 */	lwz r3, 0xbc8(r30)
/* 80994600  38 1E 0D 6C */	addi r0, r30, 0xd6c
/* 80994604  7C 63 00 50 */	subf r3, r3, r0
/* 80994608  30 03 FF FF */	addic r0, r3, -1
/* 8099460C  7C 00 19 10 */	subfe r0, r0, r3
/* 80994610  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80994614  40 82 00 10 */	bne lbl_80994624
/* 80994618  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8099461C  2C 00 00 03 */	cmpwi r0, 3
/* 80994620  41 82 00 30 */	beq lbl_80994650
lbl_80994624:
/* 80994624  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80994628  4B 7B 10 D4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8099462C  38 00 00 00 */	li r0, 0
/* 80994630  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80994634  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80994638  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8099463C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80994640  38 00 00 03 */	li r0, 3
/* 80994644  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80994648  38 00 00 01 */	li r0, 1
/* 8099464C  48 00 00 08 */	b lbl_80994654
lbl_80994650:
/* 80994650  38 00 00 00 */	li r0, 0
lbl_80994654:
/* 80994654  2C 00 00 00 */	cmpwi r0, 0
/* 80994658  41 82 00 0C */	beq lbl_80994664
/* 8099465C  38 1E 0D 6C */	addi r0, r30, 0xd6c
/* 80994660  90 1E 0B C8 */	stw r0, 0xbc8(r30)
lbl_80994664:
/* 80994664  38 00 00 00 */	li r0, 0
/* 80994668  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8099466C  48 00 01 04 */	b lbl_80994770
lbl_80994670:
/* 80994670  4B 8A 3B BC */	b getStatus__12dMsgObject_cFv
/* 80994674  7C 7D 1B 78 */	mr r29, r3
/* 80994678  80 1E 10 E8 */	lwz r0, 0x10e8(r30)
/* 8099467C  2C 00 00 00 */	cmpwi r0, 0
/* 80994680  41 82 00 6C */	beq lbl_809946EC
/* 80994684  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80994688  2C 00 00 00 */	cmpwi r0, 0
/* 8099468C  41 82 00 24 */	beq lbl_809946B0
/* 80994690  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80994694  4B 7B 10 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 80994698  38 00 00 00 */	li r0, 0
/* 8099469C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809946A0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 809946A4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809946A8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809946AC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809946B0:
/* 809946B0  38 00 00 00 */	li r0, 0
/* 809946B4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809946B8  4B 8A 3C EC */	b isMouthCheck__12dMsgObject_cFv
/* 809946BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809946C0  40 82 00 18 */	bne lbl_809946D8
/* 809946C4  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 809946C8  28 00 00 0F */	cmplwi r0, 0xf
/* 809946CC  41 82 00 0C */	beq lbl_809946D8
/* 809946D0  28 00 00 10 */	cmplwi r0, 0x10
/* 809946D4  40 82 00 9C */	bne lbl_80994770
lbl_809946D8:
/* 809946D8  38 00 00 00 */	li r0, 0
/* 809946DC  90 1E 10 E8 */	stw r0, 0x10e8(r30)
/* 809946E0  38 00 00 01 */	li r0, 1
/* 809946E4  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 809946E8  48 00 00 88 */	b lbl_80994770
lbl_809946EC:
/* 809946EC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809946F0  2C 00 00 04 */	cmpwi r0, 4
/* 809946F4  41 82 00 28 */	beq lbl_8099471C
/* 809946F8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809946FC  4B 7B 10 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80994700  38 00 00 00 */	li r0, 0
/* 80994704  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80994708  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8099470C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80994710  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80994714  38 00 00 04 */	li r0, 4
/* 80994718  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8099471C:
/* 8099471C  38 00 00 00 */	li r0, 0
/* 80994720  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80994724  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80994728  2C 00 00 02 */	cmpwi r0, 2
/* 8099472C  40 82 00 44 */	bne lbl_80994770
/* 80994730  80 1E 0B 84 */	lwz r0, 0xb84(r30)
/* 80994734  2C 00 00 00 */	cmpwi r0, 0
/* 80994738  40 81 00 38 */	ble lbl_80994770
/* 8099473C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80994740  2C 00 00 00 */	cmpwi r0, 0
/* 80994744  41 82 00 24 */	beq lbl_80994768
/* 80994748  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8099474C  4B 7B 0F B0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80994750  38 00 00 00 */	li r0, 0
/* 80994754  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80994758  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8099475C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80994760  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80994764  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80994768:
/* 80994768  38 00 00 00 */	li r0, 0
/* 8099476C  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80994770:
/* 80994770  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80994774  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80994778  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8099477C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80994780  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80994784  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80994788  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099478C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80994790  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80994794  4B 67 7C 48 */	b mDoMtx_YrotS__FPA4_fs
/* 80994798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099479C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809947A0  38 81 00 20 */	addi r4, r1, 0x20
/* 809947A4  7C 85 23 78 */	mr r5, r4
/* 809947A8  4B 9B 25 C4 */	b PSMTXMultVec
/* 809947AC  38 61 00 20 */	addi r3, r1, 0x20
/* 809947B0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809947B4  7C 65 1B 78 */	mr r5, r3
/* 809947B8  4B 9B 28 D8 */	b PSVECAdd
/* 809947BC  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 809947C0  38 81 00 20 */	addi r4, r1, 0x20
/* 809947C4  4B 80 20 F4 */	b setMasterCamCtrPos__16ShopCam_action_cFP4cXyz
lbl_809947C8:
/* 809947C8  38 60 00 00 */	li r3, 0
/* 809947CC  39 61 00 40 */	addi r11, r1, 0x40
/* 809947D0  4B 9C DA 58 */	b _restgpr_29
/* 809947D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809947D8  7C 08 03 A6 */	mtlr r0
/* 809947DC  38 21 00 40 */	addi r1, r1, 0x40
/* 809947E0  4E 80 00 20 */	blr 
