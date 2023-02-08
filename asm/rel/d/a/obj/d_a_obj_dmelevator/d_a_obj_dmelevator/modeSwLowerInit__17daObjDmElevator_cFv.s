lbl_80BDEB88:
/* 80BDEB88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDEB8C  7C 08 02 A6 */	mflr r0
/* 80BDEB90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDEB94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDEB98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BDEB9C  7C 7E 1B 78 */	mr r30, r3
/* 80BDEBA0  3C 60 80 BE */	lis r3, l_swOffset@ha /* 0x80BDF870@ha */
/* 80BDEBA4  3B E3 F8 70 */	addi r31, r3, l_swOffset@l /* 0x80BDF870@l */
/* 80BDEBA8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080142@ha */
/* 80BDEBAC  38 03 01 42 */	addi r0, r3, 0x0142 /* 0x00080142@l */
/* 80BDEBB0  90 01 00 08 */	stw r0, 8(r1)
/* 80BDEBB4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BDEBB8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BDEBBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BDEBC0  38 81 00 08 */	addi r4, r1, 8
/* 80BDEBC4  38 BE 06 1C */	addi r5, r30, 0x61c
/* 80BDEBC8  38 C0 00 00 */	li r6, 0
/* 80BDEBCC  38 E0 00 00 */	li r7, 0
/* 80BDEBD0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BDEBD4  FC 40 08 90 */	fmr f2, f1
/* 80BDEBD8  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80BDEBDC  FC 80 18 90 */	fmr f4, f3
/* 80BDEBE0  39 00 00 00 */	li r8, 0
/* 80BDEBE4  4B 6C CD A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BDEBE8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BDEBEC  D0 1E 06 40 */	stfs f0, 0x640(r30)
/* 80BDEBF0  38 00 00 01 */	li r0, 1
/* 80BDEBF4  98 1E 06 28 */	stb r0, 0x628(r30)
/* 80BDEBF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDEBFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BDEC00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDEC04  7C 08 03 A6 */	mtlr r0
/* 80BDEC08  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDEC0C  4E 80 00 20 */	blr 
