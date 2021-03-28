lbl_80C630C4:
/* 80C630C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C630C8  7C 08 02 A6 */	mflr r0
/* 80C630CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C630D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C630D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C630D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C630DC  7C 9F 23 78 */	mr r31, r4
/* 80C630E0  41 82 00 5C */	beq lbl_80C6313C
/* 80C630E4  3C 60 80 C6 */	lis r3, __vt__13daObjLv4Brg_c@ha
/* 80C630E8  38 63 32 70 */	addi r3, r3, __vt__13daObjLv4Brg_c@l
/* 80C630EC  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C630F0  38 03 00 28 */	addi r0, r3, 0x28
/* 80C630F4  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80C630F8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80C630FC  41 82 00 10 */	beq lbl_80C6310C
/* 80C63100  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C63104  38 03 32 58 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C63108  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80C6310C:
/* 80C6310C  28 1E 00 00 */	cmplwi r30, 0
/* 80C63110  41 82 00 1C */	beq lbl_80C6312C
/* 80C63114  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80C63118  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80C6311C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C63120  7F C3 F3 78 */	mr r3, r30
/* 80C63124  38 80 00 00 */	li r4, 0
/* 80C63128  4B 3B 5B 64 */	b __dt__10fopAc_ac_cFv
lbl_80C6312C:
/* 80C6312C  7F E0 07 35 */	extsh. r0, r31
/* 80C63130  40 81 00 0C */	ble lbl_80C6313C
/* 80C63134  7F C3 F3 78 */	mr r3, r30
/* 80C63138  4B 66 BC 04 */	b __dl__FPv
lbl_80C6313C:
/* 80C6313C  7F C3 F3 78 */	mr r3, r30
/* 80C63140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C63144  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C63148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6314C  7C 08 03 A6 */	mtlr r0
/* 80C63150  38 21 00 10 */	addi r1, r1, 0x10
/* 80C63154  4E 80 00 20 */	blr 
