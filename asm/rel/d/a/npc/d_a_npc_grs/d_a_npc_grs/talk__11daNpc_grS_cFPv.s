lbl_809E6F5C:
/* 809E6F5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E6F60  7C 08 02 A6 */	mflr r0
/* 809E6F64  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E6F68  39 61 00 20 */	addi r11, r1, 0x20
/* 809E6F6C  4B 97 B2 6C */	b _savegpr_28
/* 809E6F70  7C 7D 1B 78 */	mr r29, r3
/* 809E6F74  3B E0 00 00 */	li r31, 0
/* 809E6F78  3B C0 00 00 */	li r30, 0
/* 809E6F7C  38 00 00 00 */	li r0, 0
/* 809E6F80  90 01 00 08 */	stw r0, 8(r1)
/* 809E6F84  A0 03 0E 12 */	lhz r0, 0xe12(r3)
/* 809E6F88  2C 00 00 02 */	cmpwi r0, 2
/* 809E6F8C  41 82 00 84 */	beq lbl_809E7010
/* 809E6F90  40 80 02 70 */	bge lbl_809E7200
/* 809E6F94  2C 00 00 00 */	cmpwi r0, 0
/* 809E6F98  41 82 00 0C */	beq lbl_809E6FA4
/* 809E6F9C  48 00 02 64 */	b lbl_809E7200
/* 809E6FA0  48 00 02 60 */	b lbl_809E7200
lbl_809E6FA4:
/* 809E6FA4  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809E6FA8  28 00 00 00 */	cmplwi r0, 0
/* 809E6FAC  40 82 02 54 */	bne lbl_809E7200
/* 809E6FB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E6FB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E6FB8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 809E6FBC  3C 80 80 9E */	lis r4, stringBase0@ha
/* 809E6FC0  38 84 7F 9C */	addi r4, r4, stringBase0@l
/* 809E6FC4  38 84 00 0D */	addi r4, r4, 0xd
/* 809E6FC8  4B 98 19 CC */	b strcmp
/* 809E6FCC  2C 03 00 00 */	cmpwi r3, 0
/* 809E6FD0  40 82 00 18 */	bne lbl_809E6FE8
/* 809E6FD4  88 1D 0E 34 */	lbz r0, 0xe34(r29)
/* 809E6FD8  28 00 00 00 */	cmplwi r0, 0
/* 809E6FDC  40 82 00 0C */	bne lbl_809E6FE8
/* 809E6FE0  38 60 00 0B */	li r3, 0xb
/* 809E6FE4  4B 76 E7 50 */	b daNpcF_offTmpBit__FUl
lbl_809E6FE8:
/* 809E6FE8  80 9D 0E 0C */	lwz r4, 0xe0c(r29)
/* 809E6FEC  38 00 00 00 */	li r0, 0
/* 809E6FF0  98 1D 0E 34 */	stb r0, 0xe34(r29)
/* 809E6FF4  7F A3 EB 78 */	mr r3, r29
/* 809E6FF8  38 A0 00 00 */	li r5, 0
/* 809E6FFC  4B 76 CD 20 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809E7000  38 00 00 00 */	li r0, 0
/* 809E7004  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809E7008  38 00 00 02 */	li r0, 2
/* 809E700C  B0 1D 0E 12 */	sth r0, 0xe12(r29)
lbl_809E7010:
/* 809E7010  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 809E7014  28 00 00 00 */	cmplwi r0, 0
/* 809E7018  41 82 00 0C */	beq lbl_809E7024
/* 809E701C  3B C0 00 01 */	li r30, 1
/* 809E7020  48 00 00 C0 */	b lbl_809E70E0
lbl_809E7024:
/* 809E7024  7F A3 EB 78 */	mr r3, r29
/* 809E7028  38 80 00 03 */	li r4, 3
/* 809E702C  4B FF F8 29 */	bl setLookMode__11daNpc_grS_cFi
/* 809E7030  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 809E7034  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809E7038  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 809E703C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809E7040  4B 76 96 7C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809E7044  7F A3 EB 78 */	mr r3, r29
/* 809E7048  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809E704C  4B 63 36 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809E7050  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 809E7054  7C 60 07 34 */	extsh r0, r3
/* 809E7058  7C 04 00 00 */	cmpw r4, r0
/* 809E705C  40 82 00 0C */	bne lbl_809E7068
/* 809E7060  3B C0 00 01 */	li r30, 1
/* 809E7064  48 00 00 7C */	b lbl_809E70E0
lbl_809E7068:
/* 809E7068  7F A3 EB 78 */	mr r3, r29
/* 809E706C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809E7070  4B 63 36 A0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809E7074  7C 64 1B 78 */	mr r4, r3
/* 809E7078  7F A3 EB 78 */	mr r3, r29
/* 809E707C  38 A0 00 03 */	li r5, 3
/* 809E7080  38 C0 00 03 */	li r6, 3
/* 809E7084  38 E0 00 0F */	li r7, 0xf
/* 809E7088  4B 76 D0 1C */	b step__8daNpcF_cFsiii
/* 809E708C  2C 03 00 00 */	cmpwi r3, 0
/* 809E7090  41 82 00 50 */	beq lbl_809E70E0
/* 809E7094  7F A3 EB 78 */	mr r3, r29
/* 809E7098  38 80 00 03 */	li r4, 3
/* 809E709C  3C A0 80 9E */	lis r5, lit_4746@ha
/* 809E70A0  C0 25 7E 5C */	lfs f1, lit_4746@l(r5)
/* 809E70A4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E70A8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E70AC  7D 89 03 A6 */	mtctr r12
/* 809E70B0  4E 80 04 21 */	bctrl 
/* 809E70B4  7F A3 EB 78 */	mr r3, r29
/* 809E70B8  38 80 00 00 */	li r4, 0
/* 809E70BC  3C A0 80 9E */	lis r5, lit_4746@ha
/* 809E70C0  C0 25 7E 5C */	lfs f1, lit_4746@l(r5)
/* 809E70C4  38 A0 00 00 */	li r5, 0
/* 809E70C8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E70CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E70D0  7D 89 03 A6 */	mtctr r12
/* 809E70D4  4E 80 04 21 */	bctrl 
/* 809E70D8  38 00 00 00 */	li r0, 0
/* 809E70DC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_809E70E0:
/* 809E70E0  2C 1E 00 00 */	cmpwi r30, 0
/* 809E70E4  41 82 00 E8 */	beq lbl_809E71CC
/* 809E70E8  7F A3 EB 78 */	mr r3, r29
/* 809E70EC  38 80 00 00 */	li r4, 0
/* 809E70F0  38 A0 00 01 */	li r5, 1
/* 809E70F4  38 C0 00 00 */	li r6, 0
/* 809E70F8  4B 76 CC 8C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809E70FC  2C 03 00 00 */	cmpwi r3, 0
/* 809E7100  41 82 00 CC */	beq lbl_809E71CC
/* 809E7104  88 1D 0E 14 */	lbz r0, 0xe14(r29)
/* 809E7108  28 00 00 00 */	cmplwi r0, 0
/* 809E710C  40 82 00 BC */	bne lbl_809E71C8
/* 809E7110  38 7D 09 F8 */	addi r3, r29, 0x9f8
/* 809E7114  38 81 00 08 */	addi r4, r1, 8
/* 809E7118  4B 86 34 10 */	b getEventId__10dMsgFlow_cFPi
/* 809E711C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 809E7120  28 00 00 01 */	cmplwi r0, 1
/* 809E7124  40 82 00 9C */	bne lbl_809E71C0
/* 809E7128  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809E712C  80 81 00 08 */	lwz r4, 8(r1)
/* 809E7130  38 A0 00 00 */	li r5, 0
/* 809E7134  38 C0 FF FF */	li r6, -1
/* 809E7138  38 E0 FF FF */	li r7, -1
/* 809E713C  39 00 00 00 */	li r8, 0
/* 809E7140  39 20 00 00 */	li r9, 0
/* 809E7144  4B 63 4A A4 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 809E7148  90 7D 0E 18 */	stw r3, 0xe18(r29)
/* 809E714C  80 7D 0E 18 */	lwz r3, 0xe18(r29)
/* 809E7150  3C 03 00 01 */	addis r0, r3, 1
/* 809E7154  28 00 FF FF */	cmplwi r0, 0xffff
/* 809E7158  41 82 00 74 */	beq lbl_809E71CC
/* 809E715C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E7160  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 809E7164  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 809E7168  7F A4 EB 78 */	mr r4, r29
/* 809E716C  3C A0 80 9E */	lis r5, stringBase0@ha
/* 809E7170  38 A5 7F 9C */	addi r5, r5, stringBase0@l
/* 809E7174  38 A5 00 18 */	addi r5, r5, 0x18
/* 809E7178  38 C0 00 FF */	li r6, 0xff
/* 809E717C  4B 66 05 DC */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 809E7180  7C 7C 1B 78 */	mr r28, r3
/* 809E7184  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 809E7188  7F A4 EB 78 */	mr r4, r29
/* 809E718C  4B 65 B3 8C */	b reset__14dEvt_control_cFPv
/* 809E7190  7F A3 EB 78 */	mr r3, r29
/* 809E7194  7F 84 E3 78 */	mr r4, r28
/* 809E7198  38 A0 00 01 */	li r5, 1
/* 809E719C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809E71A0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809E71A4  4B 63 44 40 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 809E71A8  38 00 00 01 */	li r0, 1
/* 809E71AC  98 1D 0E 34 */	stb r0, 0xe34(r29)
/* 809E71B0  98 1D 09 EC */	stb r0, 0x9ec(r29)
/* 809E71B4  3B E0 00 01 */	li r31, 1
/* 809E71B8  98 1D 09 ED */	stb r0, 0x9ed(r29)
/* 809E71BC  48 00 00 10 */	b lbl_809E71CC
lbl_809E71C0:
/* 809E71C0  3B E0 00 01 */	li r31, 1
/* 809E71C4  48 00 00 08 */	b lbl_809E71CC
lbl_809E71C8:
/* 809E71C8  3B E0 00 01 */	li r31, 1
lbl_809E71CC:
/* 809E71CC  2C 1F 00 00 */	cmpwi r31, 0
/* 809E71D0  41 82 00 30 */	beq lbl_809E7200
/* 809E71D4  38 00 00 03 */	li r0, 3
/* 809E71D8  B0 1D 0E 12 */	sth r0, 0xe12(r29)
/* 809E71DC  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 809E71E0  28 00 00 00 */	cmplwi r0, 0
/* 809E71E4  40 82 00 14 */	bne lbl_809E71F8
/* 809E71E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E71EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E71F0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809E71F4  4B 65 B2 74 */	b reset__14dEvt_control_cFv
lbl_809E71F8:
/* 809E71F8  38 00 00 00 */	li r0, 0
/* 809E71FC  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_809E7200:
/* 809E7200  7F E3 FB 78 */	mr r3, r31
/* 809E7204  39 61 00 20 */	addi r11, r1, 0x20
/* 809E7208  4B 97 B0 1C */	b _restgpr_28
/* 809E720C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E7210  7C 08 03 A6 */	mtlr r0
/* 809E7214  38 21 00 20 */	addi r1, r1, 0x20
/* 809E7218  4E 80 00 20 */	blr 
