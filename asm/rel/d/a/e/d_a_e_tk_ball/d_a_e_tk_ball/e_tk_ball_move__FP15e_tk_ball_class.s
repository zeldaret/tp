lbl_807BC3F8:
/* 807BC3F8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807BC3FC  7C 08 02 A6 */	mflr r0
/* 807BC400  90 01 00 74 */	stw r0, 0x74(r1)
/* 807BC404  39 61 00 70 */	addi r11, r1, 0x70
/* 807BC408  4B BA 5D C1 */	bl _savegpr_24
/* 807BC40C  7C 7C 1B 78 */	mr r28, r3
/* 807BC410  3C 60 80 7C */	lis r3, lit_3710@ha /* 0x807BD56C@ha */
/* 807BC414  3B C3 D5 6C */	addi r30, r3, lit_3710@l /* 0x807BD56C@l */
/* 807BC418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BC41C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BC420  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807BC424  A8 1C 05 E0 */	lha r0, 0x5e0(r28)
/* 807BC428  2C 00 00 01 */	cmpwi r0, 1
/* 807BC42C  41 82 02 28 */	beq lbl_807BC654
/* 807BC430  40 80 02 34 */	bge lbl_807BC664
/* 807BC434  2C 00 00 00 */	cmpwi r0, 0
/* 807BC438  40 80 00 08 */	bge lbl_807BC440
/* 807BC43C  48 00 02 28 */	b lbl_807BC664
lbl_807BC440:
/* 807BC440  38 00 00 01 */	li r0, 1
/* 807BC444  B0 1C 05 E0 */	sth r0, 0x5e0(r28)
/* 807BC448  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807BC44C  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 807BC450  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807BC454  D0 1C 05 EC */	stfs f0, 0x5ec(r28)
/* 807BC458  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807BC45C  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 807BC460  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 807BC464  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807BC468  C0 23 05 3C */	lfs f1, 0x53c(r3)
/* 807BC46C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 807BC470  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 807BC474  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807BC478  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807BC47C  EC 01 00 2A */	fadds f0, f1, f0
/* 807BC480  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807BC484  38 61 00 38 */	addi r3, r1, 0x38
/* 807BC488  38 9C 05 E8 */	addi r4, r28, 0x5e8
/* 807BC48C  7C 65 1B 78 */	mr r5, r3
/* 807BC490  4B B8 AC 25 */	bl PSVECSubtract
/* 807BC494  38 61 00 38 */	addi r3, r1, 0x38
/* 807BC498  4B B8 AC A1 */	bl PSVECSquareMag
/* 807BC49C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807BC4A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BC4A4  40 81 00 58 */	ble lbl_807BC4FC
/* 807BC4A8  FC 00 08 34 */	frsqrte f0, f1
/* 807BC4AC  C8 9E 00 20 */	lfd f4, 0x20(r30)
/* 807BC4B0  FC 44 00 32 */	fmul f2, f4, f0
/* 807BC4B4  C8 7E 00 28 */	lfd f3, 0x28(r30)
/* 807BC4B8  FC 00 00 32 */	fmul f0, f0, f0
/* 807BC4BC  FC 01 00 32 */	fmul f0, f1, f0
/* 807BC4C0  FC 03 00 28 */	fsub f0, f3, f0
/* 807BC4C4  FC 02 00 32 */	fmul f0, f2, f0
/* 807BC4C8  FC 44 00 32 */	fmul f2, f4, f0
/* 807BC4CC  FC 00 00 32 */	fmul f0, f0, f0
/* 807BC4D0  FC 01 00 32 */	fmul f0, f1, f0
/* 807BC4D4  FC 03 00 28 */	fsub f0, f3, f0
/* 807BC4D8  FC 02 00 32 */	fmul f0, f2, f0
/* 807BC4DC  FC 44 00 32 */	fmul f2, f4, f0
/* 807BC4E0  FC 00 00 32 */	fmul f0, f0, f0
/* 807BC4E4  FC 01 00 32 */	fmul f0, f1, f0
/* 807BC4E8  FC 03 00 28 */	fsub f0, f3, f0
/* 807BC4EC  FC 02 00 32 */	fmul f0, f2, f0
/* 807BC4F0  FC 21 00 32 */	fmul f1, f1, f0
/* 807BC4F4  FC 20 08 18 */	frsp f1, f1
/* 807BC4F8  48 00 00 88 */	b lbl_807BC580
lbl_807BC4FC:
/* 807BC4FC  C8 1E 00 30 */	lfd f0, 0x30(r30)
/* 807BC500  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BC504  40 80 00 10 */	bge lbl_807BC514
/* 807BC508  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BC50C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807BC510  48 00 00 70 */	b lbl_807BC580
lbl_807BC514:
/* 807BC514  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807BC518  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807BC51C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807BC520  3C 00 7F 80 */	lis r0, 0x7f80
/* 807BC524  7C 03 00 00 */	cmpw r3, r0
/* 807BC528  41 82 00 14 */	beq lbl_807BC53C
/* 807BC52C  40 80 00 40 */	bge lbl_807BC56C
/* 807BC530  2C 03 00 00 */	cmpwi r3, 0
/* 807BC534  41 82 00 20 */	beq lbl_807BC554
/* 807BC538  48 00 00 34 */	b lbl_807BC56C
lbl_807BC53C:
/* 807BC53C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BC540  41 82 00 0C */	beq lbl_807BC54C
/* 807BC544  38 00 00 01 */	li r0, 1
/* 807BC548  48 00 00 28 */	b lbl_807BC570
lbl_807BC54C:
/* 807BC54C  38 00 00 02 */	li r0, 2
/* 807BC550  48 00 00 20 */	b lbl_807BC570
lbl_807BC554:
/* 807BC554  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BC558  41 82 00 0C */	beq lbl_807BC564
/* 807BC55C  38 00 00 05 */	li r0, 5
/* 807BC560  48 00 00 10 */	b lbl_807BC570
lbl_807BC564:
/* 807BC564  38 00 00 03 */	li r0, 3
/* 807BC568  48 00 00 08 */	b lbl_807BC570
lbl_807BC56C:
/* 807BC56C  38 00 00 04 */	li r0, 4
lbl_807BC570:
/* 807BC570  2C 00 00 01 */	cmpwi r0, 1
/* 807BC574  40 82 00 0C */	bne lbl_807BC580
/* 807BC578  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BC57C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807BC580:
/* 807BC580  D0 3C 05 F4 */	stfs f1, 0x5f4(r28)
/* 807BC584  C0 3C 05 F4 */	lfs f1, 0x5f4(r28)
/* 807BC588  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807BC58C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BC590  40 80 00 08 */	bge lbl_807BC598
/* 807BC594  D0 1C 05 F4 */	stfs f0, 0x5f4(r28)
lbl_807BC598:
/* 807BC598  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 807BC59C  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 807BC5A0  4B AA B0 D5 */	bl cM_atan2s__Fff
/* 807BC5A4  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 807BC5A8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807BC5AC  EC 20 00 32 */	fmuls f1, f0, f0
/* 807BC5B0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807BC5B4  EC 00 00 32 */	fmuls f0, f0, f0
/* 807BC5B8  EC 41 00 2A */	fadds f2, f1, f0
/* 807BC5BC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807BC5C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807BC5C4  40 81 00 0C */	ble lbl_807BC5D0
/* 807BC5C8  FC 00 10 34 */	frsqrte f0, f2
/* 807BC5CC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807BC5D0:
/* 807BC5D0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 807BC5D4  4B AA B0 A1 */	bl cM_atan2s__Fff
/* 807BC5D8  7C 03 00 D0 */	neg r0, r3
/* 807BC5DC  B0 1C 04 DC */	sth r0, 0x4dc(r28)
/* 807BC5E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807BC5E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807BC5E8  80 63 00 00 */	lwz r3, 0(r3)
/* 807BC5EC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 807BC5F0  4B 84 FD ED */	bl mDoMtx_YrotS__FPA4_fs
/* 807BC5F4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807BC5F8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807BC5FC  80 63 00 00 */	lwz r3, 0(r3)
/* 807BC600  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 807BC604  4B 84 FD 99 */	bl mDoMtx_XrotM__FPA4_fs
/* 807BC608  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807BC60C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807BC610  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807BC614  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 807BC618  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807BC61C  38 61 00 38 */	addi r3, r1, 0x38
/* 807BC620  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 807BC624  4B AB 48 C9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807BC628  80 1C 06 38 */	lwz r0, 0x638(r28)
/* 807BC62C  60 00 00 0C */	ori r0, r0, 0xc
/* 807BC630  90 1C 06 38 */	stw r0, 0x638(r28)
/* 807BC634  80 1C 06 38 */	lwz r0, 0x638(r28)
/* 807BC638  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 807BC63C  90 1C 06 38 */	stw r0, 0x638(r28)
/* 807BC640  38 7C 06 38 */	addi r3, r28, 0x638
/* 807BC644  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807BC648  4B 8C 84 31 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 807BC64C  38 00 00 64 */	li r0, 0x64
/* 807BC650  B0 1C 05 E2 */	sth r0, 0x5e2(r28)
lbl_807BC654:
/* 807BC654  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 807BC658  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 807BC65C  7C 65 1B 78 */	mr r5, r3
/* 807BC660  4B B8 AA 31 */	bl PSVECAdd
lbl_807BC664:
/* 807BC664  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807BC668  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807BC66C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 807BC670  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807BC674  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807BC678  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807BC67C  C0 1C 05 F8 */	lfs f0, 0x5f8(r28)
/* 807BC680  EC 01 00 2A */	fadds f0, f1, f0
/* 807BC684  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807BC688  38 7C 08 94 */	addi r3, r28, 0x894
/* 807BC68C  38 81 00 20 */	addi r4, r1, 0x20
/* 807BC690  4B AB 2F B9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807BC694  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BC698  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BC69C  3B A3 23 3C */	addi r29, r3, 0x233c
/* 807BC6A0  7F A3 EB 78 */	mr r3, r29
/* 807BC6A4  38 9C 07 70 */	addi r4, r28, 0x770
/* 807BC6A8  4B AA 85 01 */	bl Set__4cCcSFP8cCcD_Obj
/* 807BC6AC  3B 60 00 00 */	li r27, 0
/* 807BC6B0  80 1C 04 A4 */	lwz r0, 0x4a4(r28)
/* 807BC6B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BC6B8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807BC6BC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807BC6C0  38 81 00 10 */	addi r4, r1, 0x10
/* 807BC6C4  4B 85 D1 35 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807BC6C8  7C 7A 1B 79 */	or. r26, r3, r3
/* 807BC6CC  41 82 00 60 */	beq lbl_807BC72C
/* 807BC6D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BC6D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BC6D8  3B 23 56 B8 */	addi r25, r3, 0x56b8
/* 807BC6DC  3B 00 00 01 */	li r24, 1
/* 807BC6E0  7F 23 CB 78 */	mr r3, r25
/* 807BC6E4  4B 8B 71 01 */	bl LockonTruth__12dAttention_cFv
/* 807BC6E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BC6EC  40 82 00 14 */	bne lbl_807BC700
/* 807BC6F0  80 19 03 34 */	lwz r0, 0x334(r25)
/* 807BC6F4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 807BC6F8  40 82 00 08 */	bne lbl_807BC700
/* 807BC6FC  3B 00 00 00 */	li r24, 0
lbl_807BC700:
/* 807BC700  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 807BC704  41 82 00 28 */	beq lbl_807BC72C
/* 807BC708  7F 23 CB 78 */	mr r3, r25
/* 807BC70C  38 80 00 00 */	li r4, 0
/* 807BC710  4B 8B 6E 2D */	bl LockonTarget__12dAttention_cFl
/* 807BC714  7C 1A 18 40 */	cmplw r26, r3
/* 807BC718  40 82 00 14 */	bne lbl_807BC72C
/* 807BC71C  3B 60 00 01 */	li r27, 1
/* 807BC720  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 807BC724  64 00 00 20 */	oris r0, r0, 0x20
/* 807BC728  90 1A 05 5C */	stw r0, 0x55c(r26)
lbl_807BC72C:
/* 807BC72C  38 7C 07 70 */	addi r3, r28, 0x770
/* 807BC730  4B 8C 7D 31 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807BC734  28 03 00 00 */	cmplwi r3, 0
/* 807BC738  40 82 00 10 */	bne lbl_807BC748
/* 807BC73C  80 1C 06 94 */	lwz r0, 0x694(r28)
/* 807BC740  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BC744  41 82 02 74 */	beq lbl_807BC9B8
lbl_807BC748:
/* 807BC748  7F 83 E3 78 */	mr r3, r28
/* 807BC74C  4B FF FA 81 */	bl impact_eff_set__FP15e_tk_ball_class
/* 807BC750  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 807BC754  1C 00 FF FF */	mulli r0, r0, -1
/* 807BC758  B0 1C 04 DC */	sth r0, 0x4dc(r28)
/* 807BC75C  7F 60 07 75 */	extsb. r0, r27
/* 807BC760  41 82 00 34 */	beq lbl_807BC794
/* 807BC764  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807BC768  88 03 05 68 */	lbz r0, 0x568(r3)
/* 807BC76C  28 00 00 00 */	cmplwi r0, 0
/* 807BC770  41 82 00 24 */	beq lbl_807BC794
/* 807BC774  38 00 00 01 */	li r0, 1
/* 807BC778  B0 1C 05 DE */	sth r0, 0x5de(r28)
/* 807BC77C  38 00 00 00 */	li r0, 0
/* 807BC780  B0 1C 05 E0 */	sth r0, 0x5e0(r28)
/* 807BC784  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 807BC788  38 03 80 00 */	addi r0, r3, -32768
/* 807BC78C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807BC790  48 00 00 54 */	b lbl_807BC7E4
lbl_807BC794:
/* 807BC794  38 00 00 02 */	li r0, 2
/* 807BC798  B0 1C 05 DE */	sth r0, 0x5de(r28)
/* 807BC79C  38 00 00 00 */	li r0, 0
/* 807BC7A0  B0 1C 05 E0 */	sth r0, 0x5e0(r28)
/* 807BC7A4  C0 1C 04 F8 */	lfs f0, 0x4f8(r28)
/* 807BC7A8  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 807BC7AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 807BC7B0  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 807BC7B4  C0 1C 05 00 */	lfs f0, 0x500(r28)
/* 807BC7B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 807BC7BC  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 807BC7C0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807BC7C4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 807BC7C8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 807BC7CC  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 807BC7D0  7C 65 1B 78 */	mr r5, r3
/* 807BC7D4  4B B8 A8 BD */	bl PSVECAdd
/* 807BC7D8  38 00 00 3C */	li r0, 0x3c
/* 807BC7DC  B0 1C 05 E2 */	sth r0, 0x5e2(r28)
/* 807BC7E0  48 00 02 20 */	b lbl_807BCA00
lbl_807BC7E4:
/* 807BC7E4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 807BC7E8  C0 1C 05 F8 */	lfs f0, 0x5f8(r28)
/* 807BC7EC  EC 01 00 2A */	fadds f0, f1, f0
/* 807BC7F0  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 807BC7F4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807BC7F8  D0 1C 04 A8 */	stfs f0, 0x4a8(r28)
/* 807BC7FC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807BC800  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 807BC804  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807BC808  D0 1C 04 B0 */	stfs f0, 0x4b0(r28)
/* 807BC80C  38 61 00 14 */	addi r3, r1, 0x14
/* 807BC810  38 9C 05 E8 */	addi r4, r28, 0x5e8
/* 807BC814  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 807BC818  4B AA A3 1D */	bl __mi__4cXyzCFRC3Vec
/* 807BC81C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807BC820  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807BC824  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807BC828  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807BC82C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807BC830  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807BC834  38 61 00 38 */	addi r3, r1, 0x38
/* 807BC838  4B B8 A9 01 */	bl PSVECSquareMag
/* 807BC83C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807BC840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BC844  40 81 00 58 */	ble lbl_807BC89C
/* 807BC848  FC 00 08 34 */	frsqrte f0, f1
/* 807BC84C  C8 9E 00 20 */	lfd f4, 0x20(r30)
/* 807BC850  FC 44 00 32 */	fmul f2, f4, f0
/* 807BC854  C8 7E 00 28 */	lfd f3, 0x28(r30)
/* 807BC858  FC 00 00 32 */	fmul f0, f0, f0
/* 807BC85C  FC 01 00 32 */	fmul f0, f1, f0
/* 807BC860  FC 03 00 28 */	fsub f0, f3, f0
/* 807BC864  FC 02 00 32 */	fmul f0, f2, f0
/* 807BC868  FC 44 00 32 */	fmul f2, f4, f0
/* 807BC86C  FC 00 00 32 */	fmul f0, f0, f0
/* 807BC870  FC 01 00 32 */	fmul f0, f1, f0
/* 807BC874  FC 03 00 28 */	fsub f0, f3, f0
/* 807BC878  FC 02 00 32 */	fmul f0, f2, f0
/* 807BC87C  FC 44 00 32 */	fmul f2, f4, f0
/* 807BC880  FC 00 00 32 */	fmul f0, f0, f0
/* 807BC884  FC 01 00 32 */	fmul f0, f1, f0
/* 807BC888  FC 03 00 28 */	fsub f0, f3, f0
/* 807BC88C  FC 02 00 32 */	fmul f0, f2, f0
/* 807BC890  FC 21 00 32 */	fmul f1, f1, f0
/* 807BC894  FC 20 08 18 */	frsp f1, f1
/* 807BC898  48 00 00 88 */	b lbl_807BC920
lbl_807BC89C:
/* 807BC89C  C8 1E 00 30 */	lfd f0, 0x30(r30)
/* 807BC8A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BC8A4  40 80 00 10 */	bge lbl_807BC8B4
/* 807BC8A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BC8AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807BC8B0  48 00 00 70 */	b lbl_807BC920
lbl_807BC8B4:
/* 807BC8B4  D0 21 00 08 */	stfs f1, 8(r1)
/* 807BC8B8  80 81 00 08 */	lwz r4, 8(r1)
/* 807BC8BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807BC8C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807BC8C4  7C 03 00 00 */	cmpw r3, r0
/* 807BC8C8  41 82 00 14 */	beq lbl_807BC8DC
/* 807BC8CC  40 80 00 40 */	bge lbl_807BC90C
/* 807BC8D0  2C 03 00 00 */	cmpwi r3, 0
/* 807BC8D4  41 82 00 20 */	beq lbl_807BC8F4
/* 807BC8D8  48 00 00 34 */	b lbl_807BC90C
lbl_807BC8DC:
/* 807BC8DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BC8E0  41 82 00 0C */	beq lbl_807BC8EC
/* 807BC8E4  38 00 00 01 */	li r0, 1
/* 807BC8E8  48 00 00 28 */	b lbl_807BC910
lbl_807BC8EC:
/* 807BC8EC  38 00 00 02 */	li r0, 2
/* 807BC8F0  48 00 00 20 */	b lbl_807BC910
lbl_807BC8F4:
/* 807BC8F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BC8F8  41 82 00 0C */	beq lbl_807BC904
/* 807BC8FC  38 00 00 05 */	li r0, 5
/* 807BC900  48 00 00 10 */	b lbl_807BC910
lbl_807BC904:
/* 807BC904  38 00 00 03 */	li r0, 3
/* 807BC908  48 00 00 08 */	b lbl_807BC910
lbl_807BC90C:
/* 807BC90C  38 00 00 04 */	li r0, 4
lbl_807BC910:
/* 807BC910  2C 00 00 01 */	cmpwi r0, 1
/* 807BC914  40 82 00 0C */	bne lbl_807BC920
/* 807BC918  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BC91C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807BC920:
/* 807BC920  D0 3C 05 F4 */	stfs f1, 0x5f4(r28)
/* 807BC924  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807BC928  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807BC92C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807BC930  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807BC934  88 03 05 68 */	lbz r0, 0x568(r3)
/* 807BC938  28 00 00 00 */	cmplwi r0, 0
/* 807BC93C  41 82 00 0C */	beq lbl_807BC948
/* 807BC940  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 807BC944  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_807BC948:
/* 807BC948  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807BC94C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807BC950  80 63 00 00 */	lwz r3, 0(r3)
/* 807BC954  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 807BC958  4B 84 FA 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 807BC95C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807BC960  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807BC964  80 63 00 00 */	lwz r3, 0(r3)
/* 807BC968  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 807BC96C  4B 84 FA 31 */	bl mDoMtx_XrotM__FPA4_fs
/* 807BC970  38 61 00 2C */	addi r3, r1, 0x2c
/* 807BC974  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 807BC978  4B AB 45 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807BC97C  80 1C 06 38 */	lwz r0, 0x638(r28)
/* 807BC980  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 807BC984  90 1C 06 38 */	stw r0, 0x638(r28)
/* 807BC988  80 1C 06 38 */	lwz r0, 0x638(r28)
/* 807BC98C  60 00 00 02 */	ori r0, r0, 2
/* 807BC990  90 1C 06 38 */	stw r0, 0x638(r28)
/* 807BC994  38 00 00 64 */	li r0, 0x64
/* 807BC998  B0 1C 05 E2 */	sth r0, 0x5e2(r28)
/* 807BC99C  38 00 00 0A */	li r0, 0xa
/* 807BC9A0  B0 1C 05 E4 */	sth r0, 0x5e4(r28)
/* 807BC9A4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 807BC9A8  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 807BC9AC  7C 65 1B 78 */	mr r5, r3
/* 807BC9B0  4B B8 A6 E1 */	bl PSVECAdd
/* 807BC9B4  48 00 00 4C */	b lbl_807BCA00
lbl_807BC9B8:
/* 807BC9B8  38 7C 06 38 */	addi r3, r28, 0x638
/* 807BC9BC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807BC9C0  4B 8C 81 05 */	bl MoveCAt__8dCcD_SphFR4cXyz
/* 807BC9C4  7F A3 EB 78 */	mr r3, r29
/* 807BC9C8  38 9C 06 38 */	addi r4, r28, 0x638
/* 807BC9CC  4B AA 81 DD */	bl Set__4cCcSFP8cCcD_Obj
/* 807BC9D0  7F 83 E3 78 */	mr r3, r28
/* 807BC9D4  4B FF F6 9D */	bl simple_bg_check__FP15e_tk_ball_class
/* 807BC9D8  2C 03 00 00 */	cmpwi r3, 0
/* 807BC9DC  40 82 00 14 */	bne lbl_807BC9F0
/* 807BC9E0  38 7C 06 38 */	addi r3, r28, 0x638
/* 807BC9E4  4B 8C 78 DD */	bl ChkAtHit__12dCcD_GObjInfFv
/* 807BC9E8  28 03 00 00 */	cmplwi r3, 0
/* 807BC9EC  41 82 00 14 */	beq lbl_807BCA00
lbl_807BC9F0:
/* 807BC9F0  7F 83 E3 78 */	mr r3, r28
/* 807BC9F4  4B FF F7 D9 */	bl impact_eff_set__FP15e_tk_ball_class
/* 807BC9F8  7F 83 E3 78 */	mr r3, r28
/* 807BC9FC  4B 85 D2 81 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807BCA00:
/* 807BCA00  39 61 00 70 */	addi r11, r1, 0x70
/* 807BCA04  4B BA 58 11 */	bl _restgpr_24
/* 807BCA08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807BCA0C  7C 08 03 A6 */	mtlr r0
/* 807BCA10  38 21 00 70 */	addi r1, r1, 0x70
/* 807BCA14  4E 80 00 20 */	blr 
