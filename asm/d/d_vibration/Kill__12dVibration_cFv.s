lbl_8006FE00:
/* 8006FE00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006FE04  7C 08 02 A6 */	mflr r0
/* 8006FE08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006FE0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006FE10  7C 7F 1B 78 */	mr r31, r3
/* 8006FE14  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha /* 0x803DD2D8@ha */
/* 8006FE18  80 83 D2 D8 */	lwz r4, m_gamePad__8mDoCPd_c@l(r3)  /* 0x803DD2D8@l */
/* 8006FE1C  38 64 00 68 */	addi r3, r4, 0x68
/* 8006FE20  A8 84 00 7C */	lha r4, 0x7c(r4)
/* 8006FE24  48 27 1B 25 */	bl stopPatternedRumble__Q210JUTGamePad7CRumbleFs
/* 8006FE28  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha /* 0x803DD2D8@ha */
/* 8006FE2C  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l /* 0x803DD2D8@l */
/* 8006FE30  80 63 00 00 */	lwz r3, 0(r3)
/* 8006FE34  A8 63 00 7C */	lha r3, 0x7c(r3)
/* 8006FE38  38 80 00 01 */	li r4, 1
/* 8006FE3C  48 27 18 51 */	bl stopMotor__Q210JUTGamePad7CRumbleFib
/* 8006FE40  7F E3 FB 78 */	mr r3, r31
/* 8006FE44  48 00 00 41 */	bl setDefault__12dVibration_cFv
/* 8006FE48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006FE4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006FE50  7C 08 03 A6 */	mtlr r0
/* 8006FE54  38 21 00 10 */	addi r1, r1, 0x10
/* 8006FE58  4E 80 00 20 */	blr 
