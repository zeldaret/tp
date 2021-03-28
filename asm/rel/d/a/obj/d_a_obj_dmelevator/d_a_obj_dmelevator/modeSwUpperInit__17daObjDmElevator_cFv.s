lbl_80BDECE0:
/* 80BDECE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDECE4  7C 08 02 A6 */	mflr r0
/* 80BDECE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDECEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDECF0  7C 7F 1B 78 */	mr r31, r3
/* 80BDECF4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080156@ha */
/* 80BDECF8  38 03 01 56 */	addi r0, r3, 0x0156 /* 0x00080156@l */
/* 80BDECFC  90 01 00 08 */	stw r0, 8(r1)
/* 80BDED00  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BDED04  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BDED08  80 63 00 00 */	lwz r3, 0(r3)
/* 80BDED0C  38 81 00 08 */	addi r4, r1, 8
/* 80BDED10  38 BF 06 1C */	addi r5, r31, 0x61c
/* 80BDED14  38 C0 00 00 */	li r6, 0
/* 80BDED18  38 E0 00 00 */	li r7, 0
/* 80BDED1C  3D 00 80 BE */	lis r8, lit_4092@ha
/* 80BDED20  C0 28 F8 D8 */	lfs f1, lit_4092@l(r8)
/* 80BDED24  FC 40 08 90 */	fmr f2, f1
/* 80BDED28  3D 00 80 BE */	lis r8, lit_4141@ha
/* 80BDED2C  C0 68 F8 DC */	lfs f3, lit_4141@l(r8)
/* 80BDED30  FC 80 18 90 */	fmr f4, f3
/* 80BDED34  39 00 00 00 */	li r8, 0
/* 80BDED38  4B 6C CC 4C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BDED3C  3C 60 80 BE */	lis r3, lit_4092@ha
/* 80BDED40  C0 03 F8 D8 */	lfs f0, lit_4092@l(r3)
/* 80BDED44  D0 1F 06 40 */	stfs f0, 0x640(r31)
/* 80BDED48  38 00 00 03 */	li r0, 3
/* 80BDED4C  98 1F 06 28 */	stb r0, 0x628(r31)
/* 80BDED50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDED54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDED58  7C 08 03 A6 */	mtlr r0
/* 80BDED5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDED60  4E 80 00 20 */	blr 
