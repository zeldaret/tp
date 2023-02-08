lbl_8069F978:
/* 8069F978  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8069F97C  7C 08 02 A6 */	mflr r0
/* 8069F980  90 01 00 94 */	stw r0, 0x94(r1)
/* 8069F984  39 61 00 90 */	addi r11, r1, 0x90
/* 8069F988  4B CC 28 3D */	bl _savegpr_23
/* 8069F98C  7C 7D 1B 78 */	mr r29, r3
/* 8069F990  3C 80 80 6A */	lis r4, lit_3902@ha /* 0x806A190C@ha */
/* 8069F994  3B C4 19 0C */	addi r30, r4, lit_3902@l /* 0x806A190C@l */
/* 8069F998  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069F99C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069F9A0  83 5F 5D AC */	lwz r26, 0x5dac(r31)
/* 8069F9A4  7F 44 D3 78 */	mr r4, r26
/* 8069F9A8  4B 97 AD 69 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8069F9AC  B0 7D 06 84 */	sth r3, 0x684(r29)
/* 8069F9B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8069F9B4  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 8069F9B8  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 8069F9BC  4B BC 71 79 */	bl __mi__4cXyzCFRC3Vec
/* 8069F9C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8069F9C4  4B CA 77 75 */	bl PSVECSquareMag
/* 8069F9C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069F9CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069F9D0  40 81 00 58 */	ble lbl_8069FA28
/* 8069F9D4  FC 00 08 34 */	frsqrte f0, f1
/* 8069F9D8  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8069F9DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8069F9E0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8069F9E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8069F9E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8069F9EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8069F9F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8069F9F4  FC 44 00 32 */	fmul f2, f4, f0
/* 8069F9F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8069F9FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8069FA00  FC 03 00 28 */	fsub f0, f3, f0
/* 8069FA04  FC 02 00 32 */	fmul f0, f2, f0
/* 8069FA08  FC 44 00 32 */	fmul f2, f4, f0
/* 8069FA0C  FC 00 00 32 */	fmul f0, f0, f0
/* 8069FA10  FC 01 00 32 */	fmul f0, f1, f0
/* 8069FA14  FC 03 00 28 */	fsub f0, f3, f0
/* 8069FA18  FC 02 00 32 */	fmul f0, f2, f0
/* 8069FA1C  FC 21 00 32 */	fmul f1, f1, f0
/* 8069FA20  FC 20 08 18 */	frsp f1, f1
/* 8069FA24  48 00 00 88 */	b lbl_8069FAAC
lbl_8069FA28:
/* 8069FA28  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8069FA2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069FA30  40 80 00 10 */	bge lbl_8069FA40
/* 8069FA34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069FA38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8069FA3C  48 00 00 70 */	b lbl_8069FAAC
lbl_8069FA40:
/* 8069FA40  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8069FA44  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8069FA48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8069FA4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8069FA50  7C 03 00 00 */	cmpw r3, r0
/* 8069FA54  41 82 00 14 */	beq lbl_8069FA68
/* 8069FA58  40 80 00 40 */	bge lbl_8069FA98
/* 8069FA5C  2C 03 00 00 */	cmpwi r3, 0
/* 8069FA60  41 82 00 20 */	beq lbl_8069FA80
/* 8069FA64  48 00 00 34 */	b lbl_8069FA98
lbl_8069FA68:
/* 8069FA68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069FA6C  41 82 00 0C */	beq lbl_8069FA78
/* 8069FA70  38 00 00 01 */	li r0, 1
/* 8069FA74  48 00 00 28 */	b lbl_8069FA9C
lbl_8069FA78:
/* 8069FA78  38 00 00 02 */	li r0, 2
/* 8069FA7C  48 00 00 20 */	b lbl_8069FA9C
lbl_8069FA80:
/* 8069FA80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069FA84  41 82 00 0C */	beq lbl_8069FA90
/* 8069FA88  38 00 00 05 */	li r0, 5
/* 8069FA8C  48 00 00 10 */	b lbl_8069FA9C
lbl_8069FA90:
/* 8069FA90  38 00 00 03 */	li r0, 3
/* 8069FA94  48 00 00 08 */	b lbl_8069FA9C
lbl_8069FA98:
/* 8069FA98  38 00 00 04 */	li r0, 4
lbl_8069FA9C:
/* 8069FA9C  2C 00 00 01 */	cmpwi r0, 1
/* 8069FAA0  40 82 00 0C */	bne lbl_8069FAAC
/* 8069FAA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069FAA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8069FAAC:
/* 8069FAAC  D0 3D 06 88 */	stfs f1, 0x688(r29)
/* 8069FAB0  38 00 00 00 */	li r0, 0
/* 8069FAB4  98 1D 05 66 */	stb r0, 0x566(r29)
/* 8069FAB8  38 00 00 01 */	li r0, 1
/* 8069FABC  98 1D 12 39 */	stb r0, 0x1239(r29)
/* 8069FAC0  7F A3 EB 78 */	mr r3, r29
/* 8069FAC4  4B FF B5 3D */	bl damage_check__FP10e_db_class
/* 8069FAC8  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 8069FACC  2C 00 00 00 */	cmpwi r0, 0
/* 8069FAD0  41 82 00 30 */	beq lbl_8069FB00
/* 8069FAD4  88 1D 08 51 */	lbz r0, 0x851(r29)
/* 8069FAD8  7C 00 07 75 */	extsb. r0, r0
/* 8069FADC  41 82 00 24 */	beq lbl_8069FB00
/* 8069FAE0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069FAE4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8069FAE8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8069FAEC  90 03 05 74 */	stw r0, 0x574(r3)
/* 8069FAF0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069FAF4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8069FAF8  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 8069FAFC  90 03 05 70 */	stw r0, 0x570(r3)
lbl_8069FB00:
/* 8069FB00  3B E0 00 00 */	li r31, 0
/* 8069FB04  3B 80 00 00 */	li r28, 0
/* 8069FB08  3B 60 00 00 */	li r27, 0
/* 8069FB0C  3B 40 00 00 */	li r26, 0
/* 8069FB10  80 1D 08 D0 */	lwz r0, 0x8d0(r29)
/* 8069FB14  60 00 00 01 */	ori r0, r0, 1
/* 8069FB18  90 1D 08 D0 */	stw r0, 0x8d0(r29)
/* 8069FB1C  38 00 00 00 */	li r0, 0
/* 8069FB20  98 1D 08 51 */	stb r0, 0x851(r29)
/* 8069FB24  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8069FB28  28 00 00 15 */	cmplwi r0, 0x15
/* 8069FB2C  41 81 01 6C */	bgt lbl_8069FC98
/* 8069FB30  3C 60 80 6A */	lis r3, lit_5647@ha /* 0x806A1B94@ha */
/* 8069FB34  38 63 1B 94 */	addi r3, r3, lit_5647@l /* 0x806A1B94@l */
/* 8069FB38  54 00 10 3A */	slwi r0, r0, 2
/* 8069FB3C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8069FB40  7C 09 03 A6 */	mtctr r0
/* 8069FB44  4E 80 04 20 */	bctr 
lbl_8069FB48:
/* 8069FB48  7F A3 EB 78 */	mr r3, r29
/* 8069FB4C  4B FF B9 1D */	bl e_db_stay__FP10e_db_class
/* 8069FB50  38 00 00 00 */	li r0, 0
/* 8069FB54  98 1D 12 39 */	stb r0, 0x1239(r29)
/* 8069FB58  48 00 01 40 */	b lbl_8069FC98
lbl_8069FB5C:
/* 8069FB5C  7F A3 EB 78 */	mr r3, r29
/* 8069FB60  4B FF BC 61 */	bl e_db_appear__FP10e_db_class
/* 8069FB64  3B E0 00 01 */	li r31, 1
/* 8069FB68  3B 60 00 01 */	li r27, 1
/* 8069FB6C  38 00 00 01 */	li r0, 1
/* 8069FB70  98 1D 05 66 */	stb r0, 0x566(r29)
/* 8069FB74  3B 40 00 01 */	li r26, 1
/* 8069FB78  48 00 01 20 */	b lbl_8069FC98
lbl_8069FB7C:
/* 8069FB7C  7F A3 EB 78 */	mr r3, r29
/* 8069FB80  4B FF BF 01 */	bl e_db_appear_v__FP10e_db_class
/* 8069FB84  3B E0 00 01 */	li r31, 1
/* 8069FB88  3B 60 00 01 */	li r27, 1
/* 8069FB8C  38 00 00 01 */	li r0, 1
/* 8069FB90  98 1D 05 66 */	stb r0, 0x566(r29)
/* 8069FB94  3B 40 00 01 */	li r26, 1
/* 8069FB98  48 00 01 00 */	b lbl_8069FC98
lbl_8069FB9C:
/* 8069FB9C  7F A3 EB 78 */	mr r3, r29
/* 8069FBA0  4B FF C0 AD */	bl e_db_wait__FP10e_db_class
/* 8069FBA4  3B E0 00 01 */	li r31, 1
/* 8069FBA8  3B 60 00 01 */	li r27, 1
/* 8069FBAC  38 00 00 01 */	li r0, 1
/* 8069FBB0  98 1D 05 66 */	stb r0, 0x566(r29)
/* 8069FBB4  3B 40 00 01 */	li r26, 1
/* 8069FBB8  48 00 00 E0 */	b lbl_8069FC98
lbl_8069FBBC:
/* 8069FBBC  7F A3 EB 78 */	mr r3, r29
/* 8069FBC0  4B FF C8 49 */	bl e_db_attack__FP10e_db_class
/* 8069FBC4  3B E0 00 01 */	li r31, 1
/* 8069FBC8  3B 60 00 01 */	li r27, 1
/* 8069FBCC  38 00 00 01 */	li r0, 1
/* 8069FBD0  98 1D 05 66 */	stb r0, 0x566(r29)
/* 8069FBD4  3B 40 00 01 */	li r26, 1
/* 8069FBD8  48 00 00 C0 */	b lbl_8069FC98
lbl_8069FBDC:
/* 8069FBDC  7F A3 EB 78 */	mr r3, r29
/* 8069FBE0  4B FF D2 F9 */	bl e_db_attack_s__FP10e_db_class
/* 8069FBE4  3B E0 00 01 */	li r31, 1
/* 8069FBE8  3B 60 00 01 */	li r27, 1
/* 8069FBEC  38 00 00 01 */	li r0, 1
/* 8069FBF0  98 1D 05 66 */	stb r0, 0x566(r29)
/* 8069FBF4  3B 40 00 01 */	li r26, 1
/* 8069FBF8  48 00 00 A0 */	b lbl_8069FC98
lbl_8069FBFC:
/* 8069FBFC  7F A3 EB 78 */	mr r3, r29
/* 8069FC00  4B FF D6 35 */	bl e_db_chance__FP10e_db_class
/* 8069FC04  3B E0 00 01 */	li r31, 1
/* 8069FC08  3B 60 00 01 */	li r27, 1
/* 8069FC0C  38 00 00 01 */	li r0, 1
/* 8069FC10  98 1D 05 66 */	stb r0, 0x566(r29)
/* 8069FC14  3B 40 00 01 */	li r26, 1
/* 8069FC18  48 00 00 80 */	b lbl_8069FC98
lbl_8069FC1C:
/* 8069FC1C  7F A3 EB 78 */	mr r3, r29
/* 8069FC20  4B FF D9 15 */	bl e_db_s_damage__FP10e_db_class
/* 8069FC24  3B E0 00 01 */	li r31, 1
/* 8069FC28  3B 60 00 01 */	li r27, 1
/* 8069FC2C  38 00 00 01 */	li r0, 1
/* 8069FC30  98 1D 05 66 */	stb r0, 0x566(r29)
/* 8069FC34  3B 40 00 01 */	li r26, 1
/* 8069FC38  48 00 00 60 */	b lbl_8069FC98
lbl_8069FC3C:
/* 8069FC3C  7F A3 EB 78 */	mr r3, r29
/* 8069FC40  4B FF DB 31 */	bl e_db_damage__FP10e_db_class
/* 8069FC44  3B E0 00 01 */	li r31, 1
/* 8069FC48  48 00 00 50 */	b lbl_8069FC98
lbl_8069FC4C:
/* 8069FC4C  7F A3 EB 78 */	mr r3, r29
/* 8069FC50  4B FF C5 5D */	bl e_db_mk_roof__FP10e_db_class
/* 8069FC54  3B 60 00 01 */	li r27, 1
/* 8069FC58  3B 40 00 01 */	li r26, 1
/* 8069FC5C  48 00 00 3C */	b lbl_8069FC98
lbl_8069FC60:
/* 8069FC60  7F A3 EB 78 */	mr r3, r29
/* 8069FC64  4B FF E8 A1 */	bl e_db_escape__FP10e_db_class
/* 8069FC68  7C 7F 1B 78 */	mr r31, r3
/* 8069FC6C  3B 80 00 01 */	li r28, 1
/* 8069FC70  38 00 00 01 */	li r0, 1
/* 8069FC74  98 1D 05 66 */	stb r0, 0x566(r29)
/* 8069FC78  3B 40 00 01 */	li r26, 1
/* 8069FC7C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8069FC80  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 8069FC84  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8069FC88  48 00 00 10 */	b lbl_8069FC98
lbl_8069FC8C:
/* 8069FC8C  7F A3 EB 78 */	mr r3, r29
/* 8069FC90  4B FF F6 D1 */	bl e_db_e_dead__FP10e_db_class
/* 8069FC94  3B 80 00 01 */	li r28, 1
lbl_8069FC98:
/* 8069FC98  7F 40 07 75 */	extsb. r0, r26
/* 8069FC9C  41 82 00 14 */	beq lbl_8069FCB0
/* 8069FCA0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069FCA4  38 80 00 01 */	li r4, 1
/* 8069FCA8  4B C2 1E D5 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 8069FCAC  48 00 00 10 */	b lbl_8069FCBC
lbl_8069FCB0:
/* 8069FCB0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069FCB4  38 80 00 00 */	li r4, 0
/* 8069FCB8  4B C2 1E C5 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_8069FCBC:
/* 8069FCBC  7F E0 07 75 */	extsb. r0, r31
/* 8069FCC0  41 82 00 10 */	beq lbl_8069FCD0
/* 8069FCC4  38 00 00 04 */	li r0, 4
/* 8069FCC8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8069FCCC  48 00 00 18 */	b lbl_8069FCE4
lbl_8069FCD0:
/* 8069FCD0  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8069FCD4  54 00 00 3E */	slwi r0, r0, 0
/* 8069FCD8  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8069FCDC  38 00 00 00 */	li r0, 0
/* 8069FCE0  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_8069FCE4:
/* 8069FCE4  7F 80 07 75 */	extsb. r0, r28
/* 8069FCE8  40 82 01 C0 */	bne lbl_8069FEA8
/* 8069FCEC  38 61 00 20 */	addi r3, r1, 0x20
/* 8069FCF0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8069FCF4  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 8069FCF8  4B BC 6E 3D */	bl __mi__4cXyzCFRC3Vec
/* 8069FCFC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8069FD00  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8069FD04  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8069FD08  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8069FD0C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8069FD10  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8069FD14  38 61 00 50 */	addi r3, r1, 0x50
/* 8069FD18  4B CA 74 21 */	bl PSVECSquareMag
/* 8069FD1C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069FD20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069FD24  40 81 00 58 */	ble lbl_8069FD7C
/* 8069FD28  FC 00 08 34 */	frsqrte f0, f1
/* 8069FD2C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8069FD30  FC 44 00 32 */	fmul f2, f4, f0
/* 8069FD34  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8069FD38  FC 00 00 32 */	fmul f0, f0, f0
/* 8069FD3C  FC 01 00 32 */	fmul f0, f1, f0
/* 8069FD40  FC 03 00 28 */	fsub f0, f3, f0
/* 8069FD44  FC 02 00 32 */	fmul f0, f2, f0
/* 8069FD48  FC 44 00 32 */	fmul f2, f4, f0
/* 8069FD4C  FC 00 00 32 */	fmul f0, f0, f0
/* 8069FD50  FC 01 00 32 */	fmul f0, f1, f0
/* 8069FD54  FC 03 00 28 */	fsub f0, f3, f0
/* 8069FD58  FC 02 00 32 */	fmul f0, f2, f0
/* 8069FD5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8069FD60  FC 00 00 32 */	fmul f0, f0, f0
/* 8069FD64  FC 01 00 32 */	fmul f0, f1, f0
/* 8069FD68  FC 03 00 28 */	fsub f0, f3, f0
/* 8069FD6C  FC 02 00 32 */	fmul f0, f2, f0
/* 8069FD70  FC 21 00 32 */	fmul f1, f1, f0
/* 8069FD74  FC 20 08 18 */	frsp f1, f1
/* 8069FD78  48 00 00 88 */	b lbl_8069FE00
lbl_8069FD7C:
/* 8069FD7C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8069FD80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069FD84  40 80 00 10 */	bge lbl_8069FD94
/* 8069FD88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069FD8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8069FD90  48 00 00 70 */	b lbl_8069FE00
lbl_8069FD94:
/* 8069FD94  D0 21 00 08 */	stfs f1, 8(r1)
/* 8069FD98  80 81 00 08 */	lwz r4, 8(r1)
/* 8069FD9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8069FDA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8069FDA4  7C 03 00 00 */	cmpw r3, r0
/* 8069FDA8  41 82 00 14 */	beq lbl_8069FDBC
/* 8069FDAC  40 80 00 40 */	bge lbl_8069FDEC
/* 8069FDB0  2C 03 00 00 */	cmpwi r3, 0
/* 8069FDB4  41 82 00 20 */	beq lbl_8069FDD4
/* 8069FDB8  48 00 00 34 */	b lbl_8069FDEC
lbl_8069FDBC:
/* 8069FDBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069FDC0  41 82 00 0C */	beq lbl_8069FDCC
/* 8069FDC4  38 00 00 01 */	li r0, 1
/* 8069FDC8  48 00 00 28 */	b lbl_8069FDF0
lbl_8069FDCC:
/* 8069FDCC  38 00 00 02 */	li r0, 2
/* 8069FDD0  48 00 00 20 */	b lbl_8069FDF0
lbl_8069FDD4:
/* 8069FDD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069FDD8  41 82 00 0C */	beq lbl_8069FDE4
/* 8069FDDC  38 00 00 05 */	li r0, 5
/* 8069FDE0  48 00 00 10 */	b lbl_8069FDF0
lbl_8069FDE4:
/* 8069FDE4  38 00 00 03 */	li r0, 3
/* 8069FDE8  48 00 00 08 */	b lbl_8069FDF0
lbl_8069FDEC:
/* 8069FDEC  38 00 00 04 */	li r0, 4
lbl_8069FDF0:
/* 8069FDF0  2C 00 00 01 */	cmpwi r0, 1
/* 8069FDF4  40 82 00 0C */	bne lbl_8069FE00
/* 8069FDF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069FDFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8069FE00:
/* 8069FE00  C0 5D 08 44 */	lfs f2, 0x844(r29)
/* 8069FE04  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8069FE08  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069FE0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8069FE10  D0 1D 08 40 */	stfs f0, 0x840(r29)
/* 8069FE14  C0 3D 08 40 */	lfs f1, 0x840(r29)
/* 8069FE18  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8069FE1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069FE20  40 81 00 08 */	ble lbl_8069FE28
/* 8069FE24  D0 1D 08 40 */	stfs f0, 0x840(r29)
lbl_8069FE28:
/* 8069FE28  38 7D 08 44 */	addi r3, r29, 0x844
/* 8069FE2C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069FE30  FC 40 08 90 */	fmr f2, f1
/* 8069FE34  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8069FE38  4B BC FC 05 */	bl cLib_addCalc2__FPffff
/* 8069FE3C  7F A3 EB 78 */	mr r3, r29
/* 8069FE40  4B FF DD 29 */	bl kuki_control1__FP10e_db_class
/* 8069FE44  7F A3 EB 78 */	mr r3, r29
/* 8069FE48  4B FF E0 7D */	bl kuki_control2__FP10e_db_class
/* 8069FE4C  7F A3 EB 78 */	mr r3, r29
/* 8069FE50  4B FF E1 E9 */	bl kuki_control3__FP10e_db_class
/* 8069FE54  7F A3 EB 78 */	mr r3, r29
/* 8069FE58  4B FF E2 BD */	bl kuki_ha_set__FP10e_db_class
/* 8069FE5C  80 1D 12 34 */	lwz r0, 0x1234(r29)
/* 8069FE60  90 01 00 10 */	stw r0, 0x10(r1)
/* 8069FE64  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8069FE68  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8069FE6C  38 81 00 10 */	addi r4, r1, 0x10
/* 8069FE70  4B 97 99 89 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8069FE74  28 03 00 00 */	cmplwi r3, 0
/* 8069FE78  41 82 00 18 */	beq lbl_8069FE90
/* 8069FE7C  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 8069FE80  38 80 00 00 */	li r4, 0
/* 8069FE84  38 A0 00 00 */	li r5, 0
/* 8069FE88  38 C0 00 00 */	li r6, 0
/* 8069FE8C  4B 97 07 3D */	bl play__14mDoExt_McaMorfFP3VecUlSc
lbl_8069FE90:
/* 8069FE90  38 7D 08 48 */	addi r3, r29, 0x848
/* 8069FE94  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069FE98  FC 40 08 90 */	fmr f2, f1
/* 8069FE9C  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 8069FEA0  4B BC FB 9D */	bl cLib_addCalc2__FPffff
/* 8069FEA4  48 00 00 14 */	b lbl_8069FEB8
lbl_8069FEA8:
/* 8069FEA8  7F A3 EB 78 */	mr r3, r29
/* 8069FEAC  4B FF E3 55 */	bl kuki_control1_e__FP10e_db_class
/* 8069FEB0  7F A3 EB 78 */	mr r3, r29
/* 8069FEB4  4B FF E2 61 */	bl kuki_ha_set__FP10e_db_class
lbl_8069FEB8:
/* 8069FEB8  3B 3D 06 9C */	addi r25, r29, 0x69c
/* 8069FEBC  80 7D 08 3C */	lwz r3, 0x83c(r29)
/* 8069FEC0  83 03 00 00 */	lwz r24, 0(r3)
/* 8069FEC4  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 8069FEC8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8069FECC  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 8069FED0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8069FED4  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 8069FED8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8069FEDC  3B 40 00 00 */	li r26, 0
/* 8069FEE0  3A E0 00 00 */	li r23, 0
/* 8069FEE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069FEE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069FEEC  3B 83 23 3C */	addi r28, r3, 0x233c
lbl_8069FEF0:
/* 8069FEF0  C0 19 00 00 */	lfs f0, 0(r25)
/* 8069FEF4  D0 18 00 00 */	stfs f0, 0(r24)
/* 8069FEF8  C0 19 00 04 */	lfs f0, 4(r25)
/* 8069FEFC  D0 18 00 04 */	stfs f0, 4(r24)
/* 8069FF00  C0 19 00 08 */	lfs f0, 8(r25)
/* 8069FF04  D0 18 00 08 */	stfs f0, 8(r24)
/* 8069FF08  2C 17 00 03 */	cmpwi r23, 3
/* 8069FF0C  41 82 00 1C */	beq lbl_8069FF28
/* 8069FF10  2C 17 00 05 */	cmpwi r23, 5
/* 8069FF14  41 82 00 14 */	beq lbl_8069FF28
/* 8069FF18  2C 17 00 07 */	cmpwi r23, 7
/* 8069FF1C  41 82 00 0C */	beq lbl_8069FF28
/* 8069FF20  2C 17 00 09 */	cmpwi r23, 9
/* 8069FF24  40 82 00 64 */	bne lbl_8069FF88
lbl_8069FF28:
/* 8069FF28  7F 60 07 75 */	extsb. r0, r27
/* 8069FF2C  41 82 00 28 */	beq lbl_8069FF54
/* 8069FF30  3B FA 0C 3C */	addi r31, r26, 0xc3c
/* 8069FF34  7F FD FA 14 */	add r31, r29, r31
/* 8069FF38  7F E3 FB 78 */	mr r3, r31
/* 8069FF3C  7F 24 CB 78 */	mr r4, r25
/* 8069FF40  4B BC F7 09 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8069FF44  7F E3 FB 78 */	mr r3, r31
/* 8069FF48  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8069FF4C  4B BC F7 BD */	bl SetR__8cM3dGSphFf
/* 8069FF50  48 00 00 24 */	b lbl_8069FF74
lbl_8069FF54:
/* 8069FF54  38 61 00 14 */	addi r3, r1, 0x14
/* 8069FF58  7F 24 CB 78 */	mr r4, r25
/* 8069FF5C  38 A1 00 44 */	addi r5, r1, 0x44
/* 8069FF60  4B BC 6B 85 */	bl __pl__4cXyzCFRC3Vec
/* 8069FF64  38 7A 0C 3C */	addi r3, r26, 0xc3c
/* 8069FF68  7C 7D 1A 14 */	add r3, r29, r3
/* 8069FF6C  38 81 00 14 */	addi r4, r1, 0x14
/* 8069FF70  4B BC F6 D9 */	bl SetC__8cM3dGSphFRC4cXyz
lbl_8069FF74:
/* 8069FF74  7F 83 E3 78 */	mr r3, r28
/* 8069FF78  38 9A 0B 18 */	addi r4, r26, 0xb18
/* 8069FF7C  7C 9D 22 14 */	add r4, r29, r4
/* 8069FF80  4B BC 4C 29 */	bl Set__4cCcSFP8cCcD_Obj
/* 8069FF84  3B 5A 01 38 */	addi r26, r26, 0x138
lbl_8069FF88:
/* 8069FF88  3A F7 00 01 */	addi r23, r23, 1
/* 8069FF8C  2C 17 00 0C */	cmpwi r23, 0xc
/* 8069FF90  3B 18 00 0C */	addi r24, r24, 0xc
/* 8069FF94  3B 39 00 0C */	addi r25, r25, 0xc
/* 8069FF98  41 80 FF 58 */	blt lbl_8069FEF0
/* 8069FF9C  38 7D 08 58 */	addi r3, r29, 0x858
/* 8069FFA0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069FFA4  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8069FFA8  4B BC FA D9 */	bl cLib_addCalc0__FPfff
/* 8069FFAC  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8069FFB0  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 8069FFB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069FFB8  40 80 00 08 */	bge lbl_8069FFC0
/* 8069FFBC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8069FFC0:
/* 8069FFC0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8069FFC4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8069FFC8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8069FFCC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8069FFD0  7F A3 EB 78 */	mr r3, r29
/* 8069FFD4  38 9D 05 BC */	addi r4, r29, 0x5bc
/* 8069FFD8  38 BD 05 38 */	addi r5, r29, 0x538
/* 8069FFDC  38 C1 00 38 */	addi r6, r1, 0x38
/* 8069FFE0  48 00 14 8D */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8069FFE4  39 61 00 90 */	addi r11, r1, 0x90
/* 8069FFE8  4B CC 22 29 */	bl _restgpr_23
/* 8069FFEC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8069FFF0  7C 08 03 A6 */	mtlr r0
/* 8069FFF4  38 21 00 90 */	addi r1, r1, 0x90
/* 8069FFF8  4E 80 00 20 */	blr 
