lbl_80017274:
/* 80017274  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80017278  7C 08 02 A6 */	mflr r0
/* 8001727C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80017280  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80017284  7C 7F 1B 78 */	mr r31, r3
/* 80017288  88 63 1F BC */	lbz r3, 0x1fbc(r3)
/* 8001728C  3C 80 80 37 */	lis r4, m_Do_m_Do_MemCard__stringBase0@ha /* 0x803743F8@ha */
/* 80017290  38 84 43 F8 */	addi r4, r4, m_Do_m_Do_MemCard__stringBase0@l /* 0x803743F8@l */
/* 80017294  38 A1 00 08 */	addi r5, r1, 8
/* 80017298  48 34 0D 01 */	bl CARDOpen
/* 8001729C  7C 64 1B 79 */	or. r4, r3, r3
/* 800172A0  40 82 00 14 */	bne lbl_800172B4
/* 800172A4  38 61 00 08 */	addi r3, r1, 8
/* 800172A8  48 34 0E 0D */	bl CARDClose
/* 800172AC  38 60 00 01 */	li r3, 1
/* 800172B0  48 00 00 10 */	b lbl_800172C0
lbl_800172B4:
/* 800172B4  7F E3 FB 78 */	mr r3, r31
/* 800172B8  48 00 00 A9 */	bl setCardState__15mDoMemCd_Ctrl_cFl
/* 800172BC  38 60 00 00 */	li r3, 0
lbl_800172C0:
/* 800172C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800172C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800172C8  7C 08 03 A6 */	mtlr r0
/* 800172CC  38 21 00 30 */	addi r1, r1, 0x30
/* 800172D0  4E 80 00 20 */	blr 
