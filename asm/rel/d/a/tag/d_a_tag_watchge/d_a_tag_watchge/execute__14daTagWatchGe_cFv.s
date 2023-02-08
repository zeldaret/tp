lbl_80D64338:
/* 80D64338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6433C  7C 08 02 A6 */	mflr r0
/* 80D64340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D64344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D64348  7C 7F 1B 78 */	mr r31, r3
/* 80D6434C  88 63 05 6A */	lbz r3, 0x56a(r3)
/* 80D64350  28 03 00 00 */	cmplwi r3, 0
/* 80D64354  41 82 00 10 */	beq lbl_80D64364
/* 80D64358  38 03 FF FF */	addi r0, r3, -1
/* 80D6435C  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 80D64360  48 00 00 50 */	b lbl_80D643B0
lbl_80D64364:
/* 80D64364  38 00 00 00 */	li r0, 0
/* 80D64368  3C 60 80 D6 */	lis r3, m_group_count@ha /* 0x80D64528@ha */
/* 80D6436C  90 03 45 28 */	stw r0, m_group_count@l(r3)  /* 0x80D64528@l */
/* 80D64370  3C 60 80 D6 */	lis r3, s_watchge__FPvPv@ha /* 0x80D64300@ha */
/* 80D64374  38 63 43 00 */	addi r3, r3, s_watchge__FPvPv@l /* 0x80D64300@l */
/* 80D64378  7F E4 FB 78 */	mr r4, r31
/* 80D6437C  4B 2B 54 7D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D64380  3C 60 80 D6 */	lis r3, m_group_count@ha /* 0x80D64528@ha */
/* 80D64384  80 03 45 28 */	lwz r0, m_group_count@l(r3)  /* 0x80D64528@l */
/* 80D64388  2C 00 00 00 */	cmpwi r0, 0
/* 80D6438C  40 82 00 24 */	bne lbl_80D643B0
/* 80D64390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D64394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D64398  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 80D6439C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D643A0  7C 05 07 74 */	extsb r5, r0
/* 80D643A4  4B 2D 0E 5D */	bl onSwitch__10dSv_info_cFii
/* 80D643A8  7F E3 FB 78 */	mr r3, r31
/* 80D643AC  4B 2B 58 D1 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D643B0:
/* 80D643B0  38 60 00 01 */	li r3, 1
/* 80D643B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D643B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D643BC  7C 08 03 A6 */	mtlr r0
/* 80D643C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D643C4  4E 80 00 20 */	blr 
