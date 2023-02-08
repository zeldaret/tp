lbl_801A8AD8:
/* 801A8AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A8ADC  7C 08 02 A6 */	mflr r0
/* 801A8AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A8AE4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8AE8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8AEC  80 03 12 88 */	lwz r0, 0x1288(r3)
/* 801A8AF0  28 00 00 00 */	cmplwi r0, 0
/* 801A8AF4  41 82 00 34 */	beq lbl_801A8B28
/* 801A8AF8  90 01 00 08 */	stw r0, 8(r1)
/* 801A8AFC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801A8B00  38 81 00 08 */	addi r4, r1, 8
/* 801A8B04  38 A0 00 00 */	li r5, 0
/* 801A8B08  38 C0 00 00 */	li r6, 0
/* 801A8B0C  38 E0 00 00 */	li r7, 0
/* 801A8B10  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A8B14  FC 40 08 90 */	fmr f2, f1
/* 801A8B18  C0 62 A2 50 */	lfs f3, lit_4507(r2)
/* 801A8B1C  FC 80 18 90 */	fmr f4, f3
/* 801A8B20  39 00 00 00 */	li r8, 0
/* 801A8B24  48 10 2E 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801A8B28:
/* 801A8B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A8B2C  7C 08 03 A6 */	mtlr r0
/* 801A8B30  38 21 00 10 */	addi r1, r1, 0x10
/* 801A8B34  4E 80 00 20 */	blr 
