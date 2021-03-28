lbl_8096EE10:
/* 8096EE10  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8096EE14  7C 08 02 A6 */	mflr r0
/* 8096EE18  90 01 00 64 */	stw r0, 0x64(r1)
/* 8096EE1C  39 61 00 60 */	addi r11, r1, 0x60
/* 8096EE20  4B 9F 33 A8 */	b _savegpr_24
/* 8096EE24  7C 7A 1B 78 */	mr r26, r3
/* 8096EE28  7C 98 23 78 */	mr r24, r4
/* 8096EE2C  3B C0 00 00 */	li r30, 0
/* 8096EE30  3B A0 FF FF */	li r29, -1
/* 8096EE34  3B 80 00 00 */	li r28, 0
/* 8096EE38  3B 60 00 00 */	li r27, 0
/* 8096EE3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096EE40  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8096EE44  3B 3F 4F F8 */	addi r25, r31, 0x4ff8
/* 8096EE48  7F 23 CB 78 */	mr r3, r25
/* 8096EE4C  3C A0 80 97 */	lis r5, struct_8097299C+0x0@ha
/* 8096EE50  38 A5 29 9C */	addi r5, r5, struct_8097299C+0x0@l
/* 8096EE54  38 A5 00 DA */	addi r5, r5, 0xda
/* 8096EE58  38 C0 00 03 */	li r6, 3
/* 8096EE5C  4B 6D 92 90 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096EE60  28 03 00 00 */	cmplwi r3, 0
/* 8096EE64  41 82 00 08 */	beq lbl_8096EE6C
/* 8096EE68  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8096EE6C:
/* 8096EE6C  7F 23 CB 78 */	mr r3, r25
/* 8096EE70  7F 04 C3 78 */	mr r4, r24
/* 8096EE74  3C A0 80 97 */	lis r5, struct_8097299C+0x0@ha
/* 8096EE78  38 A5 29 9C */	addi r5, r5, struct_8097299C+0x0@l
/* 8096EE7C  38 A5 00 DE */	addi r5, r5, 0xde
/* 8096EE80  38 C0 00 03 */	li r6, 3
/* 8096EE84  4B 6D 92 68 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096EE88  28 03 00 00 */	cmplwi r3, 0
/* 8096EE8C  41 82 00 08 */	beq lbl_8096EE94
/* 8096EE90  83 83 00 00 */	lwz r28, 0(r3)
lbl_8096EE94:
/* 8096EE94  7F 23 CB 78 */	mr r3, r25
/* 8096EE98  7F 04 C3 78 */	mr r4, r24
/* 8096EE9C  3C A0 80 97 */	lis r5, struct_8097299C+0x0@ha
/* 8096EEA0  38 A5 29 9C */	addi r5, r5, struct_8097299C+0x0@l
/* 8096EEA4  38 A5 00 E4 */	addi r5, r5, 0xe4
/* 8096EEA8  38 C0 00 03 */	li r6, 3
/* 8096EEAC  4B 6D 92 40 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096EEB0  28 03 00 00 */	cmplwi r3, 0
/* 8096EEB4  41 82 00 08 */	beq lbl_8096EEBC
/* 8096EEB8  83 63 00 00 */	lwz r27, 0(r3)
lbl_8096EEBC:
/* 8096EEBC  7F 23 CB 78 */	mr r3, r25
/* 8096EEC0  7F 04 C3 78 */	mr r4, r24
/* 8096EEC4  4B 6D 8E 88 */	b getIsAddvance__16dEvent_manager_cFi
/* 8096EEC8  2C 03 00 00 */	cmpwi r3, 0
/* 8096EECC  41 82 01 30 */	beq lbl_8096EFFC
/* 8096EED0  28 1D 00 08 */	cmplwi r29, 8
/* 8096EED4  41 81 01 28 */	bgt lbl_8096EFFC
/* 8096EED8  3C 60 80 97 */	lis r3, lit_5286@ha
/* 8096EEDC  38 63 32 50 */	addi r3, r3, lit_5286@l
/* 8096EEE0  57 A0 10 3A */	slwi r0, r29, 2
/* 8096EEE4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8096EEE8  7C 09 03 A6 */	mtctr r0
/* 8096EEEC  4E 80 04 20 */	bctr 
lbl_8096EEF0:
/* 8096EEF0  38 7A 0F 84 */	addi r3, r26, 0xf84
/* 8096EEF4  4B 7D 68 14 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096EEF8  A0 03 05 68 */	lhz r0, 0x568(r3)
/* 8096EEFC  60 00 00 20 */	ori r0, r0, 0x20
/* 8096EF00  B0 03 05 68 */	sth r0, 0x568(r3)
/* 8096EF04  38 60 00 1C */	li r3, 0x1c
/* 8096EF08  4B 7D DC 24 */	b daNpcT_offTmpBit__FUl
/* 8096EF0C  7F 43 D3 78 */	mr r3, r26
/* 8096EF10  80 9A 0A 7C */	lwz r4, 0xa7c(r26)
/* 8096EF14  38 A0 00 00 */	li r5, 0
/* 8096EF18  4B 7D CC D8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8096EF1C  48 00 00 E0 */	b lbl_8096EFFC
lbl_8096EF20:
/* 8096EF20  38 7A 0F 84 */	addi r3, r26, 0xf84
/* 8096EF24  4B 7D 67 E4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096EF28  7C 64 1B 78 */	mr r4, r3
/* 8096EF2C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8096EF30  4B 6D 47 2C */	b setPt2__14dEvt_control_cFPv
/* 8096EF34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8096EF38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8096EF3C  80 63 00 00 */	lwz r3, 0(r3)
/* 8096EF40  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8096EF44  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000011@ha */
/* 8096EF48  38 84 00 11 */	addi r4, r4, 0x0011 /* 0x01000011@l */
/* 8096EF4C  4B 94 05 50 */	b subBgmStart__8Z2SeqMgrFUl
/* 8096EF50  48 00 00 AC */	b lbl_8096EFFC
lbl_8096EF54:
/* 8096EF54  38 7A 0F 84 */	addi r3, r26, 0xf84
/* 8096EF58  4B 7D 67 B0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096EF5C  A0 03 05 68 */	lhz r0, 0x568(r3)
/* 8096EF60  60 00 00 40 */	ori r0, r0, 0x40
/* 8096EF64  B0 03 05 68 */	sth r0, 0x568(r3)
/* 8096EF68  48 00 00 94 */	b lbl_8096EFFC
lbl_8096EF6C:
/* 8096EF6C  38 60 00 0D */	li r3, 0xd
/* 8096EF70  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 8096EF74  7C 04 07 74 */	extsb r4, r0
/* 8096EF78  38 A1 00 28 */	addi r5, r1, 0x28
/* 8096EF7C  38 C1 00 08 */	addi r6, r1, 8
/* 8096EF80  4B 7D D5 80 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8096EF84  2C 03 00 00 */	cmpwi r3, 0
/* 8096EF88  41 82 00 2C */	beq lbl_8096EFB4
/* 8096EF8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096EF90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096EF94  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8096EF98  38 81 00 28 */	addi r4, r1, 0x28
/* 8096EF9C  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 8096EFA0  38 C0 00 00 */	li r6, 0
/* 8096EFA4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8096EFA8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8096EFAC  7D 89 03 A6 */	mtctr r12
/* 8096EFB0  4E 80 04 21 */	bctrl 
lbl_8096EFB4:
/* 8096EFB4  C0 1A 04 A8 */	lfs f0, 0x4a8(r26)
/* 8096EFB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8096EFBC  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 8096EFC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8096EFC4  C0 1A 04 B0 */	lfs f0, 0x4b0(r26)
/* 8096EFC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8096EFCC  7F 43 D3 78 */	mr r3, r26
/* 8096EFD0  38 81 00 10 */	addi r4, r1, 0x10
/* 8096EFD4  4B 7D B9 34 */	b setPos__8daNpcT_cF4cXyz
/* 8096EFD8  7F 43 D3 78 */	mr r3, r26
/* 8096EFDC  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 8096EFE0  4B 7D BA 38 */	b setAngle__8daNpcT_cFs
/* 8096EFE4  48 00 00 18 */	b lbl_8096EFFC
lbl_8096EFE8:
/* 8096EFE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096EFEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096EFF0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8096EFF4  38 00 00 2A */	li r0, 0x2a
/* 8096EFF8  98 03 05 6A */	stb r0, 0x56a(r3)
lbl_8096EFFC:
/* 8096EFFC  3C 60 80 97 */	lis r3, lit_5178@ha
/* 8096F000  38 83 29 78 */	addi r4, r3, lit_5178@l
/* 8096F004  80 64 00 00 */	lwz r3, 0(r4)
/* 8096F008  80 04 00 04 */	lwz r0, 4(r4)
/* 8096F00C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8096F010  90 01 00 20 */	stw r0, 0x20(r1)
/* 8096F014  80 04 00 08 */	lwz r0, 8(r4)
/* 8096F018  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096F01C  2C 1D 00 04 */	cmpwi r29, 4
/* 8096F020  40 80 00 14 */	bge lbl_8096F034
/* 8096F024  2C 1D 00 00 */	cmpwi r29, 0
/* 8096F028  41 82 00 18 */	beq lbl_8096F040
/* 8096F02C  40 80 00 84 */	bge lbl_8096F0B0
/* 8096F030  48 00 02 98 */	b lbl_8096F2C8
lbl_8096F034:
/* 8096F034  2C 1D 00 09 */	cmpwi r29, 9
/* 8096F038  40 80 02 90 */	bge lbl_8096F2C8
/* 8096F03C  48 00 01 E8 */	b lbl_8096F224
lbl_8096F040:
/* 8096F040  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8096F044  2C 00 00 01 */	cmpwi r0, 1
/* 8096F048  41 82 00 2C */	beq lbl_8096F074
/* 8096F04C  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8096F050  4B 7D 66 AC */	b remove__18daNpcT_ActorMngr_cFv
/* 8096F054  38 00 00 00 */	li r0, 0
/* 8096F058  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8096F05C  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F060  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F064  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8096F068  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8096F06C  38 00 00 01 */	li r0, 1
/* 8096F070  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8096F074:
/* 8096F074  38 00 00 00 */	li r0, 0
/* 8096F078  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8096F07C  A8 9A 0D C8 */	lha r4, 0xdc8(r26)
/* 8096F080  A8 1A 0D 7A */	lha r0, 0xd7a(r26)
/* 8096F084  7C 04 00 00 */	cmpw r4, r0
/* 8096F088  40 82 00 0C */	bne lbl_8096F094
/* 8096F08C  3B C0 00 01 */	li r30, 1
/* 8096F090  48 00 02 38 */	b lbl_8096F2C8
lbl_8096F094:
/* 8096F094  7F 43 D3 78 */	mr r3, r26
/* 8096F098  38 A0 00 0A */	li r5, 0xa
/* 8096F09C  38 C0 00 12 */	li r6, 0x12
/* 8096F0A0  38 E0 00 0F */	li r7, 0xf
/* 8096F0A4  39 00 00 00 */	li r8, 0
/* 8096F0A8  4B 7D C5 A0 */	b step__8daNpcT_cFsiiii
/* 8096F0AC  48 00 02 1C */	b lbl_8096F2C8
lbl_8096F0B0:
/* 8096F0B0  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8096F0B4  2C 00 00 01 */	cmpwi r0, 1
/* 8096F0B8  41 82 00 2C */	beq lbl_8096F0E4
/* 8096F0BC  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8096F0C0  4B 7D 66 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 8096F0C4  38 00 00 00 */	li r0, 0
/* 8096F0C8  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8096F0CC  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F0D0  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F0D4  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8096F0D8  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8096F0DC  38 00 00 01 */	li r0, 1
/* 8096F0E0  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8096F0E4:
/* 8096F0E4  38 00 00 00 */	li r0, 0
/* 8096F0E8  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8096F0EC  2C 1D 00 02 */	cmpwi r29, 2
/* 8096F0F0  41 82 00 0C */	beq lbl_8096F0FC
/* 8096F0F4  2C 1D 00 03 */	cmpwi r29, 3
/* 8096F0F8  40 82 00 B4 */	bne lbl_8096F1AC
lbl_8096F0FC:
/* 8096F0FC  2C 1D 00 03 */	cmpwi r29, 3
/* 8096F100  40 82 00 A4 */	bne lbl_8096F1A4
/* 8096F104  38 7A 0F 84 */	addi r3, r26, 0xf84
/* 8096F108  4B 7D 66 00 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096F10C  7C 79 1B 78 */	mr r25, r3
/* 8096F110  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8096F114  4B 7D 65 F4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096F118  7C 63 C8 50 */	subf r3, r3, r25
/* 8096F11C  30 03 FF FF */	addic r0, r3, -1
/* 8096F120  7C 00 19 10 */	subfe r0, r0, r3
/* 8096F124  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8096F128  40 82 00 10 */	bne lbl_8096F138
/* 8096F12C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8096F130  2C 00 00 02 */	cmpwi r0, 2
/* 8096F134  41 82 00 34 */	beq lbl_8096F168
lbl_8096F138:
/* 8096F138  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8096F13C  4B 7D 65 C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8096F140  38 00 00 00 */	li r0, 0
/* 8096F144  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8096F148  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F14C  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F150  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8096F154  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8096F158  38 00 00 02 */	li r0, 2
/* 8096F15C  90 1A 0C E0 */	stw r0, 0xce0(r26)
/* 8096F160  38 00 00 01 */	li r0, 1
/* 8096F164  48 00 00 08 */	b lbl_8096F16C
lbl_8096F168:
/* 8096F168  38 00 00 00 */	li r0, 0
lbl_8096F16C:
/* 8096F16C  2C 00 00 00 */	cmpwi r0, 0
/* 8096F170  41 82 00 2C */	beq lbl_8096F19C
/* 8096F174  7F 23 CB 78 */	mr r3, r25
/* 8096F178  4B 6A 9B 68 */	b fopAc_IsActor__FPv
/* 8096F17C  2C 03 00 00 */	cmpwi r3, 0
/* 8096F180  41 82 00 1C */	beq lbl_8096F19C
/* 8096F184  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8096F188  7F 24 CB 78 */	mr r4, r25
/* 8096F18C  4B 7D 65 54 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8096F190  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F194  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F198  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
lbl_8096F19C:
/* 8096F19C  38 00 00 00 */	li r0, 0
/* 8096F1A0  98 1A 0C FF */	stb r0, 0xcff(r26)
lbl_8096F1A4:
/* 8096F1A4  38 00 00 00 */	li r0, 0
/* 8096F1A8  98 1A 0E 26 */	stb r0, 0xe26(r26)
lbl_8096F1AC:
/* 8096F1AC  93 81 00 1C */	stw r28, 0x1c(r1)
/* 8096F1B0  93 61 00 20 */	stw r27, 0x20(r1)
/* 8096F1B4  7F 43 D3 78 */	mr r3, r26
/* 8096F1B8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8096F1BC  38 A0 00 00 */	li r5, 0
/* 8096F1C0  38 C0 00 00 */	li r6, 0
/* 8096F1C4  38 E0 00 00 */	li r7, 0
/* 8096F1C8  4B 7D CA B0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8096F1CC  2C 03 00 00 */	cmpwi r3, 0
/* 8096F1D0  41 82 00 2C */	beq lbl_8096F1FC
/* 8096F1D4  2C 1C 00 00 */	cmpwi r28, 0
/* 8096F1D8  40 82 00 20 */	bne lbl_8096F1F8
/* 8096F1DC  2C 1B 00 00 */	cmpwi r27, 0
/* 8096F1E0  40 82 00 18 */	bne lbl_8096F1F8
/* 8096F1E4  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 8096F1E8  28 00 00 01 */	cmplwi r0, 1
/* 8096F1EC  40 82 00 10 */	bne lbl_8096F1FC
/* 8096F1F0  3B C0 00 01 */	li r30, 1
/* 8096F1F4  48 00 00 08 */	b lbl_8096F1FC
lbl_8096F1F8:
/* 8096F1F8  3B C0 00 01 */	li r30, 1
lbl_8096F1FC:
/* 8096F1FC  2C 1D 00 03 */	cmpwi r29, 3
/* 8096F200  40 82 00 C8 */	bne lbl_8096F2C8
/* 8096F204  2C 1E 00 00 */	cmpwi r30, 0
/* 8096F208  41 82 00 C0 */	beq lbl_8096F2C8
/* 8096F20C  38 7A 0F 84 */	addi r3, r26, 0xf84
/* 8096F210  4B 7D 64 F8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096F214  A0 03 05 68 */	lhz r0, 0x568(r3)
/* 8096F218  60 00 02 00 */	ori r0, r0, 0x200
/* 8096F21C  B0 03 05 68 */	sth r0, 0x568(r3)
/* 8096F220  48 00 00 A8 */	b lbl_8096F2C8
lbl_8096F224:
/* 8096F224  38 7A 0F 84 */	addi r3, r26, 0xf84
/* 8096F228  4B 7D 64 E0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096F22C  7C 79 1B 78 */	mr r25, r3
/* 8096F230  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8096F234  4B 7D 64 D4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096F238  7C 63 C8 50 */	subf r3, r3, r25
/* 8096F23C  30 03 FF FF */	addic r0, r3, -1
/* 8096F240  7C 00 19 10 */	subfe r0, r0, r3
/* 8096F244  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8096F248  40 82 00 10 */	bne lbl_8096F258
/* 8096F24C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8096F250  2C 00 00 02 */	cmpwi r0, 2
/* 8096F254  41 82 00 34 */	beq lbl_8096F288
lbl_8096F258:
/* 8096F258  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8096F25C  4B 7D 64 A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8096F260  38 00 00 00 */	li r0, 0
/* 8096F264  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8096F268  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F26C  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F270  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8096F274  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8096F278  38 00 00 02 */	li r0, 2
/* 8096F27C  90 1A 0C E0 */	stw r0, 0xce0(r26)
/* 8096F280  38 00 00 01 */	li r0, 1
/* 8096F284  48 00 00 08 */	b lbl_8096F28C
lbl_8096F288:
/* 8096F288  38 00 00 00 */	li r0, 0
lbl_8096F28C:
/* 8096F28C  2C 00 00 00 */	cmpwi r0, 0
/* 8096F290  41 82 00 2C */	beq lbl_8096F2BC
/* 8096F294  7F 23 CB 78 */	mr r3, r25
/* 8096F298  4B 6A 9A 48 */	b fopAc_IsActor__FPv
/* 8096F29C  2C 03 00 00 */	cmpwi r3, 0
/* 8096F2A0  41 82 00 1C */	beq lbl_8096F2BC
/* 8096F2A4  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8096F2A8  7F 24 CB 78 */	mr r4, r25
/* 8096F2AC  4B 7D 64 34 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8096F2B0  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F2B4  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F2B8  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
lbl_8096F2BC:
/* 8096F2BC  38 00 00 00 */	li r0, 0
/* 8096F2C0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8096F2C4  3B C0 00 01 */	li r30, 1
lbl_8096F2C8:
/* 8096F2C8  7F C3 F3 78 */	mr r3, r30
/* 8096F2CC  39 61 00 60 */	addi r11, r1, 0x60
/* 8096F2D0  4B 9F 2F 44 */	b _restgpr_24
/* 8096F2D4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8096F2D8  7C 08 03 A6 */	mtlr r0
/* 8096F2DC  38 21 00 60 */	addi r1, r1, 0x60
/* 8096F2E0  4E 80 00 20 */	blr 
