lbl_80D640B4:
/* 80D640B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D640B8  7C 08 02 A6 */	mflr r0
/* 80D640BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D640C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D640C4  7C 7F 1B 78 */	mr r31, r3
/* 80D640C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D640CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D640D0  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D640D4  28 04 00 00 */	cmplwi r4, 0
/* 80D640D8  40 82 00 0C */	bne lbl_80D640E4
/* 80D640DC  38 60 00 00 */	li r3, 0
/* 80D640E0  48 00 00 50 */	b lbl_80D64130
lbl_80D640E4:
/* 80D640E4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D640E8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D640EC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D640F0  41 82 00 3C */	beq lbl_80D6412C
/* 80D640F4  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80D640F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D640FC  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80D64100  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D64104  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80D64108  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D6410C  38 61 00 08 */	addi r3, r1, 8
/* 80D64110  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D64114  4B 5E 32 89 */	bl PSVECSquareDistance
/* 80D64118  C0 1F 05 70 */	lfs f0, 0x570(r31)
/* 80D6411C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D64120  40 80 00 0C */	bge lbl_80D6412C
/* 80D64124  38 60 00 01 */	li r3, 1
/* 80D64128  48 00 00 08 */	b lbl_80D64130
lbl_80D6412C:
/* 80D6412C  38 60 00 00 */	li r3, 0
lbl_80D64130:
/* 80D64130  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D64134  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D64138  7C 08 03 A6 */	mtlr r0
/* 80D6413C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D64140  4E 80 00 20 */	blr 
