lbl_80C5B298:
/* 80C5B298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B29C  7C 08 02 A6 */	mflr r0
/* 80C5B2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B2A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5B2A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5B2AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C5B2B0  7C 9F 23 78 */	mr r31, r4
/* 80C5B2B4  41 82 00 80 */	beq lbl_80C5B334
/* 80C5B2B8  3C 60 80 C6 */	lis r3, __vt__13daLv3Water2_c@ha
/* 80C5B2BC  38 63 B4 6C */	addi r3, r3, __vt__13daLv3Water2_c@l
/* 80C5B2C0  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C5B2C4  38 03 00 28 */	addi r0, r3, 0x28
/* 80C5B2C8  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C5B2CC  34 1E 05 C4 */	addic. r0, r30, 0x5c4
/* 80C5B2D0  41 82 00 20 */	beq lbl_80C5B2F0
/* 80C5B2D4  34 1E 05 C4 */	addic. r0, r30, 0x5c4
/* 80C5B2D8  41 82 00 18 */	beq lbl_80C5B2F0
/* 80C5B2DC  34 1E 05 C4 */	addic. r0, r30, 0x5c4
/* 80C5B2E0  41 82 00 10 */	beq lbl_80C5B2F0
/* 80C5B2E4  3C 60 80 C6 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80C5B2E8  38 03 B4 48 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80C5B2EC  90 1E 05 C4 */	stw r0, 0x5c4(r30)
lbl_80C5B2F0:
/* 80C5B2F0  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80C5B2F4  41 82 00 10 */	beq lbl_80C5B304
/* 80C5B2F8  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C5B2FC  38 03 B4 54 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C5B300  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80C5B304:
/* 80C5B304  28 1E 00 00 */	cmplwi r30, 0
/* 80C5B308  41 82 00 1C */	beq lbl_80C5B324
/* 80C5B30C  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80C5B310  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80C5B314  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C5B318  7F C3 F3 78 */	mr r3, r30
/* 80C5B31C  38 80 00 00 */	li r4, 0
/* 80C5B320  4B 3B D9 6C */	b __dt__10fopAc_ac_cFv
lbl_80C5B324:
/* 80C5B324  7F E0 07 35 */	extsh. r0, r31
/* 80C5B328  40 81 00 0C */	ble lbl_80C5B334
/* 80C5B32C  7F C3 F3 78 */	mr r3, r30
/* 80C5B330  4B 67 3A 0C */	b __dl__FPv
lbl_80C5B334:
/* 80C5B334  7F C3 F3 78 */	mr r3, r30
/* 80C5B338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5B33C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5B340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B344  7C 08 03 A6 */	mtlr r0
/* 80C5B348  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B34C  4E 80 00 20 */	blr 
