lbl_80804BB0:
/* 80804BB0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80804BB4  7C 08 02 A6 */	mflr r0
/* 80804BB8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80804BBC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80804BC0  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80804BC4  7C 9E 23 78 */	mr r30, r4
/* 80804BC8  7C 7F 1B 78 */	mr r31, r3
/* 80804BCC  38 61 00 20 */	addi r3, r1, 0x20
/* 80804BD0  4B 87 30 99 */	bl __ct__11dBgS_LinChkFv
/* 80804BD4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80804BD8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80804BDC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80804BE0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80804BE4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80804BE8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80804BEC  3C 60 80 80 */	lis r3, lit_3941@ha /* 0x80807C9C@ha */
/* 80804BF0  C0 03 7C 9C */	lfs f0, lit_3941@l(r3)  /* 0x80807C9C@l */
/* 80804BF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80804BF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80804BFC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80804C00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80804C04  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80804C08  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80804C0C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80804C10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80804C14  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80804C18  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80804C1C  38 61 00 20 */	addi r3, r1, 0x20
/* 80804C20  38 81 00 14 */	addi r4, r1, 0x14
/* 80804C24  38 A1 00 08 */	addi r5, r1, 8
/* 80804C28  7F E6 FB 78 */	mr r6, r31
/* 80804C2C  4B 87 31 39 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80804C30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80804C34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80804C38  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80804C3C  38 81 00 20 */	addi r4, r1, 0x20
/* 80804C40  4B 86 F7 75 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80804C44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80804C48  41 82 00 18 */	beq lbl_80804C60
/* 80804C4C  38 61 00 20 */	addi r3, r1, 0x20
/* 80804C50  38 80 FF FF */	li r4, -1
/* 80804C54  4B 87 30 89 */	bl __dt__11dBgS_LinChkFv
/* 80804C58  38 60 00 01 */	li r3, 1
/* 80804C5C  48 00 00 14 */	b lbl_80804C70
lbl_80804C60:
/* 80804C60  38 61 00 20 */	addi r3, r1, 0x20
/* 80804C64  38 80 FF FF */	li r4, -1
/* 80804C68  4B 87 30 75 */	bl __dt__11dBgS_LinChkFv
/* 80804C6C  38 60 00 00 */	li r3, 0
lbl_80804C70:
/* 80804C70  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80804C74  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80804C78  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80804C7C  7C 08 03 A6 */	mtlr r0
/* 80804C80  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80804C84  4E 80 00 20 */	blr 
