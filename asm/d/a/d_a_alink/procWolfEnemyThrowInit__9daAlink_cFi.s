lbl_8013CB48:
/* 8013CB48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013CB4C  7C 08 02 A6 */	mflr r0
/* 8013CB50  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013CB54  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8013CB58  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8013CB5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8013CB60  48 22 56 7D */	bl _savegpr_29
/* 8013CB64  7C 7D 1B 78 */	mr r29, r3
/* 8013CB68  7C 9E 23 78 */	mr r30, r4
/* 8013CB6C  38 80 01 35 */	li r4, 0x135
/* 8013CB70  4B F8 53 FD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013CB74  2C 1E 00 02 */	cmpwi r30, 2
/* 8013CB78  41 82 00 1C */	beq lbl_8013CB94
/* 8013CB7C  2C 1E 00 04 */	cmpwi r30, 4
/* 8013CB80  40 82 00 28 */	bne lbl_8013CBA8
/* 8013CB84  48 12 AC E9 */	bl cM_rnd__Fv
/* 8013CB88  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 8013CB8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013CB90  40 80 00 18 */	bge lbl_8013CBA8
lbl_8013CB94:
/* 8013CB94  3B E0 00 76 */	li r31, 0x76
/* 8013CB98  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8013CB9C  60 00 00 20 */	ori r0, r0, 0x20
/* 8013CBA0  90 1D 05 78 */	stw r0, 0x578(r29)
/* 8013CBA4  48 00 00 14 */	b lbl_8013CBB8
lbl_8013CBA8:
/* 8013CBA8  3B E0 00 77 */	li r31, 0x77
/* 8013CBAC  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8013CBB0  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8013CBB4  90 1D 05 78 */	stw r0, 0x578(r29)
lbl_8013CBB8:
/* 8013CBB8  2C 1E 00 04 */	cmpwi r30, 4
/* 8013CBBC  40 82 00 0C */	bne lbl_8013CBC8
/* 8013CBC0  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 8013CBC4  48 00 00 08 */	b lbl_8013CBCC
lbl_8013CBC8:
/* 8013CBC8  C3 E2 92 C4 */	lfs f31, lit_6109(r2)
lbl_8013CBCC:
/* 8013CBCC  7F A3 EB 78 */	mr r3, r29
/* 8013CBD0  7F E4 FB 78 */	mr r4, r31
/* 8013CBD4  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtBite_c0@ha
/* 8013CBD8  38 C5 F7 48 */	addi r6, r5, m__22daAlinkHIO_wlAtBite_c0@l
/* 8013CBDC  C0 26 00 2C */	lfs f1, 0x2c(r6)
/* 8013CBE0  FC 40 F8 90 */	fmr f2, f31
/* 8013CBE4  38 A0 FF FF */	li r5, -1
/* 8013CBE8  C0 66 00 30 */	lfs f3, 0x30(r6)
/* 8013CBEC  4B FE CB 19 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8013CBF0  7F A3 EB 78 */	mr r3, r29
/* 8013CBF4  7F E4 FB 78 */	mr r4, r31
/* 8013CBF8  FC 20 F8 90 */	fmr f1, f31
/* 8013CBFC  4B FF C9 B9 */	bl setWolfEnemyThrowUpperAnime__9daAlink_cFQ29daAlink_c12daAlink_WANMf
/* 8013CC00  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8013CC04  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8013CC08  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 8013CC0C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013CC10  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 8013CC14  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013CC18  D0 1D 35 90 */	stfs f0, 0x3590(r29)
/* 8013CC1C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013CC20  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8013CC24  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8013CC28  38 00 00 0D */	li r0, 0xd
/* 8013CC2C  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 8013CC30  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8013CC34  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8013CC38  38 60 00 01 */	li r3, 1
/* 8013CC3C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8013CC40  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8013CC44  39 61 00 20 */	addi r11, r1, 0x20
/* 8013CC48  48 22 55 E1 */	bl _restgpr_29
/* 8013CC4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013CC50  7C 08 03 A6 */	mtlr r0
/* 8013CC54  38 21 00 30 */	addi r1, r1, 0x30
/* 8013CC58  4E 80 00 20 */	blr 
