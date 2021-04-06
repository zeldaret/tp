lbl_8045D8F4:
/* 8045D8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D8F8  7C 08 02 A6 */	mflr r0
/* 8045D8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D904  7C 7F 1B 78 */	mr r31, r3
/* 8045D908  4B BD C8 B1 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 8045D90C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8045D910  7C 00 07 74 */	extsb r0, r0
/* 8045D914  2C 00 FF FF */	cmpwi r0, -1
/* 8045D918  40 82 00 10 */	bne lbl_8045D928
/* 8045D91C  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 8045D920  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8045D924  98 1F 04 8C */	stb r0, 0x48c(r31)
lbl_8045D928:
/* 8045D928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045D92C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045D930  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8045D934  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 8045D938  7F E5 FB 78 */	mr r5, r31
/* 8045D93C  4B C1 70 CD */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8045D940  38 00 00 01 */	li r0, 1
/* 8045D944  98 1F 05 84 */	stb r0, 0x584(r31)
/* 8045D948  38 00 00 04 */	li r0, 4
/* 8045D94C  98 1F 05 86 */	stb r0, 0x586(r31)
/* 8045D950  38 00 00 1E */	li r0, 0x1e
/* 8045D954  90 1F 05 94 */	stw r0, 0x594(r31)
/* 8045D958  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 8045D95C  3C 60 80 46 */	lis r3, lit_3826@ha /* 0x8045E54C@ha */
/* 8045D960  C0 23 E5 4C */	lfs f1, lit_3826@l(r3)  /* 0x8045E54C@l */
/* 8045D964  EC 00 08 2A */	fadds f0, f0, f1
/* 8045D968  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8045D96C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8045D970  EC 00 08 2A */	fadds f0, f0, f1
/* 8045D974  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8045D978  38 00 00 20 */	li r0, 0x20
/* 8045D97C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8045D980  7F E3 FB 78 */	mr r3, r31
/* 8045D984  4B FF FD C1 */	bl calcMtx__12daDbDoor00_cFv
/* 8045D988  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 8045D98C  4B C1 E0 35 */	bl Move__4dBgWFv
/* 8045D990  38 60 00 01 */	li r3, 1
/* 8045D994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D99C  7C 08 03 A6 */	mtlr r0
/* 8045D9A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D9A4  4E 80 00 20 */	blr 
