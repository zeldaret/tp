lbl_80A903E8:
/* 80A903E8  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80A903EC  7C 08 02 A6 */	mflr r0
/* 80A903F0  90 01 01 64 */	stw r0, 0x164(r1)
/* 80A903F4  39 61 01 60 */	addi r11, r1, 0x160
/* 80A903F8  4B 8D 1D D4 */	b _savegpr_25
/* 80A903FC  7C 7C 1B 78 */	mr r28, r3
/* 80A90400  3C 60 80 A9 */	lis r3, lit_3990@ha
/* 80A90404  3B C3 24 1C */	addi r30, r3, lit_3990@l
/* 80A90408  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A9040C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A90410  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 80A90414  88 1F 5D B0 */	lbz r0, 0x5db0(r31)
/* 80A90418  7C 00 07 74 */	extsb r0, r0
/* 80A9041C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80A90420  7C 7F 02 14 */	add r3, r31, r0
/* 80A90424  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 80A90428  A8 7C 0C 60 */	lha r3, 0xc60(r28)
/* 80A9042C  2C 03 00 00 */	cmpwi r3, 0
/* 80A90430  41 82 00 0C */	beq lbl_80A9043C
/* 80A90434  38 03 FF FF */	addi r0, r3, -1
/* 80A90438  B0 1C 0C 60 */	sth r0, 0xc60(r28)
lbl_80A9043C:
/* 80A9043C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80A90440  4B 5E 78 28 */	b __ct__11dBgS_LinChkFv
/* 80A90444  38 61 00 70 */	addi r3, r1, 0x70
/* 80A90448  4B 5E 71 34 */	b __ct__11dBgS_GndChkFv
/* 80A9044C  3B 40 00 00 */	li r26, 0
/* 80A90450  3B 20 00 00 */	li r25, 0
/* 80A90454  A8 1C 0C 5C */	lha r0, 0xc5c(r28)
/* 80A90458  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9045C  41 82 03 3C */	beq lbl_80A90798
/* 80A90460  40 80 00 2C */	bge lbl_80A9048C
/* 80A90464  2C 00 00 02 */	cmpwi r0, 2
/* 80A90468  41 82 00 D4 */	beq lbl_80A9053C
/* 80A9046C  40 80 00 14 */	bge lbl_80A90480
/* 80A90470  2C 00 00 00 */	cmpwi r0, 0
/* 80A90474  41 82 07 60 */	beq lbl_80A90BD4
/* 80A90478  40 80 00 38 */	bge lbl_80A904B0
/* 80A9047C  48 00 07 58 */	b lbl_80A90BD4
lbl_80A90480:
/* 80A90480  2C 00 00 04 */	cmpwi r0, 4
/* 80A90484  40 80 07 50 */	bge lbl_80A90BD4
/* 80A90488  48 00 01 C8 */	b lbl_80A90650
lbl_80A9048C:
/* 80A9048C  2C 00 00 63 */	cmpwi r0, 0x63
/* 80A90490  41 82 06 EC */	beq lbl_80A90B7C
/* 80A90494  40 80 00 10 */	bge lbl_80A904A4
/* 80A90498  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A9049C  40 80 07 38 */	bge lbl_80A90BD4
/* 80A904A0  48 00 03 84 */	b lbl_80A90824
lbl_80A904A4:
/* 80A904A4  2C 00 00 65 */	cmpwi r0, 0x65
/* 80A904A8  40 80 07 2C */	bge lbl_80A90BD4
/* 80A904AC  48 00 06 FC */	b lbl_80A90BA8
lbl_80A904B0:
/* 80A904B0  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80A904B4  28 00 00 02 */	cmplwi r0, 2
/* 80A904B8  41 82 00 44 */	beq lbl_80A904FC
/* 80A904BC  7F 83 E3 78 */	mr r3, r28
/* 80A904C0  38 80 00 02 */	li r4, 2
/* 80A904C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A904C8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A904CC  38 C0 00 00 */	li r6, 0
/* 80A904D0  4B 58 B4 38 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A904D4  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80A904D8  60 00 00 02 */	ori r0, r0, 2
/* 80A904DC  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80A904E0  38 61 00 70 */	addi r3, r1, 0x70
/* 80A904E4  38 80 FF FF */	li r4, -1
/* 80A904E8  4B 5E 71 08 */	b __dt__11dBgS_GndChkFv
/* 80A904EC  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80A904F0  38 80 FF FF */	li r4, -1
/* 80A904F4  4B 5E 77 E8 */	b __dt__11dBgS_LinChkFv
/* 80A904F8  48 00 09 18 */	b lbl_80A90E10
lbl_80A904FC:
/* 80A904FC  38 7D 02 48 */	addi r3, r29, 0x248
/* 80A90500  4B 6D 0F D0 */	b Stop__9dCamera_cFv
/* 80A90504  38 00 00 02 */	li r0, 2
/* 80A90508  B0 1C 0C 5C */	sth r0, 0xc5c(r28)
/* 80A9050C  38 00 00 00 */	li r0, 0
/* 80A90510  B0 1C 0C 5E */	sth r0, 0xc5e(r28)
/* 80A90514  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80A90518  D0 1C 0C 88 */	stfs f0, 0xc88(r28)
/* 80A9051C  38 7D 02 48 */	addi r3, r29, 0x248
/* 80A90520  38 80 00 03 */	li r4, 3
/* 80A90524  4B 6D 2A E8 */	b SetTrimSize__9dCamera_cFl
/* 80A90528  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A9052C  38 00 00 03 */	li r0, 3
/* 80A90530  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80A90534  38 00 00 00 */	li r0, 0
/* 80A90538  90 03 06 0C */	stw r0, 0x60c(r3)
lbl_80A9053C:
/* 80A9053C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A90540  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80A90544  A8 BC 05 DC */	lha r5, 0x5dc(r28)
/* 80A90548  3C A5 00 01 */	addis r5, r5, 1
/* 80A9054C  38 05 80 00 */	addi r0, r5, -32768
/* 80A90550  7C 05 07 34 */	extsh r5, r0
/* 80A90554  38 C0 00 00 */	li r6, 0
/* 80A90558  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A9055C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A90560  7D 89 03 A6 */	mtctr r12
/* 80A90564  4E 80 04 21 */	bctrl 
/* 80A90568  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80A9056C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80A90570  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80A90574  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80A90578  C0 7C 04 D8 */	lfs f3, 0x4d8(r28)
/* 80A9057C  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 80A90580  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80A90584  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80A90588  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 80A9058C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A90590  EC 42 00 2A */	fadds f2, f2, f0
/* 80A90594  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80A90598  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80A9059C  EC 03 00 2A */	fadds f0, f3, f0
/* 80A905A0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A905A4  A8 1C 0C 60 */	lha r0, 0xc60(r28)
/* 80A905A8  2C 00 00 00 */	cmpwi r0, 0
/* 80A905AC  40 82 00 2C */	bne lbl_80A905D8
/* 80A905B0  D0 3C 0C 64 */	stfs f1, 0xc64(r28)
/* 80A905B4  D0 5C 0C 68 */	stfs f2, 0xc68(r28)
/* 80A905B8  D0 1C 0C 6C */	stfs f0, 0xc6c(r28)
/* 80A905BC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A905C0  D0 1C 0C 70 */	stfs f0, 0xc70(r28)
/* 80A905C4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80A905C8  D0 1C 0C 74 */	stfs f0, 0xc74(r28)
/* 80A905CC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A905D0  D0 1C 0C 78 */	stfs f0, 0xc78(r28)
/* 80A905D4  48 00 06 00 */	b lbl_80A90BD4
lbl_80A905D8:
/* 80A905D8  38 7C 0C 64 */	addi r3, r28, 0xc64
/* 80A905DC  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80A905E0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80A905E4  4B 7D F4 58 */	b cLib_addCalc2__FPffff
/* 80A905E8  38 7C 0C 68 */	addi r3, r28, 0xc68
/* 80A905EC  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A905F0  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80A905F4  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80A905F8  4B 7D F4 44 */	b cLib_addCalc2__FPffff
/* 80A905FC  38 7C 0C 6C */	addi r3, r28, 0xc6c
/* 80A90600  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80A90604  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80A90608  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80A9060C  4B 7D F4 30 */	b cLib_addCalc2__FPffff
/* 80A90610  38 7C 0C 70 */	addi r3, r28, 0xc70
/* 80A90614  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80A90618  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80A9061C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80A90620  4B 7D F4 1C */	b cLib_addCalc2__FPffff
/* 80A90624  38 7C 0C 74 */	addi r3, r28, 0xc74
/* 80A90628  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80A9062C  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80A90630  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80A90634  4B 7D F4 08 */	b cLib_addCalc2__FPffff
/* 80A90638  38 7C 0C 78 */	addi r3, r28, 0xc78
/* 80A9063C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80A90640  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80A90644  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80A90648  4B 7D F3 F4 */	b cLib_addCalc2__FPffff
/* 80A9064C  48 00 05 88 */	b lbl_80A90BD4
lbl_80A90650:
/* 80A90650  A8 1C 0C 5E */	lha r0, 0xc5e(r28)
/* 80A90654  2C 00 00 00 */	cmpwi r0, 0
/* 80A90658  40 82 00 34 */	bne lbl_80A9068C
/* 80A9065C  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 80A90660  D0 1C 0C 70 */	stfs f0, 0xc70(r28)
/* 80A90664  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 80A90668  D0 1C 0C 74 */	stfs f0, 0xc74(r28)
/* 80A9066C  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 80A90670  D0 1C 0C 78 */	stfs f0, 0xc78(r28)
/* 80A90674  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 80A90678  D0 1C 0C 64 */	stfs f0, 0xc64(r28)
/* 80A9067C  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 80A90680  D0 1C 0C 68 */	stfs f0, 0xc68(r28)
/* 80A90684  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 80A90688  D0 1C 0C 6C */	stfs f0, 0xc6c(r28)
lbl_80A9068C:
/* 80A9068C  A8 1C 0C 5E */	lha r0, 0xc5e(r28)
/* 80A90690  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A90694  40 82 00 84 */	bne lbl_80A90718
/* 80A90698  38 00 01 28 */	li r0, 0x128
/* 80A9069C  B0 01 00 08 */	sth r0, 8(r1)
/* 80A906A0  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80A906A4  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80A906A8  38 81 00 08 */	addi r4, r1, 8
/* 80A906AC  4B 58 91 4C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A906B0  7C 65 1B 79 */	or. r5, r3, r3
/* 80A906B4  41 82 00 4C */	beq lbl_80A90700
/* 80A906B8  38 00 00 0A */	li r0, 0xa
/* 80A906BC  98 05 05 67 */	stb r0, 0x567(r5)
/* 80A906C0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C8@ha */
/* 80A906C4  38 03 00 C8 */	addi r0, r3, 0x00C8 /* 0x000800C8@l */
/* 80A906C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A906CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A906D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A906D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A906D8  38 81 00 18 */	addi r4, r1, 0x18
/* 80A906DC  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80A906E0  38 C0 00 00 */	li r6, 0
/* 80A906E4  38 E0 00 00 */	li r7, 0
/* 80A906E8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80A906EC  FC 40 08 90 */	fmr f2, f1
/* 80A906F0  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 80A906F4  FC 80 18 90 */	fmr f4, f3
/* 80A906F8  39 00 00 00 */	li r8, 0
/* 80A906FC  4B 81 B2 88 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80A90700:
/* 80A90700  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A90704  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A90708  80 63 00 00 */	lwz r3, 0(r3)
/* 80A9070C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A90710  38 80 00 00 */	li r4, 0
/* 80A90714  4B 81 F8 78 */	b changeBgmStatus__8Z2SeqMgrFl
lbl_80A90718:
/* 80A90718  38 7C 0C 88 */	addi r3, r28, 0xc88
/* 80A9071C  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80A90720  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80A90724  C0 7E 01 80 */	lfs f3, 0x180(r30)
/* 80A90728  4B 7D F3 14 */	b cLib_addCalc2__FPffff
/* 80A9072C  88 1C 0C C0 */	lbz r0, 0xcc0(r28)
/* 80A90730  28 00 00 00 */	cmplwi r0, 0
/* 80A90734  41 82 00 4C */	beq lbl_80A90780
/* 80A90738  A8 1C 0C 5E */	lha r0, 0xc5e(r28)
/* 80A9073C  2C 00 00 34 */	cmpwi r0, 0x34
/* 80A90740  40 82 00 40 */	bne lbl_80A90780
/* 80A90744  38 00 00 0D */	li r0, 0xd
/* 80A90748  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9074C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A90750  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A90754  80 63 00 00 */	lwz r3, 0(r3)
/* 80A90758  38 81 00 14 */	addi r4, r1, 0x14
/* 80A9075C  38 A0 00 00 */	li r5, 0
/* 80A90760  38 C0 00 00 */	li r6, 0
/* 80A90764  38 E0 00 00 */	li r7, 0
/* 80A90768  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80A9076C  FC 40 08 90 */	fmr f2, f1
/* 80A90770  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 80A90774  FC 80 18 90 */	fmr f4, f3
/* 80A90778  39 00 00 00 */	li r8, 0
/* 80A9077C  4B 81 B2 08 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80A90780:
/* 80A90780  A8 1C 0C 5E */	lha r0, 0xc5e(r28)
/* 80A90784  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80A90788  40 81 04 4C */	ble lbl_80A90BD4
/* 80A9078C  38 00 00 63 */	li r0, 0x63
/* 80A90790  B0 1C 0C 5C */	sth r0, 0xc5c(r28)
/* 80A90794  48 00 04 40 */	b lbl_80A90BD4
lbl_80A90798:
/* 80A90798  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80A9079C  28 00 00 02 */	cmplwi r0, 2
/* 80A907A0  41 82 00 44 */	beq lbl_80A907E4
/* 80A907A4  7F 83 E3 78 */	mr r3, r28
/* 80A907A8  38 80 00 02 */	li r4, 2
/* 80A907AC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A907B0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A907B4  38 C0 00 00 */	li r6, 0
/* 80A907B8  4B 58 B1 50 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80A907BC  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80A907C0  60 00 00 02 */	ori r0, r0, 2
/* 80A907C4  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80A907C8  38 61 00 70 */	addi r3, r1, 0x70
/* 80A907CC  38 80 FF FF */	li r4, -1
/* 80A907D0  4B 5E 6E 20 */	b __dt__11dBgS_GndChkFv
/* 80A907D4  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80A907D8  38 80 FF FF */	li r4, -1
/* 80A907DC  4B 5E 75 00 */	b __dt__11dBgS_LinChkFv
/* 80A907E0  48 00 06 30 */	b lbl_80A90E10
lbl_80A907E4:
/* 80A907E4  38 7D 02 48 */	addi r3, r29, 0x248
/* 80A907E8  4B 6D 0C E8 */	b Stop__9dCamera_cFv
/* 80A907EC  38 00 00 0B */	li r0, 0xb
/* 80A907F0  B0 1C 0C 5C */	sth r0, 0xc5c(r28)
/* 80A907F4  38 00 00 00 */	li r0, 0
/* 80A907F8  B0 1C 0C 5E */	sth r0, 0xc5e(r28)
/* 80A907FC  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80A90800  D0 1C 0C 88 */	stfs f0, 0xc88(r28)
/* 80A90804  38 7D 02 48 */	addi r3, r29, 0x248
/* 80A90808  38 80 00 03 */	li r4, 3
/* 80A9080C  4B 6D 28 00 */	b SetTrimSize__9dCamera_cFl
/* 80A90810  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A90814  38 00 00 03 */	li r0, 3
/* 80A90818  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80A9081C  38 00 00 00 */	li r0, 0
/* 80A90820  90 03 06 0C */	stw r0, 0x60c(r3)
lbl_80A90824:
/* 80A90824  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A90828  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80A9082C  A8 BC 05 DC */	lha r5, 0x5dc(r28)
/* 80A90830  3C A5 00 01 */	addis r5, r5, 1
/* 80A90834  38 05 80 00 */	addi r0, r5, -32768
/* 80A90838  7C 05 07 34 */	extsh r5, r0
/* 80A9083C  38 C0 00 00 */	li r6, 0
/* 80A90840  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A90844  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A90848  7D 89 03 A6 */	mtctr r12
/* 80A9084C  4E 80 04 21 */	bctrl 
/* 80A90850  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A90854  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A90858  80 63 00 00 */	lwz r3, 0(r3)
/* 80A9085C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80A90860  4B 57 BB 7C */	b mDoMtx_YrotS__FPA4_fs
/* 80A90864  A8 1C 06 46 */	lha r0, 0x646(r28)
/* 80A90868  2C 00 00 0D */	cmpwi r0, 0xd
/* 80A9086C  41 80 00 2C */	blt lbl_80A90898
/* 80A90870  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80A90874  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A90878  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80A9087C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80A90880  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A90884  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A90888  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A9088C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A90890  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A90894  48 00 00 34 */	b lbl_80A908C8
lbl_80A90898:
/* 80A90898  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A9089C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A908A0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A908A4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80A908A8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A908AC  38 61 00 64 */	addi r3, r1, 0x64
/* 80A908B0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A908B4  4B 7E 06 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A908B8  38 61 00 4C */	addi r3, r1, 0x4c
/* 80A908BC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A908C0  7C 65 1B 78 */	mr r5, r3
/* 80A908C4  4B 8B 67 CC */	b PSVECAdd
lbl_80A908C8:
/* 80A908C8  A8 1C 0C 5E */	lha r0, 0xc5e(r28)
/* 80A908CC  2C 00 00 26 */	cmpwi r0, 0x26
/* 80A908D0  41 81 00 C4 */	bgt lbl_80A90994
/* 80A908D4  80 1C 0C BC */	lwz r0, 0xcbc(r28)
/* 80A908D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A908DC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80A908E0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80A908E4  38 81 00 10 */	addi r4, r1, 0x10
/* 80A908E8  4B 58 8F 10 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A908EC  7C 7F 1B 78 */	mr r31, r3
/* 80A908F0  A8 1C 0C 5E */	lha r0, 0xc5e(r28)
/* 80A908F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A908F8  40 82 00 34 */	bne lbl_80A9092C
/* 80A908FC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A90900  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A90904  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A90908  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A9090C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A90910  38 61 00 64 */	addi r3, r1, 0x64
/* 80A90914  38 9C 0C 90 */	addi r4, r28, 0xc90
/* 80A90918  4B 7E 05 D4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A9091C  38 7C 0C 90 */	addi r3, r28, 0xc90
/* 80A90920  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A90924  7C 65 1B 78 */	mr r5, r3
/* 80A90928  4B 8B 67 68 */	b PSVECAdd
lbl_80A9092C:
/* 80A9092C  C0 1C 0C 90 */	lfs f0, 0xc90(r28)
/* 80A90930  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A90934  C0 1C 0C 98 */	lfs f0, 0xc98(r28)
/* 80A90938  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A9093C  A8 1C 0C 5E */	lha r0, 0xc5e(r28)
/* 80A90940  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A90944  41 80 00 20 */	blt lbl_80A90964
/* 80A90948  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80A9094C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80A90950  C0 1C 07 DC */	lfs f0, 0x7dc(r28)
/* 80A90954  EC 21 00 2A */	fadds f1, f1, f0
/* 80A90958  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80A9095C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80A90960  4B 7D F0 DC */	b cLib_addCalc2__FPffff
lbl_80A90964:
/* 80A90964  A8 1C 0C 5E */	lha r0, 0xc5e(r28)
/* 80A90968  2C 00 00 26 */	cmpwi r0, 0x26
/* 80A9096C  40 82 00 28 */	bne lbl_80A90994
/* 80A90970  38 00 00 01 */	li r0, 1
/* 80A90974  98 1F 0C 3C */	stb r0, 0xc3c(r31)
/* 80A90978  98 1C 0C C0 */	stb r0, 0xcc0(r28)
/* 80A9097C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A90980  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A90984  80 63 00 00 */	lwz r3, 0(r3)
/* 80A90988  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A9098C  38 80 00 01 */	li r4, 1
/* 80A90990  4B 81 F5 FC */	b changeBgmStatus__8Z2SeqMgrFl
lbl_80A90994:
/* 80A90994  A8 1C 0C 5E */	lha r0, 0xc5e(r28)
/* 80A90998  2C 00 00 00 */	cmpwi r0, 0
/* 80A9099C  40 82 00 70 */	bne lbl_80A90A0C
/* 80A909A0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80A909A4  4B 7D 6F B0 */	b cM_rndF__Ff
/* 80A909A8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80A909AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A909B0  40 80 00 0C */	bge lbl_80A909BC
/* 80A909B4  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A909B8  48 00 00 08 */	b lbl_80A909C0
lbl_80A909BC:
/* 80A909BC  C0 1E 01 10 */	lfs f0, 0x110(r30)
lbl_80A909C0:
/* 80A909C0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A909C4  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80A909C8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A909CC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80A909D0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A909D4  38 61 00 64 */	addi r3, r1, 0x64
/* 80A909D8  38 9C 0C 64 */	addi r4, r28, 0xc64
/* 80A909DC  4B 7E 05 10 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A909E0  38 7C 0C 64 */	addi r3, r28, 0xc64
/* 80A909E4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A909E8  7C 65 1B 78 */	mr r5, r3
/* 80A909EC  4B 8B 66 A4 */	b PSVECAdd
/* 80A909F0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A909F4  D0 1C 0C 70 */	stfs f0, 0xc70(r28)
/* 80A909F8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80A909FC  D0 1C 0C 74 */	stfs f0, 0xc74(r28)
/* 80A90A00  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A90A04  D0 1C 0C 78 */	stfs f0, 0xc78(r28)
/* 80A90A08  48 00 01 CC */	b lbl_80A90BD4
lbl_80A90A0C:
/* 80A90A0C  38 7C 0C 70 */	addi r3, r28, 0xc70
/* 80A90A10  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80A90A14  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80A90A18  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80A90A1C  4B 7D F0 20 */	b cLib_addCalc2__FPffff
/* 80A90A20  38 7C 0C 74 */	addi r3, r28, 0xc74
/* 80A90A24  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80A90A28  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80A90A2C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80A90A30  4B 7D F0 0C */	b cLib_addCalc2__FPffff
/* 80A90A34  38 7C 0C 78 */	addi r3, r28, 0xc78
/* 80A90A38  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80A90A3C  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80A90A40  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80A90A44  4B 7D EF F8 */	b cLib_addCalc2__FPffff
/* 80A90A48  A8 1C 06 46 */	lha r0, 0x646(r28)
/* 80A90A4C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80A90A50  41 80 00 48 */	blt lbl_80A90A98
/* 80A90A54  38 7C 0C 88 */	addi r3, r28, 0xc88
/* 80A90A58  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 80A90A5C  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 80A90A60  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80A90A64  4B 7D EF D8 */	b cLib_addCalc2__FPffff
/* 80A90A68  C0 3C 0C 64 */	lfs f1, 0xc64(r28)
/* 80A90A6C  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80A90A70  C0 1C 04 F8 */	lfs f0, 0x4f8(r28)
/* 80A90A74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A90A78  EC 01 00 2A */	fadds f0, f1, f0
/* 80A90A7C  D0 1C 0C 64 */	stfs f0, 0xc64(r28)
/* 80A90A80  C0 3C 0C 6C */	lfs f1, 0xc6c(r28)
/* 80A90A84  C0 1C 05 00 */	lfs f0, 0x500(r28)
/* 80A90A88  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A90A8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A90A90  D0 1C 0C 6C */	stfs f0, 0xc6c(r28)
/* 80A90A94  48 00 00 18 */	b lbl_80A90AAC
lbl_80A90A98:
/* 80A90A98  38 7C 0C 88 */	addi r3, r28, 0xc88
/* 80A90A9C  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 80A90AA0  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80A90AA4  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80A90AA8  4B 7D EF 94 */	b cLib_addCalc2__FPffff
lbl_80A90AAC:
/* 80A90AAC  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 80A90AB0  54 00 20 36 */	slwi r0, r0, 4
/* 80A90AB4  3C 60 80 A9 */	lis r3, home_path@ha
/* 80A90AB8  38 63 25 F0 */	addi r3, r3, home_path@l
/* 80A90ABC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A90AC0  2C 00 00 03 */	cmpwi r0, 3
/* 80A90AC4  40 81 00 08 */	ble lbl_80A90ACC
/* 80A90AC8  3B 40 00 01 */	li r26, 1
lbl_80A90ACC:
/* 80A90ACC  A8 1C 0C 5E */	lha r0, 0xc5e(r28)
/* 80A90AD0  2C 00 00 50 */	cmpwi r0, 0x50
/* 80A90AD4  41 80 01 00 */	blt lbl_80A90BD4
/* 80A90AD8  2C 00 00 78 */	cmpwi r0, 0x78
/* 80A90ADC  41 81 00 F8 */	bgt lbl_80A90BD4
/* 80A90AE0  3B 20 00 01 */	li r25, 1
/* 80A90AE4  2C 00 00 50 */	cmpwi r0, 0x50
/* 80A90AE8  40 82 00 80 */	bne lbl_80A90B68
/* 80A90AEC  C0 1B 05 38 */	lfs f0, 0x538(r27)
/* 80A90AF0  D0 1C 0C A8 */	stfs f0, 0xca8(r28)
/* 80A90AF4  C0 1B 05 3C */	lfs f0, 0x53c(r27)
/* 80A90AF8  D0 1C 0C AC */	stfs f0, 0xcac(r28)
/* 80A90AFC  C0 1B 05 40 */	lfs f0, 0x540(r27)
/* 80A90B00  D0 1C 0C B0 */	stfs f0, 0xcb0(r28)
/* 80A90B04  C0 3C 0C AC */	lfs f1, 0xcac(r28)
/* 80A90B08  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80A90B0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A90B10  D0 1C 0C AC */	stfs f0, 0xcac(r28)
/* 80A90B14  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A90B18  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A90B1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A90B20  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80A90B24  4B 57 B8 B8 */	b mDoMtx_YrotS__FPA4_fs
/* 80A90B28  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A90B2C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A90B30  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 80A90B34  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A90B38  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80A90B3C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A90B40  38 61 00 64 */	addi r3, r1, 0x64
/* 80A90B44  38 9C 0C 9C */	addi r4, r28, 0xc9c
/* 80A90B48  4B 7E 03 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A90B4C  38 7C 0C 9C */	addi r3, r28, 0xc9c
/* 80A90B50  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80A90B54  7C 65 1B 78 */	mr r5, r3
/* 80A90B58  4B 8B 65 38 */	b PSVECAdd
/* 80A90B5C  38 00 00 02 */	li r0, 2
/* 80A90B60  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 80A90B64  48 00 00 70 */	b lbl_80A90BD4
lbl_80A90B68:
/* 80A90B68  2C 00 00 78 */	cmpwi r0, 0x78
/* 80A90B6C  40 82 00 68 */	bne lbl_80A90BD4
/* 80A90B70  38 00 00 00 */	li r0, 0
/* 80A90B74  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 80A90B78  48 00 00 5C */	b lbl_80A90BD4
lbl_80A90B7C:
/* 80A90B7C  7F 83 E3 78 */	mr r3, r28
/* 80A90B80  4B 58 90 FC */	b fopAcM_delete__FP10fopAc_ac_c
/* 80A90B84  80 1C 0C BC */	lwz r0, 0xcbc(r28)
/* 80A90B88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A90B8C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80A90B90  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80A90B94  38 81 00 0C */	addi r4, r1, 0xc
/* 80A90B98  4B 58 8C 60 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A90B9C  28 03 00 00 */	cmplwi r3, 0
/* 80A90BA0  41 82 00 08 */	beq lbl_80A90BA8
/* 80A90BA4  4B 58 90 D8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80A90BA8:
/* 80A90BA8  38 7D 02 48 */	addi r3, r29, 0x248
/* 80A90BAC  4B 6D 09 00 */	b Start__9dCamera_cFv
/* 80A90BB0  38 7D 02 48 */	addi r3, r29, 0x248
/* 80A90BB4  38 80 00 00 */	li r4, 0
/* 80A90BB8  4B 6D 24 54 */	b SetTrimSize__9dCamera_cFl
/* 80A90BBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A90BC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A90BC4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A90BC8  4B 5B 18 A0 */	b reset__14dEvt_control_cFv
/* 80A90BCC  38 00 00 00 */	li r0, 0
/* 80A90BD0  B0 1C 0C 5C */	sth r0, 0xc5c(r28)
lbl_80A90BD4:
/* 80A90BD4  A8 1C 0C 5C */	lha r0, 0xc5c(r28)
/* 80A90BD8  2C 00 00 00 */	cmpwi r0, 0
/* 80A90BDC  41 82 02 1C */	beq lbl_80A90DF8
/* 80A90BE0  2C 19 00 00 */	cmpwi r25, 0
/* 80A90BE4  41 82 00 50 */	beq lbl_80A90C34
/* 80A90BE8  C0 1C 0C A8 */	lfs f0, 0xca8(r28)
/* 80A90BEC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A90BF0  C0 1C 0C AC */	lfs f0, 0xcac(r28)
/* 80A90BF4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A90BF8  C0 1C 0C B0 */	lfs f0, 0xcb0(r28)
/* 80A90BFC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A90C00  C0 1C 0C 9C */	lfs f0, 0xc9c(r28)
/* 80A90C04  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A90C08  C0 1C 0C A0 */	lfs f0, 0xca0(r28)
/* 80A90C0C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A90C10  C0 1C 0C A4 */	lfs f0, 0xca4(r28)
/* 80A90C14  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A90C18  38 7D 02 48 */	addi r3, r29, 0x248
/* 80A90C1C  38 81 00 40 */	addi r4, r1, 0x40
/* 80A90C20  38 A1 00 34 */	addi r5, r1, 0x34
/* 80A90C24  C0 3C 0C 88 */	lfs f1, 0xc88(r28)
/* 80A90C28  38 C0 00 00 */	li r6, 0
/* 80A90C2C  4B 6E FE B4 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80A90C30  48 00 01 9C */	b lbl_80A90DCC
lbl_80A90C34:
/* 80A90C34  2C 1A 00 00 */	cmpwi r26, 0
/* 80A90C38  41 82 00 44 */	beq lbl_80A90C7C
/* 80A90C3C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80A90C40  38 9C 0C 70 */	addi r4, r28, 0xc70
/* 80A90C44  38 BC 0C 64 */	addi r5, r28, 0xc64
/* 80A90C48  7F 86 E3 78 */	mr r6, r28
/* 80A90C4C  4B 5E 71 18 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A90C50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A90C54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A90C58  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A90C5C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80A90C60  4B 5E 37 54 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80A90C64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A90C68  41 82 00 14 */	beq lbl_80A90C7C
/* 80A90C6C  38 00 00 01 */	li r0, 1
/* 80A90C70  98 1C 0C B4 */	stb r0, 0xcb4(r28)
/* 80A90C74  38 00 00 7A */	li r0, 0x7a
/* 80A90C78  B0 1C 0C 5E */	sth r0, 0xc5e(r28)
lbl_80A90C7C:
/* 80A90C7C  88 1C 0C B4 */	lbz r0, 0xcb4(r28)
/* 80A90C80  28 00 00 00 */	cmplwi r0, 0
/* 80A90C84  41 82 01 00 */	beq lbl_80A90D84
/* 80A90C88  38 00 00 00 */	li r0, 0
/* 80A90C8C  98 1C 0C B4 */	stb r0, 0xcb4(r28)
/* 80A90C90  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A90C94  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A90C98  80 63 00 00 */	lwz r3, 0(r3)
/* 80A90C9C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80A90CA0  4B 57 B7 3C */	b mDoMtx_YrotS__FPA4_fs
/* 80A90CA4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80A90CA8  4B 7D 6C AC */	b cM_rndF__Ff
/* 80A90CAC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80A90CB0  EC 00 08 2A */	fadds f0, f0, f1
/* 80A90CB4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A90CB8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80A90CBC  4B 7D 6C 98 */	b cM_rndF__Ff
/* 80A90CC0  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80A90CC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A90CC8  40 80 00 14 */	bge lbl_80A90CDC
/* 80A90CCC  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80A90CD0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80A90CD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A90CD8  D0 01 00 64 */	stfs f0, 0x64(r1)
lbl_80A90CDC:
/* 80A90CDC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80A90CE0  4B 7D 6C 74 */	b cM_rndF__Ff
/* 80A90CE4  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 80A90CE8  EC 00 08 2A */	fadds f0, f0, f1
/* 80A90CEC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A90CF0  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 80A90CF4  54 00 20 36 */	slwi r0, r0, 4
/* 80A90CF8  3C 60 80 A9 */	lis r3, home_path@ha
/* 80A90CFC  38 63 25 F0 */	addi r3, r3, home_path@l
/* 80A90D00  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A90D04  2C 00 00 03 */	cmpwi r0, 3
/* 80A90D08  40 81 00 1C */	ble lbl_80A90D24
/* 80A90D0C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80A90D10  4B 7D 6C 7C */	b cM_rndFX__Ff
/* 80A90D14  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A90D18  EC 00 08 2A */	fadds f0, f0, f1
/* 80A90D1C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A90D20  48 00 00 18 */	b lbl_80A90D38
lbl_80A90D24:
/* 80A90D24  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80A90D28  4B 7D 6C 2C */	b cM_rndF__Ff
/* 80A90D2C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A90D30  EC 00 08 2A */	fadds f0, f0, f1
/* 80A90D34  D0 01 00 6C */	stfs f0, 0x6c(r1)
lbl_80A90D38:
/* 80A90D38  38 61 00 64 */	addi r3, r1, 0x64
/* 80A90D3C  38 9C 0C 64 */	addi r4, r28, 0xc64
/* 80A90D40  4B 7E 01 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80A90D44  38 7C 0C 64 */	addi r3, r28, 0xc64
/* 80A90D48  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A90D4C  7C 65 1B 78 */	mr r5, r3
/* 80A90D50  4B 8B 63 40 */	b PSVECAdd
/* 80A90D54  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80A90D58  D0 1C 0C 70 */	stfs f0, 0xc70(r28)
/* 80A90D5C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80A90D60  D0 1C 0C 74 */	stfs f0, 0xc74(r28)
/* 80A90D64  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A90D68  D0 1C 0C 78 */	stfs f0, 0xc78(r28)
/* 80A90D6C  C0 3C 0C 74 */	lfs f1, 0xc74(r28)
/* 80A90D70  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A90D74  EC 01 00 2A */	fadds f0, f1, f0
/* 80A90D78  D0 1C 0C 74 */	stfs f0, 0xc74(r28)
/* 80A90D7C  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80A90D80  D0 1C 0C 88 */	stfs f0, 0xc88(r28)
lbl_80A90D84:
/* 80A90D84  C0 1C 0C 70 */	lfs f0, 0xc70(r28)
/* 80A90D88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A90D8C  C0 1C 0C 74 */	lfs f0, 0xc74(r28)
/* 80A90D90  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A90D94  C0 1C 0C 78 */	lfs f0, 0xc78(r28)
/* 80A90D98  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A90D9C  C0 1C 0C 64 */	lfs f0, 0xc64(r28)
/* 80A90DA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A90DA4  C0 1C 0C 68 */	lfs f0, 0xc68(r28)
/* 80A90DA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A90DAC  C0 1C 0C 6C */	lfs f0, 0xc6c(r28)
/* 80A90DB0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A90DB4  38 7D 02 48 */	addi r3, r29, 0x248
/* 80A90DB8  38 81 00 28 */	addi r4, r1, 0x28
/* 80A90DBC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80A90DC0  C0 3C 0C 88 */	lfs f1, 0xc88(r28)
/* 80A90DC4  38 C0 00 00 */	li r6, 0
/* 80A90DC8  4B 6E FD 18 */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_80A90DCC:
/* 80A90DCC  A8 7C 0C 5E */	lha r3, 0xc5e(r28)
/* 80A90DD0  38 03 00 01 */	addi r0, r3, 1
/* 80A90DD4  B0 1C 0C 5E */	sth r0, 0xc5e(r28)
/* 80A90DD8  A8 1C 0C 5C */	lha r0, 0xc5c(r28)
/* 80A90DDC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A90DE0  40 80 00 18 */	bge lbl_80A90DF8
/* 80A90DE4  A8 1C 06 42 */	lha r0, 0x642(r28)
/* 80A90DE8  2C 00 00 04 */	cmpwi r0, 4
/* 80A90DEC  41 82 00 0C */	beq lbl_80A90DF8
/* 80A90DF0  38 00 00 64 */	li r0, 0x64
/* 80A90DF4  B0 1C 0C 5C */	sth r0, 0xc5c(r28)
lbl_80A90DF8:
/* 80A90DF8  38 61 00 70 */	addi r3, r1, 0x70
/* 80A90DFC  38 80 FF FF */	li r4, -1
/* 80A90E00  4B 5E 67 F0 */	b __dt__11dBgS_GndChkFv
/* 80A90E04  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80A90E08  38 80 FF FF */	li r4, -1
/* 80A90E0C  4B 5E 6E D0 */	b __dt__11dBgS_LinChkFv
lbl_80A90E10:
/* 80A90E10  39 61 01 60 */	addi r11, r1, 0x160
/* 80A90E14  4B 8D 14 04 */	b _restgpr_25
/* 80A90E18  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80A90E1C  7C 08 03 A6 */	mtlr r0
/* 80A90E20  38 21 01 60 */	addi r1, r1, 0x160
/* 80A90E24  4E 80 00 20 */	blr 
