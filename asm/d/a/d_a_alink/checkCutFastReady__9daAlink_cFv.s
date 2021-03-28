lbl_800D10E0:
/* 800D10E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D10E4  7C 08 02 A6 */	mflr r0
/* 800D10E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D10EC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800D10F0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800D10F4  7C 7F 1B 78 */	mr r31, r3
/* 800D10F8  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D10FC  28 00 00 E7 */	cmplwi r0, 0xe7
/* 800D1100  40 82 00 0C */	bne lbl_800D110C
/* 800D1104  38 60 00 01 */	li r3, 1
/* 800D1108  48 00 01 48 */	b lbl_800D1250
lbl_800D110C:
/* 800D110C  4B FE F4 89 */	bl checkNotBattleStage__9daAlink_cFv
/* 800D1110  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D1114  41 82 00 0C */	beq lbl_800D1120
/* 800D1118  38 60 00 00 */	li r3, 0
/* 800D111C  48 00 01 34 */	b lbl_800D1250
lbl_800D1120:
/* 800D1120  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800D1124  38 80 00 00 */	li r4, 0
/* 800D1128  4B FA 24 15 */	bl LockonTarget__12dAttention_cFl
/* 800D112C  7C 7E 1B 78 */	mr r30, r3
/* 800D1130  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800D1134  28 00 00 FF */	cmplwi r0, 0xff
/* 800D1138  40 82 01 14 */	bne lbl_800D124C
/* 800D113C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D1140  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D1144  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800D1148  38 80 2A 80 */	li r4, 0x2a80
/* 800D114C  4B F6 38 71 */	bl isEventBit__11dSv_event_cCFUs
/* 800D1150  2C 03 00 00 */	cmpwi r3, 0
/* 800D1154  40 82 00 10 */	bne lbl_800D1164
/* 800D1158  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800D115C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800D1160  41 82 00 EC */	beq lbl_800D124C
lbl_800D1164:
/* 800D1164  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800D1168  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 800D116C  41 82 00 E0 */	beq lbl_800D124C
/* 800D1170  88 1F 2F AA */	lbz r0, 0x2faa(r31)
/* 800D1174  28 00 00 00 */	cmplwi r0, 0
/* 800D1178  40 82 00 D4 */	bne lbl_800D124C
/* 800D117C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D1180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D1184  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800D1188  28 00 00 FF */	cmplwi r0, 0xff
/* 800D118C  41 82 00 C0 */	beq lbl_800D124C
/* 800D1190  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 800D1194  41 82 00 B8 */	beq lbl_800D124C
/* 800D1198  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 800D119C  40 82 00 B0 */	bne lbl_800D124C
/* 800D11A0  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800D11A4  28 00 00 00 */	cmplwi r0, 0
/* 800D11A8  40 82 00 A4 */	bne lbl_800D124C
/* 800D11AC  7F C3 F3 78 */	mr r3, r30
/* 800D11B0  48 00 B3 99 */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800D11B4  2C 03 00 00 */	cmpwi r3, 0
/* 800D11B8  41 82 00 94 */	beq lbl_800D124C
/* 800D11BC  C0 5E 05 40 */	lfs f2, 0x540(r30)
/* 800D11C0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 800D11C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 800D11C8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D11CC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800D11D0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800D11D4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800D11D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800D11DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800D11E0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800D11E4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800D11E8  38 61 00 08 */	addi r3, r1, 8
/* 800D11EC  38 81 00 14 */	addi r4, r1, 0x14
/* 800D11F0  48 27 61 AD */	bl PSVECSquareDistance
/* 800D11F4  C0 5E 05 3C */	lfs f2, 0x53c(r30)
/* 800D11F8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800D11FC  EC 02 00 28 */	fsubs f0, f2, f0
/* 800D1200  FC 00 02 10 */	fabs f0, f0
/* 800D1204  FC 40 00 18 */	frsp f2, f0
/* 800D1208  C0 02 92 D4 */	lfs f0, lit_6398(r2)
/* 800D120C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D1210  40 80 00 10 */	bge lbl_800D1220
/* 800D1214  C0 02 92 D0 */	lfs f0, lit_6238(r2)
/* 800D1218  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800D121C  41 80 00 28 */	blt lbl_800D1244
lbl_800D1220:
/* 800D1220  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800D1224  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800D1228  41 82 00 24 */	beq lbl_800D124C
/* 800D122C  C0 02 92 D8 */	lfs f0, lit_6399(r2)
/* 800D1230  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D1234  40 80 00 18 */	bge lbl_800D124C
/* 800D1238  C0 02 92 DC */	lfs f0, lit_6400(r2)
/* 800D123C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800D1240  40 80 00 0C */	bge lbl_800D124C
lbl_800D1244:
/* 800D1244  38 60 00 01 */	li r3, 1
/* 800D1248  48 00 00 08 */	b lbl_800D1250
lbl_800D124C:
/* 800D124C  38 60 00 00 */	li r3, 0
lbl_800D1250:
/* 800D1250  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800D1254  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800D1258  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D125C  7C 08 03 A6 */	mtlr r0
/* 800D1260  38 21 00 30 */	addi r1, r1, 0x30
/* 800D1264  4E 80 00 20 */	blr 
