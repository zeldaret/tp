lbl_8048D01C:
/* 8048D01C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048D020  7C 08 02 A6 */	mflr r0
/* 8048D024  90 01 00 34 */	stw r0, 0x34(r1)
/* 8048D028  39 61 00 30 */	addi r11, r1, 0x30
/* 8048D02C  4B ED 51 A5 */	bl _savegpr_26
/* 8048D030  7C 7D 1B 78 */	mr r29, r3
/* 8048D034  3C 80 80 49 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8048D818@ha */
/* 8048D038  3B 84 D8 18 */	addi r28, r4, cNullVec__6Z2Calc@l /* 0x8048D818@l */
/* 8048D03C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048D040  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048D044  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 8048D048  88 03 04 BA */	lbz r0, 0x4ba(r3)
/* 8048D04C  7C 05 07 74 */	extsb r5, r0
/* 8048D050  3C 80 80 45 */	lis r4, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8048D054  88 04 0D 64 */	lbz r0, struct_80450D64+0x0@l(r4)  /* 0x80450D64@l */
/* 8048D058  7C 00 07 74 */	extsb r0, r0
/* 8048D05C  7C 05 00 00 */	cmpw r5, r0
/* 8048D060  40 82 02 A0 */	bne lbl_8048D300
/* 8048D064  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 8048D068  28 00 00 00 */	cmplwi r0, 0
/* 8048D06C  41 82 01 4C */	beq lbl_8048D1B8
/* 8048D070  3B 40 00 00 */	li r26, 0
/* 8048D074  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8048D078  28 00 00 01 */	cmplwi r0, 1
/* 8048D07C  40 82 00 4C */	bne lbl_8048D0C8
/* 8048D080  88 1D 05 72 */	lbz r0, 0x572(r29)
/* 8048D084  28 00 00 00 */	cmplwi r0, 0
/* 8048D088  41 82 00 1C */	beq lbl_8048D0A4
/* 8048D08C  38 7D 05 74 */	addi r3, r29, 0x574
/* 8048D090  7F A4 EB 78 */	mr r4, r29
/* 8048D094  80 BD 05 6C */	lwz r5, 0x56c(r29)
/* 8048D098  38 C0 00 00 */	li r6, 0
/* 8048D09C  38 E0 00 00 */	li r7, 0
/* 8048D0A0  4B DB CE F1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_8048D0A4:
/* 8048D0A4  38 7D 05 74 */	addi r3, r29, 0x574
/* 8048D0A8  7F A4 EB 78 */	mr r4, r29
/* 8048D0AC  38 A0 00 00 */	li r5, 0
/* 8048D0B0  38 C0 00 00 */	li r6, 0
/* 8048D0B4  4B DB D2 25 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8048D0B8  2C 03 00 00 */	cmpwi r3, 0
/* 8048D0BC  41 82 00 B0 */	beq lbl_8048D16C
/* 8048D0C0  3B 40 00 01 */	li r26, 1
/* 8048D0C4  48 00 00 A8 */	b lbl_8048D16C
lbl_8048D0C8:
/* 8048D0C8  28 00 00 02 */	cmplwi r0, 2
/* 8048D0CC  40 82 00 30 */	bne lbl_8048D0FC
/* 8048D0D0  A8 9D 05 70 */	lha r4, 0x570(r29)
/* 8048D0D4  2C 04 FF FF */	cmpwi r4, -1
/* 8048D0D8  41 82 00 24 */	beq lbl_8048D0FC
/* 8048D0DC  7F C3 F3 78 */	mr r3, r30
/* 8048D0E0  4B BB A9 99 */	bl endCheck__16dEvent_manager_cFs
/* 8048D0E4  2C 03 00 00 */	cmpwi r3, 0
/* 8048D0E8  41 82 00 14 */	beq lbl_8048D0FC
/* 8048D0EC  38 00 FF FF */	li r0, -1
/* 8048D0F0  B0 1D 05 70 */	sth r0, 0x570(r29)
/* 8048D0F4  3B 40 00 01 */	li r26, 1
/* 8048D0F8  48 00 00 74 */	b lbl_8048D16C
lbl_8048D0FC:
/* 8048D0FC  7F C3 F3 78 */	mr r3, r30
/* 8048D100  80 9C 00 68 */	lwz r4, 0x68(r28)
/* 8048D104  7F A5 EB 78 */	mr r5, r29
/* 8048D108  38 C0 FF FF */	li r6, -1
/* 8048D10C  4B BB AA 11 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8048D110  7C 7B 1B 78 */	mr r27, r3
/* 8048D114  2C 1B FF FF */	cmpwi r27, -1
/* 8048D118  41 82 00 54 */	beq lbl_8048D16C
/* 8048D11C  7F C3 F3 78 */	mr r3, r30
/* 8048D120  7F 64 DB 78 */	mr r4, r27
/* 8048D124  38 BC 00 20 */	addi r5, r28, 0x20
/* 8048D128  38 C0 00 03 */	li r6, 3
/* 8048D12C  38 E0 00 00 */	li r7, 0
/* 8048D130  39 00 00 00 */	li r8, 0
/* 8048D134  4B BB AC DD */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8048D138  7C 60 1B 78 */	mr r0, r3
/* 8048D13C  7F A3 EB 78 */	mr r3, r29
/* 8048D140  7F 64 DB 78 */	mr r4, r27
/* 8048D144  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8048D148  39 9C 00 44 */	addi r12, r28, 0x44
/* 8048D14C  7D 8C 02 14 */	add r12, r12, r0
/* 8048D150  4B ED 4F 35 */	bl __ptmf_scall
/* 8048D154  60 00 00 00 */	nop 
/* 8048D158  2C 03 00 00 */	cmpwi r3, 0
/* 8048D15C  41 82 00 10 */	beq lbl_8048D16C
/* 8048D160  7F C3 F3 78 */	mr r3, r30
/* 8048D164  7F 64 DB 78 */	mr r4, r27
/* 8048D168  4B BB B0 15 */	bl cutEnd__16dEvent_manager_cFi
lbl_8048D16C:
/* 8048D16C  2C 1A 00 00 */	cmpwi r26, 0
/* 8048D170  41 82 01 50 */	beq lbl_8048D2C0
/* 8048D174  7F A3 EB 78 */	mr r3, r29
/* 8048D178  48 00 01 F1 */	bl getOffSwBit__14daTag_EvtMsg_cFv
/* 8048D17C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8048D180  28 00 00 FF */	cmplwi r0, 0xff
/* 8048D184  41 82 00 28 */	beq lbl_8048D1AC
/* 8048D188  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8048D18C  7C 1C 07 74 */	extsb r28, r0
/* 8048D190  7F A3 EB 78 */	mr r3, r29
/* 8048D194  48 00 01 D5 */	bl getOffSwBit__14daTag_EvtMsg_cFv
/* 8048D198  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8048D19C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048D1A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048D1A4  7F 85 E3 78 */	mr r5, r28
/* 8048D1A8  4B BA 80 59 */	bl onSwitch__10dSv_info_cFii
lbl_8048D1AC:
/* 8048D1AC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8048D1B0  4B BB 52 B9 */	bl reset__14dEvt_control_cFv
/* 8048D1B4  48 00 01 0C */	b lbl_8048D2C0
lbl_8048D1B8:
/* 8048D1B8  48 00 01 CD */	bl isDelete__14daTag_EvtMsg_cFv
/* 8048D1BC  2C 03 00 00 */	cmpwi r3, 0
/* 8048D1C0  41 82 00 10 */	beq lbl_8048D1D0
/* 8048D1C4  7F A3 EB 78 */	mr r3, r29
/* 8048D1C8  4B B8 CA B5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8048D1CC  48 00 00 F4 */	b lbl_8048D2C0
lbl_8048D1D0:
/* 8048D1D0  80 1D 05 6C */	lwz r0, 0x56c(r29)
/* 8048D1D4  2C 00 FF FF */	cmpwi r0, -1
/* 8048D1D8  41 82 00 E8 */	beq lbl_8048D2C0
/* 8048D1DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048D1E0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048D1E4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8048D1E8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8048D1EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8048D1F0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8048D1F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8048D1F8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8048D1FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8048D200  7F A3 EB 78 */	mr r3, r29
/* 8048D204  38 81 00 08 */	addi r4, r1, 8
/* 8048D208  48 00 02 21 */	bl chkPointInArea__14daTag_EvtMsg_cF4cXyz
/* 8048D20C  2C 03 00 00 */	cmpwi r3, 0
/* 8048D210  41 82 00 B0 */	beq lbl_8048D2C0
/* 8048D214  7F A3 EB 78 */	mr r3, r29
/* 8048D218  48 00 01 5D */	bl getProcType__14daTag_EvtMsg_cFv
/* 8048D21C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8048D220  40 82 00 84 */	bne lbl_8048D2A4
/* 8048D224  7F A3 EB 78 */	mr r3, r29
/* 8048D228  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8048D22C  4B B8 D4 E5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8048D230  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8048D234  7C 04 07 34 */	extsh r4, r0
/* 8048D238  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8048D23C  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 8048D240  7C 00 20 50 */	subf r0, r0, r4
/* 8048D244  7C 00 07 35 */	extsh. r0, r0
/* 8048D248  40 80 00 0C */	bge lbl_8048D254
/* 8048D24C  7C 00 00 D0 */	neg r0, r0
/* 8048D250  7C 00 07 34 */	extsh r0, r0
lbl_8048D254:
/* 8048D254  7C 00 07 34 */	extsh r0, r0
/* 8048D258  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8048D25C  41 81 00 64 */	bgt lbl_8048D2C0
/* 8048D260  7F C3 F3 78 */	mr r3, r30
/* 8048D264  7F A4 EB 78 */	mr r4, r29
/* 8048D268  3C A0 80 49 */	lis r5, d_a_tag_evtmsg__stringBase0@ha /* 0x8048D7EC@ha */
/* 8048D26C  38 A5 D7 EC */	addi r5, r5, d_a_tag_evtmsg__stringBase0@l /* 0x8048D7EC@l */
/* 8048D270  38 A5 00 12 */	addi r5, r5, 0x12
/* 8048D274  38 C0 00 FF */	li r6, 0xff
/* 8048D278  4B BB A4 E1 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8048D27C  B0 7D 05 70 */	sth r3, 0x570(r29)
/* 8048D280  7F A3 EB 78 */	mr r3, r29
/* 8048D284  A8 9D 05 70 */	lha r4, 0x570(r29)
/* 8048D288  38 A0 00 FF */	li r5, 0xff
/* 8048D28C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8048D290  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8048D294  38 E0 00 00 */	li r7, 0
/* 8048D298  39 00 00 01 */	li r8, 1
/* 8048D29C  4B B8 E3 E1 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8048D2A0  48 00 00 20 */	b lbl_8048D2C0
lbl_8048D2A4:
/* 8048D2A4  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8048D2A8  60 00 00 01 */	ori r0, r0, 1
/* 8048D2AC  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 8048D2B0  7F A3 EB 78 */	mr r3, r29
/* 8048D2B4  38 80 00 00 */	li r4, 0
/* 8048D2B8  38 A0 00 00 */	li r5, 0
/* 8048D2BC  4B B8 DE E1 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
lbl_8048D2C0:
/* 8048D2C0  38 00 00 00 */	li r0, 0
/* 8048D2C4  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8048D2C8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8048D2CC  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 8048D2D0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8048D2D4  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 8048D2D8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8048D2DC  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 8048D2E0  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 8048D2E4  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 8048D2E8  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 8048D2EC  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 8048D2F0  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 8048D2F4  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 8048D2F8  38 60 00 01 */	li r3, 1
/* 8048D2FC  48 00 00 08 */	b lbl_8048D304
lbl_8048D300:
/* 8048D300  38 60 00 00 */	li r3, 0
lbl_8048D304:
/* 8048D304  39 61 00 30 */	addi r11, r1, 0x30
/* 8048D308  4B ED 4F 15 */	bl _restgpr_26
/* 8048D30C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8048D310  7C 08 03 A6 */	mtlr r0
/* 8048D314  38 21 00 30 */	addi r1, r1, 0x30
/* 8048D318  4E 80 00 20 */	blr 
