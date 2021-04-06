lbl_804E13C8:
/* 804E13C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E13CC  7C 08 02 A6 */	mflr r0
/* 804E13D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E13D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804E13D8  4B E8 0E 01 */	bl _savegpr_28
/* 804E13DC  7C 7F 1B 78 */	mr r31, r3
/* 804E13E0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804E13E4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804E13E8  40 82 01 24 */	bne lbl_804E150C
/* 804E13EC  7F E0 FB 79 */	or. r0, r31, r31
/* 804E13F0  41 82 01 10 */	beq lbl_804E1500
/* 804E13F4  7C 1E 03 78 */	mr r30, r0
/* 804E13F8  7C 1D 03 78 */	mr r29, r0
/* 804E13FC  4B B3 77 69 */	bl __ct__10fopAc_ac_cFv
/* 804E1400  3C 60 80 3B */	lis r3, __vt__12daItemBase_c@ha /* 0x803B3610@ha */
/* 804E1404  38 03 36 10 */	addi r0, r3, __vt__12daItemBase_c@l /* 0x803B3610@l */
/* 804E1408  90 1D 05 68 */	stw r0, 0x568(r29)
/* 804E140C  3B 9D 05 8C */	addi r28, r29, 0x58c
/* 804E1410  7F 83 E3 78 */	mr r3, r28
/* 804E1414  4B B9 4C 8D */	bl __ct__9dBgS_AcchFv
/* 804E1418  3C 60 80 4E */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x804E1B78@ha */
/* 804E141C  38 63 1B 78 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x804E1B78@l */
/* 804E1420  90 7C 00 10 */	stw r3, 0x10(r28)
/* 804E1424  38 03 00 0C */	addi r0, r3, 0xc
/* 804E1428  90 1C 00 14 */	stw r0, 0x14(r28)
/* 804E142C  38 03 00 18 */	addi r0, r3, 0x18
/* 804E1430  90 1C 00 24 */	stw r0, 0x24(r28)
/* 804E1434  38 7C 00 14 */	addi r3, r28, 0x14
/* 804E1438  4B B9 7A 31 */	bl SetObj__16dBgS_PolyPassChkFv
/* 804E143C  38 7D 07 64 */	addi r3, r29, 0x764
/* 804E1440  4B B9 4A 6D */	bl __ct__12dBgS_AcchCirFv
/* 804E1444  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 804E1448  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 804E144C  90 1D 07 BC */	stw r0, 0x7bc(r29)
/* 804E1450  38 7D 07 C0 */	addi r3, r29, 0x7c0
/* 804E1454  4B BA 23 0D */	bl __ct__10dCcD_GSttsFv
/* 804E1458  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 804E145C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 804E1460  90 7D 07 BC */	stw r3, 0x7bc(r29)
/* 804E1464  38 03 00 20 */	addi r0, r3, 0x20
/* 804E1468  90 1D 07 C0 */	stw r0, 0x7c0(r29)
/* 804E146C  3B 9D 07 E0 */	addi r28, r29, 0x7e0
/* 804E1470  7F 83 E3 78 */	mr r3, r28
/* 804E1474  4B BA 25 B5 */	bl __ct__12dCcD_GObjInfFv
/* 804E1478  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804E147C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804E1480  90 1C 01 20 */	stw r0, 0x120(r28)
/* 804E1484  3C 60 80 4E */	lis r3, __vt__8cM3dGAab@ha /* 0x804E1B6C@ha */
/* 804E1488  38 03 1B 6C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804E1B6C@l */
/* 804E148C  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 804E1490  3C 60 80 4E */	lis r3, __vt__8cM3dGCyl@ha /* 0x804E1B60@ha */
/* 804E1494  38 03 1B 60 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x804E1B60@l */
/* 804E1498  90 1C 01 38 */	stw r0, 0x138(r28)
/* 804E149C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 804E14A0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 804E14A4  90 7C 01 20 */	stw r3, 0x120(r28)
/* 804E14A8  38 03 00 58 */	addi r0, r3, 0x58
/* 804E14AC  90 1C 01 38 */	stw r0, 0x138(r28)
/* 804E14B0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 804E14B4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 804E14B8  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 804E14BC  38 03 00 2C */	addi r0, r3, 0x2c
/* 804E14C0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 804E14C4  38 03 00 84 */	addi r0, r3, 0x84
/* 804E14C8  90 1C 01 38 */	stw r0, 0x138(r28)
/* 804E14CC  3C 60 80 4E */	lis r3, __vt__9daDitem_c@ha /* 0x804E1B9C@ha */
/* 804E14D0  38 03 1B 9C */	addi r0, r3, __vt__9daDitem_c@l /* 0x804E1B9C@l */
/* 804E14D4  90 1E 05 68 */	stw r0, 0x568(r30)
/* 804E14D8  38 7E 09 6C */	addi r3, r30, 0x96c
/* 804E14DC  38 80 00 00 */	li r4, 0
/* 804E14E0  38 A0 00 00 */	li r5, 0
/* 804E14E4  4B B6 80 9D */	bl __ct__19dPa_followEcallBackFUcUc
/* 804E14E8  38 7E 09 80 */	addi r3, r30, 0x980
/* 804E14EC  38 80 00 00 */	li r4, 0
/* 804E14F0  38 A0 00 00 */	li r5, 0
/* 804E14F4  4B B6 80 8D */	bl __ct__19dPa_followEcallBackFUcUc
/* 804E14F8  38 7E 09 A8 */	addi r3, r30, 0x9a8
/* 804E14FC  4B DD D3 49 */	bl __ct__16Z2SoundObjSimpleFv
lbl_804E1500:
/* 804E1500  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804E1504  60 00 00 08 */	ori r0, r0, 8
/* 804E1508  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804E150C:
/* 804E150C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804E1510  98 1F 09 2A */	stb r0, 0x92a(r31)
/* 804E1514  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 804E1518  1C 00 00 18 */	mulli r0, r0, 0x18
/* 804E151C  3C 60 80 3B */	lis r3, item_resource__10dItem_data@ha /* 0x803AC5A0@ha */
/* 804E1520  38 63 C5 A0 */	addi r3, r3, item_resource__10dItem_data@l /* 0x803AC5A0@l */
/* 804E1524  7C 83 00 2E */	lwzx r4, r3, r0
/* 804E1528  7C 63 02 14 */	add r3, r3, r0
/* 804E152C  A8 03 00 04 */	lha r0, 4(r3)
/* 804E1530  7C 00 07 35 */	extsh. r0, r0
/* 804E1534  41 80 00 0C */	blt lbl_804E1540
/* 804E1538  28 04 00 00 */	cmplwi r4, 0
/* 804E153C  40 82 00 0C */	bne lbl_804E1548
lbl_804E1540:
/* 804E1540  38 00 00 01 */	li r0, 1
/* 804E1544  98 1F 09 2A */	stb r0, 0x92a(r31)
lbl_804E1548:
/* 804E1548  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 804E154C  1C 00 00 18 */	mulli r0, r0, 0x18
/* 804E1550  3C 60 80 3B */	lis r3, item_resource__10dItem_data@ha /* 0x803AC5A0@ha */
/* 804E1554  38 63 C5 A0 */	addi r3, r3, item_resource__10dItem_data@l /* 0x803AC5A0@l */
/* 804E1558  7C 83 00 2E */	lwzx r4, r3, r0
/* 804E155C  38 7F 05 6C */	addi r3, r31, 0x56c
/* 804E1560  4B B4 B9 5D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804E1564  7C 7E 1B 78 */	mr r30, r3
/* 804E1568  2C 1E 00 04 */	cmpwi r30, 4
/* 804E156C  40 82 00 34 */	bne lbl_804E15A0
/* 804E1570  7F E3 FB 78 */	mr r3, r31
/* 804E1574  3C 80 80 03 */	lis r4, CheckItemCreateHeap__FP10fopAc_ac_c@ha /* 0x80037B0C@ha */
/* 804E1578  38 84 7B 0C */	addi r4, r4, CheckItemCreateHeap__FP10fopAc_ac_c@l /* 0x80037B0C@l */
/* 804E157C  3C A0 80 00 */	lis r5, 0x8000 /* 0x80003390@ha */
/* 804E1580  38 A5 33 90 */	addi r5, r5, 0x3390 /* 0x80003390@l */
/* 804E1584  4B B3 8F 2D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804E1588  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E158C  40 82 00 0C */	bne lbl_804E1598
/* 804E1590  3B C0 00 05 */	li r30, 5
/* 804E1594  48 00 00 0C */	b lbl_804E15A0
lbl_804E1598:
/* 804E1598  7F E3 FB 78 */	mr r3, r31
/* 804E159C  4B FF E6 39 */	bl CreateInit__9daDitem_cFv
lbl_804E15A0:
/* 804E15A0  7F C3 F3 78 */	mr r3, r30
/* 804E15A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804E15A8  4B E8 0C 7D */	bl _restgpr_28
/* 804E15AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E15B0  7C 08 03 A6 */	mtlr r0
/* 804E15B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804E15B8  4E 80 00 20 */	blr 
