lbl_80D528F0:
/* 80D528F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D528F4  7C 08 02 A6 */	mflr r0
/* 80D528F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D528FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D52900  7C 7F 1B 78 */	mr r31, r3
/* 80D52904  88 03 05 E2 */	lbz r0, 0x5e2(r3)
/* 80D52908  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D5290C  3C 60 80 D5 */	lis r3, l_zevParamTbl@ha /* 0x80D557B0@ha */
/* 80D52910  38 A3 57 B0 */	addi r5, r3, l_zevParamTbl@l /* 0x80D557B0@l */
/* 80D52914  7C 05 00 2E */	lwzx r0, r5, r0
/* 80D52918  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80D5291C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D52920  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D52924  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D52928  7F E4 FB 78 */	mr r4, r31
/* 80D5292C  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D52930  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D52934  7C A5 02 14 */	add r5, r5, r0
/* 80D52938  80 A5 00 04 */	lwz r5, 4(r5)
/* 80D5293C  38 C0 00 FF */	li r6, 0xff
/* 80D52940  4B 2F 4E 19 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D52944  B0 7F 05 DC */	sth r3, 0x5dc(r31)
/* 80D52948  7F E3 FB 78 */	mr r3, r31
/* 80D5294C  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 80D52950  38 A0 00 FF */	li r5, 0xff
/* 80D52954  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D52958  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D5295C  38 E0 00 04 */	li r7, 4
/* 80D52960  39 00 00 01 */	li r8, 1
/* 80D52964  4B 2C 8D 19 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D52968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5296C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D52970  7C 08 03 A6 */	mtlr r0
/* 80D52974  38 21 00 10 */	addi r1, r1, 0x10
/* 80D52978  4E 80 00 20 */	blr 
