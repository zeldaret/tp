lbl_80D0E9B0:
/* 80D0E9B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D0E9B4  7C 08 02 A6 */	mflr r0
/* 80D0E9B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0E9BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D0E9C0  7C 7F 1B 78 */	mr r31, r3
/* 80D0E9C4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D0E9C8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D0E9CC  40 82 00 1C */	bne lbl_80D0E9E8
/* 80D0E9D0  28 1F 00 00 */	cmplwi r31, 0
/* 80D0E9D4  41 82 00 08 */	beq lbl_80D0E9DC
/* 80D0E9D8  4B 30 A1 8C */	b __ct__10fopAc_ac_cFv
lbl_80D0E9DC:
/* 80D0E9DC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D0E9E0  60 00 00 08 */	ori r0, r0, 8
/* 80D0E9E4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D0E9E8:
/* 80D0E9E8  7F E3 FB 78 */	mr r3, r31
/* 80D0E9EC  4B FF FF 6D */	bl setBaseMtx__12daTimeFire_cFv
/* 80D0E9F0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D0E9F4  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 80D0E9F8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D0E9FC  D0 1F 05 74 */	stfs f0, 0x574(r31)
/* 80D0EA00  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D0EA04  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 80D0EA08  7F E3 FB 78 */	mr r3, r31
/* 80D0EA0C  48 00 00 C1 */	bl lightInit__12daTimeFire_cFv
/* 80D0EA10  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D0EA14  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D0EA18  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 80D0EA1C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D0EA20  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D0EA24  98 1F 05 6B */	stb r0, 0x56b(r31)
/* 80D0EA28  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D0EA2C  54 00 46 3E */	srwi r0, r0, 0x18
/* 80D0EA30  3C 60 80 D1 */	lis r3, lit_3688@ha
/* 80D0EA34  C8 23 F0 EC */	lfd f1, lit_3688@l(r3)
/* 80D0EA38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D0EA3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D0EA40  3C 00 43 30 */	lis r0, 0x4330
/* 80D0EA44  90 01 00 08 */	stw r0, 8(r1)
/* 80D0EA48  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D0EA4C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D0EA50  3C 60 80 D1 */	lis r3, lit_3686@ha
/* 80D0EA54  C0 03 F0 E4 */	lfs f0, lit_3686@l(r3)
/* 80D0EA58  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D0EA5C  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80D0EA60  D0 1F 05 80 */	stfs f0, 0x580(r31)
/* 80D0EA64  D0 1F 05 84 */	stfs f0, 0x584(r31)
/* 80D0EA68  7F E3 FB 78 */	mr r3, r31
/* 80D0EA6C  38 80 00 01 */	li r4, 1
/* 80D0EA70  48 00 02 F9 */	bl fireCheck__12daTimeFire_cFUc
/* 80D0EA74  98 7F 05 6C */	stb r3, 0x56c(r31)
/* 80D0EA78  88 1F 05 6C */	lbz r0, 0x56c(r31)
/* 80D0EA7C  28 00 00 00 */	cmplwi r0, 0
/* 80D0EA80  40 82 00 18 */	bne lbl_80D0EA98
/* 80D0EA84  7F E3 FB 78 */	mr r3, r31
/* 80D0EA88  48 00 00 DD */	bl cutLight__12daTimeFire_cFv
/* 80D0EA8C  38 00 00 00 */	li r0, 0
/* 80D0EA90  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 80D0EA94  48 00 00 14 */	b lbl_80D0EAA8
lbl_80D0EA98:
/* 80D0EA98  7F E3 FB 78 */	mr r3, r31
/* 80D0EA9C  48 00 00 A5 */	bl setLight__12daTimeFire_cFv
/* 80D0EAA0  38 00 00 01 */	li r0, 1
/* 80D0EAA4  98 1F 05 6D */	stb r0, 0x56d(r31)
lbl_80D0EAA8:
/* 80D0EAA8  38 00 00 00 */	li r0, 0
/* 80D0EAAC  98 1F 05 68 */	stb r0, 0x568(r31)
/* 80D0EAB0  98 1F 05 69 */	stb r0, 0x569(r31)
/* 80D0EAB4  38 60 00 04 */	li r3, 4
/* 80D0EAB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D0EABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0EAC0  7C 08 03 A6 */	mtlr r0
/* 80D0EAC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0EAC8  4E 80 00 20 */	blr 
