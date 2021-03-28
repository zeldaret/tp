lbl_806DB548:
/* 806DB548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DB54C  7C 08 02 A6 */	mflr r0
/* 806DB550  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DB554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DB558  93 C1 00 08 */	stw r30, 8(r1)
/* 806DB55C  7C 7E 1B 78 */	mr r30, r3
/* 806DB560  3C 80 80 6E */	lis r4, lit_3763@ha
/* 806DB564  3B E4 EE 38 */	addi r31, r4, lit_3763@l
/* 806DB568  88 03 0D 90 */	lbz r0, 0xd90(r3)
/* 806DB56C  7C 00 07 75 */	extsb. r0, r0
/* 806DB570  41 82 00 60 */	beq lbl_806DB5D0
/* 806DB574  38 7E 0D 94 */	addi r3, r30, 0xd94
/* 806DB578  7F C4 F3 78 */	mr r4, r30
/* 806DB57C  38 A0 00 00 */	li r5, 0
/* 806DB580  38 C0 00 00 */	li r6, 0
/* 806DB584  4B B6 ED 54 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 806DB588  2C 03 00 00 */	cmpwi r3, 0
/* 806DB58C  41 82 00 1C */	beq lbl_806DB5A8
/* 806DB590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DB594  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DB598  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806DB59C  4B 96 6E CC */	b reset__14dEvt_control_cFv
/* 806DB5A0  38 00 00 00 */	li r0, 0
/* 806DB5A4  98 1E 0D 90 */	stb r0, 0xd90(r30)
lbl_806DB5A8:
/* 806DB5A8  80 1E 06 48 */	lwz r0, 0x648(r30)
/* 806DB5AC  2C 00 00 1F */	cmpwi r0, 0x1f
/* 806DB5B0  41 82 01 A0 */	beq lbl_806DB750
/* 806DB5B4  7F C3 F3 78 */	mr r3, r30
/* 806DB5B8  38 80 00 1F */	li r4, 0x1f
/* 806DB5BC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806DB5C0  38 A0 00 02 */	li r5, 2
/* 806DB5C4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DB5C8  4B FF CF B1 */	bl anm_init__FP11e_gob_classifUcf
/* 806DB5CC  48 00 01 84 */	b lbl_806DB750
lbl_806DB5D0:
/* 806DB5D0  C0 3E 06 6C */	lfs f1, 0x66c(r30)
/* 806DB5D4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806DB5D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DB5DC  40 80 01 0C */	bge lbl_806DB6E8
/* 806DB5E0  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 806DB5E4  60 00 00 0A */	ori r0, r0, 0xa
/* 806DB5E8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806DB5EC  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 806DB5F0  60 00 00 01 */	ori r0, r0, 1
/* 806DB5F4  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 806DB5F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DB5FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DB600  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 806DB604  28 00 00 00 */	cmplwi r0, 0
/* 806DB608  41 82 00 40 */	beq lbl_806DB648
/* 806DB60C  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 806DB610  28 00 00 01 */	cmplwi r0, 1
/* 806DB614  40 82 00 3C */	bne lbl_806DB650
/* 806DB618  88 1E 0D 90 */	lbz r0, 0xd90(r30)
/* 806DB61C  7C 00 07 75 */	extsb. r0, r0
/* 806DB620  40 82 00 30 */	bne lbl_806DB650
/* 806DB624  38 7E 0D 94 */	addi r3, r30, 0xd94
/* 806DB628  7F C4 F3 78 */	mr r4, r30
/* 806DB62C  38 A0 00 CB */	li r5, 0xcb
/* 806DB630  38 C0 00 00 */	li r6, 0
/* 806DB634  38 E0 00 00 */	li r7, 0
/* 806DB638  4B B6 E9 58 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 806DB63C  38 00 00 01 */	li r0, 1
/* 806DB640  98 1E 0D 90 */	stb r0, 0xd90(r30)
/* 806DB644  48 00 00 0C */	b lbl_806DB650
lbl_806DB648:
/* 806DB648  38 00 00 00 */	li r0, 0
/* 806DB64C  98 1E 0D 90 */	stb r0, 0xd90(r30)
lbl_806DB650:
/* 806DB650  A8 7E 06 6A */	lha r3, 0x66a(r30)
/* 806DB654  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806DB658  7C 03 00 50 */	subf r0, r3, r0
/* 806DB65C  7C 00 07 34 */	extsh r0, r0
/* 806DB660  2C 00 08 00 */	cmpwi r0, 0x800
/* 806DB664  41 81 00 0C */	bgt lbl_806DB670
/* 806DB668  2C 00 F8 00 */	cmpwi r0, -2048
/* 806DB66C  40 80 00 48 */	bge lbl_806DB6B4
lbl_806DB670:
/* 806DB670  80 1E 06 48 */	lwz r0, 0x648(r30)
/* 806DB674  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806DB678  41 82 00 24 */	beq lbl_806DB69C
/* 806DB67C  7F C3 F3 78 */	mr r3, r30
/* 806DB680  38 80 00 1E */	li r4, 0x1e
/* 806DB684  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806DB688  38 A0 00 02 */	li r5, 2
/* 806DB68C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DB690  4B FF CE E9 */	bl anm_init__FP11e_gob_classifUcf
/* 806DB694  38 00 00 0F */	li r0, 0xf
/* 806DB698  B0 1E 06 76 */	sth r0, 0x676(r30)
lbl_806DB69C:
/* 806DB69C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806DB6A0  A8 9E 06 6A */	lha r4, 0x66a(r30)
/* 806DB6A4  38 A0 00 02 */	li r5, 2
/* 806DB6A8  38 C0 02 00 */	li r6, 0x200
/* 806DB6AC  4B B9 4F 5C */	b cLib_addCalcAngleS2__FPssss
/* 806DB6B0  48 00 00 58 */	b lbl_806DB708
lbl_806DB6B4:
/* 806DB6B4  A8 1E 06 76 */	lha r0, 0x676(r30)
/* 806DB6B8  2C 00 00 00 */	cmpwi r0, 0
/* 806DB6BC  40 82 00 4C */	bne lbl_806DB708
/* 806DB6C0  80 1E 06 48 */	lwz r0, 0x648(r30)
/* 806DB6C4  2C 00 00 20 */	cmpwi r0, 0x20
/* 806DB6C8  41 82 00 40 */	beq lbl_806DB708
/* 806DB6CC  7F C3 F3 78 */	mr r3, r30
/* 806DB6D0  38 80 00 20 */	li r4, 0x20
/* 806DB6D4  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 806DB6D8  38 A0 00 02 */	li r5, 2
/* 806DB6DC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DB6E0  4B FF CE 99 */	bl anm_init__FP11e_gob_classifUcf
/* 806DB6E4  48 00 00 24 */	b lbl_806DB708
lbl_806DB6E8:
/* 806DB6E8  80 1E 06 48 */	lwz r0, 0x648(r30)
/* 806DB6EC  2C 00 00 20 */	cmpwi r0, 0x20
/* 806DB6F0  41 82 00 18 */	beq lbl_806DB708
/* 806DB6F4  38 80 00 20 */	li r4, 0x20
/* 806DB6F8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 806DB6FC  38 A0 00 02 */	li r5, 2
/* 806DB700  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DB704  4B FF CE 75 */	bl anm_init__FP11e_gob_classifUcf
lbl_806DB708:
/* 806DB708  A8 1E 06 7A */	lha r0, 0x67a(r30)
/* 806DB70C  2C 00 00 00 */	cmpwi r0, 0
/* 806DB710  41 82 00 40 */	beq lbl_806DB750
/* 806DB714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DB718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DB71C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 806DB720  28 00 00 00 */	cmplwi r0, 0
/* 806DB724  41 82 00 2C */	beq lbl_806DB750
/* 806DB728  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 806DB72C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806DB730  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DB734  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806DB738  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806DB73C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 806DB740  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806DB744  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806DB748  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806DB74C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
lbl_806DB750:
/* 806DB750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DB754  83 C1 00 08 */	lwz r30, 8(r1)
/* 806DB758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DB75C  7C 08 03 A6 */	mtlr r0
/* 806DB760  38 21 00 10 */	addi r1, r1, 0x10
/* 806DB764  4E 80 00 20 */	blr 
