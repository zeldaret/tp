lbl_800BDF60:
/* 800BDF60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800BDF64  7C 08 02 A6 */	mflr r0
/* 800BDF68  90 01 00 34 */	stw r0, 0x34(r1)
/* 800BDF6C  39 61 00 30 */	addi r11, r1, 0x30
/* 800BDF70  48 2A 42 69 */	bl _savegpr_28
/* 800BDF74  7C 7C 1B 78 */	mr r28, r3
/* 800BDF78  90 81 00 08 */	stw r4, 8(r1)
/* 800BDF7C  7C BD 2B 78 */	mr r29, r5
/* 800BDF80  7C DE 33 78 */	mr r30, r6
/* 800BDF84  7C FF 3B 78 */	mr r31, r7
/* 800BDF88  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800BDF8C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800BDF90  40 82 02 C0 */	bne lbl_800BE250
/* 800BDF94  2C 1F 00 00 */	cmpwi r31, 0
/* 800BDF98  40 82 00 2C */	bne lbl_800BDFC4
/* 800BDF9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BDFA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BDFA4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800BDFA8  7F 84 E3 78 */	mr r4, r28
/* 800BDFAC  38 A0 00 00 */	li r5, 0
/* 800BDFB0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800BDFB4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800BDFB8  4B F8 51 B5 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800BDFBC  2C 03 00 00 */	cmpwi r3, 0
/* 800BDFC0  41 82 02 90 */	beq lbl_800BE250
lbl_800BDFC4:
/* 800BDFC4  7F 83 E3 78 */	mr r3, r28
/* 800BDFC8  7F C4 F3 78 */	mr r4, r30
/* 800BDFCC  80 01 00 08 */	lwz r0, 8(r1)
/* 800BDFD0  20 00 00 04 */	subfic r0, r0, 4
/* 800BDFD4  7C 00 00 34 */	cntlzw r0, r0
/* 800BDFD8  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 800BDFDC  48 05 AB 59 */	bl checkRestartDead__9daAlink_cFii
/* 800BDFE0  2C 03 00 00 */	cmpwi r3, 0
/* 800BDFE4  40 82 02 64 */	bne lbl_800BE248
/* 800BDFE8  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800BDFEC  60 00 40 00 */	ori r0, r0, 0x4000
/* 800BDFF0  90 1C 05 70 */	stw r0, 0x570(r28)
/* 800BDFF4  2C 1F 00 00 */	cmpwi r31, 0
/* 800BDFF8  40 82 00 14 */	bne lbl_800BE00C
/* 800BDFFC  38 00 00 03 */	li r0, 3
/* 800BE000  B0 1C 06 04 */	sth r0, 0x604(r28)
/* 800BE004  38 00 00 01 */	li r0, 1
/* 800BE008  90 1C 06 14 */	stw r0, 0x614(r28)
lbl_800BE00C:
/* 800BE00C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 800BE010  54 00 A6 FE */	rlwinm r0, r0, 0x14, 0x1b, 0x1f
/* 800BE014  7C 1F 03 78 */	mr r31, r0
/* 800BE018  2C 00 00 0D */	cmpwi r0, 0xd
/* 800BE01C  41 82 00 14 */	beq lbl_800BE030
/* 800BE020  2C 00 00 02 */	cmpwi r0, 2
/* 800BE024  41 82 00 0C */	beq lbl_800BE030
/* 800BE028  2C 00 00 0E */	cmpwi r0, 0xe
/* 800BE02C  40 82 01 14 */	bne lbl_800BE140
lbl_800BE030:
/* 800BE030  48 05 AA A1 */	bl checkFinalBattle__9daAlink_cFv
/* 800BE034  2C 03 00 00 */	cmpwi r3, 0
/* 800BE038  40 82 01 08 */	bne lbl_800BE140
/* 800BE03C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BE040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BE044  38 83 0D BC */	addi r4, r3, 0xdbc
/* 800BE048  38 7C 37 80 */	addi r3, r28, 0x3780
/* 800BE04C  48 28 93 51 */	bl PSVECSquareDistance
/* 800BE050  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BE054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BE058  40 81 00 58 */	ble lbl_800BE0B0
/* 800BE05C  FC 00 08 34 */	frsqrte f0, f1
/* 800BE060  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800BE064  FC 44 00 32 */	fmul f2, f4, f0
/* 800BE068  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800BE06C  FC 00 00 32 */	fmul f0, f0, f0
/* 800BE070  FC 01 00 32 */	fmul f0, f1, f0
/* 800BE074  FC 03 00 28 */	fsub f0, f3, f0
/* 800BE078  FC 02 00 32 */	fmul f0, f2, f0
/* 800BE07C  FC 44 00 32 */	fmul f2, f4, f0
/* 800BE080  FC 00 00 32 */	fmul f0, f0, f0
/* 800BE084  FC 01 00 32 */	fmul f0, f1, f0
/* 800BE088  FC 03 00 28 */	fsub f0, f3, f0
/* 800BE08C  FC 02 00 32 */	fmul f0, f2, f0
/* 800BE090  FC 44 00 32 */	fmul f2, f4, f0
/* 800BE094  FC 00 00 32 */	fmul f0, f0, f0
/* 800BE098  FC 01 00 32 */	fmul f0, f1, f0
/* 800BE09C  FC 03 00 28 */	fsub f0, f3, f0
/* 800BE0A0  FC 02 00 32 */	fmul f0, f2, f0
/* 800BE0A4  FC 21 00 32 */	fmul f1, f1, f0
/* 800BE0A8  FC 20 08 18 */	frsp f1, f1
/* 800BE0AC  48 00 00 88 */	b lbl_800BE134
lbl_800BE0B0:
/* 800BE0B0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800BE0B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BE0B8  40 80 00 10 */	bge lbl_800BE0C8
/* 800BE0BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BE0C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800BE0C4  48 00 00 70 */	b lbl_800BE134
lbl_800BE0C8:
/* 800BE0C8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800BE0CC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800BE0D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800BE0D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 800BE0D8  7C 03 00 00 */	cmpw r3, r0
/* 800BE0DC  41 82 00 14 */	beq lbl_800BE0F0
/* 800BE0E0  40 80 00 40 */	bge lbl_800BE120
/* 800BE0E4  2C 03 00 00 */	cmpwi r3, 0
/* 800BE0E8  41 82 00 20 */	beq lbl_800BE108
/* 800BE0EC  48 00 00 34 */	b lbl_800BE120
lbl_800BE0F0:
/* 800BE0F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BE0F4  41 82 00 0C */	beq lbl_800BE100
/* 800BE0F8  38 00 00 01 */	li r0, 1
/* 800BE0FC  48 00 00 28 */	b lbl_800BE124
lbl_800BE100:
/* 800BE100  38 00 00 02 */	li r0, 2
/* 800BE104  48 00 00 20 */	b lbl_800BE124
lbl_800BE108:
/* 800BE108  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BE10C  41 82 00 0C */	beq lbl_800BE118
/* 800BE110  38 00 00 05 */	li r0, 5
/* 800BE114  48 00 00 10 */	b lbl_800BE124
lbl_800BE118:
/* 800BE118  38 00 00 03 */	li r0, 3
/* 800BE11C  48 00 00 08 */	b lbl_800BE124
lbl_800BE120:
/* 800BE120  38 00 00 04 */	li r0, 4
lbl_800BE124:
/* 800BE124  2C 00 00 01 */	cmpwi r0, 1
/* 800BE128  40 82 00 0C */	bne lbl_800BE134
/* 800BE12C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800BE130  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800BE134:
/* 800BE134  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800BE138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BE13C  40 81 00 08 */	ble lbl_800BE144
lbl_800BE140:
/* 800BE140  3B E0 00 00 */	li r31, 0
lbl_800BE144:
/* 800BE144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BE148  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BE14C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800BE150  38 80 20 08 */	li r4, 0x2008
/* 800BE154  4B F7 68 69 */	bl isEventBit__11dSv_event_cCFUs
/* 800BE158  2C 03 00 00 */	cmpwi r3, 0
/* 800BE15C  40 82 00 3C */	bne lbl_800BE198
/* 800BE160  7F 83 E3 78 */	mr r3, r28
/* 800BE164  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800BE168  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800BE16C  7D 89 03 A6 */	mtctr r12
/* 800BE170  4E 80 04 21 */	bctrl 
/* 800BE174  28 03 00 00 */	cmplwi r3, 0
/* 800BE178  40 82 00 14 */	bne lbl_800BE18C
/* 800BE17C  7F 83 E3 78 */	mr r3, r28
/* 800BE180  48 04 79 91 */	bl checkBoardRestart__9daAlink_cFv
/* 800BE184  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BE188  41 82 00 10 */	beq lbl_800BE198
lbl_800BE18C:
/* 800BE18C  38 00 00 0B */	li r0, 0xb
/* 800BE190  90 01 00 08 */	stw r0, 8(r1)
/* 800BE194  48 00 00 38 */	b lbl_800BE1CC
lbl_800BE198:
/* 800BE198  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 800BE19C  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800BE1A0  40 82 00 24 */	bne lbl_800BE1C4
/* 800BE1A4  2C 1F 00 02 */	cmpwi r31, 2
/* 800BE1A8  40 82 00 24 */	bne lbl_800BE1CC
/* 800BE1AC  48 05 A9 25 */	bl checkFinalBattle__9daAlink_cFv
/* 800BE1B0  2C 03 00 00 */	cmpwi r3, 0
/* 800BE1B4  40 82 00 18 */	bne lbl_800BE1CC
/* 800BE1B8  80 01 00 08 */	lwz r0, 8(r1)
/* 800BE1BC  28 00 00 05 */	cmplwi r0, 5
/* 800BE1C0  40 82 00 0C */	bne lbl_800BE1CC
lbl_800BE1C4:
/* 800BE1C4  38 00 00 08 */	li r0, 8
/* 800BE1C8  90 01 00 08 */	stw r0, 8(r1)
lbl_800BE1CC:
/* 800BE1CC  7F 83 E3 78 */	mr r3, r28
/* 800BE1D0  7F C4 F3 78 */	mr r4, r30
/* 800BE1D4  38 A1 00 08 */	addi r5, r1, 8
/* 800BE1D8  4B FF FC 49 */	bl setLastSceneDamage__9daAlink_cFiPUl
/* 800BE1DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BE1E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BE1E4  88 03 0D B4 */	lbz r0, 0xdb4(r3)
/* 800BE1E8  7C 03 07 74 */	extsb r3, r0
/* 800BE1EC  7F E4 FB 78 */	mr r4, r31
/* 800BE1F0  7F A5 EB 78 */	mr r5, r29
/* 800BE1F4  38 C0 00 00 */	li r6, 0
/* 800BE1F8  48 0A 08 15 */	bl setParamData__9daPy_py_cFiiii
/* 800BE1FC  80 81 00 08 */	lwz r4, 8(r1)
/* 800BE200  38 A0 00 00 */	li r5, 0
/* 800BE204  4B F6 92 AD */	bl dStage_restartRoom__FUlUli
/* 800BE208  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800BE20C  28 00 01 50 */	cmplwi r0, 0x150
/* 800BE210  41 82 00 38 */	beq lbl_800BE248
/* 800BE214  38 00 00 33 */	li r0, 0x33
/* 800BE218  90 01 00 10 */	stw r0, 0x10(r1)
/* 800BE21C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800BE220  38 81 00 10 */	addi r4, r1, 0x10
/* 800BE224  38 A0 00 00 */	li r5, 0
/* 800BE228  38 C0 00 00 */	li r6, 0
/* 800BE22C  38 E0 00 00 */	li r7, 0
/* 800BE230  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800BE234  FC 40 08 90 */	fmr f2, f1
/* 800BE238  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800BE23C  FC 80 18 90 */	fmr f4, f3
/* 800BE240  39 00 00 00 */	li r8, 0
/* 800BE244  48 1E D7 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_800BE248:
/* 800BE248  38 60 00 01 */	li r3, 1
/* 800BE24C  48 00 00 08 */	b lbl_800BE254
lbl_800BE250:
/* 800BE250  38 60 00 00 */	li r3, 0
lbl_800BE254:
/* 800BE254  39 61 00 30 */	addi r11, r1, 0x30
/* 800BE258  48 2A 3F CD */	bl _restgpr_28
/* 800BE25C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800BE260  7C 08 03 A6 */	mtlr r0
/* 800BE264  38 21 00 30 */	addi r1, r1, 0x30
/* 800BE268  4E 80 00 20 */	blr 
