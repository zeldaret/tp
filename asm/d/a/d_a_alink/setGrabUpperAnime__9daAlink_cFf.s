lbl_800E3DBC:
/* 800E3DBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E3DC0  7C 08 02 A6 */	mflr r0
/* 800E3DC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E3DC8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800E3DCC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800E3DD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E3DD4  7C 7F 1B 78 */	mr r31, r3
/* 800E3DD8  FF E0 08 90 */	fmr f31, f1
/* 800E3DDC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E3DE0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800E3DE4  40 81 00 50 */	ble lbl_800E3E34
/* 800E3DE8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800E3DEC  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800E3DF0  41 82 00 44 */	beq lbl_800E3E34
/* 800E3DF4  4B FD BF BD */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800E3DF8  2C 03 00 00 */	cmpwi r3, 0
/* 800E3DFC  41 82 00 20 */	beq lbl_800E3E1C
/* 800E3E00  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E3E04  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha
/* 800E3E08  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l
/* 800E3E0C  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 800E3E10  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E3E14  EF FF 00 32 */	fmuls f31, f31, f0
/* 800E3E18  48 00 00 1C */	b lbl_800E3E34
lbl_800E3E1C:
/* 800E3E1C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E3E20  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha
/* 800E3E24  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l
/* 800E3E28  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 800E3E2C  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E3E30  EF FF 00 32 */	fmuls f31, f31, f0
lbl_800E3E34:
/* 800E3E34  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E3E38  D0 1F 33 E8 */	stfs f0, 0x33e8(r31)
/* 800E3E3C  7F E3 FB 78 */	mr r3, r31
/* 800E3E40  4B FF FE B5 */	bl checkGrabCarryActor__9daAlink_cFv
/* 800E3E44  2C 03 00 00 */	cmpwi r3, 0
/* 800E3E48  41 82 00 34 */	beq lbl_800E3E7C
/* 800E3E4C  7F E3 FB 78 */	mr r3, r31
/* 800E3E50  38 80 00 60 */	li r4, 0x60
/* 800E3E54  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E3E58  FC 40 F8 90 */	fmr f2, f31
/* 800E3E5C  4B FC 95 4D */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800E3E60  7F E3 FB 78 */	mr r3, r31
/* 800E3E64  38 80 00 FA */	li r4, 0xfa
/* 800E3E68  38 A0 00 01 */	li r5, 1
/* 800E3E6C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800E3E70  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800E3E74  4B FC B6 3D */	bl setFaceBck__9daAlink_cFUsiUs
/* 800E3E78  48 00 00 80 */	b lbl_800E3EF8
lbl_800E3E7C:
/* 800E3E7C  7F E3 FB 78 */	mr r3, r31
/* 800E3E80  4B FF FF 15 */	bl checkGrabSideActor__9daAlink_cFv
/* 800E3E84  2C 03 00 00 */	cmpwi r3, 0
/* 800E3E88  41 82 00 3C */	beq lbl_800E3EC4
/* 800E3E8C  7F E3 FB 78 */	mr r3, r31
/* 800E3E90  38 80 00 50 */	li r4, 0x50
/* 800E3E94  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E3E98  FC 40 F8 90 */	fmr f2, f31
/* 800E3E9C  4B FC 95 0D */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800E3EA0  7F E3 FB 78 */	mr r3, r31
/* 800E3EA4  38 80 01 3D */	li r4, 0x13d
/* 800E3EA8  38 A0 00 01 */	li r5, 1
/* 800E3EAC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800E3EB0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800E3EB4  4B FC B5 FD */	bl setFaceBck__9daAlink_cFUsiUs
/* 800E3EB8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E3EBC  D0 1F 33 EC */	stfs f0, 0x33ec(r31)
/* 800E3EC0  48 00 00 38 */	b lbl_800E3EF8
lbl_800E3EC4:
/* 800E3EC4  7F E3 FB 78 */	mr r3, r31
/* 800E3EC8  38 80 01 6C */	li r4, 0x16c
/* 800E3ECC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E3ED0  FC 40 F8 90 */	fmr f2, f31
/* 800E3ED4  4B FC 94 D5 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800E3ED8  7F E3 FB 78 */	mr r3, r31
/* 800E3EDC  38 80 01 3D */	li r4, 0x13d
/* 800E3EE0  38 A0 00 01 */	li r5, 1
/* 800E3EE4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800E3EE8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800E3EEC  4B FC B5 C5 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800E3EF0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E3EF4  D0 1F 33 EC */	stfs f0, 0x33ec(r31)
lbl_800E3EF8:
/* 800E3EF8  38 00 00 FE */	li r0, 0xfe
/* 800E3EFC  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 800E3F00  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 800E3F04  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800E3F08  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800E3F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E3F10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E3F14  7C 08 03 A6 */	mtlr r0
/* 800E3F18  38 21 00 20 */	addi r1, r1, 0x20
/* 800E3F1C  4E 80 00 20 */	blr 
