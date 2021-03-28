lbl_80966B24:
/* 80966B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80966B28  7C 08 02 A6 */	mflr r0
/* 80966B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80966B30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80966B34  7C 7F 1B 78 */	mr r31, r3
/* 80966B38  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80966B3C  2C 00 00 02 */	cmpwi r0, 2
/* 80966B40  41 82 00 B8 */	beq lbl_80966BF8
/* 80966B44  40 80 01 2C */	bge lbl_80966C70
/* 80966B48  2C 00 00 00 */	cmpwi r0, 0
/* 80966B4C  40 80 00 0C */	bge lbl_80966B58
/* 80966B50  48 00 01 20 */	b lbl_80966C70
/* 80966B54  48 00 01 1C */	b lbl_80966C70
lbl_80966B58:
/* 80966B58  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80966B5C  2C 00 00 00 */	cmpwi r0, 0
/* 80966B60  40 82 00 98 */	bne lbl_80966BF8
/* 80966B64  80 1F 12 5C */	lwz r0, 0x125c(r31)
/* 80966B68  2C 00 00 02 */	cmpwi r0, 2
/* 80966B6C  40 82 00 10 */	bne lbl_80966B7C
/* 80966B70  38 80 00 01 */	li r4, 1
/* 80966B74  4B 83 35 5C */	b shop_init__13dShopSystem_cFb
/* 80966B78  48 00 00 34 */	b lbl_80966BAC
lbl_80966B7C:
/* 80966B7C  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 80966B80  4B 82 F7 8C */	b Save__16ShopCam_action_cFv
/* 80966B84  7F E3 FB 78 */	mr r3, r31
/* 80966B88  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80966B8C  38 A0 00 00 */	li r5, 0
/* 80966B90  4B 7E 50 60 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80966B94  7F E3 FB 78 */	mr r3, r31
/* 80966B98  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80966B9C  4B 7E 3E 7C */	b setAngle__8daNpcT_cFs
/* 80966BA0  7F E3 FB 78 */	mr r3, r31
/* 80966BA4  38 80 00 00 */	li r4, 0
/* 80966BA8  4B 83 35 28 */	b shop_init__13dShopSystem_cFb
lbl_80966BAC:
/* 80966BAC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80966BB0  2C 00 00 00 */	cmpwi r0, 0
/* 80966BB4  41 82 00 28 */	beq lbl_80966BDC
/* 80966BB8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80966BBC  4B 7D EB 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80966BC0  38 00 00 00 */	li r0, 0
/* 80966BC4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80966BC8  3C 60 80 96 */	lis r3, lit_4103@ha
/* 80966BCC  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 80966BD0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80966BD4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966BD8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80966BDC:
/* 80966BDC  38 00 00 00 */	li r0, 0
/* 80966BE0  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80966BE4  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80966BE8  38 00 00 01 */	li r0, 1
/* 80966BEC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80966BF0  38 00 00 02 */	li r0, 2
/* 80966BF4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80966BF8:
/* 80966BF8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80966BFC  2C 00 00 00 */	cmpwi r0, 0
/* 80966C00  40 82 00 70 */	bne lbl_80966C70
/* 80966C04  7F E3 FB 78 */	mr r3, r31
/* 80966C08  7F E4 FB 78 */	mr r4, r31
/* 80966C0C  38 BF 09 74 */	addi r5, r31, 0x974
/* 80966C10  4B 83 35 48 */	b shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c
/* 80966C14  90 7F 12 5C */	stw r3, 0x125c(r31)
/* 80966C18  80 1F 12 5C */	lwz r0, 0x125c(r31)
/* 80966C1C  2C 00 00 00 */	cmpwi r0, 0
/* 80966C20  41 82 00 50 */	beq lbl_80966C70
/* 80966C24  38 60 00 39 */	li r3, 0x39
/* 80966C28  4B 7E 5F 44 */	b daNpcT_chkTmpBit__FUl
/* 80966C2C  2C 03 00 00 */	cmpwi r3, 0
/* 80966C30  41 82 00 0C */	beq lbl_80966C3C
/* 80966C34  38 00 00 01 */	li r0, 1
/* 80966C38  98 1F 12 66 */	stb r0, 0x1266(r31)
lbl_80966C3C:
/* 80966C3C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80966C40  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80966C44  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80966C48  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80966C4C  4B 7D EA 94 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80966C50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80966C54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80966C58  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80966C5C  4B 6D B8 0C */	b reset__14dEvt_control_cFv
/* 80966C60  38 00 00 03 */	li r0, 3
/* 80966C64  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80966C68  38 00 00 01 */	li r0, 1
/* 80966C6C  98 1F 12 64 */	stb r0, 0x1264(r31)
lbl_80966C70:
/* 80966C70  38 60 00 00 */	li r3, 0
/* 80966C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80966C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80966C7C  7C 08 03 A6 */	mtlr r0
/* 80966C80  38 21 00 10 */	addi r1, r1, 0x10
/* 80966C84  4E 80 00 20 */	blr 
