lbl_800BF500:
/* 800BF500  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800BF504  7C 08 02 A6 */	mflr r0
/* 800BF508  90 01 00 74 */	stw r0, 0x74(r1)
/* 800BF50C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800BF510  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 800BF514  39 61 00 60 */	addi r11, r1, 0x60
/* 800BF518  48 2A 2C C1 */	bl _savegpr_28
/* 800BF51C  7C 7D 1B 78 */	mr r29, r3
/* 800BF520  FF E0 08 90 */	fmr f31, f1
/* 800BF524  7C 9E 23 78 */	mr r30, r4
/* 800BF528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BF52C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BF530  80 1D 31 7C */	lwz r0, 0x317c(r29)
/* 800BF534  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800BF538  7C 63 02 14 */	add r3, r3, r0
/* 800BF53C  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 800BF540  3B E3 00 D8 */	addi r31, r3, 0xd8
/* 800BF544  C0 1D 37 E0 */	lfs f0, 0x37e0(r29)
/* 800BF548  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800BF54C  C0 1D 37 E4 */	lfs f0, 0x37e4(r29)
/* 800BF550  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800BF554  C0 1D 37 E8 */	lfs f0, 0x37e8(r29)
/* 800BF558  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800BF55C  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 800BF560  48 09 F6 59 */	bl checkHookshotItem__9daPy_py_cFi
/* 800BF564  2C 03 00 00 */	cmpwi r3, 0
/* 800BF568  40 82 00 10 */	bne lbl_800BF578
/* 800BF56C  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 800BF570  28 03 00 4B */	cmplwi r3, 0x4b
/* 800BF574  40 82 00 0C */	bne lbl_800BF580
lbl_800BF578:
/* 800BF578  3B E1 00 2C */	addi r31, r1, 0x2c
/* 800BF57C  48 00 00 20 */	b lbl_800BF59C
lbl_800BF580:
/* 800BF580  48 09 F6 11 */	bl checkBowItem__9daPy_py_cFi
/* 800BF584  2C 03 00 00 */	cmpwi r3, 0
/* 800BF588  41 82 00 14 */	beq lbl_800BF59C
/* 800BF58C  80 7D 28 28 */	lwz r3, 0x2828(r29)
/* 800BF590  28 03 00 00 */	cmplwi r3, 0
/* 800BF594  41 82 00 08 */	beq lbl_800BF59C
/* 800BF598  3B E3 04 D0 */	addi r31, r3, 0x4d0
lbl_800BF59C:
/* 800BF59C  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 800BF5A0  A8 1D 05 9E */	lha r0, 0x59e(r29)
/* 800BF5A4  7C 03 02 14 */	add r0, r3, r0
/* 800BF5A8  7C 05 07 34 */	extsh r5, r0
/* 800BF5AC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800BF5B0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800BF5B4  38 83 00 04 */	addi r4, r3, 4
/* 800BF5B8  A8 1D 05 9C */	lha r0, 0x59c(r29)
/* 800BF5BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800BF5C0  7C 24 04 2E */	lfsx f1, r4, r0
/* 800BF5C4  7C 43 04 2E */	lfsx f2, r3, r0
/* 800BF5C8  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 800BF5CC  7C 03 04 2E */	lfsx f0, r3, r0
/* 800BF5D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BF5D4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800BF5D8  FC 00 10 50 */	fneg f0, f2
/* 800BF5DC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800BF5E0  7C 04 04 2E */	lfsx f0, r4, r0
/* 800BF5E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BF5E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800BF5EC  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BF5F0  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800BF5F4  41 82 00 14 */	beq lbl_800BF608
/* 800BF5F8  38 7D 2C 48 */	addi r3, r29, 0x2c48
/* 800BF5FC  38 81 00 38 */	addi r4, r1, 0x38
/* 800BF600  7C 85 23 78 */	mr r5, r4
/* 800BF604  48 28 78 49 */	bl PSMTXMultVecSR
lbl_800BF608:
/* 800BF608  38 61 00 20 */	addi r3, r1, 0x20
/* 800BF60C  38 81 00 38 */	addi r4, r1, 0x38
/* 800BF610  FC 20 F8 90 */	fmr f1, f31
/* 800BF614  48 1A 75 71 */	bl __ml__4cXyzCFf
/* 800BF618  38 61 00 14 */	addi r3, r1, 0x14
/* 800BF61C  38 81 00 20 */	addi r4, r1, 0x20
/* 800BF620  7F E5 FB 78 */	mr r5, r31
/* 800BF624  48 1A 74 C1 */	bl __pl__4cXyzCFRC3Vec
/* 800BF628  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800BF62C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800BF630  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800BF634  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800BF638  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800BF63C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800BF640  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 800BF644  48 09 F5 75 */	bl checkHookshotItem__9daPy_py_cFi
/* 800BF648  2C 03 00 00 */	cmpwi r3, 0
/* 800BF64C  41 82 00 84 */	beq lbl_800BF6D0
/* 800BF650  38 7D 1B B8 */	addi r3, r29, 0x1bb8
/* 800BF654  38 9D 38 34 */	addi r4, r29, 0x3834
/* 800BF658  38 BD 37 E0 */	addi r5, r29, 0x37e0
/* 800BF65C  7F A6 EB 78 */	mr r6, r29
/* 800BF660  4B FB 87 05 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800BF664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BF668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BF66C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800BF670  38 9D 1B B8 */	addi r4, r29, 0x1bb8
/* 800BF674  4B FB 4D 41 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 800BF678  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BF67C  41 82 00 30 */	beq lbl_800BF6AC
/* 800BF680  C0 1D 1B E8 */	lfs f0, 0x1be8(r29)
/* 800BF684  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800BF688  C0 1D 1B EC */	lfs f0, 0x1bec(r29)
/* 800BF68C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800BF690  C0 1D 1B F0 */	lfs f0, 0x1bf0(r29)
/* 800BF694  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800BF698  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 800BF69C  64 00 02 00 */	oris r0, r0, 0x200
/* 800BF6A0  90 1D 05 80 */	stw r0, 0x580(r29)
/* 800BF6A4  38 60 00 01 */	li r3, 1
/* 800BF6A8  48 00 00 D4 */	b lbl_800BF77C
lbl_800BF6AC:
/* 800BF6AC  38 61 00 08 */	addi r3, r1, 8
/* 800BF6B0  38 81 00 38 */	addi r4, r1, 0x38
/* 800BF6B4  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 800BF6B8  48 1A 74 CD */	bl __ml__4cXyzCFf
/* 800BF6BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 800BF6C0  38 81 00 08 */	addi r4, r1, 8
/* 800BF6C4  7C 65 1B 78 */	mr r5, r3
/* 800BF6C8  48 28 79 ED */	bl PSVECSubtract
/* 800BF6CC  48 00 00 18 */	b lbl_800BF6E4
lbl_800BF6D0:
/* 800BF6D0  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800BF6D4  28 00 00 46 */	cmplwi r0, 0x46
/* 800BF6D8  40 82 00 0C */	bne lbl_800BF6E4
/* 800BF6DC  38 60 00 00 */	li r3, 0
/* 800BF6E0  48 00 00 9C */	b lbl_800BF77C
lbl_800BF6E4:
/* 800BF6E4  A0 9D 2F DC */	lhz r4, 0x2fdc(r29)
/* 800BF6E8  28 04 00 40 */	cmplwi r4, 0x40
/* 800BF6EC  40 82 00 0C */	bne lbl_800BF6F8
/* 800BF6F0  3B 9D 1C 28 */	addi r28, r29, 0x1c28
/* 800BF6F4  48 00 00 34 */	b lbl_800BF728
lbl_800BF6F8:
/* 800BF6F8  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800BF6FC  28 00 00 BC */	cmplwi r0, 0xbc
/* 800BF700  40 82 00 0C */	bne lbl_800BF70C
/* 800BF704  3B 9D 1B 48 */	addi r28, r29, 0x1b48
/* 800BF708  48 00 00 20 */	b lbl_800BF728
lbl_800BF70C:
/* 800BF70C  7F A3 EB 78 */	mr r3, r29
/* 800BF710  48 01 F0 71 */	bl checkBowAndSlingItem__9daAlink_cFi
/* 800BF714  2C 03 00 00 */	cmpwi r3, 0
/* 800BF718  41 82 00 0C */	beq lbl_800BF724
/* 800BF71C  3B 9D 1C 98 */	addi r28, r29, 0x1c98
/* 800BF720  48 00 00 08 */	b lbl_800BF728
lbl_800BF724:
/* 800BF724  3B 9D 1B B8 */	addi r28, r29, 0x1bb8
lbl_800BF728:
/* 800BF728  7F 83 E3 78 */	mr r3, r28
/* 800BF72C  7F E4 FB 78 */	mr r4, r31
/* 800BF730  7F C5 F3 78 */	mr r5, r30
/* 800BF734  7F A6 EB 78 */	mr r6, r29
/* 800BF738  4B FB 86 2D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800BF73C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BF740  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BF744  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800BF748  7F 84 E3 78 */	mr r4, r28
/* 800BF74C  4B FB 4C 69 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 800BF750  54 63 06 3F */	clrlwi. r3, r3, 0x18
/* 800BF754  41 82 00 28 */	beq lbl_800BF77C
/* 800BF758  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 800BF75C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800BF760  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 800BF764  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800BF768  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 800BF76C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800BF770  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 800BF774  64 00 02 00 */	oris r0, r0, 0x200
/* 800BF778  90 1D 05 80 */	stw r0, 0x580(r29)
lbl_800BF77C:
/* 800BF77C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 800BF780  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800BF784  39 61 00 60 */	addi r11, r1, 0x60
/* 800BF788  48 2A 2A 9D */	bl _restgpr_28
/* 800BF78C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800BF790  7C 08 03 A6 */	mtlr r0
/* 800BF794  38 21 00 70 */	addi r1, r1, 0x70
/* 800BF798  4E 80 00 20 */	blr 
