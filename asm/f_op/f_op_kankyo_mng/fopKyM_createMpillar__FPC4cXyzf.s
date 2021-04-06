lbl_8001F90C:
/* 8001F90C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001F910  7C 08 02 A6 */	mflr r0
/* 8001F914  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001F918  39 61 00 40 */	addi r11, r1, 0x40
/* 8001F91C  48 34 28 BD */	bl _savegpr_28
/* 8001F920  7C 7C 1B 78 */	mr r28, r3
/* 8001F924  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8001F928  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8001F92C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8001F930  3B A0 00 00 */	li r29, 0
/* 8001F934  3B E0 00 00 */	li r31, 0
/* 8001F938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001F93C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_8001F940:
/* 8001F940  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8001F944  38 80 00 00 */	li r4, 0
/* 8001F948  90 81 00 08 */	stw r4, 8(r1)
/* 8001F94C  38 00 FF FF */	li r0, -1
/* 8001F950  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001F954  90 81 00 10 */	stw r4, 0x10(r1)
/* 8001F958  90 81 00 14 */	stw r4, 0x14(r1)
/* 8001F95C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8001F960  38 80 00 00 */	li r4, 0
/* 8001F964  38 AD 80 40 */	la r5, m_name(r13) /* 804505C0-_SDA_BASE_ */
/* 8001F968  7C A5 FA 2E */	lhzx r5, r5, r31
/* 8001F96C  7F 86 E3 78 */	mr r6, r28
/* 8001F970  38 E0 00 00 */	li r7, 0
/* 8001F974  39 00 00 00 */	li r8, 0
/* 8001F978  39 21 00 20 */	addi r9, r1, 0x20
/* 8001F97C  39 40 00 FF */	li r10, 0xff
/* 8001F980  C0 22 82 68 */	lfs f1, lit_3713(r2)
/* 8001F984  48 02 D1 0D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8001F988  3B BD 00 01 */	addi r29, r29, 1
/* 8001F98C  2C 1D 00 02 */	cmpwi r29, 2
/* 8001F990  3B FF 00 02 */	addi r31, r31, 2
/* 8001F994  41 80 FF AC */	blt lbl_8001F940
/* 8001F998  38 60 FF FF */	li r3, -1
/* 8001F99C  39 61 00 40 */	addi r11, r1, 0x40
/* 8001F9A0  48 34 28 85 */	bl _restgpr_28
/* 8001F9A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001F9A8  7C 08 03 A6 */	mtlr r0
/* 8001F9AC  38 21 00 40 */	addi r1, r1, 0x40
/* 8001F9B0  4E 80 00 20 */	blr 
