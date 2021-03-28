lbl_80A5A7D8:
/* 80A5A7D8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80A5A7DC  7C 08 02 A6 */	mflr r0
/* 80A5A7E0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80A5A7E4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80A5A7E8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80A5A7EC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80A5A7F0  4B 90 79 D4 */	b _savegpr_23
/* 80A5A7F4  7C 7F 1B 78 */	mr r31, r3
/* 80A5A7F8  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A5A7FC  3B C4 DE FC */	addi r30, r4, lit_4030@l
/* 80A5A800  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A5A804  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l
/* 80A5A808  83 9A 5D AC */	lwz r28, 0x5dac(r26)
/* 80A5A80C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A5A810  54 00 00 3E */	slwi r0, r0, 0
/* 80A5A814  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80A5A818  80 A3 05 5C */	lwz r5, 0x55c(r3)
/* 80A5A81C  3C 80 E0 00 */	lis r4, 0xE000 /* 0xDFFFFFF5@ha */
/* 80A5A820  38 04 FF F5 */	addi r0, r4, 0xFFF5 /* 0xDFFFFFF5@l */
/* 80A5A824  7C A0 00 38 */	and r0, r5, r0
/* 80A5A828  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80A5A82C  88 03 05 B5 */	lbz r0, 0x5b5(r3)
/* 80A5A830  28 00 00 00 */	cmplwi r0, 0
/* 80A5A834  41 82 01 34 */	beq lbl_80A5A968
/* 80A5A838  38 61 00 58 */	addi r3, r1, 0x58
/* 80A5A83C  38 9C 05 38 */	addi r4, r28, 0x538
/* 80A5A840  38 BF 06 14 */	addi r5, r31, 0x614
/* 80A5A844  4B 80 C2 F0 */	b __mi__4cXyzCFRC3Vec
/* 80A5A848  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80A5A84C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5A850  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A5A854  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5A858  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80A5A85C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5A860  38 61 00 70 */	addi r3, r1, 0x70
/* 80A5A864  4B 8E C8 D4 */	b PSVECSquareMag
/* 80A5A868  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5A86C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5A870  40 81 00 58 */	ble lbl_80A5A8C8
/* 80A5A874  FC 00 08 34 */	frsqrte f0, f1
/* 80A5A878  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80A5A87C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5A880  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80A5A884  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5A888  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5A88C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5A890  FC 02 00 32 */	fmul f0, f2, f0
/* 80A5A894  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5A898  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5A89C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5A8A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5A8A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A5A8A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5A8AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5A8B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5A8B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5A8B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A5A8BC  FC 21 00 32 */	fmul f1, f1, f0
/* 80A5A8C0  FC 20 08 18 */	frsp f1, f1
/* 80A5A8C4  48 00 00 88 */	b lbl_80A5A94C
lbl_80A5A8C8:
/* 80A5A8C8  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80A5A8CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5A8D0  40 80 00 10 */	bge lbl_80A5A8E0
/* 80A5A8D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A5A8D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A5A8DC  48 00 00 70 */	b lbl_80A5A94C
lbl_80A5A8E0:
/* 80A5A8E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A5A8E4  80 81 00 08 */	lwz r4, 8(r1)
/* 80A5A8E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A5A8EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A5A8F0  7C 03 00 00 */	cmpw r3, r0
/* 80A5A8F4  41 82 00 14 */	beq lbl_80A5A908
/* 80A5A8F8  40 80 00 40 */	bge lbl_80A5A938
/* 80A5A8FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A5A900  41 82 00 20 */	beq lbl_80A5A920
/* 80A5A904  48 00 00 34 */	b lbl_80A5A938
lbl_80A5A908:
/* 80A5A908  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A5A90C  41 82 00 0C */	beq lbl_80A5A918
/* 80A5A910  38 00 00 01 */	li r0, 1
/* 80A5A914  48 00 00 28 */	b lbl_80A5A93C
lbl_80A5A918:
/* 80A5A918  38 00 00 02 */	li r0, 2
/* 80A5A91C  48 00 00 20 */	b lbl_80A5A93C
lbl_80A5A920:
/* 80A5A920  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A5A924  41 82 00 0C */	beq lbl_80A5A930
/* 80A5A928  38 00 00 05 */	li r0, 5
/* 80A5A92C  48 00 00 10 */	b lbl_80A5A93C
lbl_80A5A930:
/* 80A5A930  38 00 00 03 */	li r0, 3
/* 80A5A934  48 00 00 08 */	b lbl_80A5A93C
lbl_80A5A938:
/* 80A5A938  38 00 00 04 */	li r0, 4
lbl_80A5A93C:
/* 80A5A93C  2C 00 00 01 */	cmpwi r0, 1
/* 80A5A940  40 82 00 0C */	bne lbl_80A5A94C
/* 80A5A944  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A5A948  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A5A94C:
/* 80A5A94C  D0 3F 05 C4 */	stfs f1, 0x5c4(r31)
/* 80A5A950  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80A5A954  38 80 80 00 */	li r4, -32768
/* 80A5A958  38 A0 00 01 */	li r5, 1
/* 80A5A95C  38 C0 10 00 */	li r6, 0x1000
/* 80A5A960  4B 81 5C A8 */	b cLib_addCalcAngleS2__FPssss
/* 80A5A964  48 00 00 10 */	b lbl_80A5A974
lbl_80A5A968:
/* 80A5A968  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80A5A96C  4B 5B FF F8 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A5A970  D0 3F 05 C4 */	stfs f1, 0x5c4(r31)
lbl_80A5A974:
/* 80A5A974  7F E3 FB 78 */	mr r3, r31
/* 80A5A978  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80A5A97C  4B 5B FD 94 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A5A980  B0 7F 05 C8 */	sth r3, 0x5c8(r31)
/* 80A5A984  38 00 00 00 */	li r0, 0
/* 80A5A988  98 1F 05 FC */	stb r0, 0x5fc(r31)
/* 80A5A98C  98 1F 0A ED */	stb r0, 0xaed(r31)
/* 80A5A990  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 80A5A994  3B A0 00 01 */	li r29, 1
/* 80A5A998  3B 20 00 01 */	li r25, 1
/* 80A5A99C  3B 60 00 00 */	li r27, 0
/* 80A5A9A0  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80A5A9A4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5A9A8  A8 1F 05 E8 */	lha r0, 0x5e8(r31)
/* 80A5A9AC  2C 00 00 6F */	cmpwi r0, 0x6f
/* 80A5A9B0  41 82 03 F8 */	beq lbl_80A5ADA8
/* 80A5A9B4  40 80 00 88 */	bge lbl_80A5AA3C
/* 80A5A9B8  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A5A9BC  41 82 01 98 */	beq lbl_80A5AB54
/* 80A5A9C0  40 80 00 38 */	bge lbl_80A5A9F8
/* 80A5A9C4  2C 00 00 07 */	cmpwi r0, 7
/* 80A5A9C8  41 82 04 FC */	beq lbl_80A5AEC4
/* 80A5A9CC  40 80 00 1C */	bge lbl_80A5A9E8
/* 80A5A9D0  2C 00 00 05 */	cmpwi r0, 5
/* 80A5A9D4  41 82 01 00 */	beq lbl_80A5AAD4
/* 80A5A9D8  40 80 01 1C */	bge lbl_80A5AAF4
/* 80A5A9DC  2C 00 00 04 */	cmpwi r0, 4
/* 80A5A9E0  40 80 00 D4 */	bge lbl_80A5AAB4
/* 80A5A9E4  48 00 04 E0 */	b lbl_80A5AEC4
lbl_80A5A9E8:
/* 80A5A9E8  2C 00 00 09 */	cmpwi r0, 9
/* 80A5A9EC  41 82 04 D8 */	beq lbl_80A5AEC4
/* 80A5A9F0  40 80 01 38 */	bge lbl_80A5AB28
/* 80A5A9F4  48 00 01 20 */	b lbl_80A5AB14
lbl_80A5A9F8:
/* 80A5A9F8  2C 00 00 64 */	cmpwi r0, 0x64
/* 80A5A9FC  41 82 01 D8 */	beq lbl_80A5ABD4
/* 80A5AA00  40 80 00 28 */	bge lbl_80A5AA28
/* 80A5AA04  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A5AA08  41 82 01 90 */	beq lbl_80A5AB98
/* 80A5AA0C  40 80 00 10 */	bge lbl_80A5AA1C
/* 80A5AA10  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A5AA14  40 80 01 6C */	bge lbl_80A5AB80
/* 80A5AA18  48 00 04 AC */	b lbl_80A5AEC4
lbl_80A5AA1C:
/* 80A5AA1C  2C 00 00 17 */	cmpwi r0, 0x17
/* 80A5AA20  40 80 04 A4 */	bge lbl_80A5AEC4
/* 80A5AA24  48 00 01 A0 */	b lbl_80A5ABC4
lbl_80A5AA28:
/* 80A5AA28  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80A5AA2C  40 80 03 64 */	bge lbl_80A5AD90
/* 80A5AA30  2C 00 00 66 */	cmpwi r0, 0x66
/* 80A5AA34  40 80 04 90 */	bge lbl_80A5AEC4
/* 80A5AA38  48 00 03 48 */	b lbl_80A5AD80
lbl_80A5AA3C:
/* 80A5AA3C  2C 00 00 C9 */	cmpwi r0, 0xc9
/* 80A5AA40  41 82 04 28 */	beq lbl_80A5AE68
/* 80A5AA44  40 80 00 3C */	bge lbl_80A5AA80
/* 80A5AA48  2C 00 00 74 */	cmpwi r0, 0x74
/* 80A5AA4C  41 82 03 D4 */	beq lbl_80A5AE20
/* 80A5AA50  40 80 00 1C */	bge lbl_80A5AA6C
/* 80A5AA54  2C 00 00 72 */	cmpwi r0, 0x72
/* 80A5AA58  41 82 03 98 */	beq lbl_80A5ADF0
/* 80A5AA5C  40 80 03 AC */	bge lbl_80A5AE08
/* 80A5AA60  2C 00 00 71 */	cmpwi r0, 0x71
/* 80A5AA64  40 80 03 74 */	bge lbl_80A5ADD8
/* 80A5AA68  48 00 03 58 */	b lbl_80A5ADC0
lbl_80A5AA6C:
/* 80A5AA6C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80A5AA70  40 80 03 E0 */	bge lbl_80A5AE50
/* 80A5AA74  2C 00 00 76 */	cmpwi r0, 0x76
/* 80A5AA78  40 80 04 4C */	bge lbl_80A5AEC4
/* 80A5AA7C  48 00 03 BC */	b lbl_80A5AE38
lbl_80A5AA80:
/* 80A5AA80  2C 00 01 2C */	cmpwi r0, 0x12c
/* 80A5AA84  41 82 04 18 */	beq lbl_80A5AE9C
/* 80A5AA88  40 80 00 1C */	bge lbl_80A5AAA4
/* 80A5AA8C  2C 00 00 CC */	cmpwi r0, 0xcc
/* 80A5AA90  41 82 03 FC */	beq lbl_80A5AE8C
/* 80A5AA94  40 80 04 30 */	bge lbl_80A5AEC4
/* 80A5AA98  2C 00 00 CB */	cmpwi r0, 0xcb
/* 80A5AA9C  40 80 03 E4 */	bge lbl_80A5AE80
/* 80A5AAA0  48 00 04 24 */	b lbl_80A5AEC4
lbl_80A5AAA4:
/* 80A5AAA4  2C 00 01 2E */	cmpwi r0, 0x12e
/* 80A5AAA8  41 82 04 14 */	beq lbl_80A5AEBC
/* 80A5AAAC  40 80 04 18 */	bge lbl_80A5AEC4
/* 80A5AAB0  48 00 03 FC */	b lbl_80A5AEAC
lbl_80A5AAB4:
/* 80A5AAB4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5AAB8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5AABC  7F E3 FB 78 */	mr r3, r31
/* 80A5AAC0  4B FE F6 F1 */	bl npc_ks_pole_ori__FP12npc_ks_class
/* 80A5AAC4  38 00 00 01 */	li r0, 1
/* 80A5AAC8  98 1F 05 FC */	stb r0, 0x5fc(r31)
/* 80A5AACC  3B A0 00 00 */	li r29, 0
/* 80A5AAD0  48 00 03 F4 */	b lbl_80A5AEC4
lbl_80A5AAD4:
/* 80A5AAD4  38 00 00 01 */	li r0, 1
/* 80A5AAD8  98 1F 05 FC */	stb r0, 0x5fc(r31)
/* 80A5AADC  7F E3 FB 78 */	mr r3, r31
/* 80A5AAE0  4B FE FA 65 */	bl npc_ks_ori__FP12npc_ks_class
/* 80A5AAE4  7C 79 1B 79 */	or. r25, r3, r3
/* 80A5AAE8  40 82 03 DC */	bne lbl_80A5AEC4
/* 80A5AAEC  3B A0 00 00 */	li r29, 0
/* 80A5AAF0  48 00 03 D4 */	b lbl_80A5AEC4
lbl_80A5AAF4:
/* 80A5AAF4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5AAF8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5AAFC  38 00 00 01 */	li r0, 1
/* 80A5AB00  98 1F 05 FC */	stb r0, 0x5fc(r31)
/* 80A5AB04  7F E3 FB 78 */	mr r3, r31
/* 80A5AB08  4B FF 01 61 */	bl npc_ks_ori2__FP12npc_ks_class
/* 80A5AB0C  7C 79 1B 78 */	mr r25, r3
/* 80A5AB10  48 00 03 B4 */	b lbl_80A5AEC4
lbl_80A5AB14:
/* 80A5AB14  7F E3 FB 78 */	mr r3, r31
/* 80A5AB18  4B FF 0C A5 */	bl npc_ks_home__FP12npc_ks_class
/* 80A5AB1C  38 00 00 01 */	li r0, 1
/* 80A5AB20  98 1F 05 FC */	stb r0, 0x5fc(r31)
/* 80A5AB24  48 00 03 A0 */	b lbl_80A5AEC4
lbl_80A5AB28:
/* 80A5AB28  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5AB2C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5AB30  7F E3 FB 78 */	mr r3, r31
/* 80A5AB34  4B FF 34 CD */	bl npc_ks_hang__FP12npc_ks_class
/* 80A5AB38  38 00 00 02 */	li r0, 2
/* 80A5AB3C  98 1F 05 FC */	stb r0, 0x5fc(r31)
/* 80A5AB40  38 00 00 01 */	li r0, 1
/* 80A5AB44  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 80A5AB48  3B A0 00 00 */	li r29, 0
/* 80A5AB4C  3B 20 00 00 */	li r25, 0
/* 80A5AB50  48 00 03 74 */	b lbl_80A5AEC4
lbl_80A5AB54:
/* 80A5AB54  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5AB58  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5AB5C  7F E3 FB 78 */	mr r3, r31
/* 80A5AB60  4B FF 3C A1 */	bl npc_ks_hang_s__FP12npc_ks_class
/* 80A5AB64  38 00 00 02 */	li r0, 2
/* 80A5AB68  98 1F 05 FC */	stb r0, 0x5fc(r31)
/* 80A5AB6C  38 00 00 01 */	li r0, 1
/* 80A5AB70  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 80A5AB74  3B A0 00 00 */	li r29, 0
/* 80A5AB78  3B 20 00 00 */	li r25, 0
/* 80A5AB7C  48 00 03 48 */	b lbl_80A5AEC4
lbl_80A5AB80:
/* 80A5AB80  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5AB84  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5AB88  7F E3 FB 78 */	mr r3, r31
/* 80A5AB8C  4B FF 28 AD */	bl npc_ks_to_hang__FP12npc_ks_class
/* 80A5AB90  3B 20 00 02 */	li r25, 2
/* 80A5AB94  48 00 03 30 */	b lbl_80A5AEC4
lbl_80A5AB98:
/* 80A5AB98  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5AB9C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5ABA0  7F E3 FB 78 */	mr r3, r31
/* 80A5ABA4  4B FF 42 75 */	bl npc_ks_e_hang__FP12npc_ks_class
/* 80A5ABA8  38 00 00 03 */	li r0, 3
/* 80A5ABAC  98 1F 05 FC */	stb r0, 0x5fc(r31)
/* 80A5ABB0  38 00 00 01 */	li r0, 1
/* 80A5ABB4  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 80A5ABB8  3B A0 00 00 */	li r29, 0
/* 80A5ABBC  3B 20 00 00 */	li r25, 0
/* 80A5ABC0  48 00 03 04 */	b lbl_80A5AEC4
lbl_80A5ABC4:
/* 80A5ABC4  7F E3 FB 78 */	mr r3, r31
/* 80A5ABC8  4B FF 46 61 */	bl npc_ks_e_jump__FP12npc_ks_class
/* 80A5ABCC  7C 79 1B 78 */	mr r25, r3
/* 80A5ABD0  48 00 02 F4 */	b lbl_80A5AEC4
lbl_80A5ABD4:
/* 80A5ABD4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5ABD8  3B 60 00 01 */	li r27, 1
/* 80A5ABDC  4B FE E4 79 */	bl checkDoorDemo__Fv
/* 80A5ABE0  2C 03 00 00 */	cmpwi r3, 0
/* 80A5ABE4  41 82 01 74 */	beq lbl_80A5AD58
/* 80A5ABE8  A8 1F 05 EA */	lha r0, 0x5ea(r31)
/* 80A5ABEC  2C 00 00 07 */	cmpwi r0, 7
/* 80A5ABF0  41 80 00 0C */	blt lbl_80A5ABFC
/* 80A5ABF4  38 00 00 00 */	li r0, 0
/* 80A5ABF8  B0 1F 05 EA */	sth r0, 0x5ea(r31)
lbl_80A5ABFC:
/* 80A5ABFC  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80A5AC00  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80A5AC04  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A5AC08  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 80A5AC0C  4B 81 4E 30 */	b cLib_addCalc2__FPffff
/* 80A5AC10  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 80A5AC14  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80A5AC18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5AC1C  40 81 00 58 */	ble lbl_80A5AC74
/* 80A5AC20  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A5AC24  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A5AC28  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5AC2C  A8 9F 05 C8 */	lha r4, 0x5c8(r31)
/* 80A5AC30  4B 5B 17 AC */	b mDoMtx_YrotS__FPA4_fs
/* 80A5AC34  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5AC38  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5AC3C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5AC40  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80A5AC44  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5AC48  38 61 00 70 */	addi r3, r1, 0x70
/* 80A5AC4C  38 81 00 64 */	addi r4, r1, 0x64
/* 80A5AC50  4B 81 62 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 80A5AC54  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80A5AC58  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80A5AC5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5AC60  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A5AC64  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80A5AC68  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80A5AC6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5AC70  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80A5AC74:
/* 80A5AC74  3B A0 00 00 */	li r29, 0
/* 80A5AC78  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5AC7C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A5AC80  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5AC84  7C 18 07 74 */	extsb r24, r0
/* 80A5AC88  3C 60 80 45 */	lis r3, struct_80450D64+0x2@ha
/* 80A5AC8C  8A E3 0D 66 */	lbz r23, struct_80450D64+0x2@l(r3)
/* 80A5AC90  7E F7 07 74 */	extsb r23, r23
/* 80A5AC94  7C 18 B8 00 */	cmpw r24, r23
/* 80A5AC98  41 82 00 C8 */	beq lbl_80A5AD60
/* 80A5AC9C  2C 18 00 00 */	cmpwi r24, 0
/* 80A5ACA0  40 82 00 0C */	bne lbl_80A5ACAC
/* 80A5ACA4  2C 17 00 03 */	cmpwi r23, 3
/* 80A5ACA8  41 82 00 9C */	beq lbl_80A5AD44
lbl_80A5ACAC:
/* 80A5ACAC  2C 18 00 03 */	cmpwi r24, 3
/* 80A5ACB0  40 82 00 0C */	bne lbl_80A5ACBC
/* 80A5ACB4  2C 17 00 04 */	cmpwi r23, 4
/* 80A5ACB8  41 82 00 8C */	beq lbl_80A5AD44
lbl_80A5ACBC:
/* 80A5ACBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5ACC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5ACC4  38 80 00 52 */	li r4, 0x52
/* 80A5ACC8  7F 05 C3 78 */	mr r5, r24
/* 80A5ACCC  4B 5D A6 94 */	b isSwitch__10dSv_info_cCFii
/* 80A5ACD0  2C 03 00 00 */	cmpwi r3, 0
/* 80A5ACD4  41 82 00 14 */	beq lbl_80A5ACE8
/* 80A5ACD8  2C 18 00 04 */	cmpwi r24, 4
/* 80A5ACDC  40 82 00 0C */	bne lbl_80A5ACE8
/* 80A5ACE0  2C 17 00 00 */	cmpwi r23, 0
/* 80A5ACE4  41 82 00 60 */	beq lbl_80A5AD44
lbl_80A5ACE8:
/* 80A5ACE8  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A5ACEC  28 00 00 02 */	cmplwi r0, 2
/* 80A5ACF0  41 82 00 0C */	beq lbl_80A5ACFC
/* 80A5ACF4  28 00 00 03 */	cmplwi r0, 3
/* 80A5ACF8  40 82 00 14 */	bne lbl_80A5AD0C
lbl_80A5ACFC:
/* 80A5ACFC  2C 18 00 00 */	cmpwi r24, 0
/* 80A5AD00  40 82 00 0C */	bne lbl_80A5AD0C
/* 80A5AD04  2C 17 00 0F */	cmpwi r23, 0xf
/* 80A5AD08  41 82 00 3C */	beq lbl_80A5AD44
lbl_80A5AD0C:
/* 80A5AD0C  2C 18 00 01 */	cmpwi r24, 1
/* 80A5AD10  40 82 00 0C */	bne lbl_80A5AD1C
/* 80A5AD14  2C 17 00 04 */	cmpwi r23, 4
/* 80A5AD18  41 82 00 2C */	beq lbl_80A5AD44
lbl_80A5AD1C:
/* 80A5AD1C  2C 18 00 00 */	cmpwi r24, 0
/* 80A5AD20  40 82 00 14 */	bne lbl_80A5AD34
/* 80A5AD24  2C 17 00 01 */	cmpwi r23, 1
/* 80A5AD28  40 82 00 0C */	bne lbl_80A5AD34
/* 80A5AD2C  28 00 00 02 */	cmplwi r0, 2
/* 80A5AD30  40 80 00 14 */	bge lbl_80A5AD44
lbl_80A5AD34:
/* 80A5AD34  2C 18 00 09 */	cmpwi r24, 9
/* 80A5AD38  40 82 00 28 */	bne lbl_80A5AD60
/* 80A5AD3C  2C 17 00 0C */	cmpwi r23, 0xc
/* 80A5AD40  41 82 00 20 */	beq lbl_80A5AD60
lbl_80A5AD44:
/* 80A5AD44  38 00 00 65 */	li r0, 0x65
/* 80A5AD48  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5AD4C  38 00 00 00 */	li r0, 0
/* 80A5AD50  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A5AD54  48 00 01 70 */	b lbl_80A5AEC4
lbl_80A5AD58:
/* 80A5AD58  38 00 00 01 */	li r0, 1
/* 80A5AD5C  98 1F 0A EC */	stb r0, 0xaec(r31)
lbl_80A5AD60:
/* 80A5AD60  7F E3 FB 78 */	mr r3, r31
/* 80A5AD64  4B FF 87 C9 */	bl npc_ks_option__FP12npc_ks_class
/* 80A5AD68  7C 79 1B 78 */	mr r25, r3
/* 80A5AD6C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80A5AD70  98 1F 04 E2 */	stb r0, 0x4e2(r31)
/* 80A5AD74  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5AD78  98 1F 04 8C */	stb r0, 0x48c(r31)
/* 80A5AD7C  48 00 01 48 */	b lbl_80A5AEC4
lbl_80A5AD80:
/* 80A5AD80  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5AD84  7F E3 FB 78 */	mr r3, r31
/* 80A5AD88  4B FF 9B 5D */	bl npc_ks_awaydoor__FP12npc_ks_class
/* 80A5AD8C  48 00 01 38 */	b lbl_80A5AEC4
lbl_80A5AD90:
/* 80A5AD90  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5AD94  7F E3 FB 78 */	mr r3, r31
/* 80A5AD98  4B FF 9C 7D */	bl npc_ks_guide_00__FP12npc_ks_class
/* 80A5AD9C  7C 79 1B 78 */	mr r25, r3
/* 80A5ADA0  3B 60 00 01 */	li r27, 1
/* 80A5ADA4  48 00 01 20 */	b lbl_80A5AEC4
lbl_80A5ADA8:
/* 80A5ADA8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5ADAC  7F E3 FB 78 */	mr r3, r31
/* 80A5ADB0  4B FF A3 C5 */	bl npc_ks_guide_00_2__FP12npc_ks_class
/* 80A5ADB4  7C 79 1B 78 */	mr r25, r3
/* 80A5ADB8  3B 60 00 01 */	li r27, 1
/* 80A5ADBC  48 00 01 08 */	b lbl_80A5AEC4
lbl_80A5ADC0:
/* 80A5ADC0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5ADC4  7F E3 FB 78 */	mr r3, r31
/* 80A5ADC8  4B FF A6 A5 */	bl npc_ks_guide_00_3__FP12npc_ks_class
/* 80A5ADCC  7C 79 1B 78 */	mr r25, r3
/* 80A5ADD0  3B 60 00 01 */	li r27, 1
/* 80A5ADD4  48 00 00 F0 */	b lbl_80A5AEC4
lbl_80A5ADD8:
/* 80A5ADD8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5ADDC  7F E3 FB 78 */	mr r3, r31
/* 80A5ADE0  4B FF AB D5 */	bl npc_ks_guide_01__FP12npc_ks_class
/* 80A5ADE4  7C 79 1B 78 */	mr r25, r3
/* 80A5ADE8  3B 60 00 01 */	li r27, 1
/* 80A5ADEC  48 00 00 D8 */	b lbl_80A5AEC4
lbl_80A5ADF0:
/* 80A5ADF0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5ADF4  7F E3 FB 78 */	mr r3, r31
/* 80A5ADF8  4B FF B4 F5 */	bl npc_ks_guide_02__FP12npc_ks_class
/* 80A5ADFC  7C 79 1B 78 */	mr r25, r3
/* 80A5AE00  3B 60 00 01 */	li r27, 1
/* 80A5AE04  48 00 00 C0 */	b lbl_80A5AEC4
lbl_80A5AE08:
/* 80A5AE08  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5AE0C  7F E3 FB 78 */	mr r3, r31
/* 80A5AE10  4B FF C3 15 */	bl npc_ks_guide_09__FP12npc_ks_class
/* 80A5AE14  7C 79 1B 78 */	mr r25, r3
/* 80A5AE18  3B 60 00 01 */	li r27, 1
/* 80A5AE1C  48 00 00 A8 */	b lbl_80A5AEC4
lbl_80A5AE20:
/* 80A5AE20  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5AE24  7F E3 FB 78 */	mr r3, r31
/* 80A5AE28  4B FF BB F5 */	bl npc_ks_guide_22__FP12npc_ks_class
/* 80A5AE2C  7C 79 1B 78 */	mr r25, r3
/* 80A5AE30  3B 60 00 01 */	li r27, 1
/* 80A5AE34  48 00 00 90 */	b lbl_80A5AEC4
lbl_80A5AE38:
/* 80A5AE38  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A5AE3C  7F E3 FB 78 */	mr r3, r31
/* 80A5AE40  4B FF D0 95 */	bl npc_ks_guide_0409__FP12npc_ks_class
/* 80A5AE44  7C 79 1B 78 */	mr r25, r3
/* 80A5AE48  3B 60 00 01 */	li r27, 1
/* 80A5AE4C  48 00 00 78 */	b lbl_80A5AEC4
lbl_80A5AE50:
/* 80A5AE50  7F E3 FB 78 */	mr r3, r31
/* 80A5AE54  4B FF 0C E1 */	bl npc_ks_demo_02__FP12npc_ks_class
/* 80A5AE58  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A5AE5C  40 82 00 68 */	bne lbl_80A5AEC4
/* 80A5AE60  3B 20 00 00 */	li r25, 0
/* 80A5AE64  48 00 00 60 */	b lbl_80A5AEC4
lbl_80A5AE68:
/* 80A5AE68  7F E3 FB 78 */	mr r3, r31
/* 80A5AE6C  4B FF 1C 51 */	bl npc_ks_demo_022__FP12npc_ks_class
/* 80A5AE70  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A5AE74  40 82 00 50 */	bne lbl_80A5AEC4
/* 80A5AE78  3B 20 00 00 */	li r25, 0
/* 80A5AE7C  48 00 00 48 */	b lbl_80A5AEC4
lbl_80A5AE80:
/* 80A5AE80  7F E3 FB 78 */	mr r3, r31
/* 80A5AE84  4B FF 20 BD */	bl npc_ks_demo_04__FP12npc_ks_class
/* 80A5AE88  48 00 00 3C */	b lbl_80A5AEC4
lbl_80A5AE8C:
/* 80A5AE8C  7F E3 FB 78 */	mr r3, r31
/* 80A5AE90  4B FF CB 09 */	bl npc_ks_demo_12__FP12npc_ks_class
/* 80A5AE94  7C 79 1B 78 */	mr r25, r3
/* 80A5AE98  48 00 00 2C */	b lbl_80A5AEC4
lbl_80A5AE9C:
/* 80A5AE9C  7F E3 FB 78 */	mr r3, r31
/* 80A5AEA0  4B FF D5 71 */	bl npc_ks_mori__FP12npc_ks_class
/* 80A5AEA4  7C 79 1B 78 */	mr r25, r3
/* 80A5AEA8  48 00 00 1C */	b lbl_80A5AEC4
lbl_80A5AEAC:
/* 80A5AEAC  7F E3 FB 78 */	mr r3, r31
/* 80A5AEB0  4B FF E1 31 */	bl npc_ks_fsdemo__FP12npc_ks_class
/* 80A5AEB4  7C 79 1B 78 */	mr r25, r3
/* 80A5AEB8  48 00 00 0C */	b lbl_80A5AEC4
lbl_80A5AEBC:
/* 80A5AEBC  7F E3 FB 78 */	mr r3, r31
/* 80A5AEC0  4B FF EB 19 */	bl npc_ks_kago__FP12npc_ks_class
lbl_80A5AEC4:
/* 80A5AEC4  38 00 00 00 */	li r0, 0
/* 80A5AEC8  98 1F 0B DD */	stb r0, 0xbdd(r31)
/* 80A5AECC  2C 1B 00 00 */	cmpwi r27, 0
/* 80A5AED0  41 82 00 6C */	beq lbl_80A5AF3C
/* 80A5AED4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A5AED8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A5AEDC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A5AEE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A5AEE4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A5AEE8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A5AEEC  7F E3 FB 78 */	mr r3, r31
/* 80A5AEF0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A5AEF4  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80A5AEF8  4B FF 84 BD */	bl water_check__FP12npc_ks_class4cXyzf
/* 80A5AEFC  2C 03 00 00 */	cmpwi r3, 0
/* 80A5AF00  41 82 00 3C */	beq lbl_80A5AF3C
/* 80A5AF04  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80A5AF08  C0 1F 06 3C */	lfs f0, 0x63c(r31)
/* 80A5AF0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5AF10  4C 40 13 82 */	cror 2, 0, 2
/* 80A5AF14  40 82 00 28 */	bne lbl_80A5AF3C
/* 80A5AF18  38 00 00 01 */	li r0, 1
/* 80A5AF1C  98 1F 0B DD */	stb r0, 0xbdd(r31)
/* 80A5AF20  A8 1F 05 E8 */	lha r0, 0x5e8(r31)
/* 80A5AF24  2C 00 00 64 */	cmpwi r0, 0x64
/* 80A5AF28  41 82 00 14 */	beq lbl_80A5AF3C
/* 80A5AF2C  38 00 00 64 */	li r0, 0x64
/* 80A5AF30  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5AF34  38 00 00 00 */	li r0, 0
/* 80A5AF38  B0 1F 05 EA */	sth r0, 0x5ea(r31)
lbl_80A5AF3C:
/* 80A5AF3C  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 80A5AF40  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80A5AF44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5AF48  40 80 00 2C */	bge lbl_80A5AF74
/* 80A5AF4C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80A5AF50  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80A5AF54  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5AF58  FC 00 02 10 */	fabs f0, f0
/* 80A5AF5C  FC 20 00 18 */	frsp f1, f0
/* 80A5AF60  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A5AF64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5AF68  40 80 00 0C */	bge lbl_80A5AF74
/* 80A5AF6C  38 7F 05 38 */	addi r3, r31, 0x538
/* 80A5AF70  4B 70 45 80 */	b setLookPos__9daPy_py_cFP4cXyz
lbl_80A5AF74:
/* 80A5AF74  88 1F 0A ED */	lbz r0, 0xaed(r31)
/* 80A5AF78  2C 00 00 01 */	cmpwi r0, 1
/* 80A5AF7C  40 82 00 24 */	bne lbl_80A5AFA0
/* 80A5AF80  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 80A5AF84  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80A5AF88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5AF8C  40 80 00 14 */	bge lbl_80A5AFA0
/* 80A5AF90  38 00 03 E8 */	li r0, 0x3e8
/* 80A5AF94  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5AF98  38 00 00 00 */	li r0, 0
/* 80A5AF9C  B0 1F 05 EA */	sth r0, 0x5ea(r31)
lbl_80A5AFA0:
/* 80A5AFA0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80A5AFA4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80A5AFA8  38 A0 00 02 */	li r5, 2
/* 80A5AFAC  38 C0 20 00 */	li r6, 0x2000
/* 80A5AFB0  4B 81 56 58 */	b cLib_addCalcAngleS2__FPssss
/* 80A5AFB4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80A5AFB8  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80A5AFBC  38 A0 00 02 */	li r5, 2
/* 80A5AFC0  38 C0 20 00 */	li r6, 0x2000
/* 80A5AFC4  4B 81 56 44 */	b cLib_addCalcAngleS2__FPssss
/* 80A5AFC8  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 80A5AFCC  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 80A5AFD0  38 A0 00 02 */	li r5, 2
/* 80A5AFD4  38 C0 20 00 */	li r6, 0x2000
/* 80A5AFD8  4B 81 56 30 */	b cLib_addCalcAngleS2__FPssss
/* 80A5AFDC  2C 19 00 01 */	cmpwi r25, 1
/* 80A5AFE0  40 82 00 A4 */	bne lbl_80A5B084
/* 80A5AFE4  C3 FE 00 28 */	lfs f31, 0x28(r30)
/* 80A5AFE8  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 80A5AFEC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80A5AFF0  40 82 00 14 */	bne lbl_80A5B004
/* 80A5AFF4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80A5AFF8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80A5AFFC  41 82 00 08 */	beq lbl_80A5B004
/* 80A5B000  C3 FE 00 08 */	lfs f31, 8(r30)
lbl_80A5B004:
/* 80A5B004  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A5B008  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A5B00C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5B010  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80A5B014  4B 5B 13 C8 */	b mDoMtx_YrotS__FPA4_fs
/* 80A5B018  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5B01C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5B020  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5B024  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80A5B028  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80A5B02C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5B030  38 61 00 70 */	addi r3, r1, 0x70
/* 80A5B034  38 81 00 64 */	addi r4, r1, 0x64
/* 80A5B038  4B 81 5E B4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A5B03C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80A5B040  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A5B044  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80A5B048  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A5B04C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A5B050  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80A5B054  7C 65 1B 78 */	mr r5, r3
/* 80A5B058  4B 8E C0 38 */	b PSVECAdd
/* 80A5B05C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80A5B060  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80A5B064  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5B068  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A5B06C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80A5B070  C0 1E 04 C8 */	lfs f0, 0x4c8(r30)
/* 80A5B074  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5B078  40 80 00 70 */	bge lbl_80A5B0E8
/* 80A5B07C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A5B080  48 00 00 68 */	b lbl_80A5B0E8
lbl_80A5B084:
/* 80A5B084  2C 19 00 02 */	cmpwi r25, 2
/* 80A5B088  40 82 00 60 */	bne lbl_80A5B0E8
/* 80A5B08C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A5B090  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A5B094  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5B098  A8 9F 08 FE */	lha r4, 0x8fe(r31)
/* 80A5B09C  4B 5B 13 40 */	b mDoMtx_YrotS__FPA4_fs
/* 80A5B0A0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A5B0A4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A5B0A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5B0AC  A8 9F 08 FC */	lha r4, 0x8fc(r31)
/* 80A5B0B0  4B 5B 12 EC */	b mDoMtx_XrotM__FPA4_fs
/* 80A5B0B4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5B0B8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5B0BC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5B0C0  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80A5B0C4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5B0C8  38 61 00 70 */	addi r3, r1, 0x70
/* 80A5B0CC  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80A5B0D0  4B 81 5E 1C */	b MtxPosition__FP4cXyzP4cXyz
/* 80A5B0D4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80A5B0D8  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80A5B0DC  7C 65 1B 78 */	mr r5, r3
/* 80A5B0E0  4B 8E BF B0 */	b PSVECAdd
/* 80A5B0E4  3B A0 00 00 */	li r29, 0
lbl_80A5B0E8:
/* 80A5B0E8  88 1F 0A EC */	lbz r0, 0xaec(r31)
/* 80A5B0EC  2C 00 00 01 */	cmpwi r0, 1
/* 80A5B0F0  40 82 00 4C */	bne lbl_80A5B13C
/* 80A5B0F4  34 7F 09 50 */	addic. r3, r31, 0x950
/* 80A5B0F8  41 82 00 44 */	beq lbl_80A5B13C
/* 80A5B0FC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80A5B100  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 80A5B104  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A5B108  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A5B10C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5B110  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A5B114  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80A5B118  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A5B11C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A5B120  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5B124  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A5B128  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80A5B12C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A5B130  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A5B134  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5B138  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80A5B13C:
/* 80A5B13C  2C 1D 00 00 */	cmpwi r29, 0
/* 80A5B140  41 82 00 84 */	beq lbl_80A5B1C4
/* 80A5B144  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80A5B148  2C 00 FC 18 */	cmpwi r0, -1000
/* 80A5B14C  40 80 00 64 */	bge lbl_80A5B1B0
/* 80A5B150  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A5B154  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A5B158  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A5B15C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80A5B160  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A5B164  EF E0 00 72 */	fmuls f31, f0, f1
/* 80A5B168  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A5B16C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80A5B170  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A5B174  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80A5B178  EC 00 F8 2A */	fadds f0, f0, f31
/* 80A5B17C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A5B180  38 7F 06 80 */	addi r3, r31, 0x680
/* 80A5B184  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A5B188  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A5B18C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A5B190  4B 61 B9 1C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A5B194  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A5B198  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80A5B19C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A5B1A0  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80A5B1A4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80A5B1A8  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A5B1AC  48 00 00 18 */	b lbl_80A5B1C4
lbl_80A5B1B0:
/* 80A5B1B0  38 7F 06 80 */	addi r3, r31, 0x680
/* 80A5B1B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A5B1B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A5B1BC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A5B1C0  4B 61 B8 EC */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_80A5B1C4:
/* 80A5B1C4  3A E0 00 00 */	li r23, 0
/* 80A5B1C8  3B 20 00 00 */	li r25, 0
/* 80A5B1CC  88 1F 05 FC */	lbz r0, 0x5fc(r31)
/* 80A5B1D0  7C 00 07 75 */	extsb. r0, r0
/* 80A5B1D4  41 82 02 60 */	beq lbl_80A5B434
/* 80A5B1D8  80 7F 09 3C */	lwz r3, 0x93c(r31)
/* 80A5B1DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A5B1E0  40 82 01 20 */	bne lbl_80A5B300
/* 80A5B1E4  A8 1F 05 E6 */	lha r0, 0x5e6(r31)
/* 80A5B1E8  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 80A5B1EC  40 82 00 54 */	bne lbl_80A5B240
/* 80A5B1F0  7F E3 FB 78 */	mr r3, r31
/* 80A5B1F4  C0 3E 04 CC */	lfs f1, 0x4cc(r30)
/* 80A5B1F8  4B 5C 1A 64 */	b fopAcM_otoCheck__FPC10fopAc_ac_cf
/* 80A5B1FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A5B200  41 82 00 40 */	beq lbl_80A5B240
/* 80A5B204  4B 74 D2 70 */	b dKy_Sound_get__Fv
/* 80A5B208  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A5B20C  D0 1F 09 40 */	stfs f0, 0x940(r31)
/* 80A5B210  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A5B214  D0 1F 09 44 */	stfs f0, 0x944(r31)
/* 80A5B218  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A5B21C  D0 1F 09 48 */	stfs f0, 0x948(r31)
/* 80A5B220  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A5B224  4B 80 C7 30 */	b cM_rndF__Ff
/* 80A5B228  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A5B22C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A5B230  FC 00 00 1E */	fctiwz f0, f0
/* 80A5B234  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80A5B238  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A5B23C  90 1F 09 3C */	stw r0, 0x93c(r31)
lbl_80A5B240:
/* 80A5B240  82 FA 5D AC */	lwz r23, 0x5dac(r26)
/* 80A5B244  80 7F 09 38 */	lwz r3, 0x938(r31)
/* 80A5B248  3C 03 00 01 */	addis r0, r3, 1
/* 80A5B24C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A5B250  41 82 00 78 */	beq lbl_80A5B2C8
/* 80A5B254  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A5B258  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80A5B25C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80A5B260  38 81 00 0C */	addi r4, r1, 0xc
/* 80A5B264  4B 5B E5 94 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A5B268  7C 64 1B 79 */	or. r4, r3, r3
/* 80A5B26C  41 82 00 30 */	beq lbl_80A5B29C
/* 80A5B270  38 61 00 40 */	addi r3, r1, 0x40
/* 80A5B274  38 84 05 38 */	addi r4, r4, 0x538
/* 80A5B278  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A5B27C  4B 80 B8 B8 */	b __mi__4cXyzCFRC3Vec
/* 80A5B280  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80A5B284  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5B288  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A5B28C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5B290  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80A5B294  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5B298  48 00 00 E8 */	b lbl_80A5B380
lbl_80A5B29C:
/* 80A5B29C  38 61 00 34 */	addi r3, r1, 0x34
/* 80A5B2A0  38 97 05 38 */	addi r4, r23, 0x538
/* 80A5B2A4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A5B2A8  4B 80 B8 8C */	b __mi__4cXyzCFRC3Vec
/* 80A5B2AC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A5B2B0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5B2B4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A5B2B8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5B2BC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A5B2C0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5B2C4  48 00 00 BC */	b lbl_80A5B380
lbl_80A5B2C8:
/* 80A5B2C8  38 61 00 28 */	addi r3, r1, 0x28
/* 80A5B2CC  38 97 05 38 */	addi r4, r23, 0x538
/* 80A5B2D0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A5B2D4  4B 80 B8 60 */	b __mi__4cXyzCFRC3Vec
/* 80A5B2D8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A5B2DC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5B2E0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80A5B2E4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80A5B2E8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A5B2EC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5B2F0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A5B2F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5B2F8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5B2FC  48 00 00 84 */	b lbl_80A5B380
lbl_80A5B300:
/* 80A5B300  38 03 FF FF */	addi r0, r3, -1
/* 80A5B304  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 80A5B308  80 1F 09 3C */	lwz r0, 0x93c(r31)
/* 80A5B30C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A5B310  40 80 00 3C */	bge lbl_80A5B34C
/* 80A5B314  38 61 00 1C */	addi r3, r1, 0x1c
/* 80A5B318  38 9F 09 40 */	addi r4, r31, 0x940
/* 80A5B31C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A5B320  4B 80 B8 14 */	b __mi__4cXyzCFRC3Vec
/* 80A5B324  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A5B328  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5B32C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A5B330  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80A5B334  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A5B338  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5B33C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A5B340  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5B344  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5B348  48 00 00 38 */	b lbl_80A5B380
lbl_80A5B34C:
/* 80A5B34C  38 61 00 10 */	addi r3, r1, 0x10
/* 80A5B350  38 9C 05 38 */	addi r4, r28, 0x538
/* 80A5B354  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A5B358  4B 80 B7 DC */	b __mi__4cXyzCFRC3Vec
/* 80A5B35C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A5B360  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5B364  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A5B368  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80A5B36C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A5B370  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5B374  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A5B378  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5B37C  D0 01 00 74 */	stfs f0, 0x74(r1)
lbl_80A5B380:
/* 80A5B380  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80A5B384  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 80A5B388  4B 80 C2 EC */	b cM_atan2s__Fff
/* 80A5B38C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80A5B390  7C 00 18 50 */	subf r0, r0, r3
/* 80A5B394  7C 17 07 34 */	extsh r23, r0
/* 80A5B398  1C 17 FF FF */	mulli r0, r23, -1
/* 80A5B39C  7C 17 07 34 */	extsh r23, r0
/* 80A5B3A0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80A5B3A4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A5B3A8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80A5B3AC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A5B3B0  EC 41 00 2A */	fadds f2, f1, f0
/* 80A5B3B4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5B3B8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A5B3BC  40 81 00 0C */	ble lbl_80A5B3C8
/* 80A5B3C0  FC 00 10 34 */	frsqrte f0, f2
/* 80A5B3C4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A5B3C8:
/* 80A5B3C8  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80A5B3CC  4B 80 C2 A8 */	b cM_atan2s__Fff
/* 80A5B3D0  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80A5B3D4  7C 00 1A 14 */	add r0, r0, r3
/* 80A5B3D8  7C 19 07 34 */	extsh r25, r0
/* 80A5B3DC  2C 17 1F 40 */	cmpwi r23, 0x1f40
/* 80A5B3E0  40 81 00 0C */	ble lbl_80A5B3EC
/* 80A5B3E4  3A E0 1F 40 */	li r23, 0x1f40
/* 80A5B3E8  48 00 00 10 */	b lbl_80A5B3F8
lbl_80A5B3EC:
/* 80A5B3EC  2C 17 E0 C0 */	cmpwi r23, -8000
/* 80A5B3F0  40 80 00 08 */	bge lbl_80A5B3F8
/* 80A5B3F4  3A E0 E0 C0 */	li r23, -8000
lbl_80A5B3F8:
/* 80A5B3F8  2C 19 3E 80 */	cmpwi r25, 0x3e80
/* 80A5B3FC  40 81 00 0C */	ble lbl_80A5B408
/* 80A5B400  3B 20 3E 80 */	li r25, 0x3e80
/* 80A5B404  48 00 00 10 */	b lbl_80A5B414
lbl_80A5B408:
/* 80A5B408  2C 19 E0 C0 */	cmpwi r25, -8000
/* 80A5B40C  40 80 00 08 */	bge lbl_80A5B414
/* 80A5B410  3B 20 E0 C0 */	li r25, -8000
lbl_80A5B414:
/* 80A5B414  88 1F 05 FC */	lbz r0, 0x5fc(r31)
/* 80A5B418  7C 00 07 74 */	extsb r0, r0
/* 80A5B41C  2C 00 00 02 */	cmpwi r0, 2
/* 80A5B420  41 80 00 14 */	blt lbl_80A5B434
/* 80A5B424  7E E0 07 34 */	extsh r0, r23
/* 80A5B428  7C 00 0E 70 */	srawi r0, r0, 1
/* 80A5B42C  7C 00 01 94 */	addze r0, r0
/* 80A5B430  7C 17 07 34 */	extsh r23, r0
lbl_80A5B434:
/* 80A5B434  88 1F 05 FD */	lbz r0, 0x5fd(r31)
/* 80A5B438  7C 00 07 75 */	extsb. r0, r0
/* 80A5B43C  41 82 00 18 */	beq lbl_80A5B454
/* 80A5B440  3B 20 27 10 */	li r25, 0x2710
/* 80A5B444  38 00 00 00 */	li r0, 0
/* 80A5B448  98 1F 05 FD */	stb r0, 0x5fd(r31)
/* 80A5B44C  38 00 00 01 */	li r0, 1
/* 80A5B450  98 1F 05 FC */	stb r0, 0x5fc(r31)
lbl_80A5B454:
/* 80A5B454  38 7F 05 FE */	addi r3, r31, 0x5fe
/* 80A5B458  7E E4 BB 78 */	mr r4, r23
/* 80A5B45C  38 A0 00 04 */	li r5, 4
/* 80A5B460  38 C0 10 00 */	li r6, 0x1000
/* 80A5B464  4B 81 51 A4 */	b cLib_addCalcAngleS2__FPssss
/* 80A5B468  38 7F 06 00 */	addi r3, r31, 0x600
/* 80A5B46C  7F 24 CB 78 */	mr r4, r25
/* 80A5B470  38 A0 00 04 */	li r5, 4
/* 80A5B474  38 C0 10 00 */	li r6, 0x1000
/* 80A5B478  4B 81 51 90 */	b cLib_addCalcAngleS2__FPssss
/* 80A5B47C  A8 7F 05 E0 */	lha r3, 0x5e0(r31)
/* 80A5B480  2C 03 00 00 */	cmpwi r3, 0
/* 80A5B484  40 82 00 28 */	bne lbl_80A5B4AC
/* 80A5B488  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80A5B48C  4B 80 C4 C8 */	b cM_rndF__Ff
/* 80A5B490  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A5B494  EC 00 08 2A */	fadds f0, f0, f1
/* 80A5B498  FC 00 00 1E */	fctiwz f0, f0
/* 80A5B49C  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80A5B4A0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A5B4A4  B0 1F 05 E0 */	sth r0, 0x5e0(r31)
/* 80A5B4A8  48 00 00 2C */	b lbl_80A5B4D4
lbl_80A5B4AC:
/* 80A5B4AC  38 03 FF FF */	addi r0, r3, -1
/* 80A5B4B0  B0 1F 05 E0 */	sth r0, 0x5e0(r31)
/* 80A5B4B4  A8 1F 05 E0 */	lha r0, 0x5e0(r31)
/* 80A5B4B8  2C 00 00 07 */	cmpwi r0, 7
/* 80A5B4BC  41 81 00 10 */	bgt lbl_80A5B4CC
/* 80A5B4C0  20 00 00 07 */	subfic r0, r0, 7
/* 80A5B4C4  B0 1F 05 E2 */	sth r0, 0x5e2(r31)
/* 80A5B4C8  48 00 00 0C */	b lbl_80A5B4D4
lbl_80A5B4CC:
/* 80A5B4CC  38 00 00 00 */	li r0, 0
/* 80A5B4D0  B0 1F 05 E2 */	sth r0, 0x5e2(r31)
lbl_80A5B4D4:
/* 80A5B4D4  38 7F 06 06 */	addi r3, r31, 0x606
/* 80A5B4D8  A8 9F 06 08 */	lha r4, 0x608(r31)
/* 80A5B4DC  38 A0 00 02 */	li r5, 2
/* 80A5B4E0  38 C0 13 88 */	li r6, 0x1388
/* 80A5B4E4  4B 81 51 24 */	b cLib_addCalcAngleS2__FPssss
/* 80A5B4E8  38 00 00 00 */	li r0, 0
/* 80A5B4EC  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 80A5B4F0  88 1F 0B E0 */	lbz r0, 0xbe0(r31)
/* 80A5B4F4  7C 00 07 75 */	extsb. r0, r0
/* 80A5B4F8  41 82 00 2C */	beq lbl_80A5B524
/* 80A5B4FC  38 7F 08 58 */	addi r3, r31, 0x858
/* 80A5B500  38 9F 08 5C */	addi r4, r31, 0x85c
/* 80A5B504  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A5B508  38 C0 00 00 */	li r6, 0
/* 80A5B50C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A5B510  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80A5B514  39 00 00 01 */	li r8, 1
/* 80A5B518  4B 5C 1B 08 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80A5B51C  38 00 00 00 */	li r0, 0
/* 80A5B520  98 1F 0B E0 */	stb r0, 0xbe0(r31)
lbl_80A5B524:
/* 80A5B524  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80A5B528  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80A5B52C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80A5B530  4B 90 6C E0 */	b _restgpr_23
/* 80A5B534  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80A5B538  7C 08 03 A6 */	mtlr r0
/* 80A5B53C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80A5B540  4E 80 00 20 */	blr 
