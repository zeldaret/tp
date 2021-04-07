lbl_80C70480:
/* 80C70480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70484  7C 08 02 A6 */	mflr r0
/* 80C70488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7048C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C70490  93 C1 00 08 */	stw r30, 8(r1)
/* 80C70494  7C 7F 1B 78 */	mr r31, r3
/* 80C70498  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C7049C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C704A0  40 82 00 94 */	bne lbl_80C70534
/* 80C704A4  7F E0 FB 79 */	or. r0, r31, r31
/* 80C704A8  41 82 00 80 */	beq lbl_80C70528
/* 80C704AC  7C 1E 03 78 */	mr r30, r0
/* 80C704B0  4B 40 81 75 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C704B4  3C 60 80 C7 */	lis r3, __vt__16daObjYIblltray_c@ha /* 0x80C70B30@ha */
/* 80C704B8  38 03 0B 30 */	addi r0, r3, __vt__16daObjYIblltray_c@l /* 0x80C70B30@l */
/* 80C704BC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C704C0  38 7E 06 44 */	addi r3, r30, 0x644
/* 80C704C4  3C 80 80 C7 */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80C706C4@ha */
/* 80C704C8  38 84 06 C4 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80C706C4@l */
/* 80C704CC  3C A0 80 C7 */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80C705F8@ha */
/* 80C704D0  38 A5 05 F8 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80C705F8@l */
/* 80C704D4  38 C0 01 3C */	li r6, 0x13c
/* 80C704D8  38 E0 00 03 */	li r7, 3
/* 80C704DC  4B 6F 18 85 */	bl __construct_array
/* 80C704E0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C704E4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C704E8  90 1E 0A 10 */	stw r0, 0xa10(r30)
/* 80C704EC  38 7E 0A 14 */	addi r3, r30, 0xa14
/* 80C704F0  4B 41 32 71 */	bl __ct__10dCcD_GSttsFv
/* 80C704F4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C704F8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C704FC  90 7E 0A 10 */	stw r3, 0xa10(r30)
/* 80C70500  38 03 00 20 */	addi r0, r3, 0x20
/* 80C70504  90 1E 0A 14 */	stw r0, 0xa14(r30)
/* 80C70508  3C 60 80 C7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80C70B24@ha */
/* 80C7050C  38 03 0B 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80C70B24@l */
/* 80C70510  94 1E 0A 38 */	stwu r0, 0xa38(r30)
/* 80C70514  7F C3 F3 78 */	mr r3, r30
/* 80C70518  38 80 00 00 */	li r4, 0
/* 80C7051C  4B 6B 7E E1 */	bl init__12J3DFrameCtrlFs
/* 80C70520  38 00 00 00 */	li r0, 0
/* 80C70524  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80C70528:
/* 80C70528  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C7052C  60 00 00 08 */	ori r0, r0, 8
/* 80C70530  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C70534:
/* 80C70534  7F E3 FB 78 */	mr r3, r31
/* 80C70538  4B FF E6 C1 */	bl create1st__16daObjYIblltray_cFv
/* 80C7053C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C70540  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C70544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70548  7C 08 03 A6 */	mtlr r0
/* 80C7054C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70550  4E 80 00 20 */	blr 
