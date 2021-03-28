lbl_80CCBF04:
/* 80CCBF04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCBF08  7C 08 02 A6 */	mflr r0
/* 80CCBF0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCBF10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CCBF14  7C 7F 1B 78 */	mr r31, r3
/* 80CCBF18  3C 60 80 CD */	lis r3, lit_3832@ha
/* 80CCBF1C  38 83 CC 38 */	addi r4, r3, lit_3832@l
/* 80CCBF20  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CCBF24  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80CCBF28  40 82 00 88 */	bne lbl_80CCBFB0
/* 80CCBF2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCBF30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCBF34  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CCBF38  28 03 00 00 */	cmplwi r3, 0
/* 80CCBF3C  41 82 00 60 */	beq lbl_80CCBF9C
/* 80CCBF40  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80CCBF44  64 00 08 00 */	oris r0, r0, 0x800
/* 80CCBF48  90 03 05 70 */	stw r0, 0x570(r3)
/* 80CCBF4C  80 03 05 78 */	lwz r0, 0x578(r3)
/* 80CCBF50  60 00 04 00 */	ori r0, r0, 0x400
/* 80CCBF54  90 03 05 78 */	stw r0, 0x578(r3)
/* 80CCBF58  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80CCBF5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CCBF60  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80CCBF64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CCBF68  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80CCBF6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CCBF70  38 81 00 08 */	addi r4, r1, 8
/* 80CCBF74  A8 A3 04 E6 */	lha r5, 0x4e6(r3)
/* 80CCBF78  38 C0 00 00 */	li r6, 0
/* 80CCBF7C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CCBF80  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CCBF84  7D 89 03 A6 */	mtctr r12
/* 80CCBF88  4E 80 04 21 */	bctrl 
/* 80CCBF8C  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 80CCBF90  88 03 00 91 */	lbz r0, 0x91(r3)
/* 80CCBF94  60 00 00 04 */	ori r0, r0, 4
/* 80CCBF98  98 03 00 91 */	stb r0, 0x91(r3)
lbl_80CCBF9C:
/* 80CCBF9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCBFA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCBFA4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CCBFA8  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 80CCBFAC  4B 37 C1 D0 */	b cutEnd__16dEvent_manager_cFi
lbl_80CCBFB0:
/* 80CCBFB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CCBFB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCBFB8  7C 08 03 A6 */	mtlr r0
/* 80CCBFBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCBFC0  4E 80 00 20 */	blr 
