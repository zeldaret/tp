lbl_80A11378:
/* 80A11378  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A1137C  7C 08 02 A6 */	mflr r0
/* 80A11380  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A11384  39 61 00 60 */	addi r11, r1, 0x60
/* 80A11388  4B 95 0E 51 */	bl _savegpr_28
/* 80A1138C  7C 7D 1B 78 */	mr r29, r3
/* 80A11390  3C 80 80 A1 */	lis r4, l_insectParams@ha /* 0x80A13DAC@ha */
/* 80A11394  3B E4 3D AC */	addi r31, r4, l_insectParams@l /* 0x80A13DAC@l */
/* 80A11398  3B C0 00 00 */	li r30, 0
/* 80A1139C  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 80A113A0  2C 00 00 02 */	cmpwi r0, 2
/* 80A113A4  41 82 00 98 */	beq lbl_80A1143C
/* 80A113A8  40 80 00 10 */	bge lbl_80A113B8
/* 80A113AC  2C 00 00 00 */	cmpwi r0, 0
/* 80A113B0  41 82 00 14 */	beq lbl_80A113C4
/* 80A113B4  48 00 06 AC */	b lbl_80A11A60
lbl_80A113B8:
/* 80A113B8  2C 00 00 04 */	cmpwi r0, 4
/* 80A113BC  40 80 06 A4 */	bge lbl_80A11A60
/* 80A113C0  48 00 06 64 */	b lbl_80A11A24
lbl_80A113C4:
/* 80A113C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A113C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A113CC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A113D0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A113D4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A113D8  41 82 00 0C */	beq lbl_80A113E4
/* 80A113DC  38 00 00 25 */	li r0, 0x25
/* 80A113E0  B0 1D 0E 18 */	sth r0, 0xe18(r29)
lbl_80A113E4:
/* 80A113E4  7F A3 EB 78 */	mr r3, r29
/* 80A113E8  A8 9D 0E 18 */	lha r4, 0xe18(r29)
/* 80A113EC  38 A0 00 00 */	li r5, 0
/* 80A113F0  4B 74 29 2D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A113F4  38 00 00 00 */	li r0, 0
/* 80A113F8  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A113FC  90 1D 09 50 */	stw r0, 0x950(r29)
/* 80A11400  98 1D 0E 20 */	stb r0, 0xe20(r29)
/* 80A11404  7F A3 EB 78 */	mr r3, r29
/* 80A11408  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1140C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A11410  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A11414  4B 60 92 FD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A11418  B0 7D 0E 14 */	sth r3, 0xe14(r29)
/* 80A1141C  A8 1D 0E 1A */	lha r0, 0xe1a(r29)
/* 80A11420  2C 00 00 03 */	cmpwi r0, 3
/* 80A11424  41 82 00 0C */	beq lbl_80A11430
/* 80A11428  38 00 00 03 */	li r0, 3
/* 80A1142C  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
lbl_80A11430:
/* 80A11430  38 00 00 02 */	li r0, 2
/* 80A11434  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A11438  48 00 06 28 */	b lbl_80A11A60
lbl_80A1143C:
/* 80A1143C  AB 9D 0E 14 */	lha r28, 0xe14(r29)
/* 80A11440  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A11444  7C 1C 00 00 */	cmpw r28, r0
/* 80A11448  40 82 04 78 */	bne lbl_80A118C0
/* 80A1144C  38 80 00 00 */	li r4, 0
/* 80A11450  38 A0 00 01 */	li r5, 1
/* 80A11454  38 C0 00 00 */	li r6, 0
/* 80A11458  4B 74 29 2D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A1145C  2C 03 00 00 */	cmpwi r3, 0
/* 80A11460  41 82 03 1C */	beq lbl_80A1177C
/* 80A11464  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80A11468  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1146C  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A11470  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A11474  4B 73 F2 49 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A11478  88 1D 0E 21 */	lbz r0, 0xe21(r29)
/* 80A1147C  28 00 00 00 */	cmplwi r0, 0
/* 80A11480  40 82 02 54 */	bne lbl_80A116D4
/* 80A11484  38 00 00 00 */	li r0, 0
/* 80A11488  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1148C  38 7D 09 F8 */	addi r3, r29, 0x9f8
/* 80A11490  38 81 00 10 */	addi r4, r1, 0x10
/* 80A11494  4B 83 90 95 */	bl getEventId__10dMsgFlow_cFPi
/* 80A11498  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A1149C  28 00 00 01 */	cmplwi r0, 1
/* 80A114A0  40 82 00 A8 */	bne lbl_80A11548
/* 80A114A4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A114A8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A114AC  38 A0 00 00 */	li r5, 0
/* 80A114B0  38 C0 FF FF */	li r6, -1
/* 80A114B4  38 E0 FF FF */	li r7, -1
/* 80A114B8  39 00 00 00 */	li r8, 0
/* 80A114BC  39 20 00 00 */	li r9, 0
/* 80A114C0  4B 60 A7 29 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80A114C4  90 7D 0D F8 */	stw r3, 0xdf8(r29)
/* 80A114C8  80 7D 0D F8 */	lwz r3, 0xdf8(r29)
/* 80A114CC  3C 03 00 01 */	addis r0, r3, 1
/* 80A114D0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A114D4  41 82 01 54 */	beq lbl_80A11628
/* 80A114D8  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80A114DC  38 00 00 02 */	li r0, 2
/* 80A114E0  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80A114E4  38 00 00 01 */	li r0, 1
/* 80A114E8  90 03 06 14 */	stw r0, 0x614(r3)
/* 80A114EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A114F0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A114F4  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80A114F8  7F A4 EB 78 */	mr r4, r29
/* 80A114FC  3C A0 80 A1 */	lis r5, d_a_npc_ins__stringBase0@ha /* 0x80A14168@ha */
/* 80A11500  38 A5 41 68 */	addi r5, r5, d_a_npc_ins__stringBase0@l /* 0x80A14168@l */
/* 80A11504  38 A5 00 22 */	addi r5, r5, 0x22
/* 80A11508  38 C0 00 FF */	li r6, 0xff
/* 80A1150C  4B 63 62 4D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80A11510  7C 7C 1B 78 */	mr r28, r3
/* 80A11514  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80A11518  7F A4 EB 78 */	mr r4, r29
/* 80A1151C  4B 63 0F FD */	bl reset__14dEvt_control_cFPv
/* 80A11520  7F A3 EB 78 */	mr r3, r29
/* 80A11524  7F 84 E3 78 */	mr r4, r28
/* 80A11528  38 A0 00 01 */	li r5, 1
/* 80A1152C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A11530  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A11534  4B 60 A0 B1 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80A11538  38 00 00 01 */	li r0, 1
/* 80A1153C  98 1D 09 EC */	stb r0, 0x9ec(r29)
/* 80A11540  98 1D 0E 20 */	stb r0, 0xe20(r29)
/* 80A11544  48 00 00 E4 */	b lbl_80A11628
lbl_80A11548:
/* 80A11548  28 00 00 18 */	cmplwi r0, 0x18
/* 80A1154C  40 82 00 DC */	bne lbl_80A11628
/* 80A11550  A8 7D 0E 18 */	lha r3, 0xe18(r29)
/* 80A11554  A8 1D 0E 16 */	lha r0, 0xe16(r29)
/* 80A11558  7C 03 00 00 */	cmpw r3, r0
/* 80A1155C  40 82 00 CC */	bne lbl_80A11628
/* 80A11560  38 00 00 08 */	li r0, 8
/* 80A11564  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80A11568  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80A1156C  98 03 00 C1 */	stb r0, 0xc1(r3)
/* 80A11570  38 00 00 01 */	li r0, 1
/* 80A11574  98 1D 09 EC */	stb r0, 0x9ec(r29)
/* 80A11578  3C 60 80 A1 */	lis r3, lit_5401@ha /* 0x80A14414@ha */
/* 80A1157C  38 83 44 14 */	addi r4, r3, lit_5401@l /* 0x80A14414@l */
/* 80A11580  80 64 00 00 */	lwz r3, 0(r4)
/* 80A11584  80 04 00 04 */	lwz r0, 4(r4)
/* 80A11588  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80A1158C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A11590  80 04 00 08 */	lwz r0, 8(r4)
/* 80A11594  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A11598  38 00 00 03 */	li r0, 3
/* 80A1159C  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A115A0  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A115A4  4B 95 0A 75 */	bl __ptmf_test
/* 80A115A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A115AC  41 82 00 18 */	beq lbl_80A115C4
/* 80A115B0  7F A3 EB 78 */	mr r3, r29
/* 80A115B4  38 80 00 00 */	li r4, 0
/* 80A115B8  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A115BC  4B 95 0A C9 */	bl __ptmf_scall
/* 80A115C0  60 00 00 00 */	nop 
lbl_80A115C4:
/* 80A115C4  80 7D 0D C8 */	lwz r3, 0xdc8(r29)
/* 80A115C8  80 1D 0D CC */	lwz r0, 0xdcc(r29)
/* 80A115CC  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A115D0  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80A115D4  80 1D 0D D0 */	lwz r0, 0xdd0(r29)
/* 80A115D8  90 1D 0D DC */	stw r0, 0xddc(r29)
/* 80A115DC  38 00 00 00 */	li r0, 0
/* 80A115E0  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A115E4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80A115E8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80A115EC  90 7D 0D C8 */	stw r3, 0xdc8(r29)
/* 80A115F0  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80A115F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A115F8  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80A115FC  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A11600  4B 95 0A 19 */	bl __ptmf_test
/* 80A11604  2C 03 00 00 */	cmpwi r3, 0
/* 80A11608  41 82 00 18 */	beq lbl_80A11620
/* 80A1160C  7F A3 EB 78 */	mr r3, r29
/* 80A11610  38 80 00 00 */	li r4, 0
/* 80A11614  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A11618  4B 95 0A 6D */	bl __ptmf_scall
/* 80A1161C  60 00 00 00 */	nop 
lbl_80A11620:
/* 80A11620  3B C0 00 01 */	li r30, 1
/* 80A11624  48 00 04 3C */	b lbl_80A11A60
lbl_80A11628:
/* 80A11628  3C 60 80 A1 */	lis r3, lit_5403@ha /* 0x80A14420@ha */
/* 80A1162C  38 83 44 20 */	addi r4, r3, lit_5403@l /* 0x80A14420@l */
/* 80A11630  80 64 00 00 */	lwz r3, 0(r4)
/* 80A11634  80 04 00 04 */	lwz r0, 4(r4)
/* 80A11638  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A1163C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A11640  80 04 00 08 */	lwz r0, 8(r4)
/* 80A11644  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A11648  38 00 00 03 */	li r0, 3
/* 80A1164C  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A11650  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A11654  4B 95 09 C5 */	bl __ptmf_test
/* 80A11658  2C 03 00 00 */	cmpwi r3, 0
/* 80A1165C  41 82 00 18 */	beq lbl_80A11674
/* 80A11660  7F A3 EB 78 */	mr r3, r29
/* 80A11664  38 80 00 00 */	li r4, 0
/* 80A11668  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A1166C  4B 95 0A 19 */	bl __ptmf_scall
/* 80A11670  60 00 00 00 */	nop 
lbl_80A11674:
/* 80A11674  80 7D 0D C8 */	lwz r3, 0xdc8(r29)
/* 80A11678  80 1D 0D CC */	lwz r0, 0xdcc(r29)
/* 80A1167C  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A11680  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80A11684  80 1D 0D D0 */	lwz r0, 0xdd0(r29)
/* 80A11688  90 1D 0D DC */	stw r0, 0xddc(r29)
/* 80A1168C  38 00 00 00 */	li r0, 0
/* 80A11690  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A11694  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80A11698  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1169C  90 7D 0D C8 */	stw r3, 0xdc8(r29)
/* 80A116A0  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80A116A4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A116A8  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80A116AC  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A116B0  4B 95 09 69 */	bl __ptmf_test
/* 80A116B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A116B8  41 82 00 BC */	beq lbl_80A11774
/* 80A116BC  7F A3 EB 78 */	mr r3, r29
/* 80A116C0  38 80 00 00 */	li r4, 0
/* 80A116C4  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A116C8  4B 95 09 BD */	bl __ptmf_scall
/* 80A116CC  60 00 00 00 */	nop 
/* 80A116D0  48 00 00 A4 */	b lbl_80A11774
lbl_80A116D4:
/* 80A116D4  80 7D 0D D4 */	lwz r3, 0xdd4(r29)
/* 80A116D8  80 1D 0D D8 */	lwz r0, 0xdd8(r29)
/* 80A116DC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A116E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A116E4  80 1D 0D DC */	lwz r0, 0xddc(r29)
/* 80A116E8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A116EC  38 00 00 03 */	li r0, 3
/* 80A116F0  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A116F4  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A116F8  4B 95 09 21 */	bl __ptmf_test
/* 80A116FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A11700  41 82 00 18 */	beq lbl_80A11718
/* 80A11704  7F A3 EB 78 */	mr r3, r29
/* 80A11708  38 80 00 00 */	li r4, 0
/* 80A1170C  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A11710  4B 95 09 75 */	bl __ptmf_scall
/* 80A11714  60 00 00 00 */	nop 
lbl_80A11718:
/* 80A11718  80 7D 0D C8 */	lwz r3, 0xdc8(r29)
/* 80A1171C  80 1D 0D CC */	lwz r0, 0xdcc(r29)
/* 80A11720  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A11724  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80A11728  80 1D 0D D0 */	lwz r0, 0xdd0(r29)
/* 80A1172C  90 1D 0D DC */	stw r0, 0xddc(r29)
/* 80A11730  38 00 00 00 */	li r0, 0
/* 80A11734  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A11738  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80A1173C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A11740  90 7D 0D C8 */	stw r3, 0xdc8(r29)
/* 80A11744  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80A11748  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A1174C  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80A11750  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A11754  4B 95 08 C5 */	bl __ptmf_test
/* 80A11758  2C 03 00 00 */	cmpwi r3, 0
/* 80A1175C  41 82 00 18 */	beq lbl_80A11774
/* 80A11760  7F A3 EB 78 */	mr r3, r29
/* 80A11764  38 80 00 00 */	li r4, 0
/* 80A11768  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A1176C  4B 95 09 19 */	bl __ptmf_scall
/* 80A11770  60 00 00 00 */	nop 
lbl_80A11774:
/* 80A11774  3B C0 00 01 */	li r30, 1
/* 80A11778  48 00 02 E8 */	b lbl_80A11A60
lbl_80A1177C:
/* 80A1177C  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80A11780  7F A3 EB 78 */	mr r3, r29
/* 80A11784  38 81 00 0C */	addi r4, r1, 0xc
/* 80A11788  38 A1 00 08 */	addi r5, r1, 8
/* 80A1178C  7F A6 EB 78 */	mr r6, r29
/* 80A11790  38 E0 00 00 */	li r7, 0
/* 80A11794  4B 74 1F 85 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A11798  2C 03 00 00 */	cmpwi r3, 0
/* 80A1179C  41 82 00 44 */	beq lbl_80A117E0
/* 80A117A0  7F A3 EB 78 */	mr r3, r29
/* 80A117A4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A117A8  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A117AC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A117B0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A117B4  7D 89 03 A6 */	mtctr r12
/* 80A117B8  4E 80 04 21 */	bctrl 
/* 80A117BC  7F A3 EB 78 */	mr r3, r29
/* 80A117C0  80 81 00 08 */	lwz r4, 8(r1)
/* 80A117C4  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A117C8  38 A0 00 00 */	li r5, 0
/* 80A117CC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A117D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A117D4  7D 89 03 A6 */	mtctr r12
/* 80A117D8  4E 80 04 21 */	bctrl 
/* 80A117DC  48 00 02 84 */	b lbl_80A11A60
lbl_80A117E0:
/* 80A117E0  2C 1C 00 00 */	cmpwi r28, 0
/* 80A117E4  41 82 02 7C */	beq lbl_80A11A60
/* 80A117E8  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80A117EC  2C 00 00 00 */	cmpwi r0, 0
/* 80A117F0  40 82 02 70 */	bne lbl_80A11A60
/* 80A117F4  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80A117F8  2C 00 00 03 */	cmpwi r0, 3
/* 80A117FC  41 82 00 64 */	beq lbl_80A11860
/* 80A11800  40 80 00 14 */	bge lbl_80A11814
/* 80A11804  2C 00 00 01 */	cmpwi r0, 1
/* 80A11808  41 82 00 18 */	beq lbl_80A11820
/* 80A1180C  40 80 00 34 */	bge lbl_80A11840
/* 80A11810  48 00 00 90 */	b lbl_80A118A0
lbl_80A11814:
/* 80A11814  2C 00 00 05 */	cmpwi r0, 5
/* 80A11818  40 80 00 88 */	bge lbl_80A118A0
/* 80A1181C  48 00 00 64 */	b lbl_80A11880
lbl_80A11820:
/* 80A11820  7F A3 EB 78 */	mr r3, r29
/* 80A11824  38 80 00 05 */	li r4, 5
/* 80A11828  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A1182C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A11830  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A11834  7D 89 03 A6 */	mtctr r12
/* 80A11838  4E 80 04 21 */	bctrl 
/* 80A1183C  48 00 02 24 */	b lbl_80A11A60
lbl_80A11840:
/* 80A11840  7F A3 EB 78 */	mr r3, r29
/* 80A11844  38 80 00 06 */	li r4, 6
/* 80A11848  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A1184C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A11850  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A11854  7D 89 03 A6 */	mtctr r12
/* 80A11858  4E 80 04 21 */	bctrl 
/* 80A1185C  48 00 02 04 */	b lbl_80A11A60
lbl_80A11860:
/* 80A11860  7F A3 EB 78 */	mr r3, r29
/* 80A11864  38 80 00 07 */	li r4, 7
/* 80A11868  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A1186C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A11870  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A11874  7D 89 03 A6 */	mtctr r12
/* 80A11878  4E 80 04 21 */	bctrl 
/* 80A1187C  48 00 01 E4 */	b lbl_80A11A60
lbl_80A11880:
/* 80A11880  7F A3 EB 78 */	mr r3, r29
/* 80A11884  38 80 00 08 */	li r4, 8
/* 80A11888  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A1188C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A11890  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A11894  7D 89 03 A6 */	mtctr r12
/* 80A11898  4E 80 04 21 */	bctrl 
/* 80A1189C  48 00 01 C4 */	b lbl_80A11A60
lbl_80A118A0:
/* 80A118A0  7F A3 EB 78 */	mr r3, r29
/* 80A118A4  38 80 00 09 */	li r4, 9
/* 80A118A8  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A118AC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A118B0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A118B4  7D 89 03 A6 */	mtctr r12
/* 80A118B8  4E 80 04 21 */	bctrl 
/* 80A118BC  48 00 01 A4 */	b lbl_80A11A60
lbl_80A118C0:
/* 80A118C0  80 9D 09 6C */	lwz r4, 0x96c(r29)
/* 80A118C4  2C 04 00 00 */	cmpwi r4, 0
/* 80A118C8  40 82 00 CC */	bne lbl_80A11994
/* 80A118CC  C0 5F 03 70 */	lfs f2, 0x370(r31)
/* 80A118D0  7C 00 E0 50 */	subf r0, r0, r28
/* 80A118D4  7C 00 07 34 */	extsh r0, r0
/* 80A118D8  C8 3F 03 78 */	lfd f1, 0x378(r31)
/* 80A118DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A118E0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A118E4  3C 00 43 30 */	lis r0, 0x4330
/* 80A118E8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A118EC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A118F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A118F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A118F8  FC 00 02 10 */	fabs f0, f0
/* 80A118FC  FC 00 00 18 */	frsp f0, f0
/* 80A11900  FC 00 00 1E */	fctiwz f0, f0
/* 80A11904  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A11908  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A1190C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A11910  40 81 00 3C */	ble lbl_80A1194C
/* 80A11914  38 80 00 09 */	li r4, 9
/* 80A11918  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A1191C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A11920  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A11924  7D 89 03 A6 */	mtctr r12
/* 80A11928  4E 80 04 21 */	bctrl 
/* 80A1192C  7F A3 EB 78 */	mr r3, r29
/* 80A11930  38 80 00 0B */	li r4, 0xb
/* 80A11934  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A11938  38 A0 00 00 */	li r5, 0
/* 80A1193C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A11940  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A11944  7D 89 03 A6 */	mtctr r12
/* 80A11948  4E 80 04 21 */	bctrl 
lbl_80A1194C:
/* 80A1194C  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 80A11950  38 00 00 00 */	li r0, 0
/* 80A11954  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A11958  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80A1195C  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80A11960  7C 03 00 00 */	cmpw r3, r0
/* 80A11964  40 82 00 10 */	bne lbl_80A11974
/* 80A11968  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A1196C  38 03 00 01 */	addi r0, r3, 1
/* 80A11970  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A11974:
/* 80A11974  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A11978  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A1197C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A11980  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A11984  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A11988  38 03 00 01 */	addi r0, r3, 1
/* 80A1198C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A11990  48 00 00 5C */	b lbl_80A119EC
lbl_80A11994:
/* 80A11994  2C 04 00 01 */	cmpwi r4, 1
/* 80A11998  40 82 00 54 */	bne lbl_80A119EC
/* 80A1199C  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80A119A0  C0 3F 03 74 */	lfs f1, 0x374(r31)
/* 80A119A4  38 A0 00 00 */	li r5, 0
/* 80A119A8  4B 74 25 4D */	bl turn__8daNpcF_cFsfi
/* 80A119AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A119B0  41 82 00 2C */	beq lbl_80A119DC
/* 80A119B4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A119B8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A119BC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A119C0  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A119C4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A119C8  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80A119CC  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A119D0  38 03 00 01 */	addi r0, r3, 1
/* 80A119D4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A119D8  48 00 00 14 */	b lbl_80A119EC
lbl_80A119DC:
/* 80A119DC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A119E0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A119E4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A119E8  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80A119EC:
/* 80A119EC  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A119F0  2C 00 00 01 */	cmpwi r0, 1
/* 80A119F4  40 81 00 6C */	ble lbl_80A11A60
/* 80A119F8  7F A3 EB 78 */	mr r3, r29
/* 80A119FC  38 80 00 00 */	li r4, 0
/* 80A11A00  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A11A04  38 A0 00 00 */	li r5, 0
/* 80A11A08  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A11A0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A11A10  7D 89 03 A6 */	mtctr r12
/* 80A11A14  4E 80 04 21 */	bctrl 
/* 80A11A18  38 00 00 00 */	li r0, 0
/* 80A11A1C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A11A20  48 00 00 40 */	b lbl_80A11A60
lbl_80A11A24:
/* 80A11A24  A8 1D 0E 16 */	lha r0, 0xe16(r29)
/* 80A11A28  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80A11A2C  38 80 00 09 */	li r4, 9
/* 80A11A30  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A11A34  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A11A38  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A11A3C  7D 89 03 A6 */	mtctr r12
/* 80A11A40  4E 80 04 21 */	bctrl 
/* 80A11A44  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 80A11A48  28 00 00 00 */	cmplwi r0, 0
/* 80A11A4C  40 82 00 14 */	bne lbl_80A11A60
/* 80A11A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A11A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A11A58  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A11A5C  4B 63 0A 0D */	bl reset__14dEvt_control_cFv
lbl_80A11A60:
/* 80A11A60  7F C3 F3 78 */	mr r3, r30
/* 80A11A64  39 61 00 60 */	addi r11, r1, 0x60
/* 80A11A68  4B 95 07 BD */	bl _restgpr_28
/* 80A11A6C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A11A70  7C 08 03 A6 */	mtlr r0
/* 80A11A74  38 21 00 60 */	addi r1, r1, 0x60
/* 80A11A78  4E 80 00 20 */	blr 
