lbl_80A173D8:
/* 80A173D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A173DC  7C 08 02 A6 */	mflr r0
/* 80A173E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A173E4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A173E8  4B 94 AD E0 */	b _savegpr_24
/* 80A173EC  7C 7A 1B 78 */	mr r26, r3
/* 80A173F0  7C 98 23 78 */	mr r24, r4
/* 80A173F4  3C 60 80 A2 */	lis r3, m__19daNpc_Jagar_Param_c@ha
/* 80A173F8  3B C3 A3 30 */	addi r30, r3, m__19daNpc_Jagar_Param_c@l
/* 80A173FC  3B A0 00 00 */	li r29, 0
/* 80A17400  3B 80 FF FF */	li r28, -1
/* 80A17404  3B 60 00 00 */	li r27, 0
/* 80A17408  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A1740C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A17410  3B 3F 4F F8 */	addi r25, r31, 0x4ff8
/* 80A17414  7F 23 CB 78 */	mr r3, r25
/* 80A17418  3C A0 80 A2 */	lis r5, struct_80A1A49C+0x0@ha
/* 80A1741C  38 A5 A4 9C */	addi r5, r5, struct_80A1A49C+0x0@l
/* 80A17420  38 A5 00 8E */	addi r5, r5, 0x8e
/* 80A17424  38 C0 00 03 */	li r6, 3
/* 80A17428  4B 63 0C C4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A1742C  28 03 00 00 */	cmplwi r3, 0
/* 80A17430  41 82 00 08 */	beq lbl_80A17438
/* 80A17434  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A17438:
/* 80A17438  7F 23 CB 78 */	mr r3, r25
/* 80A1743C  7F 04 C3 78 */	mr r4, r24
/* 80A17440  3C A0 80 A2 */	lis r5, struct_80A1A49C+0x0@ha
/* 80A17444  38 A5 A4 9C */	addi r5, r5, struct_80A1A49C+0x0@l
/* 80A17448  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80A1744C  38 C0 00 03 */	li r6, 3
/* 80A17450  4B 63 0C 9C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A17454  28 03 00 00 */	cmplwi r3, 0
/* 80A17458  41 82 00 08 */	beq lbl_80A17460
/* 80A1745C  83 63 00 00 */	lwz r27, 0(r3)
lbl_80A17460:
/* 80A17460  7F 23 CB 78 */	mr r3, r25
/* 80A17464  7F 04 C3 78 */	mr r4, r24
/* 80A17468  4B 63 08 E4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A1746C  2C 03 00 00 */	cmpwi r3, 0
/* 80A17470  41 82 02 4C */	beq lbl_80A176BC
/* 80A17474  28 1C 00 0B */	cmplwi r28, 0xb
/* 80A17478  41 81 02 44 */	bgt lbl_80A176BC
/* 80A1747C  3C 60 80 A2 */	lis r3, lit_5660@ha
/* 80A17480  38 63 AB E0 */	addi r3, r3, lit_5660@l
/* 80A17484  57 80 10 3A */	slwi r0, r28, 2
/* 80A17488  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A1748C  7C 09 03 A6 */	mtctr r0
/* 80A17490  4E 80 04 20 */	bctr 
lbl_80A17494:
/* 80A17494  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80A17498  2C 00 00 01 */	cmpwi r0, 1
/* 80A1749C  41 82 00 24 */	beq lbl_80A174C0
/* 80A174A0  83 7A 0B 5C */	lwz r27, 0xb5c(r26)
/* 80A174A4  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80A174A8  4B 72 E3 F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A174AC  93 7A 0B 5C */	stw r27, 0xb5c(r26)
/* 80A174B0  38 00 00 01 */	li r0, 1
/* 80A174B4  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80A174B8  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80A174BC  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80A174C0:
/* 80A174C0  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80A174C4  2C 00 00 07 */	cmpwi r0, 7
/* 80A174C8  41 82 00 24 */	beq lbl_80A174EC
/* 80A174CC  83 7A 0B 80 */	lwz r27, 0xb80(r26)
/* 80A174D0  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80A174D4  4B 72 E3 C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A174D8  93 7A 0B 80 */	stw r27, 0xb80(r26)
/* 80A174DC  38 00 00 07 */	li r0, 7
/* 80A174E0  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80A174E4  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80A174E8  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80A174EC:
/* 80A174EC  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501E6@ha */
/* 80A174F0  38 03 01 E6 */	addi r0, r3, 0x01E6 /* 0x000501E6@l */
/* 80A174F4  90 01 00 08 */	stw r0, 8(r1)
/* 80A174F8  38 7A 05 80 */	addi r3, r26, 0x580
/* 80A174FC  38 81 00 08 */	addi r4, r1, 8
/* 80A17500  38 A0 FF FF */	li r5, -1
/* 80A17504  81 9A 05 80 */	lwz r12, 0x580(r26)
/* 80A17508  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A1750C  7D 89 03 A6 */	mtctr r12
/* 80A17510  4E 80 04 21 */	bctrl 
/* 80A17514  7F 43 D3 78 */	mr r3, r26
/* 80A17518  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A1751C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A17520  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A17524  4B 60 31 EC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A17528  B0 7A 0D C8 */	sth r3, 0xdc8(r26)
/* 80A1752C  A8 1A 0D D8 */	lha r0, 0xdd8(r26)
/* 80A17530  2C 00 00 01 */	cmpwi r0, 1
/* 80A17534  40 82 00 0C */	bne lbl_80A17540
/* 80A17538  38 00 00 00 */	li r0, 0
/* 80A1753C  B0 1A 0D D8 */	sth r0, 0xdd8(r26)
lbl_80A17540:
/* 80A17540  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80A17544  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A17548  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80A1754C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A17550  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A17554  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 80A17558  38 80 00 09 */	li r4, 9
/* 80A1755C  38 A0 00 0F */	li r5, 0xf
/* 80A17560  38 C1 00 18 */	addi r6, r1, 0x18
/* 80A17564  4B 65 84 C0 */	b StartShock__12dVibration_cFii4cXyz
/* 80A17568  48 00 01 54 */	b lbl_80A176BC
lbl_80A1756C:
/* 80A1756C  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80A17570  2C 00 00 08 */	cmpwi r0, 8
/* 80A17574  41 82 00 24 */	beq lbl_80A17598
/* 80A17578  83 FA 0B 5C */	lwz r31, 0xb5c(r26)
/* 80A1757C  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80A17580  4B 72 E3 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17584  93 FA 0B 5C */	stw r31, 0xb5c(r26)
/* 80A17588  38 00 00 08 */	li r0, 8
/* 80A1758C  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80A17590  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80A17594  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80A17598:
/* 80A17598  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80A1759C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A175A0  41 82 00 24 */	beq lbl_80A175C4
/* 80A175A4  83 FA 0B 80 */	lwz r31, 0xb80(r26)
/* 80A175A8  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80A175AC  4B 72 E2 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A175B0  93 FA 0B 80 */	stw r31, 0xb80(r26)
/* 80A175B4  38 00 00 0F */	li r0, 0xf
/* 80A175B8  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80A175BC  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80A175C0  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80A175C4:
/* 80A175C4  A8 1A 04 B6 */	lha r0, 0x4b6(r26)
/* 80A175C8  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80A175CC  A8 7A 04 B6 */	lha r3, 0x4b6(r26)
/* 80A175D0  A8 1A 0D C8 */	lha r0, 0xdc8(r26)
/* 80A175D4  7C 03 00 50 */	subf r0, r3, r0
/* 80A175D8  7C 00 07 35 */	extsh. r0, r0
/* 80A175DC  40 81 00 14 */	ble lbl_80A175F0
/* 80A175E0  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 80A175E4  38 03 C0 00 */	addi r0, r3, -16384
/* 80A175E8  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80A175EC  48 00 00 10 */	b lbl_80A175FC
lbl_80A175F0:
/* 80A175F0  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 80A175F4  38 03 40 00 */	addi r0, r3, 0x4000
/* 80A175F8  B0 1A 04 DE */	sth r0, 0x4de(r26)
lbl_80A175FC:
/* 80A175FC  93 7A 0D C4 */	stw r27, 0xdc4(r26)
/* 80A17600  48 00 00 BC */	b lbl_80A176BC
lbl_80A17604:
/* 80A17604  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80A17608  2C 00 00 08 */	cmpwi r0, 8
/* 80A1760C  41 82 00 24 */	beq lbl_80A17630
/* 80A17610  83 7A 0B 5C */	lwz r27, 0xb5c(r26)
/* 80A17614  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80A17618  4B 72 E2 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A1761C  93 7A 0B 5C */	stw r27, 0xb5c(r26)
/* 80A17620  38 00 00 08 */	li r0, 8
/* 80A17624  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80A17628  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A1762C  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80A17630:
/* 80A17630  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80A17634  2C 00 00 05 */	cmpwi r0, 5
/* 80A17638  41 82 00 24 */	beq lbl_80A1765C
/* 80A1763C  83 7A 0B 80 */	lwz r27, 0xb80(r26)
/* 80A17640  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80A17644  4B 72 E2 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17648  93 7A 0B 80 */	stw r27, 0xb80(r26)
/* 80A1764C  38 00 00 05 */	li r0, 5
/* 80A17650  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80A17654  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A17658  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80A1765C:
/* 80A1765C  C0 1A 04 A8 */	lfs f0, 0x4a8(r26)
/* 80A17660  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A17664  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80A17668  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A1766C  C0 1A 04 B0 */	lfs f0, 0x4b0(r26)
/* 80A17670  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A17674  7F 43 D3 78 */	mr r3, r26
/* 80A17678  38 81 00 0C */	addi r4, r1, 0xc
/* 80A1767C  4B 73 32 8C */	b setPos__8daNpcT_cF4cXyz
/* 80A17680  7F 43 D3 78 */	mr r3, r26
/* 80A17684  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 80A17688  4B 73 33 90 */	b setAngle__8daNpcT_cFs
/* 80A1768C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A17690  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80A17694  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 80A17698  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80A1769C  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 80A176A0  80 1A 06 B8 */	lwz r0, 0x6b8(r26)
/* 80A176A4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80A176A8  90 1A 06 B8 */	stw r0, 0x6b8(r26)
/* 80A176AC  38 00 00 01 */	li r0, 1
/* 80A176B0  98 1A 0E 25 */	stb r0, 0xe25(r26)
/* 80A176B4  48 00 00 08 */	b lbl_80A176BC
lbl_80A176B8:
/* 80A176B8  93 7A 0D C4 */	stw r27, 0xdc4(r26)
lbl_80A176BC:
/* 80A176BC  28 1C 00 0B */	cmplwi r28, 0xb
/* 80A176C0  41 81 01 BC */	bgt lbl_80A1787C
/* 80A176C4  3C 60 80 A2 */	lis r3, lit_5661@ha
/* 80A176C8  38 63 AB B0 */	addi r3, r3, lit_5661@l
/* 80A176CC  57 80 10 3A */	slwi r0, r28, 2
/* 80A176D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A176D4  7C 09 03 A6 */	mtctr r0
/* 80A176D8  4E 80 04 20 */	bctr 
lbl_80A176DC:
/* 80A176DC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80A176E0  2C 00 00 01 */	cmpwi r0, 1
/* 80A176E4  41 82 00 28 */	beq lbl_80A1770C
/* 80A176E8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80A176EC  4B 72 E0 10 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A176F0  38 00 00 00 */	li r0, 0
/* 80A176F4  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80A176F8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A176FC  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80A17700  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A17704  38 00 00 01 */	li r0, 1
/* 80A17708  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80A1770C:
/* 80A1770C  38 00 00 00 */	li r0, 0
/* 80A17710  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A17714  A8 9A 0D C8 */	lha r4, 0xdc8(r26)
/* 80A17718  A8 1A 0D 7A */	lha r0, 0xd7a(r26)
/* 80A1771C  7C 04 00 00 */	cmpw r4, r0
/* 80A17720  40 82 00 0C */	bne lbl_80A1772C
/* 80A17724  3B A0 00 01 */	li r29, 1
/* 80A17728  48 00 01 54 */	b lbl_80A1787C
lbl_80A1772C:
/* 80A1772C  7F 43 D3 78 */	mr r3, r26
/* 80A17730  38 A0 FF FF */	li r5, -1
/* 80A17734  38 C0 FF FF */	li r6, -1
/* 80A17738  38 E0 00 0F */	li r7, 0xf
/* 80A1773C  39 00 00 00 */	li r8, 0
/* 80A17740  4B 73 3F 08 */	b step__8daNpcT_cFsiiii
/* 80A17744  48 00 01 38 */	b lbl_80A1787C
lbl_80A17748:
/* 80A17748  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80A1774C  2C 00 00 01 */	cmpwi r0, 1
/* 80A17750  41 82 00 28 */	beq lbl_80A17778
/* 80A17754  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80A17758  4B 72 DF A4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A1775C  38 00 00 00 */	li r0, 0
/* 80A17760  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80A17764  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A17768  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80A1776C  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A17770  38 00 00 01 */	li r0, 1
/* 80A17774  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80A17778:
/* 80A17778  38 00 00 00 */	li r0, 0
/* 80A1777C  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A17780  3B A0 00 01 */	li r29, 1
/* 80A17784  48 00 00 F8 */	b lbl_80A1787C
lbl_80A17788:
/* 80A17788  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80A1778C  2C 00 00 01 */	cmpwi r0, 1
/* 80A17790  41 82 00 28 */	beq lbl_80A177B8
/* 80A17794  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80A17798  4B 72 DF 64 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A1779C  38 00 00 00 */	li r0, 0
/* 80A177A0  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80A177A4  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A177A8  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80A177AC  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A177B0  38 00 00 01 */	li r0, 1
/* 80A177B4  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80A177B8:
/* 80A177B8  38 00 00 00 */	li r0, 0
/* 80A177BC  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A177C0  38 7A 04 E6 */	addi r3, r26, 0x4e6
/* 80A177C4  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 80A177C8  38 A0 08 00 */	li r5, 0x800
/* 80A177CC  4B 85 8F 04 */	b cLib_chaseS__FPsss
/* 80A177D0  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80A177D4  B0 1A 0D 7A */	sth r0, 0xd7a(r26)
/* 80A177D8  A8 1A 0D 7A */	lha r0, 0xd7a(r26)
/* 80A177DC  B0 1A 0D 80 */	sth r0, 0xd80(r26)
/* 80A177E0  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80A177E4  38 9E 00 00 */	addi r4, r30, 0
/* 80A177E8  C0 24 00 98 */	lfs f1, 0x98(r4)
/* 80A177EC  C0 5E 01 4C */	lfs f2, 0x14c(r30)
/* 80A177F0  4B 85 8F 50 */	b cLib_chaseF__FPfff
/* 80A177F4  80 1A 06 B8 */	lwz r0, 0x6b8(r26)
/* 80A177F8  60 00 00 04 */	ori r0, r0, 4
/* 80A177FC  90 1A 06 B8 */	stw r0, 0x6b8(r26)
/* 80A17800  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80A17804  48 00 28 3D */	bl func_80A1A040
/* 80A17808  2C 03 00 00 */	cmpwi r3, 0
/* 80A1780C  40 82 00 70 */	bne lbl_80A1787C
/* 80A17810  3B A0 00 01 */	li r29, 1
/* 80A17814  48 00 00 68 */	b lbl_80A1787C
lbl_80A17818:
/* 80A17818  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80A1781C  2C 00 00 00 */	cmpwi r0, 0
/* 80A17820  41 82 00 24 */	beq lbl_80A17844
/* 80A17824  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80A17828  4B 72 DE D4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A1782C  38 00 00 00 */	li r0, 0
/* 80A17830  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80A17834  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A17838  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80A1783C  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A17840  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80A17844:
/* 80A17844  38 00 00 00 */	li r0, 0
/* 80A17848  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A1784C  3B A0 00 01 */	li r29, 1
/* 80A17850  48 00 00 2C */	b lbl_80A1787C
lbl_80A17854:
/* 80A17854  80 1A 0B 84 */	lwz r0, 0xb84(r26)
/* 80A17858  2C 00 00 00 */	cmpwi r0, 0
/* 80A1785C  40 81 00 20 */	ble lbl_80A1787C
/* 80A17860  3B A0 00 01 */	li r29, 1
/* 80A17864  48 00 00 18 */	b lbl_80A1787C
lbl_80A17868:
/* 80A17868  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80A1786C  48 00 27 D5 */	bl func_80A1A040
/* 80A17870  2C 03 00 00 */	cmpwi r3, 0
/* 80A17874  40 82 00 08 */	bne lbl_80A1787C
/* 80A17878  3B A0 00 01 */	li r29, 1
lbl_80A1787C:
/* 80A1787C  7F A3 EB 78 */	mr r3, r29
/* 80A17880  39 61 00 50 */	addi r11, r1, 0x50
/* 80A17884  4B 94 A9 90 */	b _restgpr_24
/* 80A17888  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A1788C  7C 08 03 A6 */	mtlr r0
/* 80A17890  38 21 00 50 */	addi r1, r1, 0x50
/* 80A17894  4E 80 00 20 */	blr 
