lbl_8074CCCC:
/* 8074CCCC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8074CCD0  7C 08 02 A6 */	mflr r0
/* 8074CCD4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8074CCD8  39 61 00 80 */	addi r11, r1, 0x80
/* 8074CCDC  4B C1 54 F9 */	bl _savegpr_27
/* 8074CCE0  7C 7D 1B 78 */	mr r29, r3
/* 8074CCE4  3C 80 80 75 */	lis r4, lit_3917@ha /* 0x807576FC@ha */
/* 8074CCE8  3B E4 76 FC */	addi r31, r4, lit_3917@l /* 0x807576FC@l */
/* 8074CCEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074CCF0  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074CCF4  88 1B 5D B0 */	lbz r0, 0x5db0(r27)
/* 8074CCF8  7C 00 07 74 */	extsb r0, r0
/* 8074CCFC  38 9B 5D 74 */	addi r4, r27, 0x5d74
/* 8074CD00  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8074CD04  7F C4 00 2E */	lwzx r30, r4, r0
/* 8074CD08  83 9B 5D 74 */	lwz r28, 0x5d74(r27)
/* 8074CD0C  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 8074CD10  2C 00 00 02 */	cmpwi r0, 2
/* 8074CD14  41 82 02 58 */	beq lbl_8074CF6C
/* 8074CD18  40 80 00 14 */	bge lbl_8074CD2C
/* 8074CD1C  2C 00 00 00 */	cmpwi r0, 0
/* 8074CD20  41 82 00 18 */	beq lbl_8074CD38
/* 8074CD24  40 80 01 84 */	bge lbl_8074CEA8
/* 8074CD28  48 00 03 4C */	b lbl_8074D074
lbl_8074CD2C:
/* 8074CD2C  2C 00 00 04 */	cmpwi r0, 4
/* 8074CD30  40 80 03 44 */	bge lbl_8074D074
/* 8074CD34  48 00 02 B0 */	b lbl_8074CFE4
lbl_8074CD38:
/* 8074CD38  88 1D 05 C0 */	lbz r0, 0x5c0(r29)
/* 8074CD3C  28 00 00 00 */	cmplwi r0, 0
/* 8074CD40  40 82 00 58 */	bne lbl_8074CD98
/* 8074CD44  4B A1 26 E1 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 8074CD48  2C 03 00 00 */	cmpwi r3, 0
/* 8074CD4C  41 82 03 28 */	beq lbl_8074D074
/* 8074CD50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074CD54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074CD58  3B 63 56 B8 */	addi r27, r3, 0x56b8
/* 8074CD5C  7F 63 DB 78 */	mr r3, r27
/* 8074CD60  38 80 00 00 */	li r4, 0
/* 8074CD64  4B 92 3A E1 */	bl GetLockonList__12dAttention_cFl
/* 8074CD68  28 03 00 00 */	cmplwi r3, 0
/* 8074CD6C  41 82 03 08 */	beq lbl_8074D074
/* 8074CD70  7F 63 DB 78 */	mr r3, r27
/* 8074CD74  4B 92 6A 71 */	bl LockonTruth__12dAttention_cFv
/* 8074CD78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8074CD7C  41 82 02 F8 */	beq lbl_8074D074
/* 8074CD80  7F 63 DB 78 */	mr r3, r27
/* 8074CD84  38 80 00 00 */	li r4, 0
/* 8074CD88  4B 92 3A BD */	bl GetLockonList__12dAttention_cFl
/* 8074CD8C  4B 92 6A D9 */	bl getActor__10dAttList_cFv
/* 8074CD90  7C 03 E8 40 */	cmplw r3, r29
/* 8074CD94  40 82 02 E0 */	bne lbl_8074D074
lbl_8074CD98:
/* 8074CD98  38 00 00 01 */	li r0, 1
/* 8074CD9C  98 1D 05 C0 */	stb r0, 0x5c0(r29)
/* 8074CDA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CC@ha */
/* 8074CDA4  38 03 00 CC */	addi r0, r3, 0x00CC /* 0x000700CC@l */
/* 8074CDA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074CDAC  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 8074CDB0  38 81 00 0C */	addi r4, r1, 0xc
/* 8074CDB4  38 A0 FF FF */	li r5, -1
/* 8074CDB8  81 9D 05 F8 */	lwz r12, 0x5f8(r29)
/* 8074CDBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074CDC0  7D 89 03 A6 */	mtctr r12
/* 8074CDC4  4E 80 04 21 */	bctrl 
/* 8074CDC8  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8074CDCC  28 00 00 02 */	cmplwi r0, 2
/* 8074CDD0  41 82 00 88 */	beq lbl_8074CE58
/* 8074CDD4  7F A3 EB 78 */	mr r3, r29
/* 8074CDD8  38 80 00 02 */	li r4, 2
/* 8074CDDC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8074CDE0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8074CDE4  38 C0 00 00 */	li r6, 0
/* 8074CDE8  4B 8C EB 21 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8074CDEC  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8074CDF0  60 00 00 02 */	ori r0, r0, 2
/* 8074CDF4  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 8074CDF8  C0 1C 00 D8 */	lfs f0, 0xd8(r28)
/* 8074CDFC  D0 1D 08 38 */	stfs f0, 0x838(r29)
/* 8074CE00  C0 1C 00 DC */	lfs f0, 0xdc(r28)
/* 8074CE04  D0 1D 08 3C */	stfs f0, 0x83c(r29)
/* 8074CE08  C0 1C 00 E0 */	lfs f0, 0xe0(r28)
/* 8074CE0C  D0 1D 08 40 */	stfs f0, 0x840(r29)
/* 8074CE10  C0 1C 00 E4 */	lfs f0, 0xe4(r28)
/* 8074CE14  D0 1D 08 44 */	stfs f0, 0x844(r29)
/* 8074CE18  C0 1C 00 E8 */	lfs f0, 0xe8(r28)
/* 8074CE1C  D0 1D 08 48 */	stfs f0, 0x848(r29)
/* 8074CE20  C0 1C 00 EC */	lfs f0, 0xec(r28)
/* 8074CE24  D0 1D 08 4C */	stfs f0, 0x84c(r29)
/* 8074CE28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074CE2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074CE30  38 63 09 78 */	addi r3, r3, 0x978
/* 8074CE34  38 80 00 23 */	li r4, 0x23
/* 8074CE38  4B 8E 7D 61 */	bl onSwitch__12dSv_danBit_cFi
/* 8074CE3C  7F A3 EB 78 */	mr r3, r29
/* 8074CE40  38 80 00 13 */	li r4, 0x13
/* 8074CE44  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8074CE48  38 A0 00 02 */	li r5, 2
/* 8074CE4C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074CE50  4B FF F8 11 */	bl anm_init__FP10e_po_classifUcf
/* 8074CE54  48 00 03 00 */	b lbl_8074D154
lbl_8074CE58:
/* 8074CE58  38 7E 02 48 */	addi r3, r30, 0x248
/* 8074CE5C  4B A1 46 75 */	bl Stop__9dCamera_cFv
/* 8074CE60  38 7E 02 48 */	addi r3, r30, 0x248
/* 8074CE64  38 80 00 03 */	li r4, 3
/* 8074CE68  4B A1 61 A5 */	bl SetTrimSize__9dCamera_cFl
/* 8074CE6C  7F A3 EB 78 */	mr r3, r29
/* 8074CE70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074CE74  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074CE78  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8074CE7C  4B 8C D8 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074CE80  3C 63 00 01 */	addis r3, r3, 1
/* 8074CE84  38 03 80 00 */	addi r0, r3, -32768
/* 8074CE88  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8074CE8C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8074CE90  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8074CE94  38 00 00 0A */	li r0, 0xa
/* 8074CE98  B0 1D 07 4A */	sth r0, 0x74a(r29)
/* 8074CE9C  38 00 00 01 */	li r0, 1
/* 8074CEA0  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074CEA4  48 00 01 D0 */	b lbl_8074D074
lbl_8074CEA8:
/* 8074CEA8  A8 9D 07 4A */	lha r4, 0x74a(r29)
/* 8074CEAC  7C 80 07 35 */	extsh. r0, r4
/* 8074CEB0  41 82 00 28 */	beq lbl_8074CED8
/* 8074CEB4  2C 04 00 01 */	cmpwi r4, 1
/* 8074CEB8  40 82 02 9C */	bne lbl_8074D154
/* 8074CEBC  4B A3 47 85 */	bl dCam_getBody__Fv
/* 8074CEC0  38 80 00 14 */	li r4, 0x14
/* 8074CEC4  7F A5 EB 78 */	mr r5, r29
/* 8074CEC8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8074CECC  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8074CED0  4B A3 42 A1 */	bl StartBlure__9dCamera_cFiP10fopAc_ac_cff
/* 8074CED4  48 00 02 80 */	b lbl_8074D154
lbl_8074CED8:
/* 8074CED8  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 8074CEDC  4B 8C D8 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074CEE0  7C 64 1B 78 */	mr r4, r3
/* 8074CEE4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8074CEE8  38 A0 00 08 */	li r5, 8
/* 8074CEEC  38 C0 20 00 */	li r6, 0x2000
/* 8074CEF0  4B B2 37 19 */	bl cLib_addCalcAngleS2__FPssss
/* 8074CEF4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8074CEF8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8074CEFC  7F A3 EB 78 */	mr r3, r29
/* 8074CF00  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 8074CF04  4B 8C D8 0D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074CF08  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8074CF0C  7C 03 00 50 */	subf r0, r3, r0
/* 8074CF10  7C 03 07 34 */	extsh r3, r0
/* 8074CF14  4B C1 81 BD */	bl abs
/* 8074CF18  2C 03 01 00 */	cmpwi r3, 0x100
/* 8074CF1C  41 81 01 58 */	bgt lbl_8074D074
/* 8074CF20  7F A3 EB 78 */	mr r3, r29
/* 8074CF24  38 80 00 06 */	li r4, 6
/* 8074CF28  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8074CF2C  38 A0 00 00 */	li r5, 0
/* 8074CF30  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074CF34  4B FF F7 2D */	bl anm_init__FP10e_po_classifUcf
/* 8074CF38  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070521@ha */
/* 8074CF3C  38 03 05 21 */	addi r0, r3, 0x0521 /* 0x00070521@l */
/* 8074CF40  90 01 00 08 */	stw r0, 8(r1)
/* 8074CF44  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 8074CF48  38 81 00 08 */	addi r4, r1, 8
/* 8074CF4C  38 A0 FF FF */	li r5, -1
/* 8074CF50  81 9D 05 F8 */	lwz r12, 0x5f8(r29)
/* 8074CF54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074CF58  7D 89 03 A6 */	mtctr r12
/* 8074CF5C  4E 80 04 21 */	bctrl 
/* 8074CF60  38 00 00 02 */	li r0, 2
/* 8074CF64  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074CF68  48 00 01 0C */	b lbl_8074D074
lbl_8074CF6C:
/* 8074CF6C  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8074CF70  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8074CF74  FC 00 00 1E */	fctiwz f0, f0
/* 8074CF78  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8074CF7C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8074CF80  2C 00 00 41 */	cmpwi r0, 0x41
/* 8074CF84  40 82 00 1C */	bne lbl_8074CFA0
/* 8074CF88  4B A3 46 B9 */	bl dCam_getBody__Fv
/* 8074CF8C  38 80 00 32 */	li r4, 0x32
/* 8074CF90  7F A5 EB 78 */	mr r5, r29
/* 8074CF94  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8074CF98  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8074CF9C  4B A3 41 D5 */	bl StartBlure__9dCamera_cFiP10fopAc_ac_cff
lbl_8074CFA0:
/* 8074CFA0  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8074CFA4  38 80 00 01 */	li r4, 1
/* 8074CFA8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074CFAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074CFB0  40 82 00 18 */	bne lbl_8074CFC8
/* 8074CFB4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8074CFB8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074CFBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074CFC0  41 82 00 08 */	beq lbl_8074CFC8
/* 8074CFC4  38 80 00 00 */	li r4, 0
lbl_8074CFC8:
/* 8074CFC8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074CFCC  41 82 00 A8 */	beq lbl_8074D074
/* 8074CFD0  38 00 00 02 */	li r0, 2
/* 8074CFD4  B0 1D 07 4A */	sth r0, 0x74a(r29)
/* 8074CFD8  38 00 00 03 */	li r0, 3
/* 8074CFDC  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074CFE0  48 00 00 94 */	b lbl_8074D074
lbl_8074CFE4:
/* 8074CFE4  A8 1D 07 4A */	lha r0, 0x74a(r29)
/* 8074CFE8  2C 00 00 00 */	cmpwi r0, 0
/* 8074CFEC  40 82 01 68 */	bne lbl_8074D154
/* 8074CFF0  38 7E 02 48 */	addi r3, r30, 0x248
/* 8074CFF4  4B A1 44 B9 */	bl Start__9dCamera_cFv
/* 8074CFF8  38 7E 02 48 */	addi r3, r30, 0x248
/* 8074CFFC  38 80 00 00 */	li r4, 0
/* 8074D000  4B A1 60 0D */	bl SetTrimSize__9dCamera_cFl
/* 8074D004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074D008  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074D00C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8074D010  4B 8F 54 59 */	bl reset__14dEvt_control_cFv
/* 8074D014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074D018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074D01C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8074D020  38 00 00 02 */	li r0, 2
/* 8074D024  B0 03 06 04 */	sth r0, 0x604(r3)
/* 8074D028  38 00 00 01 */	li r0, 1
/* 8074D02C  90 03 06 14 */	stw r0, 0x614(r3)
/* 8074D030  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8074D034  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8074D038  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8074D03C  38 00 00 00 */	li r0, 0
/* 8074D040  98 1D 05 C1 */	stb r0, 0x5c1(r29)
/* 8074D044  7F A3 EB 78 */	mr r3, r29
/* 8074D048  38 80 00 13 */	li r4, 0x13
/* 8074D04C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8074D050  38 A0 00 02 */	li r5, 2
/* 8074D054  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074D058  4B FF F6 09 */	bl anm_init__FP10e_po_classifUcf
/* 8074D05C  38 00 00 02 */	li r0, 2
/* 8074D060  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 8074D064  38 00 00 03 */	li r0, 3
/* 8074D068  B0 1D 07 42 */	sth r0, 0x742(r29)
/* 8074D06C  38 00 00 01 */	li r0, 1
/* 8074D070  98 1D 07 57 */	stb r0, 0x757(r29)
lbl_8074D074:
/* 8074D074  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 8074D078  2C 00 00 00 */	cmpwi r0, 0
/* 8074D07C  41 82 00 D8 */	beq lbl_8074D154
/* 8074D080  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8074D084  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8074D088  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8074D08C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8074D090  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8074D094  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8074D098  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8074D09C  EC 01 00 2A */	fadds f0, f1, f0
/* 8074D0A0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8074D0A4  7F A3 EB 78 */	mr r3, r29
/* 8074D0A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074D0AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074D0B0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8074D0B4  4B 8C D6 5D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074D0B8  7C 64 1B 78 */	mr r4, r3
/* 8074D0BC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8074D0C0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8074D0C4  80 63 00 00 */	lwz r3, 0(r3)
/* 8074D0C8  4B 8B F3 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 8074D0CC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8074D0D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8074D0D4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8074D0D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8074D0DC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8074D0E0  38 61 00 34 */	addi r3, r1, 0x34
/* 8074D0E4  38 81 00 28 */	addi r4, r1, 0x28
/* 8074D0E8  4B B2 3E 05 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8074D0EC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8074D0F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8074D0F4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8074D0F8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8074D0FC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8074D100  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8074D104  38 61 00 4C */	addi r3, r1, 0x4c
/* 8074D108  38 81 00 28 */	addi r4, r1, 0x28
/* 8074D10C  7C 65 1B 78 */	mr r5, r3
/* 8074D110  4B BF 9F 81 */	bl PSVECAdd
/* 8074D114  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8074D118  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8074D11C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8074D120  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8074D124  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8074D128  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8074D12C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8074D130  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8074D134  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8074D138  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8074D13C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8074D140  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8074D144  38 7E 02 48 */	addi r3, r30, 0x248
/* 8074D148  38 81 00 1C */	addi r4, r1, 0x1c
/* 8074D14C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8074D150  4B A3 39 59 */	bl Set__9dCamera_cF4cXyz4cXyz
lbl_8074D154:
/* 8074D154  39 61 00 80 */	addi r11, r1, 0x80
/* 8074D158  4B C1 50 C9 */	bl _restgpr_27
/* 8074D15C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8074D160  7C 08 03 A6 */	mtlr r0
/* 8074D164  38 21 00 80 */	addi r1, r1, 0x80
/* 8074D168  4E 80 00 20 */	blr 
