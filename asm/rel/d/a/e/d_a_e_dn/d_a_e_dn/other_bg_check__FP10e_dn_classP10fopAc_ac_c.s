lbl_804E5B20:
/* 804E5B20  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804E5B24  7C 08 02 A6 */	mflr r0
/* 804E5B28  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804E5B2C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 804E5B30  93 C1 00 98 */	stw r30, 0x98(r1)
/* 804E5B34  7C 9E 23 78 */	mr r30, r4
/* 804E5B38  7C 7F 1B 78 */	mr r31, r3
/* 804E5B3C  38 61 00 20 */	addi r3, r1, 0x20
/* 804E5B40  4B B9 21 29 */	bl __ct__11dBgS_LinChkFv
/* 804E5B44  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804E5B48  D0 01 00 08 */	stfs f0, 8(r1)
/* 804E5B4C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 804E5B50  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804E5B54  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804E5B58  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804E5B5C  3C 60 80 4F */	lis r3, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E5B60  C0 03 E8 AC */	lfs f0, lit_3789@l(r3)  /* 0x804EE8AC@l */
/* 804E5B64  EC 01 00 2A */	fadds f0, f1, f0
/* 804E5B68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E5B6C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804E5B70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E5B74  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804E5B78  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E5B7C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804E5B80  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E5B84  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 804E5B88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E5B8C  38 61 00 20 */	addi r3, r1, 0x20
/* 804E5B90  38 81 00 14 */	addi r4, r1, 0x14
/* 804E5B94  38 A1 00 08 */	addi r5, r1, 8
/* 804E5B98  7F E6 FB 78 */	mr r6, r31
/* 804E5B9C  4B B9 21 C9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804E5BA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E5BA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E5BA8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804E5BAC  38 81 00 20 */	addi r4, r1, 0x20
/* 804E5BB0  4B B8 E8 05 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804E5BB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E5BB8  41 82 00 18 */	beq lbl_804E5BD0
/* 804E5BBC  38 61 00 20 */	addi r3, r1, 0x20
/* 804E5BC0  38 80 FF FF */	li r4, -1
/* 804E5BC4  4B B9 21 19 */	bl __dt__11dBgS_LinChkFv
/* 804E5BC8  38 60 00 01 */	li r3, 1
/* 804E5BCC  48 00 00 14 */	b lbl_804E5BE0
lbl_804E5BD0:
/* 804E5BD0  38 61 00 20 */	addi r3, r1, 0x20
/* 804E5BD4  38 80 FF FF */	li r4, -1
/* 804E5BD8  4B B9 21 05 */	bl __dt__11dBgS_LinChkFv
/* 804E5BDC  38 60 00 00 */	li r3, 0
lbl_804E5BE0:
/* 804E5BE0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 804E5BE4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 804E5BE8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804E5BEC  7C 08 03 A6 */	mtlr r0
/* 804E5BF0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804E5BF4  4E 80 00 20 */	blr 
