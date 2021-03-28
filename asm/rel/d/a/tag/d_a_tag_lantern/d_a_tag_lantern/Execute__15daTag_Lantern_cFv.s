lbl_8048EDDC:
/* 8048EDDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048EDE0  7C 08 02 A6 */	mflr r0
/* 8048EDE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048EDE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8048EDEC  4B ED 33 F0 */	b _savegpr_29
/* 8048EDF0  7C 7F 1B 78 */	mr r31, r3
/* 8048EDF4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8048EDF8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8048EDFC  3B C4 0F 38 */	addi r30, r4, 0xf38
/* 8048EE00  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 8048EE04  28 00 00 00 */	cmplwi r0, 0
/* 8048EE08  41 82 00 80 */	beq lbl_8048EE88
/* 8048EE0C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8048EE10  28 00 00 01 */	cmplwi r0, 1
/* 8048EE14  40 82 00 98 */	bne lbl_8048EEAC
/* 8048EE18  88 1F 06 04 */	lbz r0, 0x604(r31)
/* 8048EE1C  28 00 00 00 */	cmplwi r0, 0
/* 8048EE20  40 82 00 2C */	bne lbl_8048EE4C
/* 8048EE24  38 7F 05 68 */	addi r3, r31, 0x568
/* 8048EE28  7F E4 FB 78 */	mr r4, r31
/* 8048EE2C  80 BF 06 00 */	lwz r5, 0x600(r31)
/* 8048EE30  38 C0 00 00 */	li r6, 0
/* 8048EE34  38 E0 00 00 */	li r7, 0
/* 8048EE38  4B DB B1 58 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8048EE3C  88 7F 06 04 */	lbz r3, 0x604(r31)
/* 8048EE40  38 03 00 01 */	addi r0, r3, 1
/* 8048EE44  98 1F 06 04 */	stb r0, 0x604(r31)
/* 8048EE48  48 00 00 64 */	b lbl_8048EEAC
lbl_8048EE4C:
/* 8048EE4C  28 00 00 01 */	cmplwi r0, 1
/* 8048EE50  40 82 00 5C */	bne lbl_8048EEAC
/* 8048EE54  38 7F 05 68 */	addi r3, r31, 0x568
/* 8048EE58  7F E4 FB 78 */	mr r4, r31
/* 8048EE5C  38 A0 00 00 */	li r5, 0
/* 8048EE60  38 C0 00 00 */	li r6, 0
/* 8048EE64  4B DB B4 74 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8048EE68  2C 03 00 00 */	cmpwi r3, 0
/* 8048EE6C  41 82 00 40 */	beq lbl_8048EEAC
/* 8048EE70  38 7E 3F 90 */	addi r3, r30, 0x3f90
/* 8048EE74  4B BB 35 F4 */	b reset__14dEvt_control_cFv
/* 8048EE78  38 00 00 00 */	li r0, 0
/* 8048EE7C  98 1F 06 04 */	stb r0, 0x604(r31)
/* 8048EE80  90 1F 05 F8 */	stw r0, 0x5f8(r31)
/* 8048EE84  48 00 00 28 */	b lbl_8048EEAC
lbl_8048EE88:
/* 8048EE88  80 1F 05 F8 */	lwz r0, 0x5f8(r31)
/* 8048EE8C  2C 00 00 00 */	cmpwi r0, 0
/* 8048EE90  41 82 00 1C */	beq lbl_8048EEAC
/* 8048EE94  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8048EE98  60 00 00 01 */	ori r0, r0, 1
/* 8048EE9C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8048EEA0  38 80 00 00 */	li r4, 0
/* 8048EEA4  38 A0 00 00 */	li r5, 0
/* 8048EEA8  4B B8 C2 F4 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
lbl_8048EEAC:
/* 8048EEAC  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 8048EEB0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8048EEB4  4B DD 8E 74 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8048EEB8  7F C3 F3 78 */	mr r3, r30
/* 8048EEBC  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 8048EEC0  4B BE 55 E0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8048EEC4  D0 3F 05 F4 */	stfs f1, 0x5f4(r31)
/* 8048EEC8  3C 60 80 49 */	lis r3, lit_3683@ha
/* 8048EECC  C0 23 F1 48 */	lfs f1, lit_3683@l(r3)
/* 8048EED0  C0 1F 05 F4 */	lfs f0, 0x5f4(r31)
/* 8048EED4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8048EED8  41 82 00 28 */	beq lbl_8048EF00
/* 8048EEDC  7F C3 F3 78 */	mr r3, r30
/* 8048EEE0  38 9F 05 C8 */	addi r4, r31, 0x5c8
/* 8048EEE4  4B BE 62 1C */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 8048EEE8  7C 7D 1B 78 */	mr r29, r3
/* 8048EEEC  7F C3 F3 78 */	mr r3, r30
/* 8048EEF0  38 9F 05 C8 */	addi r4, r31, 0x5c8
/* 8048EEF4  4B BE 5C F4 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 8048EEF8  98 7F 04 8D */	stb r3, 0x48d(r31)
/* 8048EEFC  48 00 00 10 */	b lbl_8048EF0C
lbl_8048EF00:
/* 8048EF00  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 8048EF04  8B A3 0D 64 */	lbz r29, struct_80450D64+0x0@l(r3)
/* 8048EF08  7F BD 07 74 */	extsb r29, r29
lbl_8048EF0C:
/* 8048EF0C  9B BF 04 8C */	stb r29, 0x48c(r31)
/* 8048EF10  88 1F 04 8C */	lbz r0, 0x48c(r31)
/* 8048EF14  98 1F 04 E2 */	stb r0, 0x4e2(r31)
/* 8048EF18  38 00 00 00 */	li r0, 0
/* 8048EF1C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8048EF20  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8048EF24  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8048EF28  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8048EF2C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8048EF30  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8048EF34  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8048EF38  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 8048EF3C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8048EF40  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 8048EF44  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8048EF48  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 8048EF4C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8048EF50  38 60 00 01 */	li r3, 1
/* 8048EF54  39 61 00 20 */	addi r11, r1, 0x20
/* 8048EF58  4B ED 32 D0 */	b _restgpr_29
/* 8048EF5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048EF60  7C 08 03 A6 */	mtlr r0
/* 8048EF64  38 21 00 20 */	addi r1, r1, 0x20
/* 8048EF68  4E 80 00 20 */	blr 
