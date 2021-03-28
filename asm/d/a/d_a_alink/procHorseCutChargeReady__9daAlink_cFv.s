lbl_800F194C:
/* 800F194C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F1950  7C 08 02 A6 */	mflr r0
/* 800F1954  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F1958  39 61 00 20 */	addi r11, r1, 0x20
/* 800F195C  48 27 08 81 */	bl _savegpr_29
/* 800F1960  7C 7E 1B 78 */	mr r30, r3
/* 800F1964  3B BE 20 48 */	addi r29, r30, 0x2048
/* 800F1968  38 80 00 01 */	li r4, 1
/* 800F196C  4B FF CF AD */	bl setSyncRide__9daAlink_cFi
/* 800F1970  2C 03 00 00 */	cmpwi r3, 0
/* 800F1974  40 82 00 0C */	bne lbl_800F1980
/* 800F1978  38 60 00 01 */	li r3, 1
/* 800F197C  48 00 01 18 */	b lbl_800F1A94
lbl_800F1980:
/* 800F1980  7F C3 F3 78 */	mr r3, r30
/* 800F1984  4B FE 09 39 */	bl setSwordChargeVoiceSe__9daAlink_cFv
/* 800F1988  3B E0 00 00 */	li r31, 0
/* 800F198C  7F A3 EB 78 */	mr r3, r29
/* 800F1990  48 06 CB 3D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F1994  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F1998  41 82 00 B0 */	beq lbl_800F1A48
/* 800F199C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F19A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F19A4  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800F19A8  28 00 00 3F */	cmplwi r0, 0x3f
/* 800F19AC  41 82 00 10 */	beq lbl_800F19BC
/* 800F19B0  80 7E 06 C4 */	lwz r3, 0x6c4(r30)
/* 800F19B4  4B FB 78 95 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800F19B8  48 00 00 48 */	b lbl_800F1A00
lbl_800F19BC:
/* 800F19BC  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 800F19C0  38 03 00 01 */	addi r0, r3, 1
/* 800F19C4  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800F19C8  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 800F19CC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F19D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F19D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800F19D8  3C 00 43 30 */	lis r0, 0x4330
/* 800F19DC  90 01 00 08 */	stw r0, 8(r1)
/* 800F19E0  C8 01 00 08 */	lfd f0, 8(r1)
/* 800F19E4  EC 20 08 28 */	fsubs f1, f0, f1
/* 800F19E8  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 800F19EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F19F0  4C 41 13 82 */	cror 2, 1, 2
/* 800F19F4  40 82 00 0C */	bne lbl_800F1A00
/* 800F19F8  38 00 00 64 */	li r0, 0x64
/* 800F19FC  B0 1E 30 08 */	sth r0, 0x3008(r30)
lbl_800F1A00:
/* 800F1A00  80 7E 06 C4 */	lwz r3, 0x6c4(r30)
/* 800F1A04  C0 03 00 08 */	lfs f0, 8(r3)
/* 800F1A08  C0 42 93 48 */	lfs f2, lit_8130(r2)
/* 800F1A0C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800F1A10  4C 41 13 82 */	cror 2, 1, 2
/* 800F1A14  41 82 00 30 */	beq lbl_800F1A44
/* 800F1A18  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 800F1A1C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F1A20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F1A24  90 01 00 0C */	stw r0, 0xc(r1)
/* 800F1A28  3C 00 43 30 */	lis r0, 0x4330
/* 800F1A2C  90 01 00 08 */	stw r0, 8(r1)
/* 800F1A30  C8 01 00 08 */	lfd f0, 8(r1)
/* 800F1A34  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F1A38  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800F1A3C  4C 41 13 82 */	cror 2, 1, 2
/* 800F1A40  40 82 00 08 */	bne lbl_800F1A48
lbl_800F1A44:
/* 800F1A44  3B E0 00 01 */	li r31, 1
lbl_800F1A48:
/* 800F1A48  7F C3 F3 78 */	mr r3, r30
/* 800F1A4C  38 80 00 08 */	li r4, 8
/* 800F1A50  4B FC 0B 99 */	bl itemButtonCheck__9daAlink_cFUc
/* 800F1A54  2C 03 00 00 */	cmpwi r3, 0
/* 800F1A58  40 82 00 38 */	bne lbl_800F1A90
/* 800F1A5C  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800F1A60  2C 00 00 00 */	cmpwi r0, 0
/* 800F1A64  41 82 00 10 */	beq lbl_800F1A74
/* 800F1A68  7F C3 F3 78 */	mr r3, r30
/* 800F1A6C  4B FE 09 55 */	bl checkCutAction__9daAlink_cFv
/* 800F1A70  48 00 00 20 */	b lbl_800F1A90
lbl_800F1A74:
/* 800F1A74  2C 1F 00 00 */	cmpwi r31, 0
/* 800F1A78  41 82 00 10 */	beq lbl_800F1A88
/* 800F1A7C  7F C3 F3 78 */	mr r3, r30
/* 800F1A80  48 00 00 2D */	bl procHorseCutTurnInit__9daAlink_cFv
/* 800F1A84  48 00 00 0C */	b lbl_800F1A90
lbl_800F1A88:
/* 800F1A88  7F C3 F3 78 */	mr r3, r30
/* 800F1A8C  4B FE 09 35 */	bl checkCutAction__9daAlink_cFv
lbl_800F1A90:
/* 800F1A90  38 60 00 01 */	li r3, 1
lbl_800F1A94:
/* 800F1A94  39 61 00 20 */	addi r11, r1, 0x20
/* 800F1A98  48 27 07 91 */	bl _restgpr_29
/* 800F1A9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F1AA0  7C 08 03 A6 */	mtlr r0
/* 800F1AA4  38 21 00 20 */	addi r1, r1, 0x20
/* 800F1AA8  4E 80 00 20 */	blr 
