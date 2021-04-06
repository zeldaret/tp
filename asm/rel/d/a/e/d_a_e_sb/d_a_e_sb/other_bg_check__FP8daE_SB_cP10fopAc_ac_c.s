lbl_80781B54:
/* 80781B54  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80781B58  7C 08 02 A6 */	mflr r0
/* 80781B5C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80781B60  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80781B64  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80781B68  7C 9E 23 78 */	mr r30, r4
/* 80781B6C  7C 7F 1B 78 */	mr r31, r3
/* 80781B70  38 61 00 20 */	addi r3, r1, 0x20
/* 80781B74  4B 8F 60 F5 */	bl __ct__11dBgS_LinChkFv
/* 80781B78  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80781B7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80781B80  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80781B84  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80781B88  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80781B8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80781B90  3C 60 80 78 */	lis r3, lit_3831@ha /* 0x80784DE4@ha */
/* 80781B94  C0 43 4D E4 */	lfs f2, lit_3831@l(r3)  /* 0x80784DE4@l */
/* 80781B98  EC 01 10 2A */	fadds f0, f1, f2
/* 80781B9C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80781BA0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80781BA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80781BA8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80781BAC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80781BB0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80781BB4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80781BB8  EC 01 10 2A */	fadds f0, f1, f2
/* 80781BBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80781BC0  38 61 00 20 */	addi r3, r1, 0x20
/* 80781BC4  38 81 00 14 */	addi r4, r1, 0x14
/* 80781BC8  38 A1 00 08 */	addi r5, r1, 8
/* 80781BCC  7F E6 FB 78 */	mr r6, r31
/* 80781BD0  4B 8F 61 95 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80781BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80781BD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80781BDC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80781BE0  38 81 00 20 */	addi r4, r1, 0x20
/* 80781BE4  4B 8F 27 D1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80781BE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80781BEC  41 82 00 18 */	beq lbl_80781C04
/* 80781BF0  38 61 00 20 */	addi r3, r1, 0x20
/* 80781BF4  38 80 FF FF */	li r4, -1
/* 80781BF8  4B 8F 60 E5 */	bl __dt__11dBgS_LinChkFv
/* 80781BFC  38 60 00 01 */	li r3, 1
/* 80781C00  48 00 00 14 */	b lbl_80781C14
lbl_80781C04:
/* 80781C04  38 61 00 20 */	addi r3, r1, 0x20
/* 80781C08  38 80 FF FF */	li r4, -1
/* 80781C0C  4B 8F 60 D1 */	bl __dt__11dBgS_LinChkFv
/* 80781C10  38 60 00 00 */	li r3, 0
lbl_80781C14:
/* 80781C14  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80781C18  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80781C1C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80781C20  7C 08 03 A6 */	mtlr r0
/* 80781C24  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80781C28  4E 80 00 20 */	blr 
