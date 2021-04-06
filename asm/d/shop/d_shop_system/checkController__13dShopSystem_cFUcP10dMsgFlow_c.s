lbl_80197670:
/* 80197670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80197674  7C 08 02 A6 */	mflr r0
/* 80197678  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019767C  39 61 00 20 */	addi r11, r1, 0x20
/* 80197680  48 1C AB 59 */	bl _savegpr_28
/* 80197684  7C 7D 1B 78 */	mr r29, r3
/* 80197688  7C 9E 23 78 */	mr r30, r4
/* 8019768C  7C BF 2B 78 */	mr r31, r5
/* 80197690  88 03 0F 72 */	lbz r0, 0xf72(r3)
/* 80197694  28 00 00 00 */	cmplwi r0, 0
/* 80197698  41 82 00 28 */	beq lbl_801976C0
/* 8019769C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801976A0  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801976A4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 801976A8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 801976AC  41 82 00 0C */	beq lbl_801976B8
/* 801976B0  38 60 00 01 */	li r3, 1
/* 801976B4  48 0A 02 05 */	bl setShopWaitTimer__12dMsgObject_cFUc
lbl_801976B8:
/* 801976B8  38 60 00 00 */	li r3, 0
/* 801976BC  48 00 01 34 */	b lbl_801977F0
lbl_801976C0:
/* 801976C0  48 00 34 E9 */	bl dpdMove__13dShopSystem_cFv
/* 801976C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801976C8  40 82 00 0C */	bne lbl_801976D4
/* 801976CC  80 7D 0E 40 */	lwz r3, 0xe40(r29)
/* 801976D0  4B E9 AA CD */	bl checkTrigger__9STControlFv
lbl_801976D4:
/* 801976D4  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 801976D8  28 00 00 04 */	cmplwi r0, 4
/* 801976DC  40 82 00 14 */	bne lbl_801976F0
/* 801976E0  7F A3 EB 78 */	mr r3, r29
/* 801976E4  7F C4 F3 78 */	mr r4, r30
/* 801976E8  48 00 0B 69 */	bl chooseItem4__13dShopSystem_cFUc
/* 801976EC  48 00 00 28 */	b lbl_80197714
lbl_801976F0:
/* 801976F0  28 00 00 05 */	cmplwi r0, 5
/* 801976F4  40 82 00 14 */	bne lbl_80197708
/* 801976F8  7F A3 EB 78 */	mr r3, r29
/* 801976FC  7F C4 F3 78 */	mr r4, r30
/* 80197700  48 00 06 D1 */	bl chooseItem5__13dShopSystem_cFUc
/* 80197704  48 00 00 10 */	b lbl_80197714
lbl_80197708:
/* 80197708  7F A3 EB 78 */	mr r3, r29
/* 8019770C  7F C4 F3 78 */	mr r4, r30
/* 80197710  48 00 00 F9 */	bl chooseItem3__13dShopSystem_cFUc
lbl_80197714:
/* 80197714  2C 03 00 00 */	cmpwi r3, 0
/* 80197718  41 82 00 08 */	beq lbl_80197720
/* 8019771C  48 00 00 D4 */	b lbl_801977F0
lbl_80197720:
/* 80197720  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80197724  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80197728  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8019772C  88 03 01 A2 */	lbz r0, 0x1a2(r3)
/* 80197730  28 00 00 00 */	cmplwi r0, 0
/* 80197734  41 82 00 18 */	beq lbl_8019774C
/* 80197738  20 00 00 02 */	subfic r0, r0, 2
/* 8019773C  7C 00 00 34 */	cntlzw r0, r0
/* 80197740  54 03 D9 7E */	srwi r3, r0, 5
/* 80197744  38 63 00 01 */	addi r3, r3, 1
/* 80197748  48 00 00 A8 */	b lbl_801977F0
lbl_8019774C:
/* 8019774C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80197750  3B 83 D2 E8 */	addi r28, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80197754  80 1C 00 34 */	lwz r0, 0x34(r28)
/* 80197758  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8019775C  41 82 00 54 */	beq lbl_801977B0
/* 80197760  48 0A 0A CD */	bl getStatus__12dMsgObject_cFv
/* 80197764  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80197768  28 00 00 06 */	cmplwi r0, 6
/* 8019776C  41 82 00 44 */	beq lbl_801977B0
/* 80197770  48 0A 0A BD */	bl getStatus__12dMsgObject_cFv
/* 80197774  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80197778  28 00 00 08 */	cmplwi r0, 8
/* 8019777C  41 82 00 34 */	beq lbl_801977B0
/* 80197780  48 0A 0A AD */	bl getStatus__12dMsgObject_cFv
/* 80197784  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80197788  28 00 00 09 */	cmplwi r0, 9
/* 8019778C  41 82 00 24 */	beq lbl_801977B0
/* 80197790  48 0A 0A 9D */	bl getStatus__12dMsgObject_cFv
/* 80197794  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80197798  28 00 00 14 */	cmplwi r0, 0x14
/* 8019779C  41 82 00 14 */	beq lbl_801977B0
/* 801977A0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801977A4  41 82 00 0C */	beq lbl_801977B0
/* 801977A8  38 60 00 01 */	li r3, 1
/* 801977AC  48 00 00 44 */	b lbl_801977F0
lbl_801977B0:
/* 801977B0  80 1C 00 34 */	lwz r0, 0x34(r28)
/* 801977B4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 801977B8  41 82 00 34 */	beq lbl_801977EC
/* 801977BC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801977C0  28 00 00 02 */	cmplwi r0, 2
/* 801977C4  41 82 00 14 */	beq lbl_801977D8
/* 801977C8  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 801977CC  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 801977D0  38 00 00 00 */	li r0, 0
/* 801977D4  98 1D 0F 6E */	stb r0, 0xf6e(r29)
lbl_801977D8:
/* 801977D8  88 1F 00 24 */	lbz r0, 0x24(r31)
/* 801977DC  28 00 00 00 */	cmplwi r0, 0
/* 801977E0  40 82 00 0C */	bne lbl_801977EC
/* 801977E4  38 60 00 02 */	li r3, 2
/* 801977E8  48 00 00 08 */	b lbl_801977F0
lbl_801977EC:
/* 801977EC  38 60 00 00 */	li r3, 0
lbl_801977F0:
/* 801977F0  39 61 00 20 */	addi r11, r1, 0x20
/* 801977F4  48 1C AA 31 */	bl _restgpr_28
/* 801977F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801977FC  7C 08 03 A6 */	mtlr r0
/* 80197800  38 21 00 20 */	addi r1, r1, 0x20
/* 80197804  4E 80 00 20 */	blr 
