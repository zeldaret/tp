lbl_80563660:
/* 80563660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563664  7C 08 02 A6 */	mflr r0
/* 80563668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056366C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563670  7C 7F 1B 78 */	mr r31, r3
/* 80563674  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80563678  2C 00 00 02 */	cmpwi r0, 2
/* 8056367C  41 82 00 98 */	beq lbl_80563714
/* 80563680  40 80 00 E8 */	bge lbl_80563768
/* 80563684  2C 00 00 00 */	cmpwi r0, 0
/* 80563688  40 80 00 0C */	bge lbl_80563694
/* 8056368C  48 00 00 DC */	b lbl_80563768
/* 80563690  48 00 00 D8 */	b lbl_80563768
lbl_80563694:
/* 80563694  80 1F 11 2C */	lwz r0, 0x112c(r31)
/* 80563698  2C 00 00 02 */	cmpwi r0, 2
/* 8056369C  40 82 00 10 */	bne lbl_805636AC
/* 805636A0  38 80 00 01 */	li r4, 1
/* 805636A4  4B C3 6A 2C */	b shop_init__13dShopSystem_cFb
/* 805636A8  48 00 00 28 */	b lbl_805636D0
lbl_805636AC:
/* 805636AC  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 805636B0  4B C3 2C 5C */	b Save__16ShopCam_action_cFv
/* 805636B4  7F E3 FB 78 */	mr r3, r31
/* 805636B8  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 805636BC  38 A0 00 00 */	li r5, 0
/* 805636C0  4B BE 85 30 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 805636C4  7F E3 FB 78 */	mr r3, r31
/* 805636C8  38 80 00 00 */	li r4, 0
/* 805636CC  4B C3 6A 04 */	b shop_init__13dShopSystem_cFb
lbl_805636D0:
/* 805636D0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 805636D4  2C 00 00 04 */	cmpwi r0, 4
/* 805636D8  41 82 00 2C */	beq lbl_80563704
/* 805636DC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805636E0  4B BE 20 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 805636E4  38 00 00 00 */	li r0, 0
/* 805636E8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 805636EC  3C 60 80 56 */	lis r3, lit_4318@ha
/* 805636F0  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 805636F4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 805636F8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805636FC  38 00 00 04 */	li r0, 4
/* 80563700  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80563704:
/* 80563704  38 00 00 00 */	li r0, 0
/* 80563708  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056370C  38 00 00 02 */	li r0, 2
/* 80563710  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80563714:
/* 80563714  7F E3 FB 78 */	mr r3, r31
/* 80563718  7F E4 FB 78 */	mr r4, r31
/* 8056371C  38 BF 09 74 */	addi r5, r31, 0x974
/* 80563720  4B C3 6A 38 */	b shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c
/* 80563724  90 7F 11 2C */	stw r3, 0x112c(r31)
/* 80563728  80 1F 11 2C */	lwz r0, 0x112c(r31)
/* 8056372C  2C 00 00 00 */	cmpwi r0, 0
/* 80563730  41 82 00 38 */	beq lbl_80563768
/* 80563734  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80563738  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8056373C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80563740  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80563744  4B BE 1F 9C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80563748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056374C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80563750  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80563754  4B AD ED 14 */	b reset__14dEvt_control_cFv
/* 80563758  38 00 00 01 */	li r0, 1
/* 8056375C  98 1F 11 30 */	stb r0, 0x1130(r31)
/* 80563760  38 00 00 03 */	li r0, 3
/* 80563764  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80563768:
/* 80563768  38 60 00 00 */	li r3, 0
/* 8056376C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563774  7C 08 03 A6 */	mtlr r0
/* 80563778  38 21 00 10 */	addi r1, r1, 0x10
/* 8056377C  4E 80 00 20 */	blr 
