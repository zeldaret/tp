lbl_8049FCD0:
/* 8049FCD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049FCD4  7C 08 02 A6 */	mflr r0
/* 8049FCD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049FCDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049FCE0  7C 7F 1B 78 */	mr r31, r3
/* 8049FCE4  A8 63 09 5A */	lha r3, 0x95a(r3)
/* 8049FCE8  38 03 E1 00 */	addi r0, r3, -7936
/* 8049FCEC  B0 1F 09 5A */	sth r0, 0x95a(r31)
/* 8049FCF0  7C 60 07 35 */	extsh. r0, r3
/* 8049FCF4  41 80 00 64 */	blt lbl_8049FD58
/* 8049FCF8  A8 1F 09 5A */	lha r0, 0x95a(r31)
/* 8049FCFC  2C 00 00 00 */	cmpwi r0, 0
/* 8049FD00  40 80 00 58 */	bge lbl_8049FD58
/* 8049FD04  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8049FD08  7C 03 07 74 */	extsb r3, r0
/* 8049FD0C  4B B8 D3 60 */	b dComIfGp_getReverb__Fi
/* 8049FD10  7C 67 1B 78 */	mr r7, r3
/* 8049FD14  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002002E@ha */
/* 8049FD18  38 03 00 2E */	addi r0, r3, 0x002E /* 0x0002002E@l */
/* 8049FD1C  90 01 00 08 */	stw r0, 8(r1)
/* 8049FD20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8049FD24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8049FD28  80 63 00 00 */	lwz r3, 0(r3)
/* 8049FD2C  38 81 00 08 */	addi r4, r1, 8
/* 8049FD30  38 BF 05 38 */	addi r5, r31, 0x538
/* 8049FD34  38 C0 00 00 */	li r6, 0
/* 8049FD38  3D 00 80 4A */	lis r8, lit_4945@ha
/* 8049FD3C  C0 28 29 10 */	lfs f1, lit_4945@l(r8)
/* 8049FD40  FC 40 08 90 */	fmr f2, f1
/* 8049FD44  3D 00 80 4A */	lis r8, lit_4961@ha
/* 8049FD48  C0 68 29 14 */	lfs f3, lit_4961@l(r8)
/* 8049FD4C  FC 80 18 90 */	fmr f4, f3
/* 8049FD50  39 00 00 00 */	li r8, 0
/* 8049FD54  4B E0 BC 30 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8049FD58:
/* 8049FD58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049FD5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049FD60  7C 08 03 A6 */	mtlr r0
/* 8049FD64  38 21 00 20 */	addi r1, r1, 0x20
/* 8049FD68  4E 80 00 20 */	blr 
