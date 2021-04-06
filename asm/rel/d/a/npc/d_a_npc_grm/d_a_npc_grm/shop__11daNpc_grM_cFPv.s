lbl_809D5C30:
/* 809D5C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D5C34  7C 08 02 A6 */	mflr r0
/* 809D5C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D5C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D5C40  7C 7F 1B 78 */	mr r31, r3
/* 809D5C44  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809D5C48  2C 00 00 02 */	cmpwi r0, 2
/* 809D5C4C  41 82 00 98 */	beq lbl_809D5CE4
/* 809D5C50  40 80 00 E8 */	bge lbl_809D5D38
/* 809D5C54  2C 00 00 00 */	cmpwi r0, 0
/* 809D5C58  40 80 00 0C */	bge lbl_809D5C64
/* 809D5C5C  48 00 00 DC */	b lbl_809D5D38
/* 809D5C60  48 00 00 D8 */	b lbl_809D5D38
lbl_809D5C64:
/* 809D5C64  80 1F 10 D8 */	lwz r0, 0x10d8(r31)
/* 809D5C68  2C 00 00 02 */	cmpwi r0, 2
/* 809D5C6C  40 82 00 10 */	bne lbl_809D5C7C
/* 809D5C70  38 80 00 01 */	li r4, 1
/* 809D5C74  4B 7C 44 5D */	bl shop_init__13dShopSystem_cFb
/* 809D5C78  48 00 00 28 */	b lbl_809D5CA0
lbl_809D5C7C:
/* 809D5C7C  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 809D5C80  4B 7C 06 8D */	bl Save__16ShopCam_action_cFv
/* 809D5C84  7F E3 FB 78 */	mr r3, r31
/* 809D5C88  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 809D5C8C  38 A0 00 00 */	li r5, 0
/* 809D5C90  4B 77 5F 61 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809D5C94  7F E3 FB 78 */	mr r3, r31
/* 809D5C98  38 80 00 00 */	li r4, 0
/* 809D5C9C  4B 7C 44 35 */	bl shop_init__13dShopSystem_cFb
lbl_809D5CA0:
/* 809D5CA0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809D5CA4  2C 00 00 04 */	cmpwi r0, 4
/* 809D5CA8  41 82 00 2C */	beq lbl_809D5CD4
/* 809D5CAC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809D5CB0  4B 76 FA 4D */	bl remove__18daNpcT_ActorMngr_cFv
/* 809D5CB4  38 00 00 00 */	li r0, 0
/* 809D5CB8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809D5CBC  3C 60 80 9D */	lis r3, lit_4009@ha /* 0x809D6E18@ha */
/* 809D5CC0  C0 03 6E 18 */	lfs f0, lit_4009@l(r3)  /* 0x809D6E18@l */
/* 809D5CC4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809D5CC8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809D5CCC  38 00 00 04 */	li r0, 4
/* 809D5CD0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809D5CD4:
/* 809D5CD4  38 00 00 00 */	li r0, 0
/* 809D5CD8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809D5CDC  38 00 00 02 */	li r0, 2
/* 809D5CE0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809D5CE4:
/* 809D5CE4  7F E3 FB 78 */	mr r3, r31
/* 809D5CE8  7F E4 FB 78 */	mr r4, r31
/* 809D5CEC  38 BF 09 74 */	addi r5, r31, 0x974
/* 809D5CF0  4B 7C 44 69 */	bl shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c
/* 809D5CF4  90 7F 10 D8 */	stw r3, 0x10d8(r31)
/* 809D5CF8  80 1F 10 D8 */	lwz r0, 0x10d8(r31)
/* 809D5CFC  2C 00 00 00 */	cmpwi r0, 0
/* 809D5D00  41 82 00 38 */	beq lbl_809D5D38
/* 809D5D04  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809D5D08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D5D0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D5D10  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809D5D14  4B 76 F9 CD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809D5D18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D5D1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D5D20  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809D5D24  4B 66 C7 45 */	bl reset__14dEvt_control_cFv
/* 809D5D28  38 00 00 01 */	li r0, 1
/* 809D5D2C  98 1F 10 DC */	stb r0, 0x10dc(r31)
/* 809D5D30  38 00 00 03 */	li r0, 3
/* 809D5D34  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809D5D38:
/* 809D5D38  38 60 00 00 */	li r3, 0
/* 809D5D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D5D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D5D44  7C 08 03 A6 */	mtlr r0
/* 809D5D48  38 21 00 10 */	addi r1, r1, 0x10
/* 809D5D4C  4E 80 00 20 */	blr 
