lbl_800DE008:
/* 800DE008  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800DE00C  7C 08 02 A6 */	mflr r0
/* 800DE010  90 01 00 54 */	stw r0, 0x54(r1)
/* 800DE014  39 61 00 50 */	addi r11, r1, 0x50
/* 800DE018  48 28 41 C1 */	bl _savegpr_28
/* 800DE01C  7C 7C 1B 78 */	mr r28, r3
/* 800DE020  7C 9D 23 78 */	mr r29, r4
/* 800DE024  4B FF ED CD */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800DE028  7C 7F 1B 78 */	mr r31, r3
/* 800DE02C  83 DC 27 EC */	lwz r30, 0x27ec(r28)
/* 800DE030  7F 83 E3 78 */	mr r3, r28
/* 800DE034  38 80 00 20 */	li r4, 0x20
/* 800DE038  4B FE 3F 35 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DE03C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DE040  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 800DE044  2C 1D 00 02 */	cmpwi r29, 2
/* 800DE048  40 82 00 0C */	bne lbl_800DE054
/* 800DE04C  3B A0 00 F0 */	li r29, 0xf0
/* 800DE050  48 00 00 4C */	b lbl_800DE09C
lbl_800DE054:
/* 800DE054  2C 1D 00 03 */	cmpwi r29, 3
/* 800DE058  40 82 00 0C */	bne lbl_800DE064
/* 800DE05C  3B A0 00 F1 */	li r29, 0xf1
/* 800DE060  48 00 00 3C */	b lbl_800DE09C
lbl_800DE064:
/* 800DE064  C0 3C 33 AC */	lfs f1, 0x33ac(r28)
/* 800DE068  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800DE06C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DE070  40 81 00 28 */	ble lbl_800DE098
/* 800DE074  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 800DE078  A8 1C 2F E2 */	lha r0, 0x2fe2(r28)
/* 800DE07C  7C 03 00 50 */	subf r0, r3, r0
/* 800DE080  7C 00 07 35 */	extsh. r0, r0
/* 800DE084  41 80 00 0C */	blt lbl_800DE090
/* 800DE088  3B A0 00 F0 */	li r29, 0xf0
/* 800DE08C  48 00 00 10 */	b lbl_800DE09C
lbl_800DE090:
/* 800DE090  3B A0 00 F1 */	li r29, 0xf1
/* 800DE094  48 00 00 08 */	b lbl_800DE09C
lbl_800DE098:
/* 800DE098  3B A0 00 F0 */	li r29, 0xf0
lbl_800DE09C:
/* 800DE09C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_turnMove_c0@ha /* 0x8038DF70@ha */
/* 800DE0A0  38 63 DF 70 */	addi r3, r3, m__22daAlinkHIO_turnMove_c0@l /* 0x8038DF70@l */
/* 800DE0A4  C0 23 00 04 */	lfs f1, 4(r3)
/* 800DE0A8  A8 03 00 16 */	lha r0, 0x16(r3)
/* 800DE0AC  B0 1C 30 0A */	sth r0, 0x300a(r28)
/* 800DE0B0  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800DE0B4  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800DE0B8  41 82 00 44 */	beq lbl_800DE0FC
/* 800DE0BC  A8 1C 30 0A */	lha r0, 0x300a(r28)
/* 800DE0C0  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800DE0C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800DE0C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DE0CC  3C 00 43 30 */	lis r0, 0x4330
/* 800DE0D0  90 01 00 30 */	stw r0, 0x30(r1)
/* 800DE0D4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800DE0D8  EC 40 10 28 */	fsubs f2, f0, f2
/* 800DE0DC  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800DE0E0  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800DE0E4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800DE0E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800DE0EC  FC 00 00 1E */	fctiwz f0, f0
/* 800DE0F0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 800DE0F4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800DE0F8  B0 1C 30 0A */	sth r0, 0x300a(r28)
lbl_800DE0FC:
/* 800DE0FC  7F 83 E3 78 */	mr r3, r28
/* 800DE100  7F A4 EB 78 */	mr r4, r29
/* 800DE104  3C A0 80 39 */	lis r5, m__22daAlinkHIO_turnMove_c0@ha /* 0x8038DF70@ha */
/* 800DE108  38 C5 DF 70 */	addi r6, r5, m__22daAlinkHIO_turnMove_c0@l /* 0x8038DF70@l */
/* 800DE10C  C0 46 00 08 */	lfs f2, 8(r6)
/* 800DE110  A8 A6 00 00 */	lha r5, 0(r6)
/* 800DE114  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 800DE118  4B FC EE F5 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800DE11C  2C 1D 00 F0 */	cmpwi r29, 0xf0
/* 800DE120  40 82 00 18 */	bne lbl_800DE138
/* 800DE124  38 00 80 10 */	li r0, -32752
/* 800DE128  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 800DE12C  38 00 00 02 */	li r0, 2
/* 800DE130  98 1C 2F 98 */	stb r0, 0x2f98(r28)
/* 800DE134  48 00 00 14 */	b lbl_800DE148
lbl_800DE138:
/* 800DE138  38 00 7F F0 */	li r0, 0x7ff0
/* 800DE13C  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 800DE140  38 00 00 03 */	li r0, 3
/* 800DE144  98 1C 2F 98 */	stb r0, 0x2f98(r28)
lbl_800DE148:
/* 800DE148  28 1E 00 00 */	cmplwi r30, 0
/* 800DE14C  41 82 01 54 */	beq lbl_800DE2A0
/* 800DE150  38 61 00 18 */	addi r3, r1, 0x18
/* 800DE154  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 800DE158  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800DE15C  48 18 89 D9 */	bl __mi__4cXyzCFRC3Vec
/* 800DE160  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800DE164  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800DE168  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800DE16C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800DE170  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800DE174  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800DE178  7F 83 E3 78 */	mr r3, r28
/* 800DE17C  7F C4 F3 78 */	mr r4, r30
/* 800DE180  4B F3 C5 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800DE184  B0 7C 04 E6 */	sth r3, 0x4e6(r28)
/* 800DE188  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800DE18C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800DE190  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DE194  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800DE198  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800DE19C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800DE1A0  38 61 00 0C */	addi r3, r1, 0xc
/* 800DE1A4  48 26 8F 95 */	bl PSVECSquareMag
/* 800DE1A8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DE1AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DE1B0  40 81 00 58 */	ble lbl_800DE208
/* 800DE1B4  FC 00 08 34 */	frsqrte f0, f1
/* 800DE1B8  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800DE1BC  FC 44 00 32 */	fmul f2, f4, f0
/* 800DE1C0  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800DE1C4  FC 00 00 32 */	fmul f0, f0, f0
/* 800DE1C8  FC 01 00 32 */	fmul f0, f1, f0
/* 800DE1CC  FC 03 00 28 */	fsub f0, f3, f0
/* 800DE1D0  FC 02 00 32 */	fmul f0, f2, f0
/* 800DE1D4  FC 44 00 32 */	fmul f2, f4, f0
/* 800DE1D8  FC 00 00 32 */	fmul f0, f0, f0
/* 800DE1DC  FC 01 00 32 */	fmul f0, f1, f0
/* 800DE1E0  FC 03 00 28 */	fsub f0, f3, f0
/* 800DE1E4  FC 02 00 32 */	fmul f0, f2, f0
/* 800DE1E8  FC 44 00 32 */	fmul f2, f4, f0
/* 800DE1EC  FC 00 00 32 */	fmul f0, f0, f0
/* 800DE1F0  FC 01 00 32 */	fmul f0, f1, f0
/* 800DE1F4  FC 03 00 28 */	fsub f0, f3, f0
/* 800DE1F8  FC 02 00 32 */	fmul f0, f2, f0
/* 800DE1FC  FC 21 00 32 */	fmul f1, f1, f0
/* 800DE200  FC 20 08 18 */	frsp f1, f1
/* 800DE204  48 00 00 88 */	b lbl_800DE28C
lbl_800DE208:
/* 800DE208  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800DE20C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DE210  40 80 00 10 */	bge lbl_800DE220
/* 800DE214  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800DE218  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800DE21C  48 00 00 70 */	b lbl_800DE28C
lbl_800DE220:
/* 800DE220  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DE224  80 81 00 08 */	lwz r4, 8(r1)
/* 800DE228  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800DE22C  3C 00 7F 80 */	lis r0, 0x7f80
/* 800DE230  7C 03 00 00 */	cmpw r3, r0
/* 800DE234  41 82 00 14 */	beq lbl_800DE248
/* 800DE238  40 80 00 40 */	bge lbl_800DE278
/* 800DE23C  2C 03 00 00 */	cmpwi r3, 0
/* 800DE240  41 82 00 20 */	beq lbl_800DE260
/* 800DE244  48 00 00 34 */	b lbl_800DE278
lbl_800DE248:
/* 800DE248  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DE24C  41 82 00 0C */	beq lbl_800DE258
/* 800DE250  38 00 00 01 */	li r0, 1
/* 800DE254  48 00 00 28 */	b lbl_800DE27C
lbl_800DE258:
/* 800DE258  38 00 00 02 */	li r0, 2
/* 800DE25C  48 00 00 20 */	b lbl_800DE27C
lbl_800DE260:
/* 800DE260  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DE264  41 82 00 0C */	beq lbl_800DE270
/* 800DE268  38 00 00 05 */	li r0, 5
/* 800DE26C  48 00 00 10 */	b lbl_800DE27C
lbl_800DE270:
/* 800DE270  38 00 00 03 */	li r0, 3
/* 800DE274  48 00 00 08 */	b lbl_800DE27C
lbl_800DE278:
/* 800DE278  38 00 00 04 */	li r0, 4
lbl_800DE27C:
/* 800DE27C  2C 00 00 01 */	cmpwi r0, 1
/* 800DE280  40 82 00 0C */	bne lbl_800DE28C
/* 800DE284  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800DE288  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800DE28C:
/* 800DE28C  D0 3C 34 78 */	stfs f1, 0x3478(r28)
/* 800DE290  38 61 00 24 */	addi r3, r1, 0x24
/* 800DE294  48 18 8E 95 */	bl atan2sX_Z__4cXyzCFv
/* 800DE298  B0 7C 30 0E */	sth r3, 0x300e(r28)
/* 800DE29C  48 00 00 1C */	b lbl_800DE2B8
lbl_800DE2A0:
/* 800DE2A0  C0 02 93 68 */	lfs f0, lit_8472(r2)
/* 800DE2A4  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 800DE2A8  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 800DE2AC  3C 63 00 01 */	addis r3, r3, 1
/* 800DE2B0  38 03 80 00 */	addi r0, r3, -32768
/* 800DE2B4  B0 1C 30 0E */	sth r0, 0x300e(r28)
lbl_800DE2B8:
/* 800DE2B8  C0 3C 34 78 */	lfs f1, 0x3478(r28)
/* 800DE2BC  C0 02 93 E0 */	lfs f0, lit_11673(r2)
/* 800DE2C0  EC 41 00 28 */	fsubs f2, f1, f0
/* 800DE2C4  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 800DE2C8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800DE2CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800DE2D0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800DE2D4  3C 00 43 30 */	lis r0, 0x4330
/* 800DE2D8  90 01 00 38 */	stw r0, 0x38(r1)
/* 800DE2DC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 800DE2E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800DE2E4  EC 02 00 24 */	fdivs f0, f2, f0
/* 800DE2E8  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 800DE2EC  7F 83 E3 78 */	mr r3, r28
/* 800DE2F0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010096@ha */
/* 800DE2F4  38 84 00 96 */	addi r4, r4, 0x0096 /* 0x00010096@l */
/* 800DE2F8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800DE2FC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DE300  7D 89 03 A6 */	mtctr r12
/* 800DE304  4E 80 04 21 */	bctrl 
/* 800DE308  80 1C 06 14 */	lwz r0, 0x614(r28)
/* 800DE30C  28 00 00 52 */	cmplwi r0, 0x52
/* 800DE310  40 82 00 10 */	bne lbl_800DE320
/* 800DE314  38 00 00 01 */	li r0, 1
/* 800DE318  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800DE31C  48 00 00 0C */	b lbl_800DE328
lbl_800DE320:
/* 800DE320  38 00 00 00 */	li r0, 0
/* 800DE324  B0 1C 30 08 */	sth r0, 0x3008(r28)
lbl_800DE328:
/* 800DE328  7F 83 E3 78 */	mr r3, r28
/* 800DE32C  38 80 00 00 */	li r4, 0
/* 800DE330  48 04 2E 91 */	bl setFootEffectProcType__9daAlink_cFi
/* 800DE334  38 00 00 04 */	li r0, 4
/* 800DE338  98 1C 2F 9D */	stb r0, 0x2f9d(r28)
/* 800DE33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800DE340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800DE344  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800DE348  60 00 00 04 */	ori r0, r0, 4
/* 800DE34C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800DE350  2C 1F 00 00 */	cmpwi r31, 0
/* 800DE354  41 82 00 10 */	beq lbl_800DE364
/* 800DE358  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800DE35C  60 00 00 02 */	ori r0, r0, 2
/* 800DE360  90 1C 05 70 */	stw r0, 0x570(r28)
lbl_800DE364:
/* 800DE364  38 60 00 01 */	li r3, 1
/* 800DE368  39 61 00 50 */	addi r11, r1, 0x50
/* 800DE36C  48 28 3E B9 */	bl _restgpr_28
/* 800DE370  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800DE374  7C 08 03 A6 */	mtlr r0
/* 800DE378  38 21 00 50 */	addi r1, r1, 0x50
/* 800DE37C  4E 80 00 20 */	blr 
