lbl_80ABBE84:
/* 80ABBE84  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80ABBE88  7C 08 02 A6 */	mflr r0
/* 80ABBE8C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80ABBE90  39 61 00 60 */	addi r11, r1, 0x60
/* 80ABBE94  4B 8A 63 40 */	b _savegpr_27
/* 80ABBE98  7C 7C 1B 78 */	mr r28, r3
/* 80ABBE9C  3C 80 80 AC */	lis r4, cNullVec__6Z2Calc@ha
/* 80ABBEA0  3B C4 FE 80 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80ABBEA4  3C 80 80 AC */	lis r4, m__19daNpcRafrel_Param_c@ha
/* 80ABBEA8  3B E4 F9 E0 */	addi r31, r4, m__19daNpcRafrel_Param_c@l
/* 80ABBEAC  3B A0 00 00 */	li r29, 0
/* 80ABBEB0  A0 03 0E 10 */	lhz r0, 0xe10(r3)
/* 80ABBEB4  2C 00 00 02 */	cmpwi r0, 2
/* 80ABBEB8  41 82 00 80 */	beq lbl_80ABBF38
/* 80ABBEBC  40 80 00 10 */	bge lbl_80ABBECC
/* 80ABBEC0  2C 00 00 00 */	cmpwi r0, 0
/* 80ABBEC4  41 82 00 14 */	beq lbl_80ABBED8
/* 80ABBEC8  48 00 06 28 */	b lbl_80ABC4F0
lbl_80ABBECC:
/* 80ABBECC  2C 00 00 04 */	cmpwi r0, 4
/* 80ABBED0  40 80 06 20 */	bge lbl_80ABC4F0
/* 80ABBED4  48 00 05 DC */	b lbl_80ABC4B0
lbl_80ABBED8:
/* 80ABBED8  A8 9C 0E 0C */	lha r4, 0xe0c(r28)
/* 80ABBEDC  38 A0 00 00 */	li r5, 0
/* 80ABBEE0  4B 69 7E 3C */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ABBEE4  38 00 00 00 */	li r0, 0
/* 80ABBEE8  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ABBEEC  90 1C 09 50 */	stw r0, 0x950(r28)
/* 80ABBEF0  98 1C 0E 16 */	stb r0, 0xe16(r28)
/* 80ABBEF4  38 00 00 01 */	li r0, 1
/* 80ABBEF8  98 1C 0E 14 */	stb r0, 0xe14(r28)
/* 80ABBEFC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80ABBF00  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80ABBF04  A8 1C 0E 0E */	lha r0, 0xe0e(r28)
/* 80ABBF08  2C 00 00 03 */	cmpwi r0, 3
/* 80ABBF0C  40 82 00 10 */	bne lbl_80ABBF1C
/* 80ABBF10  80 1C 0C 9C */	lwz r0, 0xc9c(r28)
/* 80ABBF14  28 00 00 00 */	cmplwi r0, 0
/* 80ABBF18  41 82 00 14 */	beq lbl_80ABBF2C
lbl_80ABBF1C:
/* 80ABBF1C  38 00 00 03 */	li r0, 3
/* 80ABBF20  B0 1C 0E 0E */	sth r0, 0xe0e(r28)
/* 80ABBF24  38 00 00 00 */	li r0, 0
/* 80ABBF28  90 1C 0C 9C */	stw r0, 0xc9c(r28)
lbl_80ABBF2C:
/* 80ABBF2C  38 00 00 02 */	li r0, 2
/* 80ABBF30  B0 1C 0E 10 */	sth r0, 0xe10(r28)
/* 80ABBF34  48 00 05 BC */	b lbl_80ABC4F0
lbl_80ABBF38:
/* 80ABBF38  88 1C 0E 17 */	lbz r0, 0xe17(r28)
/* 80ABBF3C  28 00 00 00 */	cmplwi r0, 0
/* 80ABBF40  41 82 00 24 */	beq lbl_80ABBF64
/* 80ABBF44  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ABBF48  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80ABBF4C  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80ABBF50  4B 55 E7 C0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ABBF54  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80ABBF58  7C 60 07 34 */	extsh r0, r3
/* 80ABBF5C  7C 04 00 00 */	cmpw r4, r0
/* 80ABBF60  40 82 03 D0 */	bne lbl_80ABC330
lbl_80ABBF64:
/* 80ABBF64  7F 83 E3 78 */	mr r3, r28
/* 80ABBF68  38 80 00 00 */	li r4, 0
/* 80ABBF6C  38 A0 00 01 */	li r5, 1
/* 80ABBF70  38 C0 00 00 */	li r6, 0
/* 80ABBF74  4B 69 7E 10 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ABBF78  2C 03 00 00 */	cmpwi r3, 0
/* 80ABBF7C  41 82 02 94 */	beq lbl_80ABC210
/* 80ABBF80  38 7C 0C 7C */	addi r3, r28, 0xc7c
/* 80ABBF84  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ABBF88  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ABBF8C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ABBF90  4B 69 47 2C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80ABBF94  38 00 00 00 */	li r0, 0
/* 80ABBF98  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ABBF9C  38 7C 09 F8 */	addi r3, r28, 0x9f8
/* 80ABBFA0  38 81 00 10 */	addi r4, r1, 0x10
/* 80ABBFA4  4B 78 E5 84 */	b getEventId__10dMsgFlow_cFPi
/* 80ABBFA8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80ABBFAC  28 00 00 01 */	cmplwi r0, 1
/* 80ABBFB0  40 82 00 90 */	bne lbl_80ABC040
/* 80ABBFB4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80ABBFB8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80ABBFBC  38 A0 00 00 */	li r5, 0
/* 80ABBFC0  38 C0 FF FF */	li r6, -1
/* 80ABBFC4  38 E0 FF FF */	li r7, -1
/* 80ABBFC8  39 00 00 00 */	li r8, 0
/* 80ABBFCC  39 20 00 00 */	li r9, 0
/* 80ABBFD0  4B 55 FC 18 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80ABBFD4  90 7C 0E 00 */	stw r3, 0xe00(r28)
/* 80ABBFD8  80 7C 0E 00 */	lwz r3, 0xe00(r28)
/* 80ABBFDC  3C 03 00 01 */	addis r0, r3, 1
/* 80ABBFE0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80ABBFE4  41 82 00 5C */	beq lbl_80ABC040
/* 80ABBFE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABBFEC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80ABBFF0  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80ABBFF4  7F 84 E3 78 */	mr r4, r28
/* 80ABBFF8  3C A0 80 AC */	lis r5, struct_80ABFDBC+0x0@ha
/* 80ABBFFC  38 A5 FD BC */	addi r5, r5, struct_80ABFDBC+0x0@l
/* 80ABC000  38 A5 00 AE */	addi r5, r5, 0xae
/* 80ABC004  38 C0 00 FF */	li r6, 0xff
/* 80ABC008  4B 58 B7 50 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80ABC00C  7C 7B 1B 78 */	mr r27, r3
/* 80ABC010  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80ABC014  7F 84 E3 78 */	mr r4, r28
/* 80ABC018  4B 58 65 00 */	b reset__14dEvt_control_cFPv
/* 80ABC01C  7F 83 E3 78 */	mr r3, r28
/* 80ABC020  7F 64 DB 78 */	mr r4, r27
/* 80ABC024  38 A0 00 01 */	li r5, 1
/* 80ABC028  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80ABC02C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80ABC030  4B 55 F5 B4 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80ABC034  38 00 00 01 */	li r0, 1
/* 80ABC038  98 1C 0E 16 */	stb r0, 0xe16(r28)
/* 80ABC03C  98 1C 09 EC */	stb r0, 0x9ec(r28)
lbl_80ABC040:
/* 80ABC040  88 1C 0E 17 */	lbz r0, 0xe17(r28)
/* 80ABC044  2C 00 00 01 */	cmpwi r0, 1
/* 80ABC048  41 82 00 AC */	beq lbl_80ABC0F4
/* 80ABC04C  40 80 00 10 */	bge lbl_80ABC05C
/* 80ABC050  2C 00 00 00 */	cmpwi r0, 0
/* 80ABC054  40 80 00 14 */	bge lbl_80ABC068
/* 80ABC058  48 00 01 B0 */	b lbl_80ABC208
lbl_80ABC05C:
/* 80ABC05C  2C 00 00 03 */	cmpwi r0, 3
/* 80ABC060  40 80 01 A8 */	bge lbl_80ABC208
/* 80ABC064  48 00 01 1C */	b lbl_80ABC180
lbl_80ABC068:
/* 80ABC068  80 7E 03 04 */	lwz r3, 0x304(r30)
/* 80ABC06C  80 1E 03 08 */	lwz r0, 0x308(r30)
/* 80ABC070  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ABC074  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ABC078  80 1E 03 0C */	lwz r0, 0x30c(r30)
/* 80ABC07C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ABC080  38 00 00 03 */	li r0, 3
/* 80ABC084  B0 1C 0E 10 */	sth r0, 0xe10(r28)
/* 80ABC088  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 80ABC08C  4B 8A 5F 8C */	b __ptmf_test
/* 80ABC090  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC094  41 82 00 18 */	beq lbl_80ABC0AC
/* 80ABC098  7F 83 E3 78 */	mr r3, r28
/* 80ABC09C  38 80 00 00 */	li r4, 0
/* 80ABC0A0  39 9C 0D E0 */	addi r12, r28, 0xde0
/* 80ABC0A4  4B 8A 5F E0 */	b __ptmf_scall
/* 80ABC0A8  60 00 00 00 */	nop 
lbl_80ABC0AC:
/* 80ABC0AC  38 00 00 00 */	li r0, 0
/* 80ABC0B0  B0 1C 0E 10 */	sth r0, 0xe10(r28)
/* 80ABC0B4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80ABC0B8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ABC0BC  90 7C 0D E0 */	stw r3, 0xde0(r28)
/* 80ABC0C0  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80ABC0C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ABC0C8  90 1C 0D E8 */	stw r0, 0xde8(r28)
/* 80ABC0CC  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 80ABC0D0  4B 8A 5F 48 */	b __ptmf_test
/* 80ABC0D4  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC0D8  41 82 01 30 */	beq lbl_80ABC208
/* 80ABC0DC  7F 83 E3 78 */	mr r3, r28
/* 80ABC0E0  38 80 00 00 */	li r4, 0
/* 80ABC0E4  39 9C 0D E0 */	addi r12, r28, 0xde0
/* 80ABC0E8  4B 8A 5F 9C */	b __ptmf_scall
/* 80ABC0EC  60 00 00 00 */	nop 
/* 80ABC0F0  48 00 01 18 */	b lbl_80ABC208
lbl_80ABC0F4:
/* 80ABC0F4  80 7E 03 10 */	lwz r3, 0x310(r30)
/* 80ABC0F8  80 1E 03 14 */	lwz r0, 0x314(r30)
/* 80ABC0FC  90 61 00 20 */	stw r3, 0x20(r1)
/* 80ABC100  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ABC104  80 1E 03 18 */	lwz r0, 0x318(r30)
/* 80ABC108  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ABC10C  38 00 00 03 */	li r0, 3
/* 80ABC110  B0 1C 0E 10 */	sth r0, 0xe10(r28)
/* 80ABC114  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 80ABC118  4B 8A 5F 00 */	b __ptmf_test
/* 80ABC11C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC120  41 82 00 18 */	beq lbl_80ABC138
/* 80ABC124  7F 83 E3 78 */	mr r3, r28
/* 80ABC128  38 80 00 00 */	li r4, 0
/* 80ABC12C  39 9C 0D E0 */	addi r12, r28, 0xde0
/* 80ABC130  4B 8A 5F 54 */	b __ptmf_scall
/* 80ABC134  60 00 00 00 */	nop 
lbl_80ABC138:
/* 80ABC138  38 00 00 00 */	li r0, 0
/* 80ABC13C  B0 1C 0E 10 */	sth r0, 0xe10(r28)
/* 80ABC140  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80ABC144  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ABC148  90 7C 0D E0 */	stw r3, 0xde0(r28)
/* 80ABC14C  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80ABC150  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80ABC154  90 1C 0D E8 */	stw r0, 0xde8(r28)
/* 80ABC158  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 80ABC15C  4B 8A 5E BC */	b __ptmf_test
/* 80ABC160  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC164  41 82 00 A4 */	beq lbl_80ABC208
/* 80ABC168  7F 83 E3 78 */	mr r3, r28
/* 80ABC16C  38 80 00 00 */	li r4, 0
/* 80ABC170  39 9C 0D E0 */	addi r12, r28, 0xde0
/* 80ABC174  4B 8A 5F 10 */	b __ptmf_scall
/* 80ABC178  60 00 00 00 */	nop 
/* 80ABC17C  48 00 00 8C */	b lbl_80ABC208
lbl_80ABC180:
/* 80ABC180  80 7E 03 1C */	lwz r3, 0x31c(r30)
/* 80ABC184  80 1E 03 20 */	lwz r0, 0x320(r30)
/* 80ABC188  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80ABC18C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ABC190  80 1E 03 24 */	lwz r0, 0x324(r30)
/* 80ABC194  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ABC198  38 00 00 03 */	li r0, 3
/* 80ABC19C  B0 1C 0E 10 */	sth r0, 0xe10(r28)
/* 80ABC1A0  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 80ABC1A4  4B 8A 5E 74 */	b __ptmf_test
/* 80ABC1A8  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC1AC  41 82 00 18 */	beq lbl_80ABC1C4
/* 80ABC1B0  7F 83 E3 78 */	mr r3, r28
/* 80ABC1B4  38 80 00 00 */	li r4, 0
/* 80ABC1B8  39 9C 0D E0 */	addi r12, r28, 0xde0
/* 80ABC1BC  4B 8A 5E C8 */	b __ptmf_scall
/* 80ABC1C0  60 00 00 00 */	nop 
lbl_80ABC1C4:
/* 80ABC1C4  38 00 00 00 */	li r0, 0
/* 80ABC1C8  B0 1C 0E 10 */	sth r0, 0xe10(r28)
/* 80ABC1CC  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80ABC1D0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80ABC1D4  90 7C 0D E0 */	stw r3, 0xde0(r28)
/* 80ABC1D8  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80ABC1DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ABC1E0  90 1C 0D E8 */	stw r0, 0xde8(r28)
/* 80ABC1E4  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 80ABC1E8  4B 8A 5E 30 */	b __ptmf_test
/* 80ABC1EC  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC1F0  41 82 00 18 */	beq lbl_80ABC208
/* 80ABC1F4  7F 83 E3 78 */	mr r3, r28
/* 80ABC1F8  38 80 00 00 */	li r4, 0
/* 80ABC1FC  39 9C 0D E0 */	addi r12, r28, 0xde0
/* 80ABC200  4B 8A 5E 84 */	b __ptmf_scall
/* 80ABC204  60 00 00 00 */	nop 
lbl_80ABC208:
/* 80ABC208  3B A0 00 01 */	li r29, 1
/* 80ABC20C  48 00 02 E4 */	b lbl_80ABC4F0
lbl_80ABC210:
/* 80ABC210  83 7C 09 50 */	lwz r27, 0x950(r28)
/* 80ABC214  7F 83 E3 78 */	mr r3, r28
/* 80ABC218  38 81 00 0C */	addi r4, r1, 0xc
/* 80ABC21C  38 A1 00 08 */	addi r5, r1, 8
/* 80ABC220  7F 86 E3 78 */	mr r6, r28
/* 80ABC224  38 E0 00 00 */	li r7, 0
/* 80ABC228  4B 69 74 F0 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ABC22C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC230  41 82 00 44 */	beq lbl_80ABC274
/* 80ABC234  7F 83 E3 78 */	mr r3, r28
/* 80ABC238  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ABC23C  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABC240  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABC244  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABC248  7D 89 03 A6 */	mtctr r12
/* 80ABC24C  4E 80 04 21 */	bctrl 
/* 80ABC250  7F 83 E3 78 */	mr r3, r28
/* 80ABC254  80 81 00 08 */	lwz r4, 8(r1)
/* 80ABC258  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABC25C  38 A0 00 00 */	li r5, 0
/* 80ABC260  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABC264  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABC268  7D 89 03 A6 */	mtctr r12
/* 80ABC26C  4E 80 04 21 */	bctrl 
/* 80ABC270  48 00 02 80 */	b lbl_80ABC4F0
lbl_80ABC274:
/* 80ABC274  2C 1B 00 00 */	cmpwi r27, 0
/* 80ABC278  41 82 02 78 */	beq lbl_80ABC4F0
/* 80ABC27C  80 1C 09 50 */	lwz r0, 0x950(r28)
/* 80ABC280  2C 00 00 00 */	cmpwi r0, 0
/* 80ABC284  40 82 02 6C */	bne lbl_80ABC4F0
/* 80ABC288  A8 1C 09 DE */	lha r0, 0x9de(r28)
/* 80ABC28C  2C 00 00 02 */	cmpwi r0, 2
/* 80ABC290  41 82 00 40 */	beq lbl_80ABC2D0
/* 80ABC294  40 80 00 10 */	bge lbl_80ABC2A4
/* 80ABC298  2C 00 00 01 */	cmpwi r0, 1
/* 80ABC29C  40 80 00 14 */	bge lbl_80ABC2B0
/* 80ABC2A0  48 00 00 70 */	b lbl_80ABC310
lbl_80ABC2A4:
/* 80ABC2A4  2C 00 00 04 */	cmpwi r0, 4
/* 80ABC2A8  40 80 00 68 */	bge lbl_80ABC310
/* 80ABC2AC  48 00 00 44 */	b lbl_80ABC2F0
lbl_80ABC2B0:
/* 80ABC2B0  7F 83 E3 78 */	mr r3, r28
/* 80ABC2B4  38 80 00 04 */	li r4, 4
/* 80ABC2B8  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABC2BC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABC2C0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABC2C4  7D 89 03 A6 */	mtctr r12
/* 80ABC2C8  4E 80 04 21 */	bctrl 
/* 80ABC2CC  48 00 02 24 */	b lbl_80ABC4F0
lbl_80ABC2D0:
/* 80ABC2D0  7F 83 E3 78 */	mr r3, r28
/* 80ABC2D4  38 80 00 05 */	li r4, 5
/* 80ABC2D8  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABC2DC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABC2E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABC2E4  7D 89 03 A6 */	mtctr r12
/* 80ABC2E8  4E 80 04 21 */	bctrl 
/* 80ABC2EC  48 00 02 04 */	b lbl_80ABC4F0
lbl_80ABC2F0:
/* 80ABC2F0  7F 83 E3 78 */	mr r3, r28
/* 80ABC2F4  38 80 00 06 */	li r4, 6
/* 80ABC2F8  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABC2FC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABC300  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABC304  7D 89 03 A6 */	mtctr r12
/* 80ABC308  4E 80 04 21 */	bctrl 
/* 80ABC30C  48 00 01 E4 */	b lbl_80ABC4F0
lbl_80ABC310:
/* 80ABC310  7F 83 E3 78 */	mr r3, r28
/* 80ABC314  38 80 00 07 */	li r4, 7
/* 80ABC318  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABC31C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABC320  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABC324  7D 89 03 A6 */	mtctr r12
/* 80ABC328  4E 80 04 21 */	bctrl 
/* 80ABC32C  48 00 01 C4 */	b lbl_80ABC4F0
lbl_80ABC330:
/* 80ABC330  7F 83 E3 78 */	mr r3, r28
/* 80ABC334  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80ABC338  4B 55 E3 D8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ABC33C  7C 7E 1B 78 */	mr r30, r3
/* 80ABC340  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ABC344  2C 00 00 00 */	cmpwi r0, 0
/* 80ABC348  40 82 00 D4 */	bne lbl_80ABC41C
/* 80ABC34C  C0 5F 03 58 */	lfs f2, 0x358(r31)
/* 80ABC350  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ABC354  7C 00 F0 50 */	subf r0, r0, r30
/* 80ABC358  7C 00 07 34 */	extsh r0, r0
/* 80ABC35C  C8 3F 03 70 */	lfd f1, 0x370(r31)
/* 80ABC360  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ABC364  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80ABC368  3C 00 43 30 */	lis r0, 0x4330
/* 80ABC36C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80ABC370  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80ABC374  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ABC378  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ABC37C  FC 00 02 10 */	fabs f0, f0
/* 80ABC380  FC 00 00 18 */	frsp f0, f0
/* 80ABC384  FC 00 00 1E */	fctiwz f0, f0
/* 80ABC388  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80ABC38C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ABC390  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ABC394  40 81 00 40 */	ble lbl_80ABC3D4
/* 80ABC398  7F 83 E3 78 */	mr r3, r28
/* 80ABC39C  38 80 00 07 */	li r4, 7
/* 80ABC3A0  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABC3A4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABC3A8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABC3AC  7D 89 03 A6 */	mtctr r12
/* 80ABC3B0  4E 80 04 21 */	bctrl 
/* 80ABC3B4  7F 83 E3 78 */	mr r3, r28
/* 80ABC3B8  38 80 00 12 */	li r4, 0x12
/* 80ABC3BC  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABC3C0  38 A0 00 00 */	li r5, 0
/* 80ABC3C4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABC3C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABC3CC  7D 89 03 A6 */	mtctr r12
/* 80ABC3D0  4E 80 04 21 */	bctrl 
lbl_80ABC3D4:
/* 80ABC3D4  B3 DC 09 96 */	sth r30, 0x996(r28)
/* 80ABC3D8  38 00 00 00 */	li r0, 0
/* 80ABC3DC  90 1C 09 68 */	stw r0, 0x968(r28)
/* 80ABC3E0  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80ABC3E4  A8 1C 09 96 */	lha r0, 0x996(r28)
/* 80ABC3E8  7C 03 00 00 */	cmpw r3, r0
/* 80ABC3EC  40 82 00 10 */	bne lbl_80ABC3FC
/* 80ABC3F0  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ABC3F4  38 03 00 01 */	addi r0, r3, 1
/* 80ABC3F8  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_80ABC3FC:
/* 80ABC3FC  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ABC400  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80ABC404  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABC408  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ABC40C  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ABC410  38 03 00 01 */	addi r0, r3, 1
/* 80ABC414  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ABC418  48 00 00 60 */	b lbl_80ABC478
lbl_80ABC41C:
/* 80ABC41C  2C 00 00 01 */	cmpwi r0, 1
/* 80ABC420  40 82 00 58 */	bne lbl_80ABC478
/* 80ABC424  7F 83 E3 78 */	mr r3, r28
/* 80ABC428  A8 9C 09 96 */	lha r4, 0x996(r28)
/* 80ABC42C  C0 3F 03 5C */	lfs f1, 0x35c(r31)
/* 80ABC430  38 A0 00 00 */	li r5, 0
/* 80ABC434  4B 69 7A C0 */	b turn__8daNpcF_cFsfi
/* 80ABC438  2C 03 00 00 */	cmpwi r3, 0
/* 80ABC43C  41 82 00 2C */	beq lbl_80ABC468
/* 80ABC440  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABC444  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ABC448  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABC44C  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80ABC450  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABC454  B0 1C 08 F8 */	sth r0, 0x8f8(r28)
/* 80ABC458  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ABC45C  38 03 00 01 */	addi r0, r3, 1
/* 80ABC460  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ABC464  48 00 00 14 */	b lbl_80ABC478
lbl_80ABC468:
/* 80ABC468  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABC46C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ABC470  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABC474  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
lbl_80ABC478:
/* 80ABC478  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ABC47C  2C 00 00 01 */	cmpwi r0, 1
/* 80ABC480  40 81 00 70 */	ble lbl_80ABC4F0
/* 80ABC484  7F 83 E3 78 */	mr r3, r28
/* 80ABC488  38 80 00 00 */	li r4, 0
/* 80ABC48C  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABC490  38 A0 00 00 */	li r5, 0
/* 80ABC494  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABC498  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABC49C  7D 89 03 A6 */	mtctr r12
/* 80ABC4A0  4E 80 04 21 */	bctrl 
/* 80ABC4A4  38 00 00 00 */	li r0, 0
/* 80ABC4A8  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ABC4AC  48 00 00 44 */	b lbl_80ABC4F0
lbl_80ABC4B0:
/* 80ABC4B0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80ABC4B4  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 80ABC4B8  B0 1C 0E 0C */	sth r0, 0xe0c(r28)
/* 80ABC4BC  38 80 00 07 */	li r4, 7
/* 80ABC4C0  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABC4C4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80ABC4C8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABC4CC  7D 89 03 A6 */	mtctr r12
/* 80ABC4D0  4E 80 04 21 */	bctrl 
/* 80ABC4D4  88 1C 09 EC */	lbz r0, 0x9ec(r28)
/* 80ABC4D8  28 00 00 00 */	cmplwi r0, 0
/* 80ABC4DC  40 82 00 14 */	bne lbl_80ABC4F0
/* 80ABC4E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABC4E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ABC4E8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80ABC4EC  4B 58 5F 7C */	b reset__14dEvt_control_cFv
lbl_80ABC4F0:
/* 80ABC4F0  7F A3 EB 78 */	mr r3, r29
/* 80ABC4F4  39 61 00 60 */	addi r11, r1, 0x60
/* 80ABC4F8  4B 8A 5D 28 */	b _restgpr_27
/* 80ABC4FC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80ABC500  7C 08 03 A6 */	mtlr r0
/* 80ABC504  38 21 00 60 */	addi r1, r1, 0x60
/* 80ABC508  4E 80 00 20 */	blr 
