lbl_8048E010:
/* 8048E010  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8048E014  7C 08 02 A6 */	mflr r0
/* 8048E018  90 01 01 24 */	stw r0, 0x124(r1)
/* 8048E01C  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 8048E020  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 8048E024  39 61 01 10 */	addi r11, r1, 0x110
/* 8048E028  4B ED 41 A4 */	b _savegpr_25
/* 8048E02C  7C 7B 1B 78 */	mr r27, r3
/* 8048E030  3C 80 80 49 */	lis r4, lit_3884@ha
/* 8048E034  3B E4 EA DC */	addi r31, r4, lit_3884@l
/* 8048E038  3B 80 00 00 */	li r28, 0
/* 8048E03C  88 03 04 BA */	lbz r0, 0x4ba(r3)
/* 8048E040  7C 05 07 74 */	extsb r5, r0
/* 8048E044  3C 80 80 45 */	lis r4, struct_80450D64+0x0@ha
/* 8048E048  88 04 0D 64 */	lbz r0, struct_80450D64+0x0@l(r4)
/* 8048E04C  7C 00 07 74 */	extsb r0, r0
/* 8048E050  7C 05 00 00 */	cmpw r5, r0
/* 8048E054  40 82 08 40 */	bne lbl_8048E894
/* 8048E058  48 00 08 69 */	bl isDelete__12daTag_KMsg_cFv
/* 8048E05C  2C 03 00 00 */	cmpwi r3, 0
/* 8048E060  41 82 00 14 */	beq lbl_8048E074
/* 8048E064  7F 63 DB 78 */	mr r3, r27
/* 8048E068  4B B8 BC 14 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8048E06C  38 60 00 01 */	li r3, 1
/* 8048E070  48 00 08 28 */	b lbl_8048E898
lbl_8048E074:
/* 8048E074  80 BB 00 B0 */	lwz r5, 0xb0(r27)
/* 8048E078  54 A3 46 3E */	srwi r3, r5, 0x18
/* 8048E07C  38 03 FF 01 */	addi r0, r3, -255
/* 8048E080  30 00 FF FF */	addic r0, r0, -1
/* 8048E084  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E088  7C 60 00 78 */	andc r0, r3, r0
/* 8048E08C  2C 00 00 03 */	cmpwi r0, 3
/* 8048E090  40 82 00 30 */	bne lbl_8048E0C0
/* 8048E094  88 1B 05 C3 */	lbz r0, 0x5c3(r27)
/* 8048E098  28 00 00 00 */	cmplwi r0, 0
/* 8048E09C  40 82 00 18 */	bne lbl_8048E0B4
/* 8048E0A0  38 00 00 80 */	li r0, 0x80
/* 8048E0A4  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8048E0A8  38 00 00 4A */	li r0, 0x4a
/* 8048E0AC  98 1B 05 4B */	stb r0, 0x54b(r27)
/* 8048E0B0  48 00 00 B8 */	b lbl_8048E168
lbl_8048E0B4:
/* 8048E0B4  38 00 00 00 */	li r0, 0
/* 8048E0B8  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8048E0BC  48 00 00 AC */	b lbl_8048E168
lbl_8048E0C0:
/* 8048E0C0  54 A0 DF 7E */	rlwinm r0, r5, 0x1b, 0x1d, 0x1f
/* 8048E0C4  28 00 00 07 */	cmplwi r0, 7
/* 8048E0C8  40 82 00 0C */	bne lbl_8048E0D4
/* 8048E0CC  38 80 00 00 */	li r4, 0
/* 8048E0D0  48 00 00 14 */	b lbl_8048E0E4
lbl_8048E0D4:
/* 8048E0D4  28 00 00 06 */	cmplwi r0, 6
/* 8048E0D8  38 80 00 06 */	li r4, 6
/* 8048E0DC  41 81 00 08 */	bgt lbl_8048E0E4
/* 8048E0E0  7C 04 03 78 */	mr r4, r0
lbl_8048E0E4:
/* 8048E0E4  54 A0 06 FE */	clrlwi r0, r5, 0x1b
/* 8048E0E8  28 00 00 1F */	cmplwi r0, 0x1f
/* 8048E0EC  40 82 00 0C */	bne lbl_8048E0F8
/* 8048E0F0  38 60 00 00 */	li r3, 0
/* 8048E0F4  48 00 00 14 */	b lbl_8048E108
lbl_8048E0F8:
/* 8048E0F8  28 00 00 13 */	cmplwi r0, 0x13
/* 8048E0FC  38 60 00 13 */	li r3, 0x13
/* 8048E100  41 81 00 08 */	bgt lbl_8048E108
/* 8048E104  7C 03 03 78 */	mr r3, r0
lbl_8048E108:
/* 8048E108  4B CB E9 10 */	b daNpcT_getDistTableIdx__Fii
/* 8048E10C  98 7B 05 45 */	stb r3, 0x545(r27)
/* 8048E110  88 1B 05 45 */	lbz r0, 0x545(r27)
/* 8048E114  98 1B 05 47 */	stb r0, 0x547(r27)
/* 8048E118  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E11C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8048E120  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8048E124  28 00 00 FF */	cmplwi r0, 0xff
/* 8048E128  40 82 00 0C */	bne lbl_8048E134
/* 8048E12C  FC 00 10 90 */	fmr f0, f2
/* 8048E130  48 00 00 1C */	b lbl_8048E14C
lbl_8048E134:
/* 8048E134  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 8048E138  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8048E13C  3C 00 43 30 */	lis r0, 0x4330
/* 8048E140  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8048E144  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8048E148  EC 00 08 28 */	fsubs f0, f0, f1
lbl_8048E14C:
/* 8048E14C  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8048E150  41 82 00 10 */	beq lbl_8048E160
/* 8048E154  38 00 00 0A */	li r0, 0xa
/* 8048E158  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8048E15C  48 00 00 0C */	b lbl_8048E168
lbl_8048E160:
/* 8048E160  38 00 00 08 */	li r0, 8
/* 8048E164  90 1B 05 5C */	stw r0, 0x55c(r27)
lbl_8048E168:
/* 8048E168  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E16C  54 04 46 3E */	srwi r4, r0, 0x18
/* 8048E170  38 64 FF 01 */	addi r3, r4, -255
/* 8048E174  30 03 FF FF */	addic r0, r3, -1
/* 8048E178  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E17C  7C 80 00 78 */	andc r0, r4, r0
/* 8048E180  2C 00 00 01 */	cmpwi r0, 1
/* 8048E184  41 82 00 2C */	beq lbl_8048E1B0
/* 8048E188  30 03 FF FF */	addic r0, r3, -1
/* 8048E18C  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E190  7C 80 00 78 */	andc r0, r4, r0
/* 8048E194  2C 00 00 04 */	cmpwi r0, 4
/* 8048E198  41 82 00 18 */	beq lbl_8048E1B0
/* 8048E19C  30 03 FF FF */	addic r0, r3, -1
/* 8048E1A0  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E1A4  7C 80 00 78 */	andc r0, r4, r0
/* 8048E1A8  2C 00 00 05 */	cmpwi r0, 5
/* 8048E1AC  40 82 00 24 */	bne lbl_8048E1D0
lbl_8048E1B0:
/* 8048E1B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048E1B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048E1B8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8048E1BC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8048E1C0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8048E1C4  41 82 00 0C */	beq lbl_8048E1D0
/* 8048E1C8  38 00 00 00 */	li r0, 0
/* 8048E1CC  90 1B 05 5C */	stw r0, 0x55c(r27)
lbl_8048E1D0:
/* 8048E1D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048E1D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048E1D8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8048E1DC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8048E1E0  28 00 00 00 */	cmplwi r0, 0
/* 8048E1E4  41 82 01 B8 */	beq lbl_8048E39C
/* 8048E1E8  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 8048E1EC  28 00 00 01 */	cmplwi r0, 1
/* 8048E1F0  40 82 01 44 */	bne lbl_8048E334
/* 8048E1F4  38 80 00 00 */	li r4, 0
/* 8048E1F8  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E1FC  54 03 46 3E */	srwi r3, r0, 0x18
/* 8048E200  38 03 FF 01 */	addi r0, r3, -255
/* 8048E204  30 00 FF FF */	addic r0, r0, -1
/* 8048E208  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E20C  7C 60 00 78 */	andc r0, r3, r0
/* 8048E210  2C 00 00 01 */	cmpwi r0, 1
/* 8048E214  41 82 00 08 */	beq lbl_8048E21C
/* 8048E218  48 00 00 08 */	b lbl_8048E220
lbl_8048E21C:
/* 8048E21C  38 80 00 02 */	li r4, 2
lbl_8048E220:
/* 8048E220  54 80 04 3F */	clrlwi. r0, r4, 0x10
/* 8048E224  41 82 00 B0 */	beq lbl_8048E2D4
/* 8048E228  54 9E 1B 78 */	rlwinm r30, r4, 3, 0xd, 0x1c
/* 8048E22C  3C 60 80 49 */	lis r3, l_evtList@ha
/* 8048E230  3B 43 EB 2C */	addi r26, r3, l_evtList@l
/* 8048E234  7C 7A F0 2E */	lwzx r3, r26, r30
/* 8048E238  4B ED A9 AC */	b strlen
/* 8048E23C  28 03 00 00 */	cmplwi r3, 0
/* 8048E240  41 82 02 B8 */	beq lbl_8048E4F8
/* 8048E244  3C 60 80 49 */	lis r3, l_evtList@ha
/* 8048E248  38 03 EB 2C */	addi r0, r3, l_evtList@l
/* 8048E24C  7F 20 F2 14 */	add r25, r0, r30
/* 8048E250  84 19 00 04 */	lwzu r0, 4(r25)
/* 8048E254  54 00 10 3A */	slwi r0, r0, 2
/* 8048E258  3C 60 80 49 */	lis r3, l_resNameList@ha
/* 8048E25C  38 63 EB 44 */	addi r3, r3, l_resNameList@l
/* 8048E260  7C 63 00 2E */	lwzx r3, r3, r0
/* 8048E264  4B ED A9 80 */	b strlen
/* 8048E268  28 03 00 00 */	cmplwi r3, 0
/* 8048E26C  41 82 00 28 */	beq lbl_8048E294
/* 8048E270  80 19 00 00 */	lwz r0, 0(r25)
/* 8048E274  54 00 10 3A */	slwi r0, r0, 2
/* 8048E278  3C 60 80 49 */	lis r3, l_resNameList@ha
/* 8048E27C  38 63 EB 44 */	addi r3, r3, l_resNameList@l
/* 8048E280  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048E284  90 1B 01 00 */	stw r0, 0x100(r27)
/* 8048E288  38 7D 40 C0 */	addi r3, r29, 0x40c0
/* 8048E28C  80 9B 01 00 */	lwz r4, 0x100(r27)
/* 8048E290  4B BB 85 70 */	b setObjectArchive__16dEvent_manager_cFPc
lbl_8048E294:
/* 8048E294  38 7D 40 C0 */	addi r3, r29, 0x40c0
/* 8048E298  7F 64 DB 78 */	mr r4, r27
/* 8048E29C  7C BA F0 2E */	lwzx r5, r26, r30
/* 8048E2A0  38 C0 00 FF */	li r6, 0xff
/* 8048E2A4  4B BB 94 B4 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8048E2A8  B0 7B 05 C0 */	sth r3, 0x5c0(r27)
/* 8048E2AC  38 7D 3F 90 */	addi r3, r29, 0x3f90
/* 8048E2B0  7F 64 DB 78 */	mr r4, r27
/* 8048E2B4  4B BB 42 64 */	b reset__14dEvt_control_cFPv
/* 8048E2B8  7F 63 DB 78 */	mr r3, r27
/* 8048E2BC  A8 9B 05 C0 */	lha r4, 0x5c0(r27)
/* 8048E2C0  38 A0 00 01 */	li r5, 1
/* 8048E2C4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8048E2C8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8048E2CC  4B B8 D3 18 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 8048E2D0  48 00 02 28 */	b lbl_8048E4F8
lbl_8048E2D4:
/* 8048E2D4  3B 80 00 01 */	li r28, 1
/* 8048E2D8  88 1B 05 C4 */	lbz r0, 0x5c4(r27)
/* 8048E2DC  28 00 00 00 */	cmplwi r0, 0
/* 8048E2E0  40 82 00 24 */	bne lbl_8048E304
/* 8048E2E4  38 7B 05 70 */	addi r3, r27, 0x570
/* 8048E2E8  7F 64 DB 78 */	mr r4, r27
/* 8048E2EC  80 BB 05 BC */	lwz r5, 0x5bc(r27)
/* 8048E2F0  38 C0 00 00 */	li r6, 0
/* 8048E2F4  38 E0 00 00 */	li r7, 0
/* 8048E2F8  4B DB BC 98 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8048E2FC  38 00 00 01 */	li r0, 1
/* 8048E300  98 1B 05 C4 */	stb r0, 0x5c4(r27)
lbl_8048E304:
/* 8048E304  38 7B 05 70 */	addi r3, r27, 0x570
/* 8048E308  7F 64 DB 78 */	mr r4, r27
/* 8048E30C  38 A0 00 00 */	li r5, 0
/* 8048E310  38 C0 00 00 */	li r6, 0
/* 8048E314  4B DB BF C4 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8048E318  2C 03 00 00 */	cmpwi r3, 0
/* 8048E31C  41 82 01 DC */	beq lbl_8048E4F8
/* 8048E320  38 7D 3F 90 */	addi r3, r29, 0x3f90
/* 8048E324  4B BB 41 44 */	b reset__14dEvt_control_cFv
/* 8048E328  38 00 00 00 */	li r0, 0
/* 8048E32C  98 1B 05 C4 */	stb r0, 0x5c4(r27)
/* 8048E330  48 00 01 C8 */	b lbl_8048E4F8
lbl_8048E334:
/* 8048E334  28 00 00 02 */	cmplwi r0, 2
/* 8048E338  40 82 00 2C */	bne lbl_8048E364
/* 8048E33C  38 7D 40 C0 */	addi r3, r29, 0x40c0
/* 8048E340  A8 9B 05 C0 */	lha r4, 0x5c0(r27)
/* 8048E344  4B BB 97 34 */	b endCheck__16dEvent_manager_cFs
/* 8048E348  2C 03 00 00 */	cmpwi r3, 0
/* 8048E34C  41 82 00 18 */	beq lbl_8048E364
/* 8048E350  38 7D 3F 90 */	addi r3, r29, 0x3f90
/* 8048E354  4B BB 41 14 */	b reset__14dEvt_control_cFv
/* 8048E358  38 00 FF FF */	li r0, -1
/* 8048E35C  B0 1B 05 C0 */	sth r0, 0x5c0(r27)
/* 8048E360  48 00 01 98 */	b lbl_8048E4F8
lbl_8048E364:
/* 8048E364  3B 3D 40 C0 */	addi r25, r29, 0x40c0
/* 8048E368  7F 23 CB 78 */	mr r3, r25
/* 8048E36C  3C 80 80 49 */	lis r4, struct_8048EAFC+0x0@ha
/* 8048E370  38 84 EA FC */	addi r4, r4, struct_8048EAFC+0x0@l
/* 8048E374  38 84 00 2B */	addi r4, r4, 0x2b
/* 8048E378  7F 65 DB 78 */	mr r5, r27
/* 8048E37C  38 C0 FF FF */	li r6, -1
/* 8048E380  4B BB 97 9C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8048E384  7C 64 1B 78 */	mr r4, r3
/* 8048E388  2C 04 FF FF */	cmpwi r4, -1
/* 8048E38C  41 82 01 6C */	beq lbl_8048E4F8
/* 8048E390  7F 23 CB 78 */	mr r3, r25
/* 8048E394  4B BB 9D E8 */	b cutEnd__16dEvent_manager_cFi
/* 8048E398  48 00 01 60 */	b lbl_8048E4F8
lbl_8048E39C:
/* 8048E39C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E3A0  54 03 46 3E */	srwi r3, r0, 0x18
/* 8048E3A4  38 03 FF 01 */	addi r0, r3, -255
/* 8048E3A8  30 00 FF FF */	addic r0, r0, -1
/* 8048E3AC  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E3B0  7C 60 00 78 */	andc r0, r3, r0
/* 8048E3B4  2C 00 00 03 */	cmpwi r0, 3
/* 8048E3B8  40 82 00 C4 */	bne lbl_8048E47C
/* 8048E3BC  88 1B 05 C2 */	lbz r0, 0x5c2(r27)
/* 8048E3C0  28 00 00 00 */	cmplwi r0, 0
/* 8048E3C4  41 82 01 34 */	beq lbl_8048E4F8
/* 8048E3C8  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 8048E3CC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8048E3D0  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8048E3D4  7F 63 DB 78 */	mr r3, r27
/* 8048E3D8  4B B8 E7 C8 */	b fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 8048E3DC  3C 60 80 49 */	lis r3, l_evtList@ha
/* 8048E3E0  3B 43 EB 2C */	addi r26, r3, l_evtList@l
/* 8048E3E4  80 7A 00 08 */	lwz r3, 8(r26)
/* 8048E3E8  4B ED A7 FC */	b strlen
/* 8048E3EC  28 03 00 00 */	cmplwi r3, 0
/* 8048E3F0  41 82 01 08 */	beq lbl_8048E4F8
/* 8048E3F4  3C 60 80 49 */	lis r3, l_evtList@ha
/* 8048E3F8  3B C3 EB 2C */	addi r30, r3, l_evtList@l
/* 8048E3FC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8048E400  54 00 10 3A */	slwi r0, r0, 2
/* 8048E404  3C 60 80 49 */	lis r3, l_resNameList@ha
/* 8048E408  38 63 EB 44 */	addi r3, r3, l_resNameList@l
/* 8048E40C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8048E410  4B ED A7 D4 */	b strlen
/* 8048E414  28 03 00 00 */	cmplwi r3, 0
/* 8048E418  41 82 00 28 */	beq lbl_8048E440
/* 8048E41C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8048E420  54 00 10 3A */	slwi r0, r0, 2
/* 8048E424  3C 60 80 49 */	lis r3, l_resNameList@ha
/* 8048E428  38 63 EB 44 */	addi r3, r3, l_resNameList@l
/* 8048E42C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048E430  90 1B 01 00 */	stw r0, 0x100(r27)
/* 8048E434  38 7D 40 C0 */	addi r3, r29, 0x40c0
/* 8048E438  80 9B 01 00 */	lwz r4, 0x100(r27)
/* 8048E43C  4B BB 83 C4 */	b setObjectArchive__16dEvent_manager_cFPc
lbl_8048E440:
/* 8048E440  38 7D 40 C0 */	addi r3, r29, 0x40c0
/* 8048E444  7F 64 DB 78 */	mr r4, r27
/* 8048E448  80 BA 00 08 */	lwz r5, 8(r26)
/* 8048E44C  38 C0 00 FF */	li r6, 0xff
/* 8048E450  4B BB 93 08 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8048E454  B0 7B 05 C0 */	sth r3, 0x5c0(r27)
/* 8048E458  7F 63 DB 78 */	mr r3, r27
/* 8048E45C  A8 9B 05 C0 */	lha r4, 0x5c0(r27)
/* 8048E460  38 A0 00 FF */	li r5, 0xff
/* 8048E464  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8048E468  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8048E46C  38 E0 00 04 */	li r7, 4
/* 8048E470  39 00 00 01 */	li r8, 1
/* 8048E474  4B B8 D2 08 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8048E478  48 00 00 80 */	b lbl_8048E4F8
lbl_8048E47C:
/* 8048E47C  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 8048E480  60 00 00 01 */	ori r0, r0, 1
/* 8048E484  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 8048E488  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E48C  54 03 46 3E */	srwi r3, r0, 0x18
/* 8048E490  38 03 FF 01 */	addi r0, r3, -255
/* 8048E494  30 00 FF FF */	addic r0, r0, -1
/* 8048E498  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E49C  7C 60 00 78 */	andc r0, r3, r0
/* 8048E4A0  2C 00 00 01 */	cmpwi r0, 1
/* 8048E4A4  41 82 00 54 */	beq lbl_8048E4F8
/* 8048E4A8  7F 63 DB 78 */	mr r3, r27
/* 8048E4AC  4B CB E1 34 */	b daNpcT_chkDoBtnIsSpeak__FP10fopAc_ac_c
/* 8048E4B0  2C 03 00 00 */	cmpwi r3, 0
/* 8048E4B4  41 82 00 44 */	beq lbl_8048E4F8
/* 8048E4B8  A8 1B 04 B4 */	lha r0, 0x4b4(r27)
/* 8048E4BC  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 8048E4C0  41 82 00 20 */	beq lbl_8048E4E0
/* 8048E4C4  38 00 00 80 */	li r0, 0x80
/* 8048E4C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048E4CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048E4D0  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 8048E4D4  38 00 00 02 */	li r0, 2
/* 8048E4D8  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 8048E4DC  48 00 00 1C */	b lbl_8048E4F8
lbl_8048E4E0:
/* 8048E4E0  38 00 00 08 */	li r0, 8
/* 8048E4E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048E4E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048E4EC  98 03 5E 24 */	stb r0, 0x5e24(r3)
/* 8048E4F0  38 00 00 00 */	li r0, 0
/* 8048E4F4  98 03 5E 4A */	stb r0, 0x5e4a(r3)
lbl_8048E4F8:
/* 8048E4F8  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E4FC  54 03 46 3E */	srwi r3, r0, 0x18
/* 8048E500  38 03 FF 01 */	addi r0, r3, -255
/* 8048E504  30 00 FF FF */	addic r0, r0, -1
/* 8048E508  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E50C  7C 60 00 78 */	andc r0, r3, r0
/* 8048E510  2C 00 00 03 */	cmpwi r0, 3
/* 8048E514  40 82 00 A8 */	bne lbl_8048E5BC
/* 8048E518  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8048E51C  D0 1B 05 50 */	stfs f0, 0x550(r27)
/* 8048E520  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8048E524  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 8048E528  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8048E52C  D0 1B 05 58 */	stfs f0, 0x558(r27)
/* 8048E530  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E534  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 8048E538  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8048E53C  28 03 00 FF */	cmplwi r3, 0xff
/* 8048E540  40 82 00 0C */	bne lbl_8048E54C
/* 8048E544  FC 00 10 90 */	fmr f0, f2
/* 8048E548  48 00 00 1C */	b lbl_8048E564
lbl_8048E54C:
/* 8048E54C  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 8048E550  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 8048E554  3C 00 43 30 */	lis r0, 0x4330
/* 8048E558  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8048E55C  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8048E560  EC 00 08 28 */	fsubs f0, f0, f1
lbl_8048E564:
/* 8048E564  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8048E568  41 82 00 38 */	beq lbl_8048E5A0
/* 8048E56C  28 03 00 FF */	cmplwi r3, 0xff
/* 8048E570  40 82 00 0C */	bne lbl_8048E57C
/* 8048E574  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8048E578  48 00 00 1C */	b lbl_8048E594
lbl_8048E57C:
/* 8048E57C  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 8048E580  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 8048E584  3C 00 43 30 */	lis r0, 0x4330
/* 8048E588  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8048E58C  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8048E590  EC 20 08 28 */	fsubs f1, f0, f1
lbl_8048E594:
/* 8048E594  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 8048E598  EC 00 08 2A */	fadds f0, f0, f1
/* 8048E59C  D0 1B 05 54 */	stfs f0, 0x554(r27)
lbl_8048E5A0:
/* 8048E5A0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8048E5A4  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 8048E5A8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8048E5AC  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 8048E5B0  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8048E5B4  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 8048E5B8  48 00 01 24 */	b lbl_8048E6DC
lbl_8048E5BC:
/* 8048E5BC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8048E5C0  D0 1B 05 50 */	stfs f0, 0x550(r27)
/* 8048E5C4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8048E5C8  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 8048E5CC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8048E5D0  D0 1B 05 58 */	stfs f0, 0x558(r27)
/* 8048E5D4  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E5D8  54 04 46 3E */	srwi r4, r0, 0x18
/* 8048E5DC  38 64 FF 01 */	addi r3, r4, -255
/* 8048E5E0  30 03 FF FF */	addic r0, r3, -1
/* 8048E5E4  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E5E8  7C 80 00 78 */	andc r0, r4, r0
/* 8048E5EC  2C 00 00 02 */	cmpwi r0, 2
/* 8048E5F0  41 82 00 18 */	beq lbl_8048E608
/* 8048E5F4  30 03 FF FF */	addic r0, r3, -1
/* 8048E5F8  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E5FC  7C 80 00 78 */	andc r0, r4, r0
/* 8048E600  2C 00 00 05 */	cmpwi r0, 5
/* 8048E604  40 82 00 14 */	bne lbl_8048E618
lbl_8048E608:
/* 8048E608  C0 3B 05 54 */	lfs f1, 0x554(r27)
/* 8048E60C  C0 1B 04 F0 */	lfs f0, 0x4f0(r27)
/* 8048E610  EC 01 00 2A */	fadds f0, f1, f0
/* 8048E614  D0 1B 05 54 */	stfs f0, 0x554(r27)
lbl_8048E618:
/* 8048E618  C0 1B 05 50 */	lfs f0, 0x550(r27)
/* 8048E61C  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 8048E620  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 8048E624  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 8048E628  C0 1B 05 58 */	lfs f0, 0x558(r27)
/* 8048E62C  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 8048E630  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E634  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 8048E638  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8048E63C  28 03 00 FF */	cmplwi r3, 0xff
/* 8048E640  40 82 00 0C */	bne lbl_8048E64C
/* 8048E644  FC 00 10 90 */	fmr f0, f2
/* 8048E648  48 00 00 1C */	b lbl_8048E664
lbl_8048E64C:
/* 8048E64C  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 8048E650  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 8048E654  3C 00 43 30 */	lis r0, 0x4330
/* 8048E658  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8048E65C  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8048E660  EC 00 08 28 */	fsubs f0, f0, f1
lbl_8048E664:
/* 8048E664  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8048E668  41 82 00 38 */	beq lbl_8048E6A0
/* 8048E66C  28 03 00 FF */	cmplwi r3, 0xff
/* 8048E670  40 82 00 0C */	bne lbl_8048E67C
/* 8048E674  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8048E678  48 00 00 1C */	b lbl_8048E694
lbl_8048E67C:
/* 8048E67C  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 8048E680  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 8048E684  3C 00 43 30 */	lis r0, 0x4330
/* 8048E688  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8048E68C  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8048E690  EC 20 08 28 */	fsubs f1, f0, f1
lbl_8048E694:
/* 8048E694  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 8048E698  EC 00 08 2A */	fadds f0, f0, f1
/* 8048E69C  D0 1B 05 54 */	stfs f0, 0x554(r27)
lbl_8048E6A0:
/* 8048E6A0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E6A4  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 8048E6A8  38 03 FF 01 */	addi r0, r3, -255
/* 8048E6AC  30 00 FF FF */	addic r0, r0, -1
/* 8048E6B0  7C 00 01 10 */	subfe r0, r0, r0
/* 8048E6B4  7C 60 00 78 */	andc r0, r3, r0
/* 8048E6B8  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 8048E6BC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8048E6C0  3C 00 43 30 */	lis r0, 0x4330
/* 8048E6C4  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8048E6C8  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8048E6CC  EC 20 08 28 */	fsubs f1, f0, f1
/* 8048E6D0  C0 1B 05 3C */	lfs f0, 0x53c(r27)
/* 8048E6D4  EC 00 08 2A */	fadds f0, f0, f1
/* 8048E6D8  D0 1B 05 3C */	stfs f0, 0x53c(r27)
lbl_8048E6DC:
/* 8048E6DC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8048E6E0  41 82 01 AC */	beq lbl_8048E88C
/* 8048E6E4  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8048E6E8  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 8048E6EC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8048E6F0  28 03 00 FF */	cmplwi r3, 0xff
/* 8048E6F4  40 82 00 0C */	bne lbl_8048E700
/* 8048E6F8  FC 00 10 90 */	fmr f0, f2
/* 8048E6FC  48 00 00 1C */	b lbl_8048E718
lbl_8048E700:
/* 8048E700  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 8048E704  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 8048E708  3C 00 43 30 */	lis r0, 0x4330
/* 8048E70C  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8048E710  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8048E714  EC 00 08 28 */	fsubs f0, f0, f1
lbl_8048E718:
/* 8048E718  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8048E71C  41 82 00 38 */	beq lbl_8048E754
/* 8048E720  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8048E724  28 03 00 FF */	cmplwi r3, 0xff
/* 8048E728  40 82 00 0C */	bne lbl_8048E734
/* 8048E72C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8048E730  48 00 00 1C */	b lbl_8048E74C
lbl_8048E734:
/* 8048E734  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 8048E738  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 8048E73C  3C 00 43 30 */	lis r0, 0x4330
/* 8048E740  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8048E744  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8048E748  EC 00 08 28 */	fsubs f0, f0, f1
lbl_8048E74C:
/* 8048E74C  EF E2 00 32 */	fmuls f31, f2, f0
/* 8048E750  48 00 00 08 */	b lbl_8048E758
lbl_8048E754:
/* 8048E754  C3 FF 00 0C */	lfs f31, 0xc(r31)
lbl_8048E758:
/* 8048E758  38 61 00 08 */	addi r3, r1, 8
/* 8048E75C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 8048E760  4B DE 28 38 */	b __ct__7cSAngleFs
/* 8048E764  C0 1B 05 50 */	lfs f0, 0x550(r27)
/* 8048E768  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8048E76C  C0 3B 05 54 */	lfs f1, 0x554(r27)
/* 8048E770  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8048E774  C0 1B 05 58 */	lfs f0, 0x558(r27)
/* 8048E778  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8048E77C  EC 01 F8 2A */	fadds f0, f1, f31
/* 8048E780  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8048E784  38 61 00 08 */	addi r3, r1, 8
/* 8048E788  4B DE 29 70 */	b Sin__7cSAngleCFv
/* 8048E78C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8048E790  EC 20 00 72 */	fmuls f1, f0, f1
/* 8048E794  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8048E798  EC 00 08 2A */	fadds f0, f0, f1
/* 8048E79C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8048E7A0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8048E7A4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8048E7A8  38 61 00 08 */	addi r3, r1, 8
/* 8048E7AC  4B DE 29 74 */	b Cos__7cSAngleCFv
/* 8048E7B0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8048E7B4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8048E7B8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8048E7BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8048E7C0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8048E7C4  38 61 00 6C */	addi r3, r1, 0x6c
/* 8048E7C8  4B BE 94 A0 */	b __ct__11dBgS_LinChkFv
/* 8048E7CC  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 8048E7D0  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 8048E7D4  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8048E7D8  38 00 00 01 */	li r0, 1
/* 8048E7DC  98 01 00 C0 */	stb r0, 0xc0(r1)
/* 8048E7E0  98 01 00 BF */	stb r0, 0xbf(r1)
/* 8048E7E4  38 61 00 6C */	addi r3, r1, 0x6c
/* 8048E7E8  38 81 00 54 */	addi r4, r1, 0x54
/* 8048E7EC  38 A1 00 60 */	addi r5, r1, 0x60
/* 8048E7F0  38 C0 00 00 */	li r6, 0
/* 8048E7F4  4B BE 95 70 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8048E7F8  7F A3 EB 78 */	mr r3, r29
/* 8048E7FC  38 81 00 6C */	addi r4, r1, 0x6c
/* 8048E800  4B BE 5B B4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8048E804  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8048E808  41 82 00 78 */	beq lbl_8048E880
/* 8048E80C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8048E810  38 81 00 54 */	addi r4, r1, 0x54
/* 8048E814  38 A1 00 60 */	addi r5, r1, 0x60
/* 8048E818  4B DD 83 1C */	b __mi__4cXyzCFRC3Vec
/* 8048E81C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8048E820  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8048E824  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8048E828  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8048E82C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8048E830  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8048E834  38 61 00 24 */	addi r3, r1, 0x24
/* 8048E838  38 81 00 30 */	addi r4, r1, 0x30
/* 8048E83C  4B DD 84 A8 */	b norm__4cXyzCFv
/* 8048E840  38 61 00 18 */	addi r3, r1, 0x18
/* 8048E844  38 81 00 24 */	addi r4, r1, 0x24
/* 8048E848  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8048E84C  4B DD 83 38 */	b __ml__4cXyzCFf
/* 8048E850  38 61 00 0C */	addi r3, r1, 0xc
/* 8048E854  38 81 00 9C */	addi r4, r1, 0x9c
/* 8048E858  38 A1 00 18 */	addi r5, r1, 0x18
/* 8048E85C  4B DD 82 88 */	b __pl__4cXyzCFRC3Vec
/* 8048E860  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8048E864  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8048E868  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8048E86C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8048E870  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8048E874  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8048E878  D0 3B 05 50 */	stfs f1, 0x550(r27)
/* 8048E87C  D0 1B 05 58 */	stfs f0, 0x558(r27)
lbl_8048E880:
/* 8048E880  38 61 00 6C */	addi r3, r1, 0x6c
/* 8048E884  38 80 FF FF */	li r4, -1
/* 8048E888  4B BE 94 54 */	b __dt__11dBgS_LinChkFv
lbl_8048E88C:
/* 8048E88C  38 60 00 01 */	li r3, 1
/* 8048E890  48 00 00 08 */	b lbl_8048E898
lbl_8048E894:
/* 8048E894  38 60 00 00 */	li r3, 0
lbl_8048E898:
/* 8048E898  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 8048E89C  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 8048E8A0  39 61 01 10 */	addi r11, r1, 0x110
/* 8048E8A4  4B ED 39 74 */	b _restgpr_25
/* 8048E8A8  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8048E8AC  7C 08 03 A6 */	mtlr r0
/* 8048E8B0  38 21 01 20 */	addi r1, r1, 0x120
/* 8048E8B4  4E 80 00 20 */	blr 
