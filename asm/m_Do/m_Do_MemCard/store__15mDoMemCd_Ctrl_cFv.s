lbl_80016BD4:
/* 80016BD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80016BD8  7C 08 02 A6 */	mflr r0
/* 80016BDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80016BE0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80016BE4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80016BE8  7C 7E 1B 78 */	mr r30, r3
/* 80016BEC  38 00 00 00 */	li r0, 0
/* 80016BF0  90 03 1F C8 */	stw r0, 0x1fc8(r3)
/* 80016BF4  80 03 1F C4 */	lwz r0, 0x1fc4(r3)
/* 80016BF8  2C 00 00 02 */	cmpwi r0, 2
/* 80016BFC  40 82 00 48 */	bne lbl_80016C44
/* 80016C00  88 7E 1F BC */	lbz r3, 0x1fbc(r30)
/* 80016C04  3C 80 80 37 */	lis r4, m_Do_m_Do_MemCard__stringBase0@ha
/* 80016C08  38 84 43 F8 */	addi r4, r4, m_Do_m_Do_MemCard__stringBase0@l
/* 80016C0C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008000@ha */
/* 80016C10  38 A5 80 00 */	addi r5, r5, 0x8000 /* 0x00008000@l */
/* 80016C14  38 C1 00 08 */	addi r6, r1, 8
/* 80016C18  48 34 18 41 */	bl CARDCreate
/* 80016C1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80016C20  41 82 00 0C */	beq lbl_80016C2C
/* 80016C24  2C 1F FF F9 */	cmpwi r31, -7
/* 80016C28  40 82 00 10 */	bne lbl_80016C38
lbl_80016C2C:
/* 80016C2C  38 00 00 01 */	li r0, 1
/* 80016C30  90 1E 1F C4 */	stw r0, 0x1fc4(r30)
/* 80016C34  48 00 00 10 */	b lbl_80016C44
lbl_80016C38:
/* 80016C38  7F C3 F3 78 */	mr r3, r30
/* 80016C3C  7F E4 FB 78 */	mr r4, r31
/* 80016C40  48 00 07 21 */	bl setCardState__15mDoMemCd_Ctrl_cFl
lbl_80016C44:
/* 80016C44  80 1E 1F C4 */	lwz r0, 0x1fc4(r30)
/* 80016C48  2C 00 00 01 */	cmpwi r0, 1
/* 80016C4C  40 82 00 68 */	bne lbl_80016CB4
/* 80016C50  88 7E 1F BC */	lbz r3, 0x1fbc(r30)
/* 80016C54  3C 80 80 37 */	lis r4, m_Do_m_Do_MemCard__stringBase0@ha
/* 80016C58  38 84 43 F8 */	addi r4, r4, m_Do_m_Do_MemCard__stringBase0@l
/* 80016C5C  38 A1 00 08 */	addi r5, r1, 8
/* 80016C60  48 34 13 39 */	bl CARDOpen
/* 80016C64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80016C68  40 82 00 3C */	bne lbl_80016CA4
/* 80016C6C  38 61 00 08 */	addi r3, r1, 8
/* 80016C70  7F C4 F3 78 */	mr r4, r30
/* 80016C74  38 A0 1F BC */	li r5, 0x1fbc
/* 80016C78  48 00 08 21 */	bl mDoMemCdRWm_Store__FP12CARDFileInfoPvUl
/* 80016C7C  7C 64 1B 79 */	or. r4, r3, r3
/* 80016C80  41 82 00 10 */	beq lbl_80016C90
/* 80016C84  7F C3 F3 78 */	mr r3, r30
/* 80016C88  48 00 06 D9 */	bl setCardState__15mDoMemCd_Ctrl_cFl
/* 80016C8C  48 00 00 0C */	b lbl_80016C98
lbl_80016C90:
/* 80016C90  38 00 00 04 */	li r0, 4
/* 80016C94  90 1E 1F C4 */	stw r0, 0x1fc4(r30)
lbl_80016C98:
/* 80016C98  38 61 00 08 */	addi r3, r1, 8
/* 80016C9C  48 34 14 19 */	bl CARDClose
/* 80016CA0  48 00 00 20 */	b lbl_80016CC0
lbl_80016CA4:
/* 80016CA4  7F C3 F3 78 */	mr r3, r30
/* 80016CA8  7F E4 FB 78 */	mr r4, r31
/* 80016CAC  48 00 06 B5 */	bl setCardState__15mDoMemCd_Ctrl_cFl
/* 80016CB0  48 00 00 10 */	b lbl_80016CC0
lbl_80016CB4:
/* 80016CB4  7F C3 F3 78 */	mr r3, r30
/* 80016CB8  7F E4 FB 78 */	mr r4, r31
/* 80016CBC  48 00 06 A5 */	bl setCardState__15mDoMemCd_Ctrl_cFl
lbl_80016CC0:
/* 80016CC0  38 00 00 01 */	li r0, 1
/* 80016CC4  90 1E 1F C8 */	stw r0, 0x1fc8(r30)
/* 80016CC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80016CCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80016CD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80016CD4  7C 08 03 A6 */	mtlr r0
/* 80016CD8  38 21 00 30 */	addi r1, r1, 0x30
/* 80016CDC  4E 80 00 20 */	blr 
