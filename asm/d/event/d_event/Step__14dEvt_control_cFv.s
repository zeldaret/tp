lbl_80042BBC:
/* 80042BBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80042BC0  7C 08 02 A6 */	mflr r0
/* 80042BC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80042BC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80042BCC  48 31 F6 0D */	bl _savegpr_28
/* 80042BD0  7C 7D 1B 78 */	mr r29, r3
/* 80042BD4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80042BD8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80042BDC  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80042BE0  38 00 00 00 */	li r0, 0
/* 80042BE4  98 03 00 E7 */	stb r0, 0xe7(r3)
/* 80042BE8  88 03 00 E2 */	lbz r0, 0xe2(r3)
/* 80042BEC  98 03 00 E8 */	stb r0, 0xe8(r3)
/* 80042BF0  4B FF FD E5 */	bl skipper__14dEvt_control_cFv
/* 80042BF4  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 80042BF8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80042BFC  41 82 00 54 */	beq lbl_80042C50
/* 80042C00  88 1D 00 E5 */	lbz r0, 0xe5(r29)
/* 80042C04  28 00 00 01 */	cmplwi r0, 1
/* 80042C08  40 82 00 24 */	bne lbl_80042C2C
/* 80042C0C  38 00 00 05 */	li r0, 5
/* 80042C10  98 1D 00 E5 */	stb r0, 0xe5(r29)
/* 80042C14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80042C18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80042C1C  80 03 5D BC */	lwz r0, 0x5dbc(r3)
/* 80042C20  28 00 00 00 */	cmplwi r0, 0
/* 80042C24  41 82 00 08 */	beq lbl_80042C2C
/* 80042C28  48 1F 54 71 */	bl endFlowGroup__12dMsgObject_cFv
lbl_80042C2C:
/* 80042C2C  7F C3 F3 78 */	mr r3, r30
/* 80042C30  A8 9D 00 DE */	lha r4, 0xde(r29)
/* 80042C34  48 00 48 89 */	bl getEventData__16dEvent_manager_cFs
/* 80042C38  28 03 00 00 */	cmplwi r3, 0
/* 80042C3C  41 82 00 08 */	beq lbl_80042C44
/* 80042C40  48 00 12 BD */	bl forceFinish__12dEvDtEvent_cFv
lbl_80042C44:
/* 80042C44  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 80042C48  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80042C4C  B0 1D 00 D8 */	sth r0, 0xd8(r29)
lbl_80042C50:
/* 80042C50  88 1D 00 E5 */	lbz r0, 0xe5(r29)
/* 80042C54  28 00 00 00 */	cmplwi r0, 0
/* 80042C58  41 82 00 0C */	beq lbl_80042C64
/* 80042C5C  7F C3 F3 78 */	mr r3, r30
/* 80042C60  48 00 42 05 */	bl Sequencer__16dEvent_manager_cFv
lbl_80042C64:
/* 80042C64  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 80042C68  54 00 06 2A */	rlwinm r0, r0, 0, 0x18, 0x15
/* 80042C6C  B0 1D 00 D8 */	sth r0, 0xd8(r29)
/* 80042C70  88 1D 00 E5 */	lbz r0, 0xe5(r29)
/* 80042C74  28 00 00 02 */	cmplwi r0, 2
/* 80042C78  40 82 00 38 */	bne lbl_80042CB0
/* 80042C7C  7F C3 F3 78 */	mr r3, r30
/* 80042C80  3C 80 80 38 */	lis r4, d_event_d_event__stringBase0@ha /* 0x80379D80@ha */
/* 80042C84  38 84 9D 80 */	addi r4, r4, d_event_d_event__stringBase0@l /* 0x80379D80@l */
/* 80042C88  38 84 00 07 */	addi r4, r4, 7
/* 80042C8C  48 00 56 BD */	bl cancelStaff__16dEvent_manager_cFPCc
/* 80042C90  38 60 00 00 */	li r3, 0
/* 80042C94  90 7E 01 8C */	stw r3, 0x18c(r30)
/* 80042C98  B0 7D 00 D8 */	sth r3, 0xd8(r29)
/* 80042C9C  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 80042CA0  60 00 02 00 */	ori r0, r0, 0x200
/* 80042CA4  B0 1D 00 D8 */	sth r0, 0xd8(r29)
/* 80042CA8  98 7D 00 E5 */	stb r3, 0xe5(r29)
/* 80042CAC  48 00 00 14 */	b lbl_80042CC0
lbl_80042CB0:
/* 80042CB0  28 00 00 00 */	cmplwi r0, 0
/* 80042CB4  40 82 00 0C */	bne lbl_80042CC0
/* 80042CB8  38 00 00 00 */	li r0, 0
/* 80042CBC  B0 1D 00 D8 */	sth r0, 0xd8(r29)
lbl_80042CC0:
/* 80042CC0  88 9D 00 E5 */	lbz r4, 0xe5(r29)
/* 80042CC4  28 04 00 05 */	cmplwi r4, 5
/* 80042CC8  40 82 00 88 */	bne lbl_80042D50
/* 80042CCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80042CD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80042CD4  88 03 4E 1C */	lbz r0, 0x4e1c(r3)
/* 80042CD8  7C 00 07 75 */	extsb. r0, r0
/* 80042CDC  40 82 00 74 */	bne lbl_80042D50
/* 80042CE0  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 80042CE4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80042CE8  40 82 00 10 */	bne lbl_80042CF8
/* 80042CEC  80 1D 01 08 */	lwz r0, 0x108(r29)
/* 80042CF0  2C 00 00 00 */	cmpwi r0, 0
/* 80042CF4  40 80 00 28 */	bge lbl_80042D1C
lbl_80042CF8:
/* 80042CF8  80 1D 01 10 */	lwz r0, 0x110(r29)
/* 80042CFC  2C 00 00 00 */	cmpwi r0, 0
/* 80042D00  41 82 00 0C */	beq lbl_80042D0C
/* 80042D04  C0 22 84 C8 */	lfs f1, lit_5013(r2)
/* 80042D08  4B FC 53 C9 */	bl fadeOut__13mDoGph_gInf_cFf
lbl_80042D0C:
/* 80042D0C  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 80042D10  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80042D14  B0 1D 00 DA */	sth r0, 0xda(r29)
/* 80042D18  4B FF E7 71 */	bl func_80041488
lbl_80042D1C:
/* 80042D1C  7F A3 EB 78 */	mr r3, r29
/* 80042D20  4B FF F4 A1 */	bl endProc__14dEvt_control_cFv
/* 80042D24  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 80042D28  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80042D2C  40 82 00 18 */	bne lbl_80042D44
/* 80042D30  38 00 00 00 */	li r0, 0
/* 80042D34  90 1D 01 10 */	stw r0, 0x110(r29)
/* 80042D38  7F C3 F3 78 */	mr r3, r30
/* 80042D3C  38 80 00 00 */	li r4, 0
/* 80042D40  48 00 3A C1 */	bl setObjectArchive__16dEvent_manager_cFPc
lbl_80042D44:
/* 80042D44  38 00 00 02 */	li r0, 2
/* 80042D48  98 1D 00 E5 */	stb r0, 0xe5(r29)
/* 80042D4C  48 00 00 28 */	b lbl_80042D74
lbl_80042D50:
/* 80042D50  28 04 00 05 */	cmplwi r4, 5
/* 80042D54  40 82 00 20 */	bne lbl_80042D74
/* 80042D58  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 80042D5C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80042D60  40 82 00 10 */	bne lbl_80042D70
/* 80042D64  80 1D 01 08 */	lwz r0, 0x108(r29)
/* 80042D68  2C 00 00 00 */	cmpwi r0, 0
/* 80042D6C  40 80 00 08 */	bge lbl_80042D74
lbl_80042D70:
/* 80042D70  4B FF E7 19 */	bl func_80041488
lbl_80042D74:
/* 80042D74  7F A3 EB 78 */	mr r3, r29
/* 80042D78  4B FF F4 DD */	bl change__14dEvt_control_cFv
/* 80042D7C  2C 03 FF FF */	cmpwi r3, -1
/* 80042D80  41 82 00 50 */	beq lbl_80042DD0
/* 80042D84  7F C3 F3 78 */	mr r3, r30
/* 80042D88  3C 80 80 38 */	lis r4, d_event_d_event__stringBase0@ha /* 0x80379D80@ha */
/* 80042D8C  38 84 9D 80 */	addi r4, r4, d_event_d_event__stringBase0@l /* 0x80379D80@l */
/* 80042D90  38 84 00 07 */	addi r4, r4, 7
/* 80042D94  48 00 55 B5 */	bl cancelStaff__16dEvent_manager_cFPCc
/* 80042D98  38 60 00 00 */	li r3, 0
/* 80042D9C  90 7E 01 8C */	stw r3, 0x18c(r30)
/* 80042DA0  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 80042DA4  60 00 02 00 */	ori r0, r0, 0x200
/* 80042DA8  B0 1D 00 D8 */	sth r0, 0xd8(r29)
/* 80042DAC  98 7D 00 E5 */	stb r3, 0xe5(r29)
/* 80042DB0  A0 7D 00 DA */	lhz r3, 0xda(r29)
/* 80042DB4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80042DB8  41 82 00 18 */	beq lbl_80042DD0
/* 80042DBC  54 60 04 3C */	rlwinm r0, r3, 0, 0x10, 0x1e
/* 80042DC0  B0 1D 00 DA */	sth r0, 0xda(r29)
/* 80042DC4  A0 1D 00 DA */	lhz r0, 0xda(r29)
/* 80042DC8  60 00 00 02 */	ori r0, r0, 2
/* 80042DCC  B0 1D 00 DA */	sth r0, 0xda(r29)
lbl_80042DD0:
/* 80042DD0  38 60 00 00 */	li r3, 0
/* 80042DD4  98 7D 01 28 */	stb r3, 0x128(r29)
/* 80042DD8  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 80042DDC  7C 84 07 74 */	extsb r4, r4
/* 80042DE0  80 1D 01 2C */	lwz r0, 0x12c(r29)
/* 80042DE4  7C 00 20 00 */	cmpw r0, r4
/* 80042DE8  41 82 00 0C */	beq lbl_80042DF4
/* 80042DEC  98 7D 01 29 */	stb r3, 0x129(r29)
/* 80042DF0  90 9D 01 2C */	stw r4, 0x12c(r29)
lbl_80042DF4:
/* 80042DF4  88 1D 00 E5 */	lbz r0, 0xe5(r29)
/* 80042DF8  28 00 00 00 */	cmplwi r0, 0
/* 80042DFC  40 82 00 F8 */	bne lbl_80042EF4
/* 80042E00  7F A3 EB 78 */	mr r3, r29
/* 80042E04  4B FF F4 BD */	bl entry__14dEvt_control_cFv
/* 80042E08  2C 03 00 00 */	cmpwi r3, 0
/* 80042E0C  41 82 00 E8 */	beq lbl_80042EF4
/* 80042E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80042E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80042E18  80 03 5D BC */	lwz r0, 0x5dbc(r3)
/* 80042E1C  28 00 00 00 */	cmplwi r0, 0
/* 80042E20  41 82 00 08 */	beq lbl_80042E28
/* 80042E24  48 1F 4B 89 */	bl setKillMessageFlag__12dMsgObject_cFv
lbl_80042E28:
/* 80042E28  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 80042E2C  60 00 01 00 */	ori r0, r0, 0x100
/* 80042E30  B0 1D 00 D8 */	sth r0, 0xd8(r29)
/* 80042E34  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 80042E38  38 80 00 1F */	li r4, 0x1f
/* 80042E3C  48 02 CF 59 */	bl StopQuake__12dVibration_cFi
/* 80042E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80042E44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80042E48  83 83 5D B4 */	lwz r28, 0x5db4(r3)
/* 80042E4C  48 13 E7 F5 */	bl dCam_getBody__Fv
/* 80042E50  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80042E54  2C 00 00 00 */	cmpwi r0, 0
/* 80042E58  41 82 00 8C */	beq lbl_80042EE4
/* 80042E5C  38 80 00 01 */	li r4, 1
/* 80042E60  38 60 00 00 */	li r3, 0
/* 80042E64  A0 FC 2F E8 */	lhz r7, 0x2fe8(r28)
/* 80042E68  28 07 00 A2 */	cmplwi r7, 0xa2
/* 80042E6C  40 82 00 38 */	bne lbl_80042EA4
/* 80042E70  7C 65 1B 78 */	mr r5, r3
/* 80042E74  80 DC 28 28 */	lwz r6, 0x2828(r28)
/* 80042E78  28 06 00 00 */	cmplwi r6, 0
/* 80042E7C  41 82 00 1C */	beq lbl_80042E98
/* 80042E80  A0 06 00 F8 */	lhz r0, 0xf8(r6)
/* 80042E84  20 00 00 02 */	subfic r0, r0, 2
/* 80042E88  7C 00 00 34 */	cntlzw r0, r0
/* 80042E8C  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80042E90  41 82 00 08 */	beq lbl_80042E98
/* 80042E94  7C 85 23 78 */	mr r5, r4
lbl_80042E98:
/* 80042E98  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80042E9C  40 82 00 08 */	bne lbl_80042EA4
/* 80042EA0  38 60 00 01 */	li r3, 1
lbl_80042EA4:
/* 80042EA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80042EA8  40 82 00 2C */	bne lbl_80042ED4
/* 80042EAC  38 60 00 00 */	li r3, 0
/* 80042EB0  28 07 00 A2 */	cmplwi r7, 0xa2
/* 80042EB4  41 82 00 14 */	beq lbl_80042EC8
/* 80042EB8  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 80042EBC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80042EC0  41 82 00 08 */	beq lbl_80042EC8
/* 80042EC4  38 60 00 01 */	li r3, 1
lbl_80042EC8:
/* 80042EC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80042ECC  40 82 00 08 */	bne lbl_80042ED4
/* 80042ED0  38 80 00 00 */	li r4, 0
lbl_80042ED4:
/* 80042ED4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80042ED8  41 82 00 0C */	beq lbl_80042EE4
/* 80042EDC  48 13 E7 65 */	bl dCam_getBody__Fv
/* 80042EE0  48 11 E5 E5 */	bl QuickStart__9dCamera_cFv
lbl_80042EE4:
/* 80042EE4  38 00 00 01 */	li r0, 1
/* 80042EE8  98 1D 00 E5 */	stb r0, 0xe5(r29)
/* 80042EEC  7F A3 EB 78 */	mr r3, r29
/* 80042EF0  4B FF F6 C5 */	bl clearSkipSystem__14dEvt_control_cFv
lbl_80042EF4:
/* 80042EF4  38 00 00 00 */	li r0, 0
/* 80042EF8  98 1D 00 E2 */	stb r0, 0xe2(r29)
/* 80042EFC  90 1D 00 F8 */	stw r0, 0xf8(r29)
/* 80042F00  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 80042F04  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80042F08  41 82 00 14 */	beq lbl_80042F1C
/* 80042F0C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80042F10  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80042F14  38 80 00 00 */	li r4, 0
/* 80042F18  48 27 32 D1 */	bl setDemoName__11Z2StatusMgrFPc
lbl_80042F1C:
/* 80042F1C  88 1D 00 E5 */	lbz r0, 0xe5(r29)
/* 80042F20  28 00 00 00 */	cmplwi r0, 0
/* 80042F24  41 82 00 14 */	beq lbl_80042F38
/* 80042F28  7F C3 F3 78 */	mr r3, r30
/* 80042F2C  48 00 44 D1 */	bl Experts__16dEvent_manager_cFv
/* 80042F30  38 60 00 01 */	li r3, 1
/* 80042F34  48 00 00 5C */	b lbl_80042F90
lbl_80042F38:
/* 80042F38  88 1D 01 29 */	lbz r0, 0x129(r29)
/* 80042F3C  28 00 00 00 */	cmplwi r0, 0
/* 80042F40  40 82 00 44 */	bne lbl_80042F84
/* 80042F44  38 61 00 08 */	addi r3, r1, 8
/* 80042F48  38 9F 4E 00 */	addi r4, r31, 0x4e00
/* 80042F4C  38 A0 00 07 */	li r5, 7
/* 80042F50  48 32 5B 99 */	bl strncpy
/* 80042F54  38 00 00 00 */	li r0, 0
/* 80042F58  98 01 00 0F */	stb r0, 0xf(r1)
/* 80042F5C  38 7F 5F 5C */	addi r3, r31, 0x5f5c
/* 80042F60  38 81 00 08 */	addi r4, r1, 8
/* 80042F64  38 A0 00 07 */	li r5, 7
/* 80042F68  48 32 5B 81 */	bl strncpy
/* 80042F6C  38 00 00 00 */	li r0, 0
/* 80042F70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80042F74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80042F78  98 03 5F 63 */	stb r0, 0x5f63(r3)
/* 80042F7C  80 7D 01 2C */	lwz r3, 0x12c(r29)
/* 80042F80  4B FE CC 01 */	bl dComIfGs_onVisitedRoom__Fi
lbl_80042F84:
/* 80042F84  38 00 00 01 */	li r0, 1
/* 80042F88  98 1D 01 29 */	stb r0, 0x129(r29)
/* 80042F8C  38 60 00 00 */	li r3, 0
lbl_80042F90:
/* 80042F90  39 61 00 20 */	addi r11, r1, 0x20
/* 80042F94  48 31 F2 91 */	bl _restgpr_28
/* 80042F98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80042F9C  7C 08 03 A6 */	mtlr r0
/* 80042FA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80042FA4  4E 80 00 20 */	blr 
