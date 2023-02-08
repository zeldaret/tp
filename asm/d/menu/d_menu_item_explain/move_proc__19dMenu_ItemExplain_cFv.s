lbl_801DBB7C:
/* 801DBB7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DBB80  7C 08 02 A6 */	mflr r0
/* 801DBB84  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DBB88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DBB8C  7C 7F 1B 78 */	mr r31, r3
/* 801DBB90  88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 801DBB94  28 00 00 25 */	cmplwi r0, 0x25
/* 801DBB98  40 82 00 20 */	bne lbl_801DBBB8
/* 801DBB9C  88 1F 00 E5 */	lbz r0, 0xe5(r31)
/* 801DBBA0  28 00 00 02 */	cmplwi r0, 2
/* 801DBBA4  40 82 00 14 */	bne lbl_801DBBB8
/* 801DBBA8  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 801DBBAC  28 03 00 00 */	cmplwi r3, 0
/* 801DBBB0  41 82 00 08 */	beq lbl_801DBBB8
/* 801DBBB4  48 06 02 DD */	bl arwAnimeMove__15dMsgScrnArrow_cFv
lbl_801DBBB8:
/* 801DBBB8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801DBBBC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801DBBC0  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801DBBC4  54 64 05 EF */	rlwinm. r4, r3, 0, 0x17, 0x17
/* 801DBBC8  40 82 00 34 */	bne lbl_801DBBFC
/* 801DBBCC  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801DBBD0  40 82 00 2C */	bne lbl_801DBBFC
/* 801DBBD4  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 801DBBD8  28 00 00 00 */	cmplwi r0, 0
/* 801DBBDC  40 82 00 20 */	bne lbl_801DBBFC
/* 801DBBE0  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801DBBE4  28 00 00 00 */	cmplwi r0, 0
/* 801DBBE8  41 82 00 B8 */	beq lbl_801DBCA0
/* 801DBBEC  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 801DBBF0  40 82 00 0C */	bne lbl_801DBBFC
/* 801DBBF4  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 801DBBF8  41 82 00 A8 */	beq lbl_801DBCA0
lbl_801DBBFC:
/* 801DBBFC  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 801DBC00  28 00 00 00 */	cmplwi r0, 0
/* 801DBC04  41 82 00 10 */	beq lbl_801DBC14
/* 801DBC08  38 00 00 06 */	li r0, 6
/* 801DBC0C  98 1F 00 E3 */	stb r0, 0xe3(r31)
/* 801DBC10  48 00 00 50 */	b lbl_801DBC60
lbl_801DBC14:
/* 801DBC14  28 04 00 00 */	cmplwi r4, 0
/* 801DBC18  41 82 00 10 */	beq lbl_801DBC28
/* 801DBC1C  38 00 00 01 */	li r0, 1
/* 801DBC20  98 1F 00 E3 */	stb r0, 0xe3(r31)
/* 801DBC24  48 00 00 3C */	b lbl_801DBC60
lbl_801DBC28:
/* 801DBC28  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801DBC2C  41 82 00 10 */	beq lbl_801DBC3C
/* 801DBC30  38 00 00 02 */	li r0, 2
/* 801DBC34  98 1F 00 E3 */	stb r0, 0xe3(r31)
/* 801DBC38  48 00 00 28 */	b lbl_801DBC60
lbl_801DBC3C:
/* 801DBC3C  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 801DBC40  41 82 00 10 */	beq lbl_801DBC50
/* 801DBC44  38 00 00 03 */	li r0, 3
/* 801DBC48  98 1F 00 E3 */	stb r0, 0xe3(r31)
/* 801DBC4C  48 00 00 14 */	b lbl_801DBC60
lbl_801DBC50:
/* 801DBC50  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 801DBC54  41 82 00 0C */	beq lbl_801DBC60
/* 801DBC58  38 00 00 04 */	li r0, 4
/* 801DBC5C  98 1F 00 E3 */	stb r0, 0xe3(r31)
lbl_801DBC60:
/* 801DBC60  38 00 00 05 */	li r0, 5
/* 801DBC64  98 1F 00 E0 */	stb r0, 0xe0(r31)
/* 801DBC68  38 00 00 52 */	li r0, 0x52
/* 801DBC6C  90 01 00 08 */	stw r0, 8(r1)
/* 801DBC70  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DBC74  38 81 00 08 */	addi r4, r1, 8
/* 801DBC78  38 A0 00 00 */	li r5, 0
/* 801DBC7C  38 C0 00 00 */	li r6, 0
/* 801DBC80  38 E0 00 00 */	li r7, 0
/* 801DBC84  C0 22 A8 C4 */	lfs f1, lit_4348(r2)
/* 801DBC88  FC 40 08 90 */	fmr f2, f1
/* 801DBC8C  C0 62 A8 B0 */	lfs f3, lit_4304(r2)
/* 801DBC90  FC 80 18 90 */	fmr f4, f3
/* 801DBC94  39 00 00 00 */	li r8, 0
/* 801DBC98  48 0C FC ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DBC9C  48 04 2D 35 */	bl dMeter2Info_set2DVibration__Fv
lbl_801DBCA0:
/* 801DBCA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DBCA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DBCA8  7C 08 03 A6 */	mtlr r0
/* 801DBCAC  38 21 00 20 */	addi r1, r1, 0x20
/* 801DBCB0  4E 80 00 20 */	blr 
