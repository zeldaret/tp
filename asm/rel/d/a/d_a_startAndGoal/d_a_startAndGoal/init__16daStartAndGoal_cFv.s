lbl_80D4D998:
/* 80D4D998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D99C  7C 08 02 A6 */	mflr r0
/* 80D4D9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D9A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4D9A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4D9AC  7C 7E 1B 78 */	mr r30, r3
/* 80D4D9B0  3C 80 80 D5 */	lis r4, l_DATA@ha
/* 80D4D9B4  3B E4 DE B8 */	addi r31, r4, l_DATA@l
/* 80D4D9B8  38 00 00 01 */	li r0, 1
/* 80D4D9BC  98 03 0B 98 */	stb r0, 0xb98(r3)
/* 80D4D9C0  38 00 00 00 */	li r0, 0
/* 80D4D9C4  98 03 0B A0 */	stb r0, 0xba0(r3)
/* 80D4D9C8  4B FF FE 85 */	bl getType__16daStartAndGoal_cFv
/* 80D4D9CC  98 7E 0B 99 */	stb r3, 0xb99(r30)
/* 80D4D9D0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D4D9D4  4B 40 2F 2C */	b initialize__13daNpcF_Path_cFv
/* 80D4D9D8  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D4D9DC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D4D9E0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D4D9E4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D4D9E8  7C 05 07 74 */	extsb r5, r0
/* 80D4D9EC  38 C0 00 00 */	li r6, 0
/* 80D4D9F0  4B 40 2F 6C */	b setPathInfo__13daNpcF_Path_cFUcScUc
/* 80D4D9F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4D9F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4D9FC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D4DA00  4B 2D F1 DC */	b getTimerPtr__14dComIfG_play_cFv
/* 80D4DA04  28 03 00 00 */	cmplwi r3, 0
/* 80D4DA08  40 82 00 40 */	bne lbl_80D4DA48
/* 80D4DA0C  88 1E 0B 99 */	lbz r0, 0xb99(r30)
/* 80D4DA10  54 00 18 38 */	slwi r0, r0, 3
/* 80D4DA14  3C 60 80 D5 */	lis r3, l_timerType@ha
/* 80D4DA18  38 A3 DE CC */	addi r5, r3, l_timerType@l
/* 80D4DA1C  7C 65 00 2E */	lwzx r3, r5, r0
/* 80D4DA20  3C 80 00 99 */	lis r4, 0x0099 /* 0x00989298@ha */
/* 80D4DA24  38 84 92 98 */	addi r4, r4, 0x9298 /* 0x00989298@l */
/* 80D4DA28  7C A5 02 14 */	add r5, r5, r0
/* 80D4DA2C  88 A5 00 04 */	lbz r5, 4(r5)
/* 80D4DA30  38 C0 00 00 */	li r6, 0
/* 80D4DA34  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D4DA38  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80D4DA3C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80D4DA40  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80D4DA44  4B 51 35 48 */	b dTimer_createTimer__FlUlUcUcffff
lbl_80D4DA48:
/* 80D4DA48  38 00 00 00 */	li r0, 0
/* 80D4DA4C  90 1E 0B 9C */	stw r0, 0xb9c(r30)
/* 80D4DA50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4DA54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4DA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DA5C  7C 08 03 A6 */	mtlr r0
/* 80D4DA60  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DA64  4E 80 00 20 */	blr 
