lbl_8048BA0C:
/* 8048BA0C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8048BA10  7C 08 02 A6 */	mflr r0
/* 8048BA14  90 01 00 54 */	stw r0, 0x54(r1)
/* 8048BA18  39 61 00 50 */	addi r11, r1, 0x50
/* 8048BA1C  4B ED 67 B4 */	b _savegpr_26
/* 8048BA20  7C 7C 1B 78 */	mr r28, r3
/* 8048BA24  3C 80 80 49 */	lis r4, lit_3784@ha
/* 8048BA28  3B C4 C3 98 */	addi r30, r4, lit_3784@l
/* 8048BA2C  3B A0 00 01 */	li r29, 1
/* 8048BA30  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8048BA34  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8048BA38  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8048BA3C  EC 21 00 2A */	fadds f1, f1, f0
/* 8048BA40  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8048BA44  D0 03 05 38 */	stfs f0, 0x538(r3)
/* 8048BA48  D0 23 05 3C */	stfs f1, 0x53c(r3)
/* 8048BA4C  D0 43 05 40 */	stfs f2, 0x540(r3)
/* 8048BA50  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 8048BA54  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 8048BA58  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 8048BA5C  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 8048BA60  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 8048BA64  D0 03 05 58 */	stfs f0, 0x558(r3)
/* 8048BA68  3C 80 80 45 */	lis r4, struct_80450D64+0x0@ha
/* 8048BA6C  88 04 0D 64 */	lbz r0, struct_80450D64+0x0@l(r4)
/* 8048BA70  98 03 04 E2 */	stb r0, 0x4e2(r3)
/* 8048BA74  88 83 05 E4 */	lbz r4, 0x5e4(r3)
/* 8048BA78  7C 80 07 75 */	extsb. r0, r4
/* 8048BA7C  41 82 00 10 */	beq lbl_8048BA8C
/* 8048BA80  7C 80 07 74 */	extsb r0, r4
/* 8048BA84  2C 00 00 01 */	cmpwi r0, 1
/* 8048BA88  40 82 03 84 */	bne lbl_8048BE0C
lbl_8048BA8C:
/* 8048BA8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048BA90  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8048BA94  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 8048BA98  28 00 00 00 */	cmplwi r0, 0
/* 8048BA9C  41 82 01 94 */	beq lbl_8048BC30
/* 8048BAA0  3B A0 00 00 */	li r29, 0
/* 8048BAA4  3B 5F 4F F8 */	addi r26, r31, 0x4ff8
/* 8048BAA8  7F 43 D3 78 */	mr r3, r26
/* 8048BAAC  38 9C 05 68 */	addi r4, r28, 0x568
/* 8048BAB0  38 A0 00 00 */	li r5, 0
/* 8048BAB4  38 C0 00 00 */	li r6, 0
/* 8048BAB8  4B BB C0 64 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8048BABC  7C 7B 1B 78 */	mr r27, r3
/* 8048BAC0  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 8048BAC4  28 00 00 01 */	cmplwi r0, 1
/* 8048BAC8  41 82 00 E0 */	beq lbl_8048BBA8
/* 8048BACC  28 00 00 02 */	cmplwi r0, 2
/* 8048BAD0  40 82 01 60 */	bne lbl_8048BC30
/* 8048BAD4  7F 43 D3 78 */	mr r3, r26
/* 8048BAD8  A8 9C 05 72 */	lha r4, 0x572(r28)
/* 8048BADC  4B BB BF 9C */	b endCheck__16dEvent_manager_cFs
/* 8048BAE0  2C 03 00 00 */	cmpwi r3, 0
/* 8048BAE4  41 82 00 24 */	beq lbl_8048BB08
/* 8048BAE8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8048BAEC  4B BB 69 7C */	b reset__14dEvt_control_cFv
/* 8048BAF0  38 00 00 00 */	li r0, 0
/* 8048BAF4  B0 1C 05 70 */	sth r0, 0x570(r28)
/* 8048BAF8  38 00 FF FF */	li r0, -1
/* 8048BAFC  B0 1C 05 72 */	sth r0, 0x572(r28)
/* 8048BB00  3B A0 00 01 */	li r29, 1
/* 8048BB04  48 00 01 2C */	b lbl_8048BC30
lbl_8048BB08:
/* 8048BB08  2C 1B FF FF */	cmpwi r27, -1
/* 8048BB0C  41 82 01 24 */	beq lbl_8048BC30
/* 8048BB10  7F 43 D3 78 */	mr r3, r26
/* 8048BB14  7F 64 DB 78 */	mr r4, r27
/* 8048BB18  3C A0 80 49 */	lis r5, mEvtCutList__11daTag_Evt_c@ha
/* 8048BB1C  38 A5 C4 08 */	addi r5, r5, mEvtCutList__11daTag_Evt_c@l
/* 8048BB20  38 C0 00 03 */	li r6, 3
/* 8048BB24  38 E0 00 00 */	li r7, 0
/* 8048BB28  39 00 00 00 */	li r8, 0
/* 8048BB2C  4B BB C2 E4 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8048BB30  38 00 00 00 */	li r0, 0
/* 8048BB34  2C 03 00 01 */	cmpwi r3, 1
/* 8048BB38  41 82 00 34 */	beq lbl_8048BB6C
/* 8048BB3C  40 80 00 10 */	bge lbl_8048BB4C
/* 8048BB40  2C 03 00 00 */	cmpwi r3, 0
/* 8048BB44  40 80 00 14 */	bge lbl_8048BB58
/* 8048BB48  48 00 00 48 */	b lbl_8048BB90
lbl_8048BB4C:
/* 8048BB4C  2C 03 00 03 */	cmpwi r3, 3
/* 8048BB50  40 80 00 40 */	bge lbl_8048BB90
/* 8048BB54  48 00 00 2C */	b lbl_8048BB80
lbl_8048BB58:
/* 8048BB58  7F 83 E3 78 */	mr r3, r28
/* 8048BB5C  7F 64 DB 78 */	mr r4, r27
/* 8048BB60  48 00 05 31 */	bl doEvtCutWait__11daTag_Evt_cFi
/* 8048BB64  7C 60 1B 78 */	mr r0, r3
/* 8048BB68  48 00 00 28 */	b lbl_8048BB90
lbl_8048BB6C:
/* 8048BB6C  7F 83 E3 78 */	mr r3, r28
/* 8048BB70  7F 64 DB 78 */	mr r4, r27
/* 8048BB74  48 00 05 B1 */	bl doEvtCutTalk__11daTag_Evt_cFi
/* 8048BB78  7C 60 1B 78 */	mr r0, r3
/* 8048BB7C  48 00 00 14 */	b lbl_8048BB90
lbl_8048BB80:
/* 8048BB80  7F 83 E3 78 */	mr r3, r28
/* 8048BB84  7F 64 DB 78 */	mr r4, r27
/* 8048BB88  48 00 06 41 */	bl doEvtCutNext__11daTag_Evt_cFi
/* 8048BB8C  7C 60 1B 78 */	mr r0, r3
lbl_8048BB90:
/* 8048BB90  2C 00 00 00 */	cmpwi r0, 0
/* 8048BB94  41 82 00 9C */	beq lbl_8048BC30
/* 8048BB98  7F 43 D3 78 */	mr r3, r26
/* 8048BB9C  7F 64 DB 78 */	mr r4, r27
/* 8048BBA0  4B BB C5 DC */	b cutEnd__16dEvent_manager_cFi
/* 8048BBA4  48 00 00 8C */	b lbl_8048BC30
lbl_8048BBA8:
/* 8048BBA8  88 1C 05 DC */	lbz r0, 0x5dc(r28)
/* 8048BBAC  28 00 00 00 */	cmplwi r0, 0
/* 8048BBB0  41 82 00 60 */	beq lbl_8048BC10
/* 8048BBB4  38 7C 05 78 */	addi r3, r28, 0x578
/* 8048BBB8  7F 84 E3 78 */	mr r4, r28
/* 8048BBBC  38 A0 00 00 */	li r5, 0
/* 8048BBC0  38 C0 00 00 */	li r6, 0
/* 8048BBC4  4B DB E7 14 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8048BBC8  2C 03 00 00 */	cmpwi r3, 0
/* 8048BBCC  41 82 00 64 */	beq lbl_8048BC30
/* 8048BBD0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8048BBD4  4B BB 68 94 */	b reset__14dEvt_control_cFv
/* 8048BBD8  38 7C 05 78 */	addi r3, r28, 0x578
/* 8048BBDC  38 80 00 00 */	li r4, 0
/* 8048BBE0  4B DB E9 48 */	b getEventId__10dMsgFlow_cFPi
/* 8048BBE4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8048BBE8  41 82 00 1C */	beq lbl_8048BC04
/* 8048BBEC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8048BBF0  4B BA 5A 1C */	b daNpcMsg_setEvtNum__FUc
/* 8048BBF4  38 00 00 01 */	li r0, 1
/* 8048BBF8  B0 1C 05 70 */	sth r0, 0x570(r28)
/* 8048BBFC  3B A0 00 01 */	li r29, 1
/* 8048BC00  48 00 00 30 */	b lbl_8048BC30
lbl_8048BC04:
/* 8048BC04  7F 83 E3 78 */	mr r3, r28
/* 8048BC08  4B B8 E0 74 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8048BC0C  48 00 00 24 */	b lbl_8048BC30
lbl_8048BC10:
/* 8048BC10  38 7C 05 78 */	addi r3, r28, 0x578
/* 8048BC14  7F 84 E3 78 */	mr r4, r28
/* 8048BC18  80 BC 05 74 */	lwz r5, 0x574(r28)
/* 8048BC1C  38 C0 00 00 */	li r6, 0
/* 8048BC20  38 E0 00 00 */	li r7, 0
/* 8048BC24  4B DB E3 6C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8048BC28  38 00 00 01 */	li r0, 1
/* 8048BC2C  98 1C 05 DC */	stb r0, 0x5dc(r28)
lbl_8048BC30:
/* 8048BC30  7F 83 E3 78 */	mr r3, r28
/* 8048BC34  48 00 03 31 */	bl isDelete__11daTag_Evt_cFv
/* 8048BC38  2C 03 00 00 */	cmpwi r3, 0
/* 8048BC3C  40 82 01 74 */	bne lbl_8048BDB0
/* 8048BC40  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 8048BC44  48 00 07 31 */	bl func_8048C374
/* 8048BC48  2C 03 00 00 */	cmpwi r3, 0
/* 8048BC4C  40 82 01 64 */	bne lbl_8048BDB0
/* 8048BC50  38 61 00 18 */	addi r3, r1, 0x18
/* 8048BC54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8048BC58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8048BC5C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8048BC60  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8048BC64  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8048BC68  4B DD AE CC */	b __mi__4cXyzCFRC3Vec
/* 8048BC6C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8048BC70  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8048BC74  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8048BC78  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8048BC7C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8048BC80  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8048BC84  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8048BC88  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8048BC8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8048BC90  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8048BC94  38 61 00 0C */	addi r3, r1, 0xc
/* 8048BC98  4B EB B4 A0 */	b PSVECSquareMag
/* 8048BC9C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8048BCA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048BCA4  40 81 00 58 */	ble lbl_8048BCFC
/* 8048BCA8  FC 00 08 34 */	frsqrte f0, f1
/* 8048BCAC  C8 9E 00 08 */	lfd f4, 8(r30)
/* 8048BCB0  FC 44 00 32 */	fmul f2, f4, f0
/* 8048BCB4  C8 7E 00 10 */	lfd f3, 0x10(r30)
/* 8048BCB8  FC 00 00 32 */	fmul f0, f0, f0
/* 8048BCBC  FC 01 00 32 */	fmul f0, f1, f0
/* 8048BCC0  FC 03 00 28 */	fsub f0, f3, f0
/* 8048BCC4  FC 02 00 32 */	fmul f0, f2, f0
/* 8048BCC8  FC 44 00 32 */	fmul f2, f4, f0
/* 8048BCCC  FC 00 00 32 */	fmul f0, f0, f0
/* 8048BCD0  FC 01 00 32 */	fmul f0, f1, f0
/* 8048BCD4  FC 03 00 28 */	fsub f0, f3, f0
/* 8048BCD8  FC 02 00 32 */	fmul f0, f2, f0
/* 8048BCDC  FC 44 00 32 */	fmul f2, f4, f0
/* 8048BCE0  FC 00 00 32 */	fmul f0, f0, f0
/* 8048BCE4  FC 01 00 32 */	fmul f0, f1, f0
/* 8048BCE8  FC 03 00 28 */	fsub f0, f3, f0
/* 8048BCEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8048BCF0  FC 21 00 32 */	fmul f1, f1, f0
/* 8048BCF4  FC 20 08 18 */	frsp f1, f1
/* 8048BCF8  48 00 00 88 */	b lbl_8048BD80
lbl_8048BCFC:
/* 8048BCFC  C8 1E 00 18 */	lfd f0, 0x18(r30)
/* 8048BD00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048BD04  40 80 00 10 */	bge lbl_8048BD14
/* 8048BD08  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8048BD0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8048BD10  48 00 00 70 */	b lbl_8048BD80
lbl_8048BD14:
/* 8048BD14  D0 21 00 08 */	stfs f1, 8(r1)
/* 8048BD18  80 81 00 08 */	lwz r4, 8(r1)
/* 8048BD1C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8048BD20  3C 00 7F 80 */	lis r0, 0x7f80
/* 8048BD24  7C 03 00 00 */	cmpw r3, r0
/* 8048BD28  41 82 00 14 */	beq lbl_8048BD3C
/* 8048BD2C  40 80 00 40 */	bge lbl_8048BD6C
/* 8048BD30  2C 03 00 00 */	cmpwi r3, 0
/* 8048BD34  41 82 00 20 */	beq lbl_8048BD54
/* 8048BD38  48 00 00 34 */	b lbl_8048BD6C
lbl_8048BD3C:
/* 8048BD3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8048BD40  41 82 00 0C */	beq lbl_8048BD4C
/* 8048BD44  38 00 00 01 */	li r0, 1
/* 8048BD48  48 00 00 28 */	b lbl_8048BD70
lbl_8048BD4C:
/* 8048BD4C  38 00 00 02 */	li r0, 2
/* 8048BD50  48 00 00 20 */	b lbl_8048BD70
lbl_8048BD54:
/* 8048BD54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8048BD58  41 82 00 0C */	beq lbl_8048BD64
/* 8048BD5C  38 00 00 05 */	li r0, 5
/* 8048BD60  48 00 00 10 */	b lbl_8048BD70
lbl_8048BD64:
/* 8048BD64  38 00 00 03 */	li r0, 3
/* 8048BD68  48 00 00 08 */	b lbl_8048BD70
lbl_8048BD6C:
/* 8048BD6C  38 00 00 04 */	li r0, 4
lbl_8048BD70:
/* 8048BD70  2C 00 00 01 */	cmpwi r0, 1
/* 8048BD74  40 82 00 0C */	bne lbl_8048BD80
/* 8048BD78  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8048BD7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8048BD80:
/* 8048BD80  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8048BD84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048BD88  40 80 00 28 */	bge lbl_8048BDB0
/* 8048BD8C  C0 3C 04 F0 */	lfs f1, 0x4f0(r28)
/* 8048BD90  FC 00 08 50 */	fneg f0, f1
/* 8048BD94  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8048BD98  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8048BD9C  40 80 00 14 */	bge lbl_8048BDB0
/* 8048BDA0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8048BDA4  40 80 00 0C */	bge lbl_8048BDB0
/* 8048BDA8  38 00 00 01 */	li r0, 1
/* 8048BDAC  B0 1C 05 70 */	sth r0, 0x570(r28)
lbl_8048BDB0:
/* 8048BDB0  2C 1D 00 00 */	cmpwi r29, 0
/* 8048BDB4  41 82 00 74 */	beq lbl_8048BE28
/* 8048BDB8  A0 1C 05 70 */	lhz r0, 0x570(r28)
/* 8048BDBC  28 00 00 00 */	cmplwi r0, 0
/* 8048BDC0  41 82 00 68 */	beq lbl_8048BE28
/* 8048BDC4  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8048BDC8  7F 84 E3 78 */	mr r4, r28
/* 8048BDCC  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8048BDD0  3C A0 80 49 */	lis r5, l_evtNameList@ha
/* 8048BDD4  38 A5 C3 FC */	addi r5, r5, l_evtNameList@l
/* 8048BDD8  7C A5 00 2E */	lwzx r5, r5, r0
/* 8048BDDC  38 C0 00 FF */	li r6, 0xff
/* 8048BDE0  4B BB B9 78 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8048BDE4  B0 7C 05 72 */	sth r3, 0x572(r28)
/* 8048BDE8  7F 83 E3 78 */	mr r3, r28
/* 8048BDEC  A8 9C 05 72 */	lha r4, 0x572(r28)
/* 8048BDF0  38 A0 00 FF */	li r5, 0xff
/* 8048BDF4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8048BDF8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8048BDFC  38 E0 00 00 */	li r7, 0
/* 8048BE00  39 00 00 01 */	li r8, 1
/* 8048BE04  4B B8 F8 78 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8048BE08  48 00 00 20 */	b lbl_8048BE28
lbl_8048BE0C:
/* 8048BE0C  2C 00 00 02 */	cmpwi r0, 2
/* 8048BE10  40 82 00 18 */	bne lbl_8048BE28
/* 8048BE14  48 00 01 51 */	bl isDelete__11daTag_Evt_cFv
/* 8048BE18  2C 03 00 00 */	cmpwi r3, 0
/* 8048BE1C  41 82 00 0C */	beq lbl_8048BE28
/* 8048BE20  7F 83 E3 78 */	mr r3, r28
/* 8048BE24  4B B8 DE 58 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8048BE28:
/* 8048BE28  38 60 00 01 */	li r3, 1
/* 8048BE2C  39 61 00 50 */	addi r11, r1, 0x50
/* 8048BE30  4B ED 63 EC */	b _restgpr_26
/* 8048BE34  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8048BE38  7C 08 03 A6 */	mtlr r0
/* 8048BE3C  38 21 00 50 */	addi r1, r1, 0x50
/* 8048BE40  4E 80 00 20 */	blr 
