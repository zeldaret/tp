lbl_80D668C8:
/* 80D668C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D668CC  7C 08 02 A6 */	mflr r0
/* 80D668D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D668D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D668D8  7C 7F 1B 78 */	mr r31, r3
/* 80D668DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D668E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D668E4  38 63 09 58 */	addi r3, r3, 0x958
/* 80D668E8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D668EC  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 80D668F0  4B 2C DE F9 */	bl isTbox__12dSv_memBit_cCFi
/* 80D668F4  2C 03 00 00 */	cmpwi r3, 0
/* 80D668F8  41 82 00 28 */	beq lbl_80D66920
/* 80D668FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D66900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D66904  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D66908  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D6690C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D66910  7C 05 07 74 */	extsb r5, r0
/* 80D66914  4B 2C E8 ED */	bl onSwitch__10dSv_info_cFii
/* 80D66918  7F E3 FB 78 */	mr r3, r31
/* 80D6691C  4B 2B 33 61 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D66920:
/* 80D66920  38 60 00 01 */	li r3, 1
/* 80D66924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D66928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6692C  7C 08 03 A6 */	mtlr r0
/* 80D66930  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66934  4E 80 00 20 */	blr 
