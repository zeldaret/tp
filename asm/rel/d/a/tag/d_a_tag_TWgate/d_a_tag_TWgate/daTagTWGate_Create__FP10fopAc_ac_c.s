lbl_80D55288:
/* 80D55288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5528C  7C 08 02 A6 */	mflr r0
/* 80D55290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D55298  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5529C  7C 7F 1B 78 */	mr r31, r3
/* 80D552A0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D552A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D552A8  40 82 00 28 */	bne lbl_80D552D0
/* 80D552AC  7F E0 FB 79 */	or. r0, r31, r31
/* 80D552B0  41 82 00 14 */	beq lbl_80D552C4
/* 80D552B4  7C 1E 03 78 */	mr r30, r0
/* 80D552B8  4B 2C 38 AD */	bl __ct__10fopAc_ac_cFv
/* 80D552BC  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80D552C0  4B 4F 4C 41 */	bl __ct__10dMsgFlow_cFv
lbl_80D552C4:
/* 80D552C4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D552C8  60 00 00 08 */	ori r0, r0, 8
/* 80D552CC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D552D0:
/* 80D552D0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D552D4  98 1F 05 E2 */	stb r0, 0x5e2(r31)
/* 80D552D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D552DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D552E0  38 63 00 28 */	addi r3, r3, 0x28
/* 80D552E4  3C 80 80 D5 */	lis r4, l_zevParamTbl@ha /* 0x80D557B0@ha */
/* 80D552E8  38 84 57 B0 */	addi r4, r4, l_zevParamTbl@l /* 0x80D557B0@l */
/* 80D552EC  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D552F0  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D552F4  7C 84 02 14 */	add r4, r4, r0
/* 80D552F8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80D552FC  4B 2D D8 B5 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 80D55300  2C 03 00 00 */	cmpwi r3, 0
/* 80D55304  41 82 00 0C */	beq lbl_80D55310
/* 80D55308  3B C0 00 05 */	li r30, 5
/* 80D5530C  48 00 00 60 */	b lbl_80D5536C
lbl_80D55310:
/* 80D55310  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80D55314  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D55318  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D5531C  3C 80 80 D5 */	lis r4, l_zevParamTbl@ha /* 0x80D557B0@ha */
/* 80D55320  38 84 57 B0 */	addi r4, r4, l_zevParamTbl@l /* 0x80D557B0@l */
/* 80D55324  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D55328  4B 2D 7B 95 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D5532C  7C 7E 1B 78 */	mr r30, r3
/* 80D55330  2C 1E 00 04 */	cmpwi r30, 4
/* 80D55334  40 82 00 38 */	bne lbl_80D5536C
/* 80D55338  38 00 00 00 */	li r0, 0
/* 80D5533C  98 1F 05 E0 */	stb r0, 0x5e0(r31)
/* 80D55340  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D55344  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D55348  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D5534C  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha /* 0x80D55AD0@ha */
/* 80D55350  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l /* 0x80D55AD0@l */
/* 80D55354  7C 00 22 14 */	add r0, r0, r4
/* 80D55358  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D5535C  7F E3 FB 78 */	mr r3, r31
/* 80D55360  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80D55364  4B 60 CD 21 */	bl __ptmf_scall
/* 80D55368  60 00 00 00 */	nop 
lbl_80D5536C:
/* 80D5536C  7F C3 F3 78 */	mr r3, r30
/* 80D55370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D55374  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D55378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5537C  7C 08 03 A6 */	mtlr r0
/* 80D55380  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55384  4E 80 00 20 */	blr 
