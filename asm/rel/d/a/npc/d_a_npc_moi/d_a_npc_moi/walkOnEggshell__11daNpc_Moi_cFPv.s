lbl_80A78FF4:
/* 80A78FF4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A78FF8  7C 08 02 A6 */	mflr r0
/* 80A78FFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A79000  39 61 00 50 */	addi r11, r1, 0x50
/* 80A79004  4B 8E 91 D4 */	b _savegpr_28
/* 80A79008  7C 7E 1B 78 */	mr r30, r3
/* 80A7900C  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha
/* 80A79010  3B E3 AE F0 */	addi r31, r3, m__17daNpc_Moi_Param_c@l
/* 80A79014  38 7F 00 00 */	addi r3, r31, 0
/* 80A79018  AB A3 00 9A */	lha r29, 0x9a(r3)
/* 80A7901C  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80A79020  2C 00 00 02 */	cmpwi r0, 2
/* 80A79024  41 82 01 88 */	beq lbl_80A791AC
/* 80A79028  40 80 04 7C */	bge lbl_80A794A4
/* 80A7902C  2C 00 00 00 */	cmpwi r0, 0
/* 80A79030  40 80 00 0C */	bge lbl_80A7903C
/* 80A79034  48 00 04 70 */	b lbl_80A794A4
/* 80A79038  48 00 04 6C */	b lbl_80A794A4
lbl_80A7903C:
/* 80A7903C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A79040  2C 00 00 00 */	cmpwi r0, 0
/* 80A79044  40 82 01 68 */	bne lbl_80A791AC
/* 80A79048  88 1E 16 69 */	lbz r0, 0x1669(r30)
/* 80A7904C  28 00 00 00 */	cmplwi r0, 0
/* 80A79050  41 82 00 78 */	beq lbl_80A790C8
/* 80A79054  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A79058  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A7905C  41 82 00 24 */	beq lbl_80A79080
/* 80A79060  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A79064  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A79068  4B 6C C8 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7906C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A79070  38 00 00 15 */	li r0, 0x15
/* 80A79074  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A79078  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A7907C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A79080:
/* 80A79080  88 1E 16 6B */	lbz r0, 0x166b(r30)
/* 80A79084  28 00 00 00 */	cmplwi r0, 0
/* 80A79088  3B A0 00 0B */	li r29, 0xb
/* 80A7908C  41 82 00 08 */	beq lbl_80A79094
/* 80A79090  3B A0 00 0A */	li r29, 0xa
lbl_80A79094:
/* 80A79094  2C 1D 00 00 */	cmpwi r29, 0
/* 80A79098  41 80 01 0C */	blt lbl_80A791A4
/* 80A7909C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A790A0  7C 1D 00 00 */	cmpw r29, r0
/* 80A790A4  41 82 01 00 */	beq lbl_80A791A4
/* 80A790A8  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80A790AC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A790B0  4B 6C C7 E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A790B4  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80A790B8  93 BE 0B 7C */	stw r29, 0xb7c(r30)
/* 80A790BC  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A790C0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A790C4  48 00 00 E0 */	b lbl_80A791A4
lbl_80A790C8:
/* 80A790C8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A790CC  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A790D0  41 82 00 24 */	beq lbl_80A790F4
/* 80A790D4  83 9E 0B 5C */	lwz r28, 0xb5c(r30)
/* 80A790D8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A790DC  4B 6C C7 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A790E0  93 9E 0B 5C */	stw r28, 0xb5c(r30)
/* 80A790E4  38 00 00 15 */	li r0, 0x15
/* 80A790E8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A790EC  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A790F0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A790F4:
/* 80A790F4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A790F8  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A790FC  41 82 00 24 */	beq lbl_80A79120
/* 80A79100  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80A79104  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A79108  4B 6C C7 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7910C  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80A79110  38 00 00 28 */	li r0, 0x28
/* 80A79114  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A79118  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A7911C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A79120:
/* 80A79120  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A79124  2C 00 00 00 */	cmpwi r0, 0
/* 80A79128  41 82 00 24 */	beq lbl_80A7914C
/* 80A7912C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A79130  4B 6C C5 CC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A79134  38 00 00 00 */	li r0, 0
/* 80A79138  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A7913C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A79140  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A79144  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A79148  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A7914C:
/* 80A7914C  38 00 00 00 */	li r0, 0
/* 80A79150  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A79154  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 80A79158  C8 7F 01 48 */	lfd f3, 0x148(r31)
/* 80A7915C  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 80A79160  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80A79164  3C 00 43 30 */	lis r0, 0x4330
/* 80A79168  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A7916C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A79170  EC 00 18 28 */	fsubs f0, f0, f3
/* 80A79174  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A79178  C0 5F 01 BC */	lfs f2, 0x1bc(r31)
/* 80A7917C  90 61 00 34 */	stw r3, 0x34(r1)
/* 80A79180  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A79184  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A79188  EC 00 18 28 */	fsubs f0, f0, f3
/* 80A7918C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80A79190  48 00 19 F1 */	bl func_80A7AB80
/* 80A79194  FC 00 08 1E */	fctiwz f0, f1
/* 80A79198  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80A7919C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80A791A0  90 1E 16 4C */	stw r0, 0x164c(r30)
lbl_80A791A4:
/* 80A791A4  38 00 00 02 */	li r0, 2
/* 80A791A8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A791AC:
/* 80A791AC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A791B0  2C 00 00 00 */	cmpwi r0, 0
/* 80A791B4  40 82 02 F0 */	bne lbl_80A794A4
/* 80A791B8  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A791BC  4B 6C C5 4C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A791C0  28 03 00 00 */	cmplwi r3, 0
/* 80A791C4  41 82 00 AC */	beq lbl_80A79270
/* 80A791C8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A791CC  2C 00 00 01 */	cmpwi r0, 1
/* 80A791D0  41 82 00 28 */	beq lbl_80A791F8
/* 80A791D4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A791D8  4B 6C C5 24 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A791DC  38 00 00 00 */	li r0, 0
/* 80A791E0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A791E4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A791E8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A791EC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A791F0  38 00 00 01 */	li r0, 1
/* 80A791F4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A791F8:
/* 80A791F8  38 00 00 00 */	li r0, 0
/* 80A791FC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A79200  80 1E 16 58 */	lwz r0, 0x1658(r30)
/* 80A79204  2C 00 00 00 */	cmpwi r0, 0
/* 80A79208  41 82 00 68 */	beq lbl_80A79270
/* 80A7920C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A79210  4B 6C C4 F8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A79214  7C 64 1B 78 */	mr r4, r3
/* 80A79218  7F C3 F3 78 */	mr r3, r30
/* 80A7921C  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80A79220  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A79224  4B 6D 19 AC */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A79228  2C 03 00 00 */	cmpwi r3, 0
/* 80A7922C  41 82 00 10 */	beq lbl_80A7923C
/* 80A79230  38 00 00 00 */	li r0, 0
/* 80A79234  90 1E 16 58 */	stw r0, 0x1658(r30)
/* 80A79238  48 00 00 38 */	b lbl_80A79270
lbl_80A7923C:
/* 80A7923C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A79240  2C 00 00 00 */	cmpwi r0, 0
/* 80A79244  41 82 00 24 */	beq lbl_80A79268
/* 80A79248  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A7924C  4B 6C C4 B0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A79250  38 00 00 00 */	li r0, 0
/* 80A79254  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A79258  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A7925C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A79260  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A79264  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A79268:
/* 80A79268  38 00 00 00 */	li r0, 0
/* 80A7926C  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80A79270:
/* 80A79270  88 1E 16 6C */	lbz r0, 0x166c(r30)
/* 80A79274  28 00 00 00 */	cmplwi r0, 0
/* 80A79278  41 82 00 48 */	beq lbl_80A792C0
/* 80A7927C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A79280  2C 00 00 01 */	cmpwi r0, 1
/* 80A79284  41 82 00 28 */	beq lbl_80A792AC
/* 80A79288  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A7928C  4B 6C C4 70 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A79290  38 00 00 00 */	li r0, 0
/* 80A79294  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A79298  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A7929C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A792A0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A792A4  38 00 00 01 */	li r0, 1
/* 80A792A8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A792AC:
/* 80A792AC  38 00 00 00 */	li r0, 0
/* 80A792B0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A792B4  7F C3 F3 78 */	mr r3, r30
/* 80A792B8  4B FF DE 45 */	bl poise__11daNpc_Moi_cFv
/* 80A792BC  48 00 01 E0 */	b lbl_80A7949C
lbl_80A792C0:
/* 80A792C0  80 1E 16 58 */	lwz r0, 0x1658(r30)
/* 80A792C4  2C 00 00 00 */	cmpwi r0, 0
/* 80A792C8  41 82 01 08 */	beq lbl_80A793D0
/* 80A792CC  7F C3 F3 78 */	mr r3, r30
/* 80A792D0  4B FF D9 AD */	bl injuryCheck__11daNpc_Moi_cFv
/* 80A792D4  90 7E 16 58 */	stw r3, 0x1658(r30)
/* 80A792D8  80 1E 16 58 */	lwz r0, 0x1658(r30)
/* 80A792DC  2C 00 00 00 */	cmpwi r0, 0
/* 80A792E0  41 82 00 D0 */	beq lbl_80A793B0
/* 80A792E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A792E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A792EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A792F0  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 80A792F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A792F8  41 82 01 A4 */	beq lbl_80A7949C
/* 80A792FC  C0 43 05 58 */	lfs f2, 0x558(r3)
/* 80A79300  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 80A79304  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A79308  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80A7930C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A79310  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80A79314  C0 5E 05 58 */	lfs f2, 0x558(r30)
/* 80A79318  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80A7931C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A79320  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80A79324  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A79328  38 61 00 0C */	addi r3, r1, 0xc
/* 80A7932C  38 81 00 18 */	addi r4, r1, 0x18
/* 80A79330  4B 8C E0 6C */	b PSVECSquareDistance
/* 80A79334  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A79338  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A7933C  40 81 00 08 */	ble lbl_80A79344
/* 80A79340  48 00 01 5C */	b lbl_80A7949C
lbl_80A79344:
/* 80A79344  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80A79348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A7934C  41 80 01 50 */	blt lbl_80A7949C
/* 80A79350  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A79354  80 81 00 08 */	lwz r4, 8(r1)
/* 80A79358  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A7935C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A79360  7C 03 00 00 */	cmpw r3, r0
/* 80A79364  41 82 00 14 */	beq lbl_80A79378
/* 80A79368  40 80 00 40 */	bge lbl_80A793A8
/* 80A7936C  2C 03 00 00 */	cmpwi r3, 0
/* 80A79370  41 82 00 20 */	beq lbl_80A79390
/* 80A79374  48 00 00 34 */	b lbl_80A793A8
lbl_80A79378:
/* 80A79378  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A7937C  41 82 00 0C */	beq lbl_80A79388
/* 80A79380  38 00 00 01 */	li r0, 1
/* 80A79384  48 00 01 18 */	b lbl_80A7949C
lbl_80A79388:
/* 80A79388  38 00 00 02 */	li r0, 2
/* 80A7938C  48 00 01 10 */	b lbl_80A7949C
lbl_80A79390:
/* 80A79390  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A79394  41 82 00 0C */	beq lbl_80A793A0
/* 80A79398  38 00 00 05 */	li r0, 5
/* 80A7939C  48 00 01 00 */	b lbl_80A7949C
lbl_80A793A0:
/* 80A793A0  38 00 00 03 */	li r0, 3
/* 80A793A4  48 00 00 F8 */	b lbl_80A7949C
lbl_80A793A8:
/* 80A793A8  38 00 00 04 */	li r0, 4
/* 80A793AC  48 00 00 F0 */	b lbl_80A7949C
lbl_80A793B0:
/* 80A793B0  88 1E 16 67 */	lbz r0, 0x1667(r30)
/* 80A793B4  28 00 00 00 */	cmplwi r0, 0
/* 80A793B8  40 82 00 E4 */	bne lbl_80A7949C
/* 80A793BC  38 00 00 01 */	li r0, 1
/* 80A793C0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A793C4  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A793C8  4B 6C C3 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A793CC  48 00 00 D0 */	b lbl_80A7949C
lbl_80A793D0:
/* 80A793D0  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A793D4  4B 6C C3 34 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A793D8  28 03 00 00 */	cmplwi r3, 0
/* 80A793DC  41 82 00 48 */	beq lbl_80A79424
/* 80A793E0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A793E4  2C 00 00 01 */	cmpwi r0, 1
/* 80A793E8  41 82 00 28 */	beq lbl_80A79410
/* 80A793EC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A793F0  4B 6C C3 0C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A793F4  38 00 00 00 */	li r0, 0
/* 80A793F8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A793FC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A79400  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A79404  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A79408  38 00 00 01 */	li r0, 1
/* 80A7940C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A79410:
/* 80A79410  38 00 00 00 */	li r0, 0
/* 80A79414  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A79418  7F C3 F3 78 */	mr r3, r30
/* 80A7941C  4B FF DC E1 */	bl poise__11daNpc_Moi_cFv
/* 80A79420  48 00 00 7C */	b lbl_80A7949C
lbl_80A79424:
/* 80A79424  88 1E 16 69 */	lbz r0, 0x1669(r30)
/* 80A79428  28 00 00 00 */	cmplwi r0, 0
/* 80A7942C  41 82 00 40 */	beq lbl_80A7946C
/* 80A79430  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A79434  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A79438  41 82 00 24 */	beq lbl_80A7945C
/* 80A7943C  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80A79440  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A79444  4B 6C C4 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A79448  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80A7944C  38 00 00 27 */	li r0, 0x27
/* 80A79450  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A79454  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A79458  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A7945C:
/* 80A7945C  38 00 00 00 */	li r0, 0
/* 80A79460  98 1E 16 69 */	stb r0, 0x1669(r30)
/* 80A79464  90 1E 16 5C */	stw r0, 0x165c(r30)
/* 80A79468  48 00 00 34 */	b lbl_80A7949C
lbl_80A7946C:
/* 80A7946C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A79470  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A79474  40 82 00 20 */	bne lbl_80A79494
/* 80A79478  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A7947C  4B 6C C5 A8 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80A79480  2C 03 00 00 */	cmpwi r3, 0
/* 80A79484  41 82 00 18 */	beq lbl_80A7949C
/* 80A79488  38 00 00 01 */	li r0, 1
/* 80A7948C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A79490  48 00 00 0C */	b lbl_80A7949C
lbl_80A79494:
/* 80A79494  7F C3 F3 78 */	mr r3, r30
/* 80A79498  4B FF DA A5 */	bl injuryWalk__11daNpc_Moi_cFv
lbl_80A7949C:
/* 80A7949C  7F C3 F3 78 */	mr r3, r30
/* 80A794A0  4B 6D 1E 98 */	b srchPlayerActor__8daNpcT_cFv
lbl_80A794A4:
/* 80A794A4  38 60 00 01 */	li r3, 1
/* 80A794A8  39 61 00 50 */	addi r11, r1, 0x50
/* 80A794AC  4B 8E 8D 78 */	b _restgpr_28
/* 80A794B0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A794B4  7C 08 03 A6 */	mtlr r0
/* 80A794B8  38 21 00 50 */	addi r1, r1, 0x50
/* 80A794BC  4E 80 00 20 */	blr 
