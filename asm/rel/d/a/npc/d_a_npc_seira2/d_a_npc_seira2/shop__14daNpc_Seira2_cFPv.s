lbl_80AD3890:
/* 80AD3890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3894  7C 08 02 A6 */	mflr r0
/* 80AD3898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD389C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD38A0  7C 7F 1B 78 */	mr r31, r3
/* 80AD38A4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AD38A8  2C 00 00 02 */	cmpwi r0, 2
/* 80AD38AC  41 82 00 5C */	beq lbl_80AD3908
/* 80AD38B0  40 80 00 98 */	bge lbl_80AD3948
/* 80AD38B4  2C 00 00 00 */	cmpwi r0, 0
/* 80AD38B8  40 80 00 0C */	bge lbl_80AD38C4
/* 80AD38BC  48 00 00 8C */	b lbl_80AD3948
/* 80AD38C0  48 00 00 88 */	b lbl_80AD3948
lbl_80AD38C4:
/* 80AD38C4  80 1F 10 E8 */	lwz r0, 0x10e8(r31)
/* 80AD38C8  2C 00 00 02 */	cmpwi r0, 2
/* 80AD38CC  40 82 00 10 */	bne lbl_80AD38DC
/* 80AD38D0  38 80 00 01 */	li r4, 1
/* 80AD38D4  4B 6C 67 FD */	bl shop_init__13dShopSystem_cFb
/* 80AD38D8  48 00 00 28 */	b lbl_80AD3900
lbl_80AD38DC:
/* 80AD38DC  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 80AD38E0  4B 6C 2A 2D */	bl Save__16ShopCam_action_cFv
/* 80AD38E4  7F E3 FB 78 */	mr r3, r31
/* 80AD38E8  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AD38EC  38 A0 00 00 */	li r5, 0
/* 80AD38F0  4B 67 83 01 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AD38F4  7F E3 FB 78 */	mr r3, r31
/* 80AD38F8  38 80 00 00 */	li r4, 0
/* 80AD38FC  4B 6C 67 D5 */	bl shop_init__13dShopSystem_cFb
lbl_80AD3900:
/* 80AD3900  38 00 00 02 */	li r0, 2
/* 80AD3904  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD3908:
/* 80AD3908  7F E3 FB 78 */	mr r3, r31
/* 80AD390C  7F E4 FB 78 */	mr r4, r31
/* 80AD3910  38 BF 09 74 */	addi r5, r31, 0x974
/* 80AD3914  4B 6C 68 45 */	bl shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c
/* 80AD3918  90 7F 10 E8 */	stw r3, 0x10e8(r31)
/* 80AD391C  80 1F 10 E8 */	lwz r0, 0x10e8(r31)
/* 80AD3920  2C 00 00 00 */	cmpwi r0, 0
/* 80AD3924  41 82 00 24 */	beq lbl_80AD3948
/* 80AD3928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD392C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD3930  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AD3934  4B 56 EB 35 */	bl reset__14dEvt_control_cFv
/* 80AD3938  38 00 00 01 */	li r0, 1
/* 80AD393C  98 1F 10 EC */	stb r0, 0x10ec(r31)
/* 80AD3940  38 00 00 03 */	li r0, 3
/* 80AD3944  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD3948:
/* 80AD3948  38 60 00 00 */	li r3, 0
/* 80AD394C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD3950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3954  7C 08 03 A6 */	mtlr r0
/* 80AD3958  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD395C  4E 80 00 20 */	blr 
