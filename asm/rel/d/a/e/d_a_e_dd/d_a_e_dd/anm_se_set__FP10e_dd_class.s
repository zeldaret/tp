lbl_806A52CC:
/* 806A52CC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806A52D0  7C 08 02 A6 */	mflr r0
/* 806A52D4  90 01 00 84 */	stw r0, 0x84(r1)
/* 806A52D8  39 61 00 80 */	addi r11, r1, 0x80
/* 806A52DC  4B CB CE E9 */	bl _savegpr_23
/* 806A52E0  7C 7F 1B 78 */	mr r31, r3
/* 806A52E4  3C 60 80 6A */	lis r3, cNullVec__6Z2Calc@ha /* 0x806A72C0@ha */
/* 806A52E8  3B 83 72 C0 */	addi r28, r3, cNullVec__6Z2Calc@l /* 0x806A72C0@l */
/* 806A52EC  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A52F0  3B A3 71 C4 */	addi r29, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A52F4  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A52F8  2C 00 00 0F */	cmpwi r0, 0xf
/* 806A52FC  40 82 00 2C */	bne lbl_806A5328
/* 806A5300  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070278@ha */
/* 806A5304  38 03 02 78 */	addi r0, r3, 0x0278 /* 0x00070278@l */
/* 806A5308  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806A530C  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A5310  38 81 00 4C */	addi r4, r1, 0x4c
/* 806A5314  38 A0 FF FF */	li r5, -1
/* 806A5318  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A531C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806A5320  7D 89 03 A6 */	mtctr r12
/* 806A5324  4E 80 04 21 */	bctrl 
lbl_806A5328:
/* 806A5328  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A532C  2C 00 00 10 */	cmpwi r0, 0x10
/* 806A5330  40 82 00 AC */	bne lbl_806A53DC
/* 806A5334  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5338  38 63 00 0C */	addi r3, r3, 0xc
/* 806A533C  C0 3D 00 A4 */	lfs f1, 0xa4(r29)
/* 806A5340  4B C8 30 ED */	bl checkPass__12J3DFrameCtrlFf
/* 806A5344  2C 03 00 00 */	cmpwi r3, 0
/* 806A5348  41 82 00 30 */	beq lbl_806A5378
/* 806A534C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070279@ha */
/* 806A5350  38 03 02 79 */	addi r0, r3, 0x0279 /* 0x00070279@l */
/* 806A5354  90 01 00 48 */	stw r0, 0x48(r1)
/* 806A5358  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A535C  38 81 00 48 */	addi r4, r1, 0x48
/* 806A5360  38 A0 FF FF */	li r5, -1
/* 806A5364  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A5368  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A536C  7D 89 03 A6 */	mtctr r12
/* 806A5370  4E 80 04 21 */	bctrl 
/* 806A5374  48 00 00 68 */	b lbl_806A53DC
lbl_806A5378:
/* 806A5378  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A537C  38 63 00 0C */	addi r3, r3, 0xc
/* 806A5380  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 806A5384  4B C8 30 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 806A5388  2C 03 00 00 */	cmpwi r3, 0
/* 806A538C  41 82 00 50 */	beq lbl_806A53DC
/* 806A5390  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806A5394  7C 03 07 74 */	extsb r3, r0
/* 806A5398  4B 98 7C D5 */	bl dComIfGp_getReverb__Fi
/* 806A539C  7C 67 1B 78 */	mr r7, r3
/* 806A53A0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 806A53A4  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 806A53A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A53AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806A53B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806A53B4  80 63 00 00 */	lwz r3, 0(r3)
/* 806A53B8  38 81 00 24 */	addi r4, r1, 0x24
/* 806A53BC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806A53C0  38 C0 00 00 */	li r6, 0
/* 806A53C4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A53C8  FC 40 08 90 */	fmr f2, f1
/* 806A53CC  C0 7D 00 44 */	lfs f3, 0x44(r29)
/* 806A53D0  FC 80 18 90 */	fmr f4, f3
/* 806A53D4  39 00 00 00 */	li r8, 0
/* 806A53D8  4B C0 65 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806A53DC:
/* 806A53DC  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A53E0  2C 00 00 07 */	cmpwi r0, 7
/* 806A53E4  40 82 00 68 */	bne lbl_806A544C
/* 806A53E8  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A53EC  38 63 00 0C */	addi r3, r3, 0xc
/* 806A53F0  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 806A53F4  4B C8 30 39 */	bl checkPass__12J3DFrameCtrlFf
/* 806A53F8  2C 03 00 00 */	cmpwi r3, 0
/* 806A53FC  41 82 00 50 */	beq lbl_806A544C
/* 806A5400  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806A5404  7C 03 07 74 */	extsb r3, r0
/* 806A5408  4B 98 7C 65 */	bl dComIfGp_getReverb__Fi
/* 806A540C  7C 67 1B 78 */	mr r7, r3
/* 806A5410  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 806A5414  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 806A5418  90 01 00 20 */	stw r0, 0x20(r1)
/* 806A541C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806A5420  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806A5424  80 63 00 00 */	lwz r3, 0(r3)
/* 806A5428  38 81 00 20 */	addi r4, r1, 0x20
/* 806A542C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806A5430  38 C0 00 00 */	li r6, 0
/* 806A5434  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A5438  FC 40 08 90 */	fmr f2, f1
/* 806A543C  C0 7D 00 44 */	lfs f3, 0x44(r29)
/* 806A5440  FC 80 18 90 */	fmr f4, f3
/* 806A5444  39 00 00 00 */	li r8, 0
/* 806A5448  4B C0 65 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806A544C:
/* 806A544C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5450  38 63 00 0C */	addi r3, r3, 0xc
/* 806A5454  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A5458  4B C8 2F D5 */	bl checkPass__12J3DFrameCtrlFf
/* 806A545C  2C 03 00 00 */	cmpwi r3, 0
/* 806A5460  41 82 01 74 */	beq lbl_806A55D4
/* 806A5464  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A5468  2C 00 00 15 */	cmpwi r0, 0x15
/* 806A546C  40 82 00 2C */	bne lbl_806A5498
/* 806A5470  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070272@ha */
/* 806A5474  38 03 02 72 */	addi r0, r3, 0x0272 /* 0x00070272@l */
/* 806A5478  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A547C  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A5480  38 81 00 44 */	addi r4, r1, 0x44
/* 806A5484  38 A0 FF FF */	li r5, -1
/* 806A5488  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A548C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A5490  7D 89 03 A6 */	mtctr r12
/* 806A5494  4E 80 04 21 */	bctrl 
lbl_806A5498:
/* 806A5498  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A549C  2C 00 00 06 */	cmpwi r0, 6
/* 806A54A0  41 82 00 0C */	beq lbl_806A54AC
/* 806A54A4  2C 00 00 05 */	cmpwi r0, 5
/* 806A54A8  40 82 00 38 */	bne lbl_806A54E0
lbl_806A54AC:
/* 806A54AC  A0 1F 0E 38 */	lhz r0, 0xe38(r31)
/* 806A54B0  28 00 00 00 */	cmplwi r0, 0
/* 806A54B4  41 82 00 2C */	beq lbl_806A54E0
/* 806A54B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007026C@ha */
/* 806A54BC  38 03 02 6C */	addi r0, r3, 0x026C /* 0x0007026C@l */
/* 806A54C0  90 01 00 40 */	stw r0, 0x40(r1)
/* 806A54C4  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A54C8  38 81 00 40 */	addi r4, r1, 0x40
/* 806A54CC  38 A0 FF FF */	li r5, -1
/* 806A54D0  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A54D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A54D8  7D 89 03 A6 */	mtctr r12
/* 806A54DC  4E 80 04 21 */	bctrl 
lbl_806A54E0:
/* 806A54E0  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A54E4  2C 00 00 07 */	cmpwi r0, 7
/* 806A54E8  41 82 00 14 */	beq lbl_806A54FC
/* 806A54EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 806A54F0  41 82 00 0C */	beq lbl_806A54FC
/* 806A54F4  2C 00 00 0B */	cmpwi r0, 0xb
/* 806A54F8  40 82 00 2C */	bne lbl_806A5524
lbl_806A54FC:
/* 806A54FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007026D@ha */
/* 806A5500  38 03 02 6D */	addi r0, r3, 0x026D /* 0x0007026D@l */
/* 806A5504  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806A5508  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A550C  38 81 00 3C */	addi r4, r1, 0x3c
/* 806A5510  38 A0 FF FF */	li r5, -1
/* 806A5514  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A5518  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A551C  7D 89 03 A6 */	mtctr r12
/* 806A5520  4E 80 04 21 */	bctrl 
lbl_806A5524:
/* 806A5524  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A5528  2C 00 00 09 */	cmpwi r0, 9
/* 806A552C  40 82 00 A8 */	bne lbl_806A55D4
/* 806A5530  3B 60 00 00 */	li r27, 0
/* 806A5534  3B 20 00 00 */	li r25, 0
/* 806A5538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A553C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A5540  3B 1C 00 64 */	addi r24, r28, 0x64
lbl_806A5544:
/* 806A5544  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 806A5548  38 80 00 00 */	li r4, 0
/* 806A554C  90 81 00 08 */	stw r4, 8(r1)
/* 806A5550  38 00 FF FF */	li r0, -1
/* 806A5554  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A5558  90 81 00 10 */	stw r4, 0x10(r1)
/* 806A555C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A5560  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A5564  38 80 00 00 */	li r4, 0
/* 806A5568  7C B8 CA 2E */	lhzx r5, r24, r25
/* 806A556C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 806A5570  38 E0 00 00 */	li r7, 0
/* 806A5574  39 00 00 00 */	li r8, 0
/* 806A5578  39 20 00 00 */	li r9, 0
/* 806A557C  39 40 00 FF */	li r10, 0xff
/* 806A5580  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A5584  4B 9A 75 0D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A5588  7C 77 1B 79 */	or. r23, r3, r3
/* 806A558C  41 82 00 38 */	beq lbl_806A55C4
/* 806A5590  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5594  80 63 00 04 */	lwz r3, 4(r3)
/* 806A5598  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806A559C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A55A0  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806A55A4  38 97 00 68 */	addi r4, r23, 0x68
/* 806A55A8  38 B7 00 98 */	addi r5, r23, 0x98
/* 806A55AC  38 D7 00 A4 */	addi r6, r23, 0xa4
/* 806A55B0  4B BD B2 59 */	bl func_80280808
/* 806A55B4  C0 37 00 9C */	lfs f1, 0x9c(r23)
/* 806A55B8  C0 17 00 98 */	lfs f0, 0x98(r23)
/* 806A55BC  D0 17 00 B0 */	stfs f0, 0xb0(r23)
/* 806A55C0  D0 37 00 B4 */	stfs f1, 0xb4(r23)
lbl_806A55C4:
/* 806A55C4  3B 7B 00 01 */	addi r27, r27, 1
/* 806A55C8  2C 1B 00 04 */	cmpwi r27, 4
/* 806A55CC  3B 39 00 02 */	addi r25, r25, 2
/* 806A55D0  41 80 FF 74 */	blt lbl_806A5544
lbl_806A55D4:
/* 806A55D4  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A55D8  2C 00 00 15 */	cmpwi r0, 0x15
/* 806A55DC  40 82 00 44 */	bne lbl_806A5620
/* 806A55E0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A55E4  38 63 00 0C */	addi r3, r3, 0xc
/* 806A55E8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A55EC  4B C8 2E 41 */	bl checkPass__12J3DFrameCtrlFf
/* 806A55F0  2C 03 00 00 */	cmpwi r3, 0
/* 806A55F4  41 82 00 2C */	beq lbl_806A5620
/* 806A55F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070272@ha */
/* 806A55FC  38 03 02 72 */	addi r0, r3, 0x0272 /* 0x00070272@l */
/* 806A5600  90 01 00 38 */	stw r0, 0x38(r1)
/* 806A5604  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A5608  38 81 00 38 */	addi r4, r1, 0x38
/* 806A560C  38 A0 FF FF */	li r5, -1
/* 806A5610  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A5614  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A5618  7D 89 03 A6 */	mtctr r12
/* 806A561C  4E 80 04 21 */	bctrl 
lbl_806A5620:
/* 806A5620  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A5624  2C 00 00 16 */	cmpwi r0, 0x16
/* 806A5628  40 82 00 90 */	bne lbl_806A56B8
/* 806A562C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5630  38 63 00 0C */	addi r3, r3, 0xc
/* 806A5634  C0 3D 00 B0 */	lfs f1, 0xb0(r29)
/* 806A5638  4B C8 2D F5 */	bl checkPass__12J3DFrameCtrlFf
/* 806A563C  2C 03 00 00 */	cmpwi r3, 0
/* 806A5640  41 82 00 34 */	beq lbl_806A5674
/* 806A5644  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070273@ha */
/* 806A5648  38 03 02 73 */	addi r0, r3, 0x0273 /* 0x00070273@l */
/* 806A564C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A5650  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A5654  38 81 00 34 */	addi r4, r1, 0x34
/* 806A5658  38 A0 00 00 */	li r5, 0
/* 806A565C  38 C0 FF FF */	li r6, -1
/* 806A5660  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A5664  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A5668  7D 89 03 A6 */	mtctr r12
/* 806A566C  4E 80 04 21 */	bctrl 
/* 806A5670  48 00 00 48 */	b lbl_806A56B8
lbl_806A5674:
/* 806A5674  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5678  38 63 00 0C */	addi r3, r3, 0xc
/* 806A567C  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 806A5680  4B C8 2D AD */	bl checkPass__12J3DFrameCtrlFf
/* 806A5684  2C 03 00 00 */	cmpwi r3, 0
/* 806A5688  41 82 00 30 */	beq lbl_806A56B8
/* 806A568C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070274@ha */
/* 806A5690  38 03 02 74 */	addi r0, r3, 0x0274 /* 0x00070274@l */
/* 806A5694  90 01 00 30 */	stw r0, 0x30(r1)
/* 806A5698  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A569C  38 81 00 30 */	addi r4, r1, 0x30
/* 806A56A0  38 A0 00 00 */	li r5, 0
/* 806A56A4  38 C0 FF FF */	li r6, -1
/* 806A56A8  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A56AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A56B0  7D 89 03 A6 */	mtctr r12
/* 806A56B4  4E 80 04 21 */	bctrl 
lbl_806A56B8:
/* 806A56B8  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A56BC  2C 00 00 12 */	cmpwi r0, 0x12
/* 806A56C0  40 82 00 90 */	bne lbl_806A5750
/* 806A56C4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A56C8  38 63 00 0C */	addi r3, r3, 0xc
/* 806A56CC  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 806A56D0  4B C8 2D 5D */	bl checkPass__12J3DFrameCtrlFf
/* 806A56D4  2C 03 00 00 */	cmpwi r3, 0
/* 806A56D8  41 82 00 34 */	beq lbl_806A570C
/* 806A56DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070275@ha */
/* 806A56E0  38 03 02 75 */	addi r0, r3, 0x0275 /* 0x00070275@l */
/* 806A56E4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806A56E8  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A56EC  38 81 00 2C */	addi r4, r1, 0x2c
/* 806A56F0  38 A0 00 00 */	li r5, 0
/* 806A56F4  38 C0 FF FF */	li r6, -1
/* 806A56F8  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A56FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A5700  7D 89 03 A6 */	mtctr r12
/* 806A5704  4E 80 04 21 */	bctrl 
/* 806A5708  48 00 00 48 */	b lbl_806A5750
lbl_806A570C:
/* 806A570C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5710  38 63 00 0C */	addi r3, r3, 0xc
/* 806A5714  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A5718  4B C8 2D 15 */	bl checkPass__12J3DFrameCtrlFf
/* 806A571C  2C 03 00 00 */	cmpwi r3, 0
/* 806A5720  41 82 00 30 */	beq lbl_806A5750
/* 806A5724  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070276@ha */
/* 806A5728  38 03 02 76 */	addi r0, r3, 0x0276 /* 0x00070276@l */
/* 806A572C  90 01 00 28 */	stw r0, 0x28(r1)
/* 806A5730  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806A5734  38 81 00 28 */	addi r4, r1, 0x28
/* 806A5738  38 A0 00 00 */	li r5, 0
/* 806A573C  38 C0 FF FF */	li r6, -1
/* 806A5740  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806A5744  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A5748  7D 89 03 A6 */	mtctr r12
/* 806A574C  4E 80 04 21 */	bctrl 
lbl_806A5750:
/* 806A5750  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A5754  2C 00 00 0E */	cmpwi r0, 0xe
/* 806A5758  40 82 00 0C */	bne lbl_806A5764
/* 806A575C  38 00 00 01 */	li r0, 1
/* 806A5760  98 1F 0E 5A */	stb r0, 0xe5a(r31)
lbl_806A5764:
/* 806A5764  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A5768  2C 00 00 0F */	cmpwi r0, 0xf
/* 806A576C  40 82 00 10 */	bne lbl_806A577C
/* 806A5770  38 00 00 01 */	li r0, 1
/* 806A5774  98 1F 0E 58 */	stb r0, 0xe58(r31)
/* 806A5778  98 1F 0E 5A */	stb r0, 0xe5a(r31)
lbl_806A577C:
/* 806A577C  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A5780  2C 00 00 0E */	cmpwi r0, 0xe
/* 806A5784  40 82 00 1C */	bne lbl_806A57A0
/* 806A5788  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A578C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806A5790  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 806A5794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A5798  4C 41 13 82 */	cror 2, 1, 2
/* 806A579C  41 82 00 0C */	beq lbl_806A57A8
lbl_806A57A0:
/* 806A57A0  2C 00 00 0F */	cmpwi r0, 0xf
/* 806A57A4  40 82 00 D0 */	bne lbl_806A5874
lbl_806A57A8:
/* 806A57A8  3B C0 00 00 */	li r30, 0
/* 806A57AC  3B 20 00 00 */	li r25, 0
/* 806A57B0  3B 40 00 00 */	li r26, 0
/* 806A57B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A57B8  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A57BC  3B 7C 00 6C */	addi r27, r28, 0x6c
lbl_806A57C0:
/* 806A57C0  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806A57C4  38 00 00 FF */	li r0, 0xff
/* 806A57C8  90 01 00 08 */	stw r0, 8(r1)
/* 806A57CC  38 80 00 00 */	li r4, 0
/* 806A57D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 806A57D4  38 00 FF FF */	li r0, -1
/* 806A57D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A57DC  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A57E0  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A57E4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806A57E8  3B 1A 0E 68 */	addi r24, r26, 0xe68
/* 806A57EC  7C 9F C0 2E */	lwzx r4, r31, r24
/* 806A57F0  38 A0 00 00 */	li r5, 0
/* 806A57F4  7C DB CA 2E */	lhzx r6, r27, r25
/* 806A57F8  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 806A57FC  39 00 00 00 */	li r8, 0
/* 806A5800  39 20 00 00 */	li r9, 0
/* 806A5804  39 40 00 00 */	li r10, 0
/* 806A5808  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A580C  4B 9A 7C C1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A5810  7C 7F C1 2E */	stwx r3, r31, r24
/* 806A5814  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806A5818  38 63 02 10 */	addi r3, r3, 0x210
/* 806A581C  7C 9F C0 2E */	lwzx r4, r31, r24
/* 806A5820  4B 9A 60 F9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806A5824  7C 78 1B 79 */	or. r24, r3, r3
/* 806A5828  41 82 00 38 */	beq lbl_806A5860
/* 806A582C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5830  80 63 00 04 */	lwz r3, 4(r3)
/* 806A5834  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806A5838  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A583C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806A5840  38 98 00 68 */	addi r4, r24, 0x68
/* 806A5844  38 B8 00 98 */	addi r5, r24, 0x98
/* 806A5848  38 D8 00 A4 */	addi r6, r24, 0xa4
/* 806A584C  4B BD AF BD */	bl func_80280808
/* 806A5850  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 806A5854  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 806A5858  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 806A585C  D0 38 00 B4 */	stfs f1, 0xb4(r24)
lbl_806A5860:
/* 806A5860  3B DE 00 01 */	addi r30, r30, 1
/* 806A5864  2C 1E 00 04 */	cmpwi r30, 4
/* 806A5868  3B 39 00 02 */	addi r25, r25, 2
/* 806A586C  3B 5A 00 04 */	addi r26, r26, 4
/* 806A5870  41 80 FF 50 */	blt lbl_806A57C0
lbl_806A5874:
/* 806A5874  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A5878  2C 00 00 0E */	cmpwi r0, 0xe
/* 806A587C  41 82 00 0C */	beq lbl_806A5888
/* 806A5880  2C 00 00 0F */	cmpwi r0, 0xf
/* 806A5884  40 82 00 AC */	bne lbl_806A5930
lbl_806A5888:
/* 806A5888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A588C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A5890  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806A5894  38 00 00 FF */	li r0, 0xff
/* 806A5898  90 01 00 08 */	stw r0, 8(r1)
/* 806A589C  38 80 00 00 */	li r4, 0
/* 806A58A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 806A58A4  38 00 FF FF */	li r0, -1
/* 806A58A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A58AC  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A58B0  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A58B4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806A58B8  80 9F 0E 78 */	lwz r4, 0xe78(r31)
/* 806A58BC  38 A0 00 00 */	li r5, 0
/* 806A58C0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008470@ha */
/* 806A58C4  38 C6 84 70 */	addi r6, r6, 0x8470 /* 0x00008470@l */
/* 806A58C8  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 806A58CC  39 00 00 00 */	li r8, 0
/* 806A58D0  39 20 00 00 */	li r9, 0
/* 806A58D4  39 40 00 00 */	li r10, 0
/* 806A58D8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A58DC  4B 9A 7B F1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A58E0  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 806A58E4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806A58E8  38 63 02 10 */	addi r3, r3, 0x210
/* 806A58EC  80 9F 0E 78 */	lwz r4, 0xe78(r31)
/* 806A58F0  4B 9A 60 29 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806A58F4  7C 78 1B 79 */	or. r24, r3, r3
/* 806A58F8  41 82 00 38 */	beq lbl_806A5930
/* 806A58FC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A5900  80 63 00 04 */	lwz r3, 4(r3)
/* 806A5904  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806A5908  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A590C  38 63 00 60 */	addi r3, r3, 0x60
/* 806A5910  38 98 00 68 */	addi r4, r24, 0x68
/* 806A5914  38 B8 00 98 */	addi r5, r24, 0x98
/* 806A5918  38 D8 00 A4 */	addi r6, r24, 0xa4
/* 806A591C  4B BD AE ED */	bl func_80280808
/* 806A5920  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 806A5924  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 806A5928  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 806A592C  D0 38 00 B4 */	stfs f1, 0xb4(r24)
lbl_806A5930:
/* 806A5930  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A5934  2C 00 00 0E */	cmpwi r0, 0xe
/* 806A5938  40 82 00 D8 */	bne lbl_806A5A10
/* 806A593C  3B 60 00 00 */	li r27, 0
/* 806A5940  3B 40 00 00 */	li r26, 0
/* 806A5944  3B 20 00 00 */	li r25, 0
/* 806A5948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A594C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A5950  3B 1C 00 74 */	addi r24, r28, 0x74
lbl_806A5954:
/* 806A5954  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806A5958  38 00 00 FF */	li r0, 0xff
/* 806A595C  90 01 00 08 */	stw r0, 8(r1)
/* 806A5960  38 80 00 00 */	li r4, 0
/* 806A5964  90 81 00 0C */	stw r4, 0xc(r1)
/* 806A5968  38 00 FF FF */	li r0, -1
/* 806A596C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A5970  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A5974  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A5978  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806A597C  3A F9 0E 7C */	addi r23, r25, 0xe7c
/* 806A5980  7C 9F B8 2E */	lwzx r4, r31, r23
/* 806A5984  38 A0 00 00 */	li r5, 0
/* 806A5988  7C D8 D2 2E */	lhzx r6, r24, r26
/* 806A598C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 806A5990  39 00 00 00 */	li r8, 0
/* 806A5994  39 20 00 00 */	li r9, 0
/* 806A5998  39 40 00 00 */	li r10, 0
/* 806A599C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806A59A0  4B 9A 7B 2D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A59A4  7C 7F B9 2E */	stwx r3, r31, r23
/* 806A59A8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806A59AC  38 63 02 10 */	addi r3, r3, 0x210
/* 806A59B0  7C 9F B8 2E */	lwzx r4, r31, r23
/* 806A59B4  4B 9A 5F 65 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806A59B8  7C 7C 1B 79 */	or. r28, r3, r3
/* 806A59BC  41 82 00 40 */	beq lbl_806A59FC
/* 806A59C0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A59C4  80 63 00 04 */	lwz r3, 4(r3)
/* 806A59C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806A59CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A59D0  38 1B 00 0A */	addi r0, r27, 0xa
/* 806A59D4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 806A59D8  7C 63 02 14 */	add r3, r3, r0
/* 806A59DC  38 9C 00 68 */	addi r4, r28, 0x68
/* 806A59E0  38 BC 00 98 */	addi r5, r28, 0x98
/* 806A59E4  38 DC 00 A4 */	addi r6, r28, 0xa4
/* 806A59E8  4B BD AE 21 */	bl func_80280808
/* 806A59EC  C0 3C 00 9C */	lfs f1, 0x9c(r28)
/* 806A59F0  C0 1C 00 98 */	lfs f0, 0x98(r28)
/* 806A59F4  D0 1C 00 B0 */	stfs f0, 0xb0(r28)
/* 806A59F8  D0 3C 00 B4 */	stfs f1, 0xb4(r28)
lbl_806A59FC:
/* 806A59FC  3B 7B 00 01 */	addi r27, r27, 1
/* 806A5A00  2C 1B 00 02 */	cmpwi r27, 2
/* 806A5A04  3B 5A 00 02 */	addi r26, r26, 2
/* 806A5A08  3B 39 00 04 */	addi r25, r25, 4
/* 806A5A0C  41 80 FF 48 */	blt lbl_806A5954
lbl_806A5A10:
/* 806A5A10  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 806A5A14  2C 00 00 00 */	cmpwi r0, 0
/* 806A5A18  41 82 00 3C */	beq lbl_806A5A54
/* 806A5A1C  2C 00 00 04 */	cmpwi r0, 4
/* 806A5A20  41 82 00 34 */	beq lbl_806A5A54
/* 806A5A24  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806A5A28  2C 00 00 0E */	cmpwi r0, 0xe
/* 806A5A2C  41 82 00 28 */	beq lbl_806A5A54
/* 806A5A30  2C 00 00 0F */	cmpwi r0, 0xf
/* 806A5A34  41 82 00 20 */	beq lbl_806A5A54
/* 806A5A38  2C 00 00 10 */	cmpwi r0, 0x10
/* 806A5A3C  41 82 00 18 */	beq lbl_806A5A54
/* 806A5A40  38 00 00 00 */	li r0, 0
/* 806A5A44  90 1F 06 7C */	stw r0, 0x67c(r31)
/* 806A5A48  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806A5A4C  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 806A5A50  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_806A5A54:
/* 806A5A54  39 61 00 80 */	addi r11, r1, 0x80
/* 806A5A58  4B CB C7 B9 */	bl _restgpr_23
/* 806A5A5C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806A5A60  7C 08 03 A6 */	mtlr r0
/* 806A5A64  38 21 00 80 */	addi r1, r1, 0x80
/* 806A5A68  4E 80 00 20 */	blr 
