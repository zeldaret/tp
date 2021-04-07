lbl_80630DD8:
/* 80630DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80630DDC  7C 08 02 A6 */	mflr r0
/* 80630DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80630DE4  7C 65 1B 78 */	mr r5, r3
/* 80630DE8  38 00 00 01 */	li r0, 1
/* 80630DEC  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 80630DF0  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 80630DF4  38 60 00 00 */	li r3, 0
/* 80630DF8  3C 80 80 64 */	lis r4, lit_3800@ha /* 0x80639824@ha */
/* 80630DFC  C0 24 98 24 */	lfs f1, lit_3800@l(r4)  /* 0x80639824@l */
/* 80630E00  38 80 00 00 */	li r4, 0
/* 80630E04  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 80630E08  7C 05 07 74 */	extsb r5, r0
/* 80630E0C  38 C0 00 00 */	li r6, 0
/* 80630E10  38 E0 FF FF */	li r7, -1
/* 80630E14  4B 9F 63 5D */	bl dStage_changeScene__FifUlScsi
/* 80630E18  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80630E1C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80630E20  80 63 00 00 */	lwz r3, 0(r3)
/* 80630E24  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80630E28  4B C7 EA 5D */	bl subBgmStop__8Z2SeqMgrFv
/* 80630E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80630E30  7C 08 03 A6 */	mtlr r0
/* 80630E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80630E38  4E 80 00 20 */	blr 
