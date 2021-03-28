lbl_80258DD0:
/* 80258DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80258DD4  7C 08 02 A6 */	mflr r0
/* 80258DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80258DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80258DE0  7C 7F 1B 78 */	mr r31, r3
/* 80258DE4  88 63 04 1E */	lbz r3, 0x41e(r3)
/* 80258DE8  28 03 00 00 */	cmplwi r3, 0
/* 80258DEC  41 82 00 10 */	beq lbl_80258DFC
/* 80258DF0  38 03 FF FF */	addi r0, r3, -1
/* 80258DF4  98 1F 04 1E */	stb r0, 0x41e(r31)
/* 80258DF8  48 00 00 28 */	b lbl_80258E20
lbl_80258DFC:
/* 80258DFC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80258E00  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80258E04  3C 80 02 00 */	lis r4, 0x200
/* 80258E08  48 05 6D 8D */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80258E0C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80258E10  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80258E14  48 05 70 05 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80258E18  38 00 00 01 */	li r0, 1
/* 80258E1C  98 1F 04 1D */	stb r0, 0x41d(r31)
lbl_80258E20:
/* 80258E20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80258E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80258E28  7C 08 03 A6 */	mtlr r0
/* 80258E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80258E30  4E 80 00 20 */	blr 
