lbl_8082DB84:
/* 8082DB84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8082DB88  7C 08 02 A6 */	mflr r0
/* 8082DB8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8082DB90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8082DB94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8082DB98  7C 7E 1B 78 */	mr r30, r3
/* 8082DB9C  3C 60 80 83 */	lis r3, lit_3778@ha
/* 8082DBA0  3B E3 F2 08 */	addi r31, r3, lit_3778@l
/* 8082DBA4  3C 60 80 83 */	lis r3, s_BallSearch__FPvPv@ha
/* 8082DBA8  38 63 94 60 */	addi r3, r3, s_BallSearch__FPvPv@l
/* 8082DBAC  7F C4 F3 78 */	mr r4, r30
/* 8082DBB0  4B 7F 37 88 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8082DBB4  90 7E 06 64 */	stw r3, 0x664(r30)
/* 8082DBB8  7F C3 F3 78 */	mr r3, r30
/* 8082DBBC  4B FF C9 79 */	bl damage_check__8daE_ZH_cFv
/* 8082DBC0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082DBC4  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 8082DBC8  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 8082DBCC  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
/* 8082DBD0  38 60 00 00 */	li r3, 0
/* 8082DBD4  38 00 00 08 */	li r0, 8
/* 8082DBD8  7C 09 03 A6 */	mtctr r0
lbl_8082DBDC:
/* 8082DBDC  7C 9E 1A 14 */	add r4, r30, r3
/* 8082DBE0  D0 04 06 F8 */	stfs f0, 0x6f8(r4)
/* 8082DBE4  D0 04 06 FC */	stfs f0, 0x6fc(r4)
/* 8082DBE8  D0 04 07 00 */	stfs f0, 0x700(r4)
/* 8082DBEC  38 63 00 0C */	addi r3, r3, 0xc
/* 8082DBF0  42 00 FF EC */	bdnz lbl_8082DBDC
/* 8082DBF4  80 1E 07 9C */	lwz r0, 0x79c(r30)
/* 8082DBF8  2C 00 00 02 */	cmpwi r0, 2
/* 8082DBFC  40 82 00 0C */	bne lbl_8082DC08
/* 8082DC00  7F C3 F3 78 */	mr r3, r30
/* 8082DC04  4B FF BC B9 */	bl mGateOpen__8daE_ZH_cFv
lbl_8082DC08:
/* 8082DC08  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 8082DC0C  28 00 00 0B */	cmplwi r0, 0xb
/* 8082DC10  41 81 00 A8 */	bgt lbl_8082DCB8
/* 8082DC14  3C 60 80 83 */	lis r3, lit_5782@ha
/* 8082DC18  38 63 F5 DC */	addi r3, r3, lit_5782@l
/* 8082DC1C  54 00 10 3A */	slwi r0, r0, 2
/* 8082DC20  7C 03 00 2E */	lwzx r0, r3, r0
/* 8082DC24  7C 09 03 A6 */	mtctr r0
/* 8082DC28  4E 80 04 20 */	bctr 
lbl_8082DC2C:
/* 8082DC2C  7F C3 F3 78 */	mr r3, r30
/* 8082DC30  4B FF CC 5D */	bl executeStartDemo__8daE_ZH_cFv
/* 8082DC34  48 00 00 84 */	b lbl_8082DCB8
lbl_8082DC38:
/* 8082DC38  7F C3 F3 78 */	mr r3, r30
/* 8082DC3C  4B FF CF A1 */	bl executeWait__8daE_ZH_cFv
/* 8082DC40  48 00 00 78 */	b lbl_8082DCB8
lbl_8082DC44:
/* 8082DC44  7F C3 F3 78 */	mr r3, r30
/* 8082DC48  4B FF D0 61 */	bl executeBallWait__8daE_ZH_cFv
/* 8082DC4C  48 00 00 6C */	b lbl_8082DCB8
lbl_8082DC50:
/* 8082DC50  7F C3 F3 78 */	mr r3, r30
/* 8082DC54  4B FF D6 31 */	bl executeOpenStart__8daE_ZH_cFv
/* 8082DC58  48 00 00 60 */	b lbl_8082DCB8
lbl_8082DC5C:
/* 8082DC5C  7F C3 F3 78 */	mr r3, r30
/* 8082DC60  4B FF DB C1 */	bl executeSearchMove__8daE_ZH_cFv
/* 8082DC64  48 00 00 54 */	b lbl_8082DCB8
lbl_8082DC68:
/* 8082DC68  7F C3 F3 78 */	mr r3, r30
/* 8082DC6C  4B FF DD AD */	bl executeBgHitSHMove__8daE_ZH_cFv
/* 8082DC70  48 00 00 48 */	b lbl_8082DCB8
lbl_8082DC74:
/* 8082DC74  7F C3 F3 78 */	mr r3, r30
/* 8082DC78  4B FF E1 A9 */	bl executeCatchMove__8daE_ZH_cFv
/* 8082DC7C  48 00 00 3C */	b lbl_8082DCB8
lbl_8082DC80:
/* 8082DC80  7F C3 F3 78 */	mr r3, r30
/* 8082DC84  4B FF E9 ED */	bl executeCatchFlyMove__8daE_ZH_cFv
/* 8082DC88  48 00 00 30 */	b lbl_8082DCB8
lbl_8082DC8C:
/* 8082DC8C  7F C3 F3 78 */	mr r3, r30
/* 8082DC90  4B FF F4 C5 */	bl executeFlyDelete__8daE_ZH_cFv
/* 8082DC94  48 00 00 24 */	b lbl_8082DCB8
lbl_8082DC98:
/* 8082DC98  7F C3 F3 78 */	mr r3, r30
/* 8082DC9C  4B FF F0 99 */	bl executeReturnDemo__8daE_ZH_cFv
/* 8082DCA0  48 00 00 18 */	b lbl_8082DCB8
lbl_8082DCA4:
/* 8082DCA4  7F C3 F3 78 */	mr r3, r30
/* 8082DCA8  4B FF F6 49 */	bl executeDamage__8daE_ZH_cFv
/* 8082DCAC  48 00 00 0C */	b lbl_8082DCB8
lbl_8082DCB0:
/* 8082DCB0  7F C3 F3 78 */	mr r3, r30
/* 8082DCB4  4B FF FC C9 */	bl executeDeadStop__8daE_ZH_cFv
lbl_8082DCB8:
/* 8082DCB8  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 8082DCBC  2C 00 00 04 */	cmpwi r0, 4
/* 8082DCC0  41 82 00 2C */	beq lbl_8082DCEC
/* 8082DCC4  2C 00 00 06 */	cmpwi r0, 6
/* 8082DCC8  41 82 00 24 */	beq lbl_8082DCEC
/* 8082DCCC  2C 00 00 07 */	cmpwi r0, 7
/* 8082DCD0  41 82 00 1C */	beq lbl_8082DCEC
/* 8082DCD4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8082DCD8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8082DCDC  80 63 00 00 */	lwz r3, 0(r3)
/* 8082DCE0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8082DCE4  38 80 00 63 */	li r4, 0x63
/* 8082DCE8  4B A8 22 A4 */	b changeBgmStatus__8Z2SeqMgrFl
lbl_8082DCEC:
/* 8082DCEC  80 7E 07 90 */	lwz r3, 0x790(r30)
/* 8082DCF0  2C 03 00 0D */	cmpwi r3, 0xd
/* 8082DCF4  40 82 00 10 */	bne lbl_8082DD04
/* 8082DCF8  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 8082DCFC  2C 00 00 02 */	cmpwi r0, 2
/* 8082DD00  40 82 00 0C */	bne lbl_8082DD0C
lbl_8082DD04:
/* 8082DD04  2C 03 00 0A */	cmpwi r3, 0xa
/* 8082DD08  40 82 00 3C */	bne lbl_8082DD44
lbl_8082DD0C:
/* 8082DD0C  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 8082DD10  2C 00 00 0B */	cmpwi r0, 0xb
/* 8082DD14  41 82 00 30 */	beq lbl_8082DD44
/* 8082DD18  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070456@ha */
/* 8082DD1C  38 03 04 56 */	addi r0, r3, 0x0456 /* 0x00070456@l */
/* 8082DD20  90 01 00 0C */	stw r0, 0xc(r1)
/* 8082DD24  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082DD28  38 81 00 0C */	addi r4, r1, 0xc
/* 8082DD2C  38 A0 00 00 */	li r5, 0
/* 8082DD30  38 C0 FF FF */	li r6, -1
/* 8082DD34  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082DD38  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8082DD3C  7D 89 03 A6 */	mtctr r12
/* 8082DD40  4E 80 04 21 */	bctrl 
lbl_8082DD44:
/* 8082DD44  80 1E 07 90 */	lwz r0, 0x790(r30)
/* 8082DD48  2C 00 00 0C */	cmpwi r0, 0xc
/* 8082DD4C  40 82 00 30 */	bne lbl_8082DD7C
/* 8082DD50  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007045B@ha */
/* 8082DD54  38 03 04 5B */	addi r0, r3, 0x045B /* 0x0007045B@l */
/* 8082DD58  90 01 00 08 */	stw r0, 8(r1)
/* 8082DD5C  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8082DD60  38 81 00 08 */	addi r4, r1, 8
/* 8082DD64  38 A0 00 00 */	li r5, 0
/* 8082DD68  38 C0 FF FF */	li r6, -1
/* 8082DD6C  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 8082DD70  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8082DD74  7D 89 03 A6 */	mtctr r12
/* 8082DD78  4E 80 04 21 */	bctrl 
lbl_8082DD7C:
/* 8082DD7C  7F C3 F3 78 */	mr r3, r30
/* 8082DD80  38 9E 09 CC */	addi r4, r30, 0x9cc
/* 8082DD84  4B 7E C9 48 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8082DD88  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 8082DD8C  2C 00 00 02 */	cmpwi r0, 2
/* 8082DD90  41 82 00 70 */	beq lbl_8082DE00
/* 8082DD94  41 82 00 48 */	beq lbl_8082DDDC
/* 8082DD98  2C 00 00 09 */	cmpwi r0, 9
/* 8082DD9C  41 82 00 40 */	beq lbl_8082DDDC
/* 8082DDA0  2C 00 00 08 */	cmpwi r0, 8
/* 8082DDA4  41 82 00 38 */	beq lbl_8082DDDC
/* 8082DDA8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8082DDAC  D0 3E 08 BC */	stfs f1, 0x8bc(r30)
/* 8082DDB0  38 7E 07 B4 */	addi r3, r30, 0x7b4
/* 8082DDB4  C0 5F 01 80 */	lfs f2, 0x180(r31)
/* 8082DDB8  4B 84 81 A0 */	b SetWall__12dBgS_AcchCirFff
/* 8082DDBC  38 7E 07 F4 */	addi r3, r30, 0x7f4
/* 8082DDC0  C0 3E 07 60 */	lfs f1, 0x760(r30)
/* 8082DDC4  4B 84 93 50 */	b SetGroundUpY__9dBgS_AcchFf
/* 8082DDC8  38 7E 07 F4 */	addi r3, r30, 0x7f4
/* 8082DDCC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8082DDD0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8082DDD4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8082DDD8  4B 84 8C D4 */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_8082DDDC:
/* 8082DDDC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8082DDE0  4B 7D F6 48 */	b play__14mDoExt_baseAnmFv
/* 8082DDE4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8082DDE8  7C 03 07 74 */	extsb r3, r0
/* 8082DDEC  4B 7F F2 80 */	b dComIfGp_getReverb__Fi
/* 8082DDF0  7C 65 1B 78 */	mr r5, r3
/* 8082DDF4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082DDF8  38 80 00 00 */	li r4, 0
/* 8082DDFC  4B 7E 32 B4 */	b play__16mDoExt_McaMorfSOFUlSc
lbl_8082DE00:
/* 8082DE00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8082DE04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8082DE08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8082DE0C  7C 08 03 A6 */	mtlr r0
/* 8082DE10  38 21 00 20 */	addi r1, r1, 0x20
/* 8082DE14  4E 80 00 20 */	blr 
