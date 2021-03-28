lbl_80A1E9F8:
/* 80A1E9F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A1E9FC  7C 08 02 A6 */	mflr r0
/* 80A1EA00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1EA04  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A1EA08  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A1EA0C  7C 7E 1B 78 */	mr r30, r3
/* 80A1EA10  3B E0 00 00 */	li r31, 0
/* 80A1EA14  A8 03 14 06 */	lha r0, 0x1406(r3)
/* 80A1EA18  2C 00 00 01 */	cmpwi r0, 1
/* 80A1EA1C  41 82 00 74 */	beq lbl_80A1EA90
/* 80A1EA20  40 80 01 20 */	bge lbl_80A1EB40
/* 80A1EA24  2C 00 FF FF */	cmpwi r0, -1
/* 80A1EA28  41 82 00 48 */	beq lbl_80A1EA70
/* 80A1EA2C  40 80 00 0C */	bge lbl_80A1EA38
/* 80A1EA30  48 00 01 10 */	b lbl_80A1EB40
/* 80A1EA34  48 00 01 0C */	b lbl_80A1EB40
lbl_80A1EA38:
/* 80A1EA38  38 00 00 01 */	li r0, 1
/* 80A1EA3C  98 1E 14 42 */	stb r0, 0x1442(r30)
/* 80A1EA40  3C 80 80 A2 */	lis r4, lit_5717@ha
/* 80A1EA44  38 A4 16 60 */	addi r5, r4, lit_5717@l
/* 80A1EA48  80 85 00 00 */	lwz r4, 0(r5)
/* 80A1EA4C  80 05 00 04 */	lwz r0, 4(r5)
/* 80A1EA50  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80A1EA54  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A1EA58  80 05 00 08 */	lwz r0, 8(r5)
/* 80A1EA5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1EA60  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A1EA64  4B FF ED 19 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1EA68  3B E0 00 01 */	li r31, 1
/* 80A1EA6C  48 00 00 D4 */	b lbl_80A1EB40
lbl_80A1EA70:
/* 80A1EA70  88 1E 09 EC */	lbz r0, 0x9ec(r30)
/* 80A1EA74  28 00 00 00 */	cmplwi r0, 0
/* 80A1EA78  40 82 00 C8 */	bne lbl_80A1EB40
/* 80A1EA7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A1EA80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A1EA84  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A1EA88  4B 62 39 E0 */	b reset__14dEvt_control_cFv
/* 80A1EA8C  48 00 00 B4 */	b lbl_80A1EB40
lbl_80A1EA90:
/* 80A1EA90  38 80 00 00 */	li r4, 0
/* 80A1EA94  38 A0 00 01 */	li r5, 1
/* 80A1EA98  38 C0 00 00 */	li r6, 0
/* 80A1EA9C  4B 73 52 E8 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A1EAA0  2C 03 00 00 */	cmpwi r3, 0
/* 80A1EAA4  41 82 00 58 */	beq lbl_80A1EAFC
/* 80A1EAA8  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A1EAAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A1EAB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A1EAB4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A1EAB8  4B 73 1C 04 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A1EABC  88 1E 14 04 */	lbz r0, 0x1404(r30)
/* 80A1EAC0  7C 00 07 75 */	extsb. r0, r0
/* 80A1EAC4  40 82 00 30 */	bne lbl_80A1EAF4
/* 80A1EAC8  3C 60 80 A2 */	lis r3, lit_5727@ha
/* 80A1EACC  38 83 16 6C */	addi r4, r3, lit_5727@l
/* 80A1EAD0  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1EAD4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1EAD8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A1EADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1EAE0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1EAE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A1EAE8  7F C3 F3 78 */	mr r3, r30
/* 80A1EAEC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A1EAF0  4B FF EC 8D */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
lbl_80A1EAF4:
/* 80A1EAF4  3B E0 00 01 */	li r31, 1
/* 80A1EAF8  48 00 00 48 */	b lbl_80A1EB40
lbl_80A1EAFC:
/* 80A1EAFC  7F C3 F3 78 */	mr r3, r30
/* 80A1EB00  38 81 00 0C */	addi r4, r1, 0xc
/* 80A1EB04  38 A1 00 08 */	addi r5, r1, 8
/* 80A1EB08  7F C6 F3 78 */	mr r6, r30
/* 80A1EB0C  38 E0 00 00 */	li r7, 0
/* 80A1EB10  4B 73 4C 08 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A1EB14  2C 03 00 00 */	cmpwi r3, 0
/* 80A1EB18  41 82 00 28 */	beq lbl_80A1EB40
/* 80A1EB1C  7F C3 F3 78 */	mr r3, r30
/* 80A1EB20  80 81 00 08 */	lwz r4, 8(r1)
/* 80A1EB24  3C A0 80 A2 */	lis r5, lit_3998@ha
/* 80A1EB28  C0 25 10 90 */	lfs f1, lit_3998@l(r5)
/* 80A1EB2C  38 A0 00 00 */	li r5, 0
/* 80A1EB30  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A1EB34  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1EB38  7D 89 03 A6 */	mtctr r12
/* 80A1EB3C  4E 80 04 21 */	bctrl 
lbl_80A1EB40:
/* 80A1EB40  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A1EB44  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A1EB48  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A1EB4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A1EB50  7C 08 03 A6 */	mtlr r0
/* 80A1EB54  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1EB58  4E 80 00 20 */	blr 
