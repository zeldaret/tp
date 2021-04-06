lbl_80BB776C:
/* 80BB776C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB7770  7C 08 02 A6 */	mflr r0
/* 80BB7774  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB7778  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BB777C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BB7780  7C 7E 1B 78 */	mr r30, r3
/* 80BB7784  3C 60 80 BB */	lis r3, VIBMODE_POWER@ha /* 0x80BB7EB0@ha */
/* 80BB7788  3B E3 7E B0 */	addi r31, r3, VIBMODE_POWER@l /* 0x80BB7EB0@l */
/* 80BB778C  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80BB7790  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BB7794  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80BB7798  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BB779C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BB77A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB77A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB77A8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BB77AC  88 1E 05 78 */	lbz r0, 0x578(r30)
/* 80BB77B0  54 00 10 3A */	slwi r0, r0, 2
/* 80BB77B4  38 9F 00 00 */	addi r4, r31, 0
/* 80BB77B8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BB77BC  38 A0 00 1F */	li r5, 0x1f
/* 80BB77C0  38 C1 00 08 */	addi r6, r1, 8
/* 80BB77C4  4B 4B 83 4D */	bl StartQuake__12dVibration_cFii4cXyz
/* 80BB77C8  88 1E 05 78 */	lbz r0, 0x578(r30)
/* 80BB77CC  54 00 10 3A */	slwi r0, r0, 2
/* 80BB77D0  38 7F 01 04 */	addi r3, r31, 0x104
/* 80BB77D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80BB77D8  90 1E 05 74 */	stw r0, 0x574(r30)
/* 80BB77DC  7F C3 F3 78 */	mr r3, r30
/* 80BB77E0  48 00 01 A9 */	bl pieceMoveInit__11daBkyRock_cFv
/* 80BB77E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BB77E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BB77EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB77F0  7C 08 03 A6 */	mtlr r0
/* 80BB77F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB77F8  4E 80 00 20 */	blr 
