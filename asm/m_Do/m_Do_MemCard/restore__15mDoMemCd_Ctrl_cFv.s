lbl_80016A0C:
/* 80016A0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80016A10  7C 08 02 A6 */	mflr r0
/* 80016A14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80016A18  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80016A1C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80016A20  7C 7E 1B 78 */	mr r30, r3
/* 80016A24  38 00 00 00 */	li r0, 0
/* 80016A28  90 03 1F C8 */	stw r0, 0x1fc8(r3)
/* 80016A2C  88 63 1F BC */	lbz r3, 0x1fbc(r3)
/* 80016A30  3C 80 80 37 */	lis r4, m_Do_m_Do_MemCard__stringBase0@ha /* 0x803743F8@ha */
/* 80016A34  38 84 43 F8 */	addi r4, r4, m_Do_m_Do_MemCard__stringBase0@l /* 0x803743F8@l */
/* 80016A38  38 A1 00 08 */	addi r5, r1, 8
/* 80016A3C  48 34 15 5D */	bl CARDOpen
/* 80016A40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80016A44  40 82 00 40 */	bne lbl_80016A84
/* 80016A48  38 61 00 08 */	addi r3, r1, 8
/* 80016A4C  7F C4 F3 78 */	mr r4, r30
/* 80016A50  38 A0 1F BC */	li r5, 0x1fbc
/* 80016A54  48 00 0C 49 */	bl mDoMemCdRWm_Restore__FP12CARDFileInfoPvUl
/* 80016A58  2C 03 00 00 */	cmpwi r3, 0
/* 80016A5C  40 82 00 10 */	bne lbl_80016A6C
/* 80016A60  38 00 00 03 */	li r0, 3
/* 80016A64  90 1E 1F C4 */	stw r0, 0x1fc4(r30)
/* 80016A68  48 00 00 10 */	b lbl_80016A78
lbl_80016A6C:
/* 80016A6C  7F C3 F3 78 */	mr r3, r30
/* 80016A70  7F E4 FB 78 */	mr r4, r31
/* 80016A74  48 00 08 ED */	bl setCardState__15mDoMemCd_Ctrl_cFl
lbl_80016A78:
/* 80016A78  38 61 00 08 */	addi r3, r1, 8
/* 80016A7C  48 34 16 39 */	bl CARDClose
/* 80016A80  48 00 00 10 */	b lbl_80016A90
lbl_80016A84:
/* 80016A84  7F C3 F3 78 */	mr r3, r30
/* 80016A88  7F E4 FB 78 */	mr r4, r31
/* 80016A8C  48 00 08 D5 */	bl setCardState__15mDoMemCd_Ctrl_cFl
lbl_80016A90:
/* 80016A90  38 00 00 01 */	li r0, 1
/* 80016A94  90 1E 1F C8 */	stw r0, 0x1fc8(r30)
/* 80016A98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80016A9C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80016AA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80016AA4  7C 08 03 A6 */	mtlr r0
/* 80016AA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80016AAC  4E 80 00 20 */	blr 
