lbl_800F542C:
/* 800F542C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F5430  7C 08 02 A6 */	mflr r0
/* 800F5434  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F5438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F543C  7C 7F 1B 78 */	mr r31, r3
/* 800F5440  4B FF F3 99 */	bl canoeCommon__9daAlink_cFv
/* 800F5444  2C 03 00 00 */	cmpwi r3, 0
/* 800F5448  41 82 00 0C */	beq lbl_800F5454
/* 800F544C  38 60 00 01 */	li r3, 1
/* 800F5450  48 00 02 B8 */	b lbl_800F5708
lbl_800F5454:
/* 800F5454  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800F5458  2C 03 00 00 */	cmpwi r3, 0
/* 800F545C  40 81 00 10 */	ble lbl_800F546C
/* 800F5460  38 03 FF FF */	addi r0, r3, -1
/* 800F5464  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800F5468  48 00 02 9C */	b lbl_800F5704
lbl_800F546C:
/* 800F546C  7F E3 FB 78 */	mr r3, r31
/* 800F5470  4B FF F4 B5 */	bl checkNextActionCanoe__9daAlink_cFv
/* 800F5474  2C 03 00 00 */	cmpwi r3, 0
/* 800F5478  40 82 02 8C */	bne lbl_800F5704
/* 800F547C  7F E3 FB 78 */	mr r3, r31
/* 800F5480  4B FC 3D D5 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800F5484  2C 03 00 00 */	cmpwi r3, 0
/* 800F5488  41 82 02 28 */	beq lbl_800F56B0
/* 800F548C  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800F5490  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 800F5494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F5498  40 80 00 C8 */	bge lbl_800F5560
/* 800F549C  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F54A0  28 00 01 05 */	cmplwi r0, 0x105
/* 800F54A4  41 82 00 BC */	beq lbl_800F5560
/* 800F54A8  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800F54AC  28 00 00 2D */	cmplwi r0, 0x2d
/* 800F54B0  41 82 00 B0 */	beq lbl_800F5560
/* 800F54B4  7F E3 FB 78 */	mr r3, r31
/* 800F54B8  4B FB F5 51 */	bl setTalkStatus__9daAlink_cFv
/* 800F54BC  2C 03 00 00 */	cmpwi r3, 0
/* 800F54C0  40 82 00 28 */	bne lbl_800F54E8
/* 800F54C4  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800F54C8  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800F54CC  38 63 00 7E */	addi r3, r3, 0x7e
/* 800F54D0  4B FA 85 91 */	bl checkStageName__9daAlink_cFPCc
/* 800F54D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F54D8  40 82 00 10 */	bne lbl_800F54E8
/* 800F54DC  7F E3 FB 78 */	mr r3, r31
/* 800F54E0  38 80 00 16 */	li r4, 0x16
/* 800F54E4  4B FB DD 85 */	bl setDoStatusEmphasys__9daAlink_cFUc
lbl_800F54E8:
/* 800F54E8  7F E3 FB 78 */	mr r3, r31
/* 800F54EC  38 80 00 00 */	li r4, 0
/* 800F54F0  4B FC 27 09 */	bl orderTalk__9daAlink_cFi
/* 800F54F4  2C 03 00 00 */	cmpwi r3, 0
/* 800F54F8  41 82 00 0C */	beq lbl_800F5504
/* 800F54FC  38 60 00 01 */	li r3, 1
/* 800F5500  48 00 02 08 */	b lbl_800F5708
lbl_800F5504:
/* 800F5504  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800F5508  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800F550C  41 82 00 54 */	beq lbl_800F5560
/* 800F5510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F5514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F5518  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800F551C  28 00 00 16 */	cmplwi r0, 0x16
/* 800F5520  40 82 00 40 */	bne lbl_800F5560
/* 800F5524  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F5528  28 00 01 0B */	cmplwi r0, 0x10b
/* 800F552C  40 82 00 14 */	bne lbl_800F5540
/* 800F5530  7F E3 FB 78 */	mr r3, r31
/* 800F5534  38 80 00 01 */	li r4, 1
/* 800F5538  48 00 09 71 */	bl procCanoePaddlePutInit__9daAlink_cFi
/* 800F553C  48 00 01 CC */	b lbl_800F5708
lbl_800F5540:
/* 800F5540  28 00 00 FF */	cmplwi r0, 0xff
/* 800F5544  41 82 00 10 */	beq lbl_800F5554
/* 800F5548  7F E3 FB 78 */	mr r3, r31
/* 800F554C  38 80 00 00 */	li r4, 0
/* 800F5550  4B FC 42 ED */	bl allUnequip__9daAlink_cFi
lbl_800F5554:
/* 800F5554  7F E3 FB 78 */	mr r3, r31
/* 800F5558  4B FF F8 A1 */	bl procCanoeGetOffInit__9daAlink_cFv
/* 800F555C  48 00 01 AC */	b lbl_800F5708
lbl_800F5560:
/* 800F5560  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800F5564  28 03 01 05 */	cmplwi r3, 0x105
/* 800F5568  40 82 00 10 */	bne lbl_800F5578
/* 800F556C  7F E3 FB 78 */	mr r3, r31
/* 800F5570  48 00 0E F5 */	bl procCanoeFishingWaitInit__9daAlink_cFv
/* 800F5574  48 00 01 90 */	b lbl_800F5704
lbl_800F5578:
/* 800F5578  28 03 00 FF */	cmplwi r3, 0xff
/* 800F557C  40 82 00 80 */	bne lbl_800F55FC
/* 800F5580  80 1F 28 38 */	lwz r0, 0x2838(r31)
/* 800F5584  28 00 00 00 */	cmplwi r0, 0
/* 800F5588  40 82 00 10 */	bne lbl_800F5598
/* 800F558C  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 800F5590  2C 00 00 00 */	cmpwi r0, 0
/* 800F5594  41 82 00 14 */	beq lbl_800F55A8
lbl_800F5598:
/* 800F5598  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800F559C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F55A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F55A4  40 81 00 58 */	ble lbl_800F55FC
lbl_800F55A8:
/* 800F55A8  38 00 00 FF */	li r0, 0xff
/* 800F55AC  B0 1F 2F DE */	sth r0, 0x2fde(r31)
/* 800F55B0  80 1F 28 38 */	lwz r0, 0x2838(r31)
/* 800F55B4  28 00 00 00 */	cmplwi r0, 0
/* 800F55B8  40 82 00 10 */	bne lbl_800F55C8
/* 800F55BC  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 800F55C0  2C 00 00 00 */	cmpwi r0, 0
/* 800F55C4  41 82 00 2C */	beq lbl_800F55F0
lbl_800F55C8:
/* 800F55C8  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800F55CC  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800F55D0  7C 03 00 50 */	subf r0, r3, r0
/* 800F55D4  7C 00 07 35 */	extsh. r0, r0
/* 800F55D8  41 80 00 10 */	blt lbl_800F55E8
/* 800F55DC  38 00 00 01 */	li r0, 1
/* 800F55E0  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800F55E4  48 00 00 0C */	b lbl_800F55F0
lbl_800F55E8:
/* 800F55E8  38 00 00 00 */	li r0, 0
/* 800F55EC  B0 1F 30 12 */	sth r0, 0x3012(r31)
lbl_800F55F0:
/* 800F55F0  7F E3 FB 78 */	mr r3, r31
/* 800F55F4  48 00 0B 4D */	bl procCanoePaddleGrabInit__9daAlink_cFv
/* 800F55F8  48 00 01 0C */	b lbl_800F5704
lbl_800F55FC:
/* 800F55FC  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800F5600  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F5604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F5608  40 81 00 1C */	ble lbl_800F5624
/* 800F560C  28 03 01 0B */	cmplwi r3, 0x10b
/* 800F5610  40 82 00 14 */	bne lbl_800F5624
/* 800F5614  7F E3 FB 78 */	mr r3, r31
/* 800F5618  38 80 FF FF */	li r4, -1
/* 800F561C  48 00 01 01 */	bl procCanoeRowInit__9daAlink_cFi
/* 800F5620  48 00 00 E4 */	b lbl_800F5704
lbl_800F5624:
/* 800F5624  28 03 00 FF */	cmplwi r3, 0xff
/* 800F5628  41 82 00 DC */	beq lbl_800F5704
/* 800F562C  28 03 01 0B */	cmplwi r3, 0x10b
/* 800F5630  41 82 00 D4 */	beq lbl_800F5704
/* 800F5634  7F E3 FB 78 */	mr r3, r31
/* 800F5638  38 80 00 D8 */	li r4, 0xd8
/* 800F563C  4B FB 6F 1D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F5640  2C 03 00 00 */	cmpwi r3, 0
/* 800F5644  40 82 00 24 */	bne lbl_800F5668
/* 800F5648  80 7F 1F 2C */	lwz r3, 0x1f2c(r31)
/* 800F564C  80 1F 1F 44 */	lwz r0, 0x1f44(r31)
/* 800F5650  7C 03 00 40 */	cmplw r3, r0
/* 800F5654  41 82 00 14 */	beq lbl_800F5668
/* 800F5658  7F E3 FB 78 */	mr r3, r31
/* 800F565C  38 80 00 D8 */	li r4, 0xd8
/* 800F5660  4B FB 79 21 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F5664  48 00 00 A0 */	b lbl_800F5704
lbl_800F5668:
/* 800F5668  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800F566C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F5670  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F5674  40 81 00 90 */	ble lbl_800F5704
/* 800F5678  7F E3 FB 78 */	mr r3, r31
/* 800F567C  38 80 00 00 */	li r4, 0
/* 800F5680  4B FC 41 BD */	bl allUnequip__9daAlink_cFi
/* 800F5684  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800F5688  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800F568C  7C 03 00 50 */	subf r0, r3, r0
/* 800F5690  7C 00 07 35 */	extsh. r0, r0
/* 800F5694  41 80 00 10 */	blt lbl_800F56A4
/* 800F5698  38 00 00 01 */	li r0, 1
/* 800F569C  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800F56A0  48 00 00 64 */	b lbl_800F5704
lbl_800F56A4:
/* 800F56A4  38 00 00 00 */	li r0, 0
/* 800F56A8  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800F56AC  48 00 00 58 */	b lbl_800F5704
lbl_800F56B0:
/* 800F56B0  7F E3 FB 78 */	mr r3, r31
/* 800F56B4  4B FC 3C 8D */	bl checkEquipAnime__9daAlink_cCFv
/* 800F56B8  2C 03 00 00 */	cmpwi r3, 0
/* 800F56BC  41 82 00 48 */	beq lbl_800F5704
/* 800F56C0  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F56C4  28 00 01 0B */	cmplwi r0, 0x10b
/* 800F56C8  40 82 00 14 */	bne lbl_800F56DC
/* 800F56CC  7F E3 FB 78 */	mr r3, r31
/* 800F56D0  38 80 00 00 */	li r4, 0
/* 800F56D4  48 00 07 D5 */	bl procCanoePaddlePutInit__9daAlink_cFi
/* 800F56D8  48 00 00 2C */	b lbl_800F5704
lbl_800F56DC:
/* 800F56DC  A0 1F 2F DE */	lhz r0, 0x2fde(r31)
/* 800F56E0  28 00 01 05 */	cmplwi r0, 0x105
/* 800F56E4  40 82 00 20 */	bne lbl_800F5704
/* 800F56E8  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F56EC  80 63 14 64 */	lwz r3, 0x1464(r3)
/* 800F56F0  3C 03 00 01 */	addis r0, r3, 1
/* 800F56F4  28 00 FF FF */	cmplwi r0, 0xffff
/* 800F56F8  41 82 00 0C */	beq lbl_800F5704
/* 800F56FC  7F E3 FB 78 */	mr r3, r31
/* 800F5700  48 00 0C 21 */	bl procCanoeRodGrabInit__9daAlink_cFv
lbl_800F5704:
/* 800F5704  38 60 00 01 */	li r3, 1
lbl_800F5708:
/* 800F5708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F570C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F5710  7C 08 03 A6 */	mtlr r0
/* 800F5714  38 21 00 10 */	addi r1, r1, 0x10
/* 800F5718  4E 80 00 20 */	blr 
