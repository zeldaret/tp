lbl_80C3ADC8:
/* 80C3ADC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C3ADCC  7C 08 02 A6 */	mflr r0
/* 80C3ADD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C3ADD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C3ADD8  7C 7F 1B 78 */	mr r31, r3
/* 80C3ADDC  38 7F 08 4C */	addi r3, r31, 0x84c
/* 80C3ADE0  4B 44 96 81 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C3ADE4  28 03 00 00 */	cmplwi r3, 0
/* 80C3ADE8  41 82 00 CC */	beq lbl_80C3AEB4
/* 80C3ADEC  38 7F 08 4C */	addi r3, r31, 0x84c
/* 80C3ADF0  4B 44 97 09 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C3ADF4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80C3ADF8  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80C3ADFC  41 82 00 30 */	beq lbl_80C3AE2C
/* 80C3AE00  88 1F 09 90 */	lbz r0, 0x990(r31)
/* 80C3AE04  28 00 00 00 */	cmplwi r0, 0
/* 80C3AE08  40 82 00 98 */	bne lbl_80C3AEA0
/* 80C3AE0C  38 00 00 01 */	li r0, 1
/* 80C3AE10  98 1F 09 90 */	stb r0, 0x990(r31)
/* 80C3AE14  38 7F 08 4C */	addi r3, r31, 0x84c
/* 80C3AE18  4B 44 97 31 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C3AE1C  38 7F 09 84 */	addi r3, r31, 0x984
/* 80C3AE20  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C3AE24  4B 52 37 8D */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80C3AE28  48 00 00 78 */	b lbl_80C3AEA0
lbl_80C3AE2C:
/* 80C3AE2C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80C3AE30  40 82 00 70 */	bne lbl_80C3AEA0
/* 80C3AE34  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80C3AE38  41 82 00 68 */	beq lbl_80C3AEA0
/* 80C3AE3C  3C 60 80 C4 */	lis r3, lit_3959@ha /* 0x80C3C6CC@ha */
/* 80C3AE40  C0 03 C6 CC */	lfs f0, lit_3959@l(r3)  /* 0x80C3C6CC@l */
/* 80C3AE44  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C3AE48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C3AE4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C3AE50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3AE54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3AE58  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C3AE5C  28 1F 00 00 */	cmplwi r31, 0
/* 80C3AE60  41 82 00 0C */	beq lbl_80C3AE6C
/* 80C3AE64  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C3AE68  48 00 00 08 */	b lbl_80C3AE70
lbl_80C3AE6C:
/* 80C3AE6C  38 80 FF FF */	li r4, -1
lbl_80C3AE70:
/* 80C3AE70  38 A1 00 08 */	addi r5, r1, 8
/* 80C3AE74  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C3AE78  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80C3AE7C  7D 89 03 A6 */	mtctr r12
/* 80C3AE80  4E 80 04 21 */	bctrl 
/* 80C3AE84  38 60 00 00 */	li r3, 0
/* 80C3AE88  98 7F 09 90 */	stb r3, 0x990(r31)
/* 80C3AE8C  38 00 00 03 */	li r0, 3
/* 80C3AE90  98 1F 08 08 */	stb r0, 0x808(r31)
/* 80C3AE94  38 00 00 01 */	li r0, 1
/* 80C3AE98  98 1F 07 C0 */	stb r0, 0x7c0(r31)
/* 80C3AE9C  98 7F 07 C1 */	stb r3, 0x7c1(r31)
lbl_80C3AEA0:
/* 80C3AEA0  38 7F 08 4C */	addi r3, r31, 0x84c
/* 80C3AEA4  81 9F 08 88 */	lwz r12, 0x888(r31)
/* 80C3AEA8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C3AEAC  7D 89 03 A6 */	mtctr r12
/* 80C3AEB0  4E 80 04 21 */	bctrl 
lbl_80C3AEB4:
/* 80C3AEB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C3AEB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C3AEBC  7C 08 03 A6 */	mtlr r0
/* 80C3AEC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C3AEC4  4E 80 00 20 */	blr 
