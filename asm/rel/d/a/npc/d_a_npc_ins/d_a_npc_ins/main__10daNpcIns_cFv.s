lbl_80A126D4:
/* 80A126D4  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80A126D8  7C 08 02 A6 */	mflr r0
/* 80A126DC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80A126E0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80A126E4  4B 94 FA F9 */	bl _savegpr_29
/* 80A126E8  7C 7E 1B 78 */	mr r30, r3
/* 80A126EC  3C 60 80 A1 */	lis r3, l_insectParams@ha /* 0x80A13DAC@ha */
/* 80A126F0  3B E3 3D AC */	addi r31, r3, l_insectParams@l /* 0x80A13DAC@l */
/* 80A126F4  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 80A126F8  4B 94 F9 21 */	bl __ptmf_test
/* 80A126FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A12700  41 82 00 18 */	beq lbl_80A12718
/* 80A12704  7F C3 F3 78 */	mr r3, r30
/* 80A12708  38 80 00 00 */	li r4, 0
/* 80A1270C  39 9E 0D C8 */	addi r12, r30, 0xdc8
/* 80A12710  4B 94 F9 75 */	bl __ptmf_scall
/* 80A12714  60 00 00 00 */	nop 
lbl_80A12718:
/* 80A12718  80 7E 0D F8 */	lwz r3, 0xdf8(r30)
/* 80A1271C  3C 03 00 01 */	addis r0, r3, 1
/* 80A12720  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A12724  41 82 00 4C */	beq lbl_80A12770
/* 80A12728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1272C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A12730  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80A12734  28 00 00 00 */	cmplwi r0, 0
/* 80A12738  41 82 00 38 */	beq lbl_80A12770
/* 80A1273C  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80A12740  4B 63 5C A9 */	bl getRunEventName__16dEvent_manager_cFv
/* 80A12744  3C 80 80 A1 */	lis r4, d_a_npc_ins__stringBase0@ha /* 0x80A14168@ha */
/* 80A12748  38 84 41 68 */	addi r4, r4, d_a_npc_ins__stringBase0@l /* 0x80A14168@l */
/* 80A1274C  38 84 00 22 */	addi r4, r4, 0x22
/* 80A12750  4B 95 62 45 */	bl strcmp
/* 80A12754  2C 03 00 00 */	cmpwi r3, 0
/* 80A12758  40 82 00 18 */	bne lbl_80A12770
/* 80A1275C  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80A12760  80 9E 0D F8 */	lwz r4, 0xdf8(r30)
/* 80A12764  4B 63 0F 89 */	bl setPtI_Id__14dEvt_control_cFUi
/* 80A12768  38 00 FF FF */	li r0, -1
/* 80A1276C  90 1E 0D F8 */	stw r0, 0xdf8(r30)
lbl_80A12770:
/* 80A12770  80 7F 01 54 */	lwz r3, 0x154(r31)
/* 80A12774  80 1F 01 58 */	lwz r0, 0x158(r31)
/* 80A12778  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A1277C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A12780  80 1F 01 5C */	lwz r0, 0x15c(r31)
/* 80A12784  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A12788  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A1278C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80A12790  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A12794  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 80A12798  90 01 00 08 */	stw r0, 8(r1)
/* 80A1279C  38 01 00 30 */	addi r0, r1, 0x30
/* 80A127A0  90 01 00 08 */	stw r0, 8(r1)
/* 80A127A4  80 7F 01 64 */	lwz r3, 0x164(r31)
/* 80A127A8  80 1F 01 68 */	lwz r0, 0x168(r31)
/* 80A127AC  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80A127B0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A127B4  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 80A127B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A127BC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A127C0  80 1F 01 70 */	lwz r0, 0x170(r31)
/* 80A127C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A127C8  38 01 00 3C */	addi r0, r1, 0x3c
/* 80A127CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A127D0  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 80A127D4  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80A127D8  90 61 00 48 */	stw r3, 0x48(r1)
/* 80A127DC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80A127E0  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 80A127E4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80A127E8  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 80A127EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A127F0  38 01 00 48 */	addi r0, r1, 0x48
/* 80A127F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A127F8  80 7F 01 84 */	lwz r3, 0x184(r31)
/* 80A127FC  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 80A12800  90 61 00 54 */	stw r3, 0x54(r1)
/* 80A12804  90 01 00 58 */	stw r0, 0x58(r1)
/* 80A12808  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 80A1280C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80A12810  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A12814  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80A12818  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1281C  38 01 00 54 */	addi r0, r1, 0x54
/* 80A12820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A12824  80 7F 01 94 */	lwz r3, 0x194(r31)
/* 80A12828  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 80A1282C  90 61 00 60 */	stw r3, 0x60(r1)
/* 80A12830  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A12834  80 1F 01 9C */	lwz r0, 0x19c(r31)
/* 80A12838  90 01 00 68 */	stw r0, 0x68(r1)
/* 80A1283C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A12840  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 80A12844  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A12848  38 01 00 60 */	addi r0, r1, 0x60
/* 80A1284C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A12850  80 7F 01 A4 */	lwz r3, 0x1a4(r31)
/* 80A12854  80 1F 01 A8 */	lwz r0, 0x1a8(r31)
/* 80A12858  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80A1285C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80A12860  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 80A12864  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A12868  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A1286C  80 1F 01 B0 */	lwz r0, 0x1b0(r31)
/* 80A12870  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A12874  38 01 00 6C */	addi r0, r1, 0x6c
/* 80A12878  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A1287C  80 7F 01 B4 */	lwz r3, 0x1b4(r31)
/* 80A12880  80 1F 01 B8 */	lwz r0, 0x1b8(r31)
/* 80A12884  90 61 00 78 */	stw r3, 0x78(r1)
/* 80A12888  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80A1288C  80 1F 01 BC */	lwz r0, 0x1bc(r31)
/* 80A12890  90 01 00 80 */	stw r0, 0x80(r1)
/* 80A12894  80 1F 01 C0 */	lwz r0, 0x1c0(r31)
/* 80A12898  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A1289C  38 01 00 78 */	addi r0, r1, 0x78
/* 80A128A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A128A4  80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 80A128A8  80 1F 01 C8 */	lwz r0, 0x1c8(r31)
/* 80A128AC  90 61 00 84 */	stw r3, 0x84(r1)
/* 80A128B0  90 01 00 88 */	stw r0, 0x88(r1)
/* 80A128B4  80 1F 01 CC */	lwz r0, 0x1cc(r31)
/* 80A128B8  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80A128BC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80A128C0  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 80A128C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A128C8  38 01 00 84 */	addi r0, r1, 0x84
/* 80A128CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A128D0  80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 80A128D4  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 80A128D8  90 61 00 90 */	stw r3, 0x90(r1)
/* 80A128DC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A128E0  80 1F 01 DC */	lwz r0, 0x1dc(r31)
/* 80A128E4  90 01 00 98 */	stw r0, 0x98(r1)
/* 80A128E8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80A128EC  80 1F 01 E0 */	lwz r0, 0x1e0(r31)
/* 80A128F0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A128F4  38 01 00 90 */	addi r0, r1, 0x90
/* 80A128F8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A128FC  80 7F 01 E4 */	lwz r3, 0x1e4(r31)
/* 80A12900  80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 80A12904  90 61 00 9C */	stw r3, 0x9c(r1)
/* 80A12908  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80A1290C  80 1F 01 EC */	lwz r0, 0x1ec(r31)
/* 80A12910  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80A12914  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80A12918  80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 80A1291C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A12920  38 01 00 9C */	addi r0, r1, 0x9c
/* 80A12924  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A12928  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 80A1292C  38 9F 01 F0 */	addi r4, r31, 0x1f0
/* 80A12930  38 00 00 05 */	li r0, 5
/* 80A12934  7C 09 03 A6 */	mtctr r0
lbl_80A12938:
/* 80A12938  80 64 00 04 */	lwz r3, 4(r4)
/* 80A1293C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A12940  90 65 00 04 */	stw r3, 4(r5)
/* 80A12944  94 05 00 08 */	stwu r0, 8(r5)
/* 80A12948  42 00 FF F0 */	bdnz lbl_80A12938
/* 80A1294C  38 01 00 08 */	addi r0, r1, 8
/* 80A12950  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80A12954  38 01 00 0C */	addi r0, r1, 0xc
/* 80A12958  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80A1295C  38 01 00 10 */	addi r0, r1, 0x10
/* 80A12960  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80A12964  38 01 00 14 */	addi r0, r1, 0x14
/* 80A12968  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80A1296C  38 01 00 18 */	addi r0, r1, 0x18
/* 80A12970  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80A12974  38 01 00 1C */	addi r0, r1, 0x1c
/* 80A12978  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80A1297C  38 01 00 20 */	addi r0, r1, 0x20
/* 80A12980  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80A12984  38 01 00 24 */	addi r0, r1, 0x24
/* 80A12988  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80A1298C  38 01 00 28 */	addi r0, r1, 0x28
/* 80A12990  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80A12994  38 01 00 2C */	addi r0, r1, 0x2c
/* 80A12998  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80A1299C  A8 7E 09 DE */	lha r3, 0x9de(r30)
/* 80A129A0  7C 60 07 35 */	extsh. r0, r3
/* 80A129A4  41 80 00 18 */	blt lbl_80A129BC
/* 80A129A8  2C 03 00 0A */	cmpwi r3, 0xa
/* 80A129AC  40 80 00 10 */	bge lbl_80A129BC
/* 80A129B0  7F C3 F3 78 */	mr r3, r30
/* 80A129B4  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80A129B8  4B 74 07 99 */	bl playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80A129BC:
/* 80A129BC  7F C3 F3 78 */	mr r3, r30
/* 80A129C0  48 00 00 51 */	bl playMotion__10daNpcIns_cFv
/* 80A129C4  3C 60 80 A1 */	lis r3, lit_4607@ha /* 0x80A143A4@ha */
/* 80A129C8  38 83 43 A4 */	addi r4, r3, lit_4607@l /* 0x80A143A4@l */
/* 80A129CC  80 64 00 00 */	lwz r3, 0(r4)
/* 80A129D0  80 04 00 04 */	lwz r0, 4(r4)
/* 80A129D4  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 80A129D8  90 01 00 AC */	stw r0, 0xac(r1)
/* 80A129DC  80 04 00 08 */	lwz r0, 8(r4)
/* 80A129E0  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80A129E4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80A129E8  38 9E 0D C8 */	addi r4, r30, 0xdc8
/* 80A129EC  4B 94 F6 5D */	bl __ptmf_cmpr
/* 80A129F0  7C 60 00 34 */	cntlzw r0, r3
/* 80A129F4  54 03 D9 7E */	srwi r3, r0, 5
/* 80A129F8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80A129FC  4B 94 F8 2D */	bl _restgpr_29
/* 80A12A00  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80A12A04  7C 08 03 A6 */	mtlr r0
/* 80A12A08  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80A12A0C  4E 80 00 20 */	blr 
