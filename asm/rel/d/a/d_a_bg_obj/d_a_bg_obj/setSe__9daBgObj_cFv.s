lbl_8045B3A0:
/* 8045B3A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045B3A4  7C 08 02 A6 */	mflr r0
/* 8045B3A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045B3AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8045B3B0  4B F0 6E 19 */	bl _savegpr_24
/* 8045B3B4  7C 78 1B 78 */	mr r24, r3
/* 8045B3B8  83 43 0C DC */	lwz r26, 0xcdc(r3)
/* 8045B3BC  83 23 0C E0 */	lwz r25, 0xce0(r3)
/* 8045B3C0  3B 78 05 38 */	addi r27, r24, 0x538
/* 8045B3C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8045B3C8  3B A3 13 68 */	addi r29, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8045B3CC  3C 60 80 46 */	lis r3, lit_4076@ha /* 0x8045CA0C@ha */
/* 8045B3D0  3B C3 CA 0C */	addi r30, r3, lit_4076@l /* 0x8045CA0C@l */
/* 8045B3D4  3C 60 80 46 */	lis r3, lit_4579@ha /* 0x8045CA1C@ha */
/* 8045B3D8  3B E3 CA 1C */	addi r31, r3, lit_4579@l /* 0x8045CA1C@l */
/* 8045B3DC  3B 39 00 04 */	addi r25, r25, 4
/* 8045B3E0  48 00 00 4C */	b lbl_8045B42C
lbl_8045B3E4:
/* 8045B3E4  83 99 00 00 */	lwz r28, 0(r25)
/* 8045B3E8  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 8045B3EC  7C 03 07 74 */	extsb r3, r0
/* 8045B3F0  4B BD 1C 7D */	bl dComIfGp_getReverb__Fi
/* 8045B3F4  7C 67 1B 78 */	mr r7, r3
/* 8045B3F8  93 81 00 08 */	stw r28, 8(r1)
/* 8045B3FC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8045B400  38 81 00 08 */	addi r4, r1, 8
/* 8045B404  7F 65 DB 78 */	mr r5, r27
/* 8045B408  38 C0 00 00 */	li r6, 0
/* 8045B40C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8045B410  FC 40 08 90 */	fmr f2, f1
/* 8045B414  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8045B418  FC 80 18 90 */	fmr f4, f3
/* 8045B41C  39 00 00 00 */	li r8, 0
/* 8045B420  4B E5 05 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8045B424  3B 39 00 04 */	addi r25, r25, 4
/* 8045B428  3B 5A FF FF */	addi r26, r26, -1
lbl_8045B42C:
/* 8045B42C  28 1A 00 00 */	cmplwi r26, 0
/* 8045B430  40 82 FF B4 */	bne lbl_8045B3E4
/* 8045B434  39 61 00 30 */	addi r11, r1, 0x30
/* 8045B438  4B F0 6D DD */	bl _restgpr_24
/* 8045B43C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045B440  7C 08 03 A6 */	mtlr r0
/* 8045B444  38 21 00 30 */	addi r1, r1, 0x30
/* 8045B448  4E 80 00 20 */	blr 
