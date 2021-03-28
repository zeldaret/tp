lbl_805BCA10:
/* 805BCA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BCA14  7C 08 02 A6 */	mflr r0
/* 805BCA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BCA1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BCA20  7C 7F 1B 78 */	mr r31, r3
/* 805BCA24  A8 03 05 62 */	lha r0, 0x562(r3)
/* 805BCA28  2C 00 00 00 */	cmpwi r0, 0
/* 805BCA2C  40 81 00 94 */	ble lbl_805BCAC0
/* 805BCA30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BCA34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BCA38  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805BCA3C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 805BCA40  64 00 02 00 */	oris r0, r0, 0x200
/* 805BCA44  90 03 05 88 */	stw r0, 0x588(r3)
/* 805BCA48  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805BCA4C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 805BCA50  41 82 00 70 */	beq lbl_805BCAC0
/* 805BCA54  38 7F 07 D0 */	addi r3, r31, 0x7d0
/* 805BCA58  48 00 A1 A1 */	bl func_805C6BF8
/* 805BCA5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BCA60  40 82 00 60 */	bne lbl_805BCAC0
/* 805BCA64  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 805BCA68  2C 00 00 02 */	cmpwi r0, 2
/* 805BCA6C  41 82 00 54 */	beq lbl_805BCAC0
/* 805BCA70  88 1F 07 D1 */	lbz r0, 0x7d1(r31)
/* 805BCA74  28 00 00 02 */	cmplwi r0, 2
/* 805BCA78  41 82 00 48 */	beq lbl_805BCAC0
/* 805BCA7C  38 7F 14 08 */	addi r3, r31, 0x1408
/* 805BCA80  4B AC 79 E0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805BCA84  28 03 00 00 */	cmplwi r3, 0
/* 805BCA88  41 82 00 30 */	beq lbl_805BCAB8
/* 805BCA8C  3C 60 80 5C */	lis r3, lit_4011@ha
/* 805BCA90  C0 03 6C A4 */	lfs f0, lit_4011@l(r3)
/* 805BCA94  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805BCA98  38 60 00 15 */	li r3, 0x15
/* 805BCA9C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805BCAA0  7C 04 07 74 */	extsb r4, r0
/* 805BCAA4  4B A7 0E A8 */	b dComIfGs_onZoneSwitch__Fii
/* 805BCAA8  7F E3 FB 78 */	mr r3, r31
/* 805BCAAC  38 80 00 02 */	li r4, 2
/* 805BCAB0  38 A0 00 00 */	li r5, 0
/* 805BCAB4  4B FF EA 01 */	bl setActionMode__8daB_DR_cFii
lbl_805BCAB8:
/* 805BCAB8  38 7F 0A 24 */	addi r3, r31, 0xa24
/* 805BCABC  4B AC 6D 74 */	b Move__10dCcD_GSttsFv
lbl_805BCAC0:
/* 805BCAC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BCAC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BCAC8  7C 08 03 A6 */	mtlr r0
/* 805BCACC  38 21 00 10 */	addi r1, r1, 0x10
/* 805BCAD0  4E 80 00 20 */	blr 
