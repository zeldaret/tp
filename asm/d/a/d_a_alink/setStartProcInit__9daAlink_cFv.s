lbl_800A551C:
/* 800A551C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A5520  7C 08 02 A6 */	mflr r0
/* 800A5524  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A5528  39 61 00 30 */	addi r11, r1, 0x30
/* 800A552C  48 2B CC 9D */	bl _savegpr_24
/* 800A5530  7C 78 1B 78 */	mr r24, r3
/* 800A5534  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800A5538  3B A4 D6 58 */	addi r29, r4, lit_3757@l /* 0x8038D658@l */
/* 800A553C  3B 40 00 00 */	li r26, 0
/* 800A5540  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 800A5544  54 1C A6 FE */	rlwinm r28, r0, 0x14, 0x1b, 0x1f
/* 800A5548  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A554C  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A5550  80 1E 0D D0 */	lwz r0, 0xdd0(r30)
/* 800A5554  54 1B 07 3E */	clrlwi r27, r0, 0x1c
/* 800A5558  83 3E 5D B8 */	lwz r25, 0x5db8(r30)
/* 800A555C  7F 64 DB 78 */	mr r4, r27
/* 800A5560  7F 85 E3 78 */	mr r5, r28
/* 800A5564  4B FF FF 91 */	bl checkHorseStart__9daAlink_cFUli
/* 800A5568  7C 7F 1B 78 */	mr r31, r3
/* 800A556C  7F 03 C3 78 */	mr r3, r24
/* 800A5570  80 1E 0D D0 */	lwz r0, 0xdd0(r30)
/* 800A5574  54 04 E6 7E */	rlwinm r4, r0, 0x1c, 0x19, 0x1f
/* 800A5578  20 1B 00 04 */	subfic r0, r27, 4
/* 800A557C  7C 00 00 34 */	cntlzw r0, r0
/* 800A5580  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 800A5584  38 C0 00 00 */	li r6, 0
/* 800A5588  38 E0 00 01 */	li r7, 1
/* 800A558C  48 03 1D 31 */	bl setDamagePoint__9daAlink_cFiiii
/* 800A5590  80 1E 0D D0 */	lwz r0, 0xdd0(r30)
/* 800A5594  54 00 B5 FC */	rlwinm r0, r0, 0x16, 0x17, 0x1e
/* 800A5598  B0 18 05 6E */	sth r0, 0x56e(r24)
/* 800A559C  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800A55A0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A55A4  41 82 00 14 */	beq lbl_800A55B8
/* 800A55A8  7F 03 C3 78 */	mr r3, r24
/* 800A55AC  38 80 00 19 */	li r4, 0x19
/* 800A55B0  48 00 A3 F9 */	bl setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800A55B4  48 00 01 50 */	b lbl_800A5704
lbl_800A55B8:
/* 800A55B8  80 1E 0D D0 */	lwz r0, 0xdd0(r30)
/* 800A55BC  54 00 46 3E */	srwi r0, r0, 0x18
/* 800A55C0  B0 18 2F DC */	sth r0, 0x2fdc(r24)
/* 800A55C4  A0 18 2F DC */	lhz r0, 0x2fdc(r24)
/* 800A55C8  28 00 00 28 */	cmplwi r0, 0x28
/* 800A55CC  40 82 00 10 */	bne lbl_800A55DC
/* 800A55D0  38 00 01 03 */	li r0, 0x103
/* 800A55D4  B0 18 2F DC */	sth r0, 0x2fdc(r24)
/* 800A55D8  48 00 00 34 */	b lbl_800A560C
lbl_800A55DC:
/* 800A55DC  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A55E0  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A55E4  38 63 00 F6 */	addi r3, r3, 0xf6
/* 800A55E8  4B FF 84 79 */	bl checkStageName__9daAlink_cFPCc
/* 800A55EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A55F0  41 82 00 1C */	beq lbl_800A560C
/* 800A55F4  28 1B 00 08 */	cmplwi r27, 8
/* 800A55F8  41 82 00 14 */	beq lbl_800A560C
/* 800A55FC  2C 1C 00 02 */	cmpwi r28, 2
/* 800A5600  40 82 00 0C */	bne lbl_800A560C
/* 800A5604  38 00 01 03 */	li r0, 0x103
/* 800A5608  B0 18 2F DC */	sth r0, 0x2fdc(r24)
lbl_800A560C:
/* 800A560C  A0 78 2F DC */	lhz r3, 0x2fdc(r24)
/* 800A5610  28 03 00 00 */	cmplwi r3, 0
/* 800A5614  41 82 00 7C */	beq lbl_800A5690
/* 800A5618  48 01 B0 61 */	bl checkCastleTownUseItem__9daAlink_cFUs
/* 800A561C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A5620  41 82 00 70 */	beq lbl_800A5690
/* 800A5624  48 01 AD 7D */	bl checkCloudSea__9daAlink_cFv
/* 800A5628  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A562C  41 82 00 10 */	beq lbl_800A563C
/* 800A5630  A0 18 2F DC */	lhz r0, 0x2fdc(r24)
/* 800A5634  28 00 01 03 */	cmplwi r0, 0x103
/* 800A5638  40 82 00 58 */	bne lbl_800A5690
lbl_800A563C:
/* 800A563C  7F 03 C3 78 */	mr r3, r24
/* 800A5640  4B FF F6 01 */	bl checkCanoeStart__9daAlink_cFv
/* 800A5644  2C 03 00 00 */	cmpwi r3, 0
/* 800A5648  40 82 00 48 */	bne lbl_800A5690
/* 800A564C  2C 1F 00 00 */	cmpwi r31, 0
/* 800A5650  41 82 00 4C */	beq lbl_800A569C
/* 800A5654  A0 98 2F DC */	lhz r4, 0x2fdc(r24)
/* 800A5658  28 04 01 03 */	cmplwi r4, 0x103
/* 800A565C  41 82 00 40 */	beq lbl_800A569C
/* 800A5660  7F 03 C3 78 */	mr r3, r24
/* 800A5664  48 03 91 1D */	bl checkBowAndSlingItem__9daAlink_cFi
/* 800A5668  2C 03 00 00 */	cmpwi r3, 0
/* 800A566C  40 82 00 30 */	bne lbl_800A569C
/* 800A5670  A0 78 2F DC */	lhz r3, 0x2fdc(r24)
/* 800A5674  28 03 00 40 */	cmplwi r3, 0x40
/* 800A5678  41 82 00 24 */	beq lbl_800A569C
/* 800A567C  28 03 00 48 */	cmplwi r3, 0x48
/* 800A5680  41 82 00 1C */	beq lbl_800A569C
/* 800A5684  48 0B 95 35 */	bl checkHookshotItem__9daPy_py_cFi
/* 800A5688  2C 03 00 00 */	cmpwi r3, 0
/* 800A568C  40 82 00 10 */	bne lbl_800A569C
lbl_800A5690:
/* 800A5690  38 00 00 FF */	li r0, 0xff
/* 800A5694  B0 18 2F DC */	sth r0, 0x2fdc(r24)
/* 800A5698  48 00 00 0C */	b lbl_800A56A4
lbl_800A569C:
/* 800A569C  7F 03 C3 78 */	mr r3, r24
/* 800A56A0  48 01 A2 31 */	bl setItemModel__9daAlink_cFv
lbl_800A56A4:
/* 800A56A4  2C 1F 00 00 */	cmpwi r31, 0
/* 800A56A8  41 82 00 5C */	beq lbl_800A5704
/* 800A56AC  7F 23 CB 78 */	mr r3, r25
/* 800A56B0  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 800A56B4  A8 B8 04 E6 */	lha r5, 0x4e6(r24)
/* 800A56B8  39 99 18 E0 */	addi r12, r25, 0x18e0
/* 800A56BC  48 2B C9 C9 */	bl __ptmf_scall
/* 800A56C0  60 00 00 00 */	nop 
/* 800A56C4  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 800A56C8  4B F6 76 9D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800A56CC  38 79 04 E4 */	addi r3, r25, 0x4e4
/* 800A56D0  4B F6 78 75 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 800A56D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A56D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A56DC  80 99 05 70 */	lwz r4, 0x570(r25)
/* 800A56E0  38 84 00 24 */	addi r4, r4, 0x24
/* 800A56E4  48 2A 0D CD */	bl PSMTXCopy
/* 800A56E8  80 79 05 70 */	lwz r3, 0x570(r25)
/* 800A56EC  81 83 00 00 */	lwz r12, 0(r3)
/* 800A56F0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800A56F4  7D 89 03 A6 */	mtctr r12
/* 800A56F8  4E 80 04 21 */	bctrl 
/* 800A56FC  7F 03 C3 78 */	mr r3, r24
/* 800A5700  48 04 74 59 */	bl initForceRideHorse__9daAlink_cFv
lbl_800A5704:
/* 800A5704  28 1B 00 06 */	cmplwi r27, 6
/* 800A5708  40 82 00 10 */	bne lbl_800A5718
/* 800A570C  7F 03 C3 78 */	mr r3, r24
/* 800A5710  48 02 99 F1 */	bl procCoPeepSubjectivityInit__9daAlink_cFv
/* 800A5714  48 00 05 98 */	b lbl_800A5CAC
lbl_800A5718:
/* 800A5718  28 1B 00 0B */	cmplwi r27, 0xb
/* 800A571C  40 82 00 38 */	bne lbl_800A5754
/* 800A5720  80 18 19 9C */	lwz r0, 0x199c(r24)
/* 800A5724  60 00 00 20 */	ori r0, r0, 0x20
/* 800A5728  90 18 19 9C */	stw r0, 0x199c(r24)
/* 800A572C  80 18 29 00 */	lwz r0, 0x2900(r24)
/* 800A5730  90 01 00 08 */	stw r0, 8(r1)
/* 800A5734  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 800A5738  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 800A573C  38 81 00 08 */	addi r4, r1, 8
/* 800A5740  4B F7 40 B9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800A5744  7C 64 1B 78 */	mr r4, r3
/* 800A5748  7F 03 C3 78 */	mr r3, r24
/* 800A574C  48 06 12 ED */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
/* 800A5750  48 00 05 5C */	b lbl_800A5CAC
lbl_800A5754:
/* 800A5754  28 1B 00 0C */	cmplwi r27, 0xc
/* 800A5758  40 82 00 10 */	bne lbl_800A5768
/* 800A575C  7F 03 C3 78 */	mr r3, r24
/* 800A5760  48 07 9C 01 */	bl procDungeonWarpSceneStartInit__9daAlink_cFv
/* 800A5764  48 00 05 48 */	b lbl_800A5CAC
lbl_800A5768:
/* 800A5768  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A576C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A5770  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 800A5774  2C 00 FF FC */	cmpwi r0, -4
/* 800A5778  40 82 00 18 */	bne lbl_800A5790
/* 800A577C  7F 03 C3 78 */	mr r3, r24
/* 800A5780  38 80 00 01 */	li r4, 1
/* 800A5784  38 A0 00 01 */	li r5, 1
/* 800A5788  48 07 A5 C5 */	bl procCoWarpInit__9daAlink_cFii
/* 800A578C  48 00 05 20 */	b lbl_800A5CAC
lbl_800A5790:
/* 800A5790  2C 1C 00 08 */	cmpwi r28, 8
/* 800A5794  40 82 00 24 */	bne lbl_800A57B8
/* 800A5798  80 18 31 88 */	lwz r0, 0x3188(r24)
/* 800A579C  2C 00 00 FF */	cmpwi r0, 0xff
/* 800A57A0  40 82 00 18 */	bne lbl_800A57B8
/* 800A57A4  7F 03 C3 78 */	mr r3, r24
/* 800A57A8  38 80 00 01 */	li r4, 1
/* 800A57AC  38 A0 00 00 */	li r5, 0
/* 800A57B0  48 07 A5 9D */	bl procCoWarpInit__9daAlink_cFii
/* 800A57B4  48 00 04 F8 */	b lbl_800A5CAC
lbl_800A57B8:
/* 800A57B8  28 1B 00 04 */	cmplwi r27, 4
/* 800A57BC  41 82 00 14 */	beq lbl_800A57D0
/* 800A57C0  2C 1C 00 0C */	cmpwi r28, 0xc
/* 800A57C4  41 82 00 0C */	beq lbl_800A57D0
/* 800A57C8  28 1B 00 05 */	cmplwi r27, 5
/* 800A57CC  40 82 00 58 */	bne lbl_800A5824
lbl_800A57D0:
/* 800A57D0  7F 03 C3 78 */	mr r3, r24
/* 800A57D4  81 98 06 28 */	lwz r12, 0x628(r24)
/* 800A57D8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800A57DC  7D 89 03 A6 */	mtctr r12
/* 800A57E0  4E 80 04 21 */	bctrl 
/* 800A57E4  28 03 00 00 */	cmplwi r3, 0
/* 800A57E8  41 82 00 10 */	beq lbl_800A57F8
/* 800A57EC  7F 03 C3 78 */	mr r3, r24
/* 800A57F0  48 04 D5 95 */	bl procHorseComebackInit__9daAlink_cFv
/* 800A57F4  48 00 04 B8 */	b lbl_800A5CAC
lbl_800A57F8:
/* 800A57F8  7F 03 C3 78 */	mr r3, r24
/* 800A57FC  38 80 FF FE */	li r4, -2
/* 800A5800  38 A0 00 01 */	li r5, 1
/* 800A5804  38 C0 00 00 */	li r6, 0
/* 800A5808  38 E0 00 00 */	li r7, 0
/* 800A580C  48 07 AC F5 */	bl commonLargeDamageUpInit__9daAlink_cFiiss
/* 800A5810  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800A5814  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A5818  41 82 04 94 */	beq lbl_800A5CAC
/* 800A581C  3B 40 00 01 */	li r26, 1
/* 800A5820  48 00 04 8C */	b lbl_800A5CAC
lbl_800A5824:
/* 800A5824  28 1B 00 09 */	cmplwi r27, 9
/* 800A5828  40 82 00 14 */	bne lbl_800A583C
/* 800A582C  7F 03 C3 78 */	mr r3, r24
/* 800A5830  38 80 00 01 */	li r4, 1
/* 800A5834  48 09 9C 75 */	bl procWolfDigThroughInit__9daAlink_cFi
/* 800A5838  48 00 04 74 */	b lbl_800A5CAC
lbl_800A583C:
/* 800A583C  28 1B 00 08 */	cmplwi r27, 8
/* 800A5840  40 82 00 18 */	bne lbl_800A5858
/* 800A5844  7F 03 C3 78 */	mr r3, r24
/* 800A5848  48 04 73 11 */	bl initForceRideHorse__9daAlink_cFv
/* 800A584C  7F 03 C3 78 */	mr r3, r24
/* 800A5850  48 04 D5 35 */	bl procHorseComebackInit__9daAlink_cFv
/* 800A5854  48 00 04 58 */	b lbl_800A5CAC
lbl_800A5858:
/* 800A5858  28 1B 00 0A */	cmplwi r27, 0xa
/* 800A585C  40 82 00 10 */	bne lbl_800A586C
/* 800A5860  7F 03 C3 78 */	mr r3, r24
/* 800A5864  48 01 00 89 */	bl checkWaitAction__9daAlink_cFv
/* 800A5868  48 00 04 44 */	b lbl_800A5CAC
lbl_800A586C:
/* 800A586C  2C 1C 00 09 */	cmpwi r28, 9
/* 800A5870  40 82 00 30 */	bne lbl_800A58A0
/* 800A5874  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800A5878  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A587C  41 82 00 14 */	beq lbl_800A5890
/* 800A5880  7F 03 C3 78 */	mr r3, r24
/* 800A5884  38 80 00 00 */	li r4, 0
/* 800A5888  48 08 E7 79 */	bl procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c
/* 800A588C  48 00 04 20 */	b lbl_800A5CAC
lbl_800A5890:
/* 800A5890  7F 03 C3 78 */	mr r3, r24
/* 800A5894  38 80 00 01 */	li r4, 1
/* 800A5898  48 02 05 D1 */	bl procAutoJumpInit__9daAlink_cFi
/* 800A589C  48 00 04 10 */	b lbl_800A5CAC
lbl_800A58A0:
/* 800A58A0  2C 1C 00 04 */	cmpwi r28, 4
/* 800A58A4  40 82 00 40 */	bne lbl_800A58E4
/* 800A58A8  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800A58AC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A58B0  41 82 00 14 */	beq lbl_800A58C4
/* 800A58B4  7F 03 C3 78 */	mr r3, r24
/* 800A58B8  38 80 00 01 */	li r4, 1
/* 800A58BC  48 08 91 0D */	bl procWolfAutoJumpInit__9daAlink_cFi
/* 800A58C0  48 00 00 10 */	b lbl_800A58D0
lbl_800A58C4:
/* 800A58C4  7F 03 C3 78 */	mr r3, r24
/* 800A58C8  38 80 00 01 */	li r4, 1
/* 800A58CC  48 02 05 9D */	bl procAutoJumpInit__9daAlink_cFi
lbl_800A58D0:
/* 800A58D0  C0 02 95 1C */	lfs f0, lit_20991(r2)
/* 800A58D4  D0 18 33 98 */	stfs f0, 0x3398(r24)
/* 800A58D8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A58DC  D0 18 04 FC */	stfs f0, 0x4fc(r24)
/* 800A58E0  48 00 03 CC */	b lbl_800A5CAC
lbl_800A58E4:
/* 800A58E4  7F 03 C3 78 */	mr r3, r24
/* 800A58E8  4B FF F3 59 */	bl checkCanoeStart__9daAlink_cFv
/* 800A58EC  2C 03 00 00 */	cmpwi r3, 0
/* 800A58F0  41 82 00 14 */	beq lbl_800A5904
/* 800A58F4  7F 03 C3 78 */	mr r3, r24
/* 800A58F8  38 80 00 00 */	li r4, 0
/* 800A58FC  48 04 F3 7D */	bl procCanoeJumpRideInit__9daAlink_cFP10fopAc_ac_c
/* 800A5900  48 00 03 AC */	b lbl_800A5CAC
lbl_800A5904:
/* 800A5904  7F 03 C3 78 */	mr r3, r24
/* 800A5908  4B FF F2 C1 */	bl checkBoarStart__9daAlink_cFv
/* 800A590C  2C 03 00 00 */	cmpwi r3, 0
/* 800A5910  41 82 00 2C */	beq lbl_800A593C
/* 800A5914  7F 03 C3 78 */	mr r3, r24
/* 800A5918  48 04 71 95 */	bl initForceRideBoar__9daAlink_cFv
/* 800A591C  2C 03 00 00 */	cmpwi r3, 0
/* 800A5920  40 82 00 10 */	bne lbl_800A5930
/* 800A5924  7F 03 C3 78 */	mr r3, r24
/* 800A5928  48 01 DA 91 */	bl procWaitInit__9daAlink_cFv
/* 800A592C  48 00 03 80 */	b lbl_800A5CAC
lbl_800A5930:
/* 800A5930  7F 03 C3 78 */	mr r3, r24
/* 800A5934  48 04 B0 4D */	bl procHorseWaitInit__9daAlink_cFv
/* 800A5938  48 00 03 74 */	b lbl_800A5CAC
lbl_800A593C:
/* 800A593C  2C 1C 00 05 */	cmpwi r28, 5
/* 800A5940  41 82 00 24 */	beq lbl_800A5964
/* 800A5944  38 1C FF F3 */	addi r0, r28, -13
/* 800A5948  28 00 00 01 */	cmplwi r0, 1
/* 800A594C  40 81 00 18 */	ble lbl_800A5964
/* 800A5950  38 1C FF FF */	addi r0, r28, -1
/* 800A5954  28 00 00 02 */	cmplwi r0, 2
/* 800A5958  40 81 00 0C */	ble lbl_800A5964
/* 800A595C  2C 1C 00 00 */	cmpwi r28, 0
/* 800A5960  40 82 03 44 */	bne lbl_800A5CA4
lbl_800A5964:
/* 800A5964  2C 1C 00 03 */	cmpwi r28, 3
/* 800A5968  40 82 00 24 */	bne lbl_800A598C
/* 800A596C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A5970  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A5974  A8 03 0D D4 */	lha r0, 0xdd4(r3)
/* 800A5978  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 800A597C  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 800A5980  B0 18 04 DE */	sth r0, 0x4de(r24)
/* 800A5984  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 800A5988  B0 18 2F E6 */	sth r0, 0x2fe6(r24)
lbl_800A598C:
/* 800A598C  80 18 31 88 */	lwz r0, 0x3188(r24)
/* 800A5990  2C 00 00 FF */	cmpwi r0, 0xff
/* 800A5994  40 82 03 04 */	bne lbl_800A5C98
/* 800A5998  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800A599C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800A59A0  40 82 00 1C */	bne lbl_800A59BC
/* 800A59A4  2C 1C 00 00 */	cmpwi r28, 0
/* 800A59A8  41 82 00 14 */	beq lbl_800A59BC
/* 800A59AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A59B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A59B4  C0 03 0D CC */	lfs f0, 0xdcc(r3)
/* 800A59B8  D0 18 33 98 */	stfs f0, 0x3398(r24)
lbl_800A59BC:
/* 800A59BC  38 00 00 04 */	li r0, 4
/* 800A59C0  B0 18 06 04 */	sth r0, 0x604(r24)
/* 800A59C4  38 00 00 0E */	li r0, 0xe
/* 800A59C8  90 18 06 14 */	stw r0, 0x614(r24)
/* 800A59CC  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 800A59D0  B0 18 06 06 */	sth r0, 0x606(r24)
/* 800A59D4  38 00 00 23 */	li r0, 0x23
/* 800A59D8  B0 18 06 08 */	sth r0, 0x608(r24)
/* 800A59DC  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800A59E0  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800A59E4  41 82 00 AC */	beq lbl_800A5A90
/* 800A59E8  83 3E 5D B8 */	lwz r25, 0x5db8(r30)
/* 800A59EC  38 00 00 03 */	li r0, 3
/* 800A59F0  98 19 16 B8 */	stb r0, 0x16b8(r25)
/* 800A59F4  38 60 00 00 */	li r3, 0
/* 800A59F8  90 79 17 28 */	stw r3, 0x1728(r25)
/* 800A59FC  38 00 00 06 */	li r0, 6
/* 800A5A00  90 19 17 40 */	stw r0, 0x1740(r25)
/* 800A5A04  90 79 17 28 */	stw r3, 0x1728(r25)
/* 800A5A08  2C 1C 00 02 */	cmpwi r28, 2
/* 800A5A0C  40 82 00 54 */	bne lbl_800A5A60
/* 800A5A10  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A5A14  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A5A18  38 63 04 55 */	addi r3, r3, 0x455
/* 800A5A1C  4B FF 80 45 */	bl checkStageName__9daAlink_cFPCc
/* 800A5A20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A5A24  41 82 00 30 */	beq lbl_800A5A54
/* 800A5A28  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 800A5A2C  7C 00 07 75 */	extsb. r0, r0
/* 800A5A30  40 82 00 24 */	bne lbl_800A5A54
/* 800A5A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A5A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A5A3C  A8 03 0D B8 */	lha r0, 0xdb8(r3)
/* 800A5A40  2C 00 00 23 */	cmpwi r0, 0x23
/* 800A5A44  40 82 00 10 */	bne lbl_800A5A54
/* 800A5A48  C0 19 17 8C */	lfs f0, 0x178c(r25)
/* 800A5A4C  D0 19 05 2C */	stfs f0, 0x52c(r25)
/* 800A5A50  48 00 00 34 */	b lbl_800A5A84
lbl_800A5A54:
/* 800A5A54  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A5A58  D0 19 05 2C */	stfs f0, 0x52c(r25)
/* 800A5A5C  48 00 00 28 */	b lbl_800A5A84
lbl_800A5A60:
/* 800A5A60  2C 1C 00 01 */	cmpwi r28, 1
/* 800A5A64  40 82 00 10 */	bne lbl_800A5A74
/* 800A5A68  C0 19 17 64 */	lfs f0, 0x1764(r25)
/* 800A5A6C  D0 19 05 2C */	stfs f0, 0x52c(r25)
/* 800A5A70  48 00 00 14 */	b lbl_800A5A84
lbl_800A5A74:
/* 800A5A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A5A78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A5A7C  C0 03 0D CC */	lfs f0, 0xdcc(r3)
/* 800A5A80  D0 19 05 2C */	stfs f0, 0x52c(r25)
lbl_800A5A84:
/* 800A5A84  7F 03 C3 78 */	mr r3, r24
/* 800A5A88  48 04 AE F9 */	bl procHorseWaitInit__9daAlink_cFv
/* 800A5A8C  48 00 02 20 */	b lbl_800A5CAC
lbl_800A5A90:
/* 800A5A90  7F 03 C3 78 */	mr r3, r24
/* 800A5A94  38 80 00 01 */	li r4, 1
/* 800A5A98  48 05 D0 85 */	bl checkSwimAction__9daAlink_cFi
/* 800A5A9C  2C 03 00 00 */	cmpwi r3, 0
/* 800A5AA0  41 82 00 9C */	beq lbl_800A5B3C
/* 800A5AA4  2C 1C 00 01 */	cmpwi r28, 1
/* 800A5AA8  40 82 00 3C */	bne lbl_800A5AE4
/* 800A5AAC  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800A5AB0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A5AB4  41 82 00 1C */	beq lbl_800A5AD0
/* 800A5AB8  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800A5ABC  38 7D 22 5C */	addi r3, r29, 0x225c
/* 800A5AC0  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 800A5AC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A5AC8  D0 18 33 98 */	stfs f0, 0x3398(r24)
/* 800A5ACC  48 00 00 18 */	b lbl_800A5AE4
lbl_800A5AD0:
/* 800A5AD0  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800A5AD4  38 7D 16 D4 */	addi r3, r29, 0x16d4
/* 800A5AD8  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 800A5ADC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A5AE0  D0 18 33 98 */	stfs f0, 0x3398(r24)
lbl_800A5AE4:
/* 800A5AE4  C0 18 33 98 */	lfs f0, 0x3398(r24)
/* 800A5AE8  D0 18 05 2C */	stfs f0, 0x52c(r24)
/* 800A5AEC  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800A5AF0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A5AF4  41 82 00 10 */	beq lbl_800A5B04
/* 800A5AF8  7F 03 C3 78 */	mr r3, r24
/* 800A5AFC  48 09 2C 21 */	bl procWolfSwimMoveInit__9daAlink_cFv
/* 800A5B00  48 00 00 30 */	b lbl_800A5B30
lbl_800A5B04:
/* 800A5B04  C0 38 33 98 */	lfs f1, 0x3398(r24)
/* 800A5B08  38 7D 16 D4 */	addi r3, r29, 0x16d4
/* 800A5B0C  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 800A5B10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A5B14  40 80 00 14 */	bge lbl_800A5B28
/* 800A5B18  7F 03 C3 78 */	mr r3, r24
/* 800A5B1C  38 80 00 00 */	li r4, 0
/* 800A5B20  48 05 E7 D9 */	bl procSwimWaitInit__9daAlink_cFi
/* 800A5B24  48 00 00 0C */	b lbl_800A5B30
lbl_800A5B28:
/* 800A5B28  7F 03 C3 78 */	mr r3, r24
/* 800A5B2C  48 05 EB 45 */	bl procSwimMoveInit__9daAlink_cFv
lbl_800A5B30:
/* 800A5B30  38 00 00 00 */	li r0, 0
/* 800A5B34  98 18 2F 99 */	stb r0, 0x2f99(r24)
/* 800A5B38  48 00 01 74 */	b lbl_800A5CAC
lbl_800A5B3C:
/* 800A5B3C  2C 1C 00 01 */	cmpwi r28, 1
/* 800A5B40  40 82 00 60 */	bne lbl_800A5BA0
/* 800A5B44  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800A5B48  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A5B4C  41 82 00 2C */	beq lbl_800A5B78
/* 800A5B50  38 7D 17 D0 */	addi r3, r29, 0x17d0
/* 800A5B54  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 800A5B58  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 800A5B5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A5B60  D0 18 33 98 */	stfs f0, 0x3398(r24)
/* 800A5B64  C0 18 33 98 */	lfs f0, 0x3398(r24)
/* 800A5B68  D0 18 05 2C */	stfs f0, 0x52c(r24)
/* 800A5B6C  7F 03 C3 78 */	mr r3, r24
/* 800A5B70  48 08 78 11 */	bl procWolfMoveInit__9daAlink_cFv
/* 800A5B74  48 00 01 38 */	b lbl_800A5CAC
lbl_800A5B78:
/* 800A5B78  38 7D 00 64 */	addi r3, r29, 0x64
/* 800A5B7C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 800A5B80  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800A5B84  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A5B88  D0 18 33 98 */	stfs f0, 0x3398(r24)
/* 800A5B8C  C0 18 33 98 */	lfs f0, 0x3398(r24)
/* 800A5B90  D0 18 05 2C */	stfs f0, 0x52c(r24)
/* 800A5B94  7F 03 C3 78 */	mr r3, r24
/* 800A5B98  48 01 DB 35 */	bl procMoveInit__9daAlink_cFv
/* 800A5B9C  48 00 01 10 */	b lbl_800A5CAC
lbl_800A5BA0:
/* 800A5BA0  2C 1C 00 00 */	cmpwi r28, 0
/* 800A5BA4  40 82 00 10 */	bne lbl_800A5BB4
/* 800A5BA8  7F 03 C3 78 */	mr r3, r24
/* 800A5BAC  48 00 FD 41 */	bl checkWaitAction__9daAlink_cFv
/* 800A5BB0  48 00 00 FC */	b lbl_800A5CAC
lbl_800A5BB4:
/* 800A5BB4  28 1B 00 02 */	cmplwi r27, 2
/* 800A5BB8  41 82 00 0C */	beq lbl_800A5BC4
/* 800A5BBC  28 1B 00 03 */	cmplwi r27, 3
/* 800A5BC0  40 82 00 74 */	bne lbl_800A5C34
lbl_800A5BC4:
/* 800A5BC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A5BC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A5BCC  C0 03 0D CC */	lfs f0, 0xdcc(r3)
/* 800A5BD0  D0 18 06 18 */	stfs f0, 0x618(r24)
/* 800A5BD4  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 800A5BD8  B0 18 2F E2 */	sth r0, 0x2fe2(r24)
/* 800A5BDC  28 1B 00 03 */	cmplwi r27, 3
/* 800A5BE0  40 82 00 24 */	bne lbl_800A5C04
/* 800A5BE4  A8 78 04 E6 */	lha r3, 0x4e6(r24)
/* 800A5BE8  3C 63 00 01 */	addis r3, r3, 1
/* 800A5BEC  38 03 80 00 */	addi r0, r3, -32768
/* 800A5BF0  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 800A5BF4  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 800A5BF8  B0 18 04 DE */	sth r0, 0x4de(r24)
/* 800A5BFC  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 800A5C00  B0 18 2F E6 */	sth r0, 0x2fe6(r24)
lbl_800A5C04:
/* 800A5C04  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800A5C08  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A5C0C  41 82 00 14 */	beq lbl_800A5C20
/* 800A5C10  7F 03 C3 78 */	mr r3, r24
/* 800A5C14  38 80 00 00 */	li r4, 0
/* 800A5C18  48 09 1A 1D */	bl procWolfLieMoveInit__9daAlink_cFi
/* 800A5C1C  48 00 00 90 */	b lbl_800A5CAC
lbl_800A5C20:
/* 800A5C20  7F 03 C3 78 */	mr r3, r24
/* 800A5C24  38 80 00 00 */	li r4, 0
/* 800A5C28  38 A0 00 00 */	li r5, 0
/* 800A5C2C  48 05 38 49 */	bl procCrawlMoveInit__9daAlink_cFss
/* 800A5C30  48 00 00 7C */	b lbl_800A5CAC
lbl_800A5C34:
/* 800A5C34  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800A5C38  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A5C3C  41 82 00 30 */	beq lbl_800A5C6C
/* 800A5C40  C0 18 33 98 */	lfs f0, 0x3398(r24)
/* 800A5C44  38 7D 17 D0 */	addi r3, r29, 0x17d0
/* 800A5C48  C0 23 00 64 */	lfs f1, 0x64(r3)
/* 800A5C4C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800A5C50  40 81 00 08 */	ble lbl_800A5C58
/* 800A5C54  D0 38 33 98 */	stfs f1, 0x3398(r24)
lbl_800A5C58:
/* 800A5C58  C0 18 33 98 */	lfs f0, 0x3398(r24)
/* 800A5C5C  D0 18 05 2C */	stfs f0, 0x52c(r24)
/* 800A5C60  7F 03 C3 78 */	mr r3, r24
/* 800A5C64  48 08 77 1D */	bl procWolfMoveInit__9daAlink_cFv
/* 800A5C68  48 00 00 44 */	b lbl_800A5CAC
lbl_800A5C6C:
/* 800A5C6C  C0 18 33 98 */	lfs f0, 0x3398(r24)
/* 800A5C70  38 7D 00 64 */	addi r3, r29, 0x64
/* 800A5C74  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 800A5C78  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800A5C7C  40 81 00 08 */	ble lbl_800A5C84
/* 800A5C80  D0 38 33 98 */	stfs f1, 0x3398(r24)
lbl_800A5C84:
/* 800A5C84  C0 18 33 98 */	lfs f0, 0x3398(r24)
/* 800A5C88  D0 18 05 2C */	stfs f0, 0x52c(r24)
/* 800A5C8C  7F 03 C3 78 */	mr r3, r24
/* 800A5C90  48 01 DA 3D */	bl procMoveInit__9daAlink_cFv
/* 800A5C94  48 00 00 18 */	b lbl_800A5CAC
lbl_800A5C98:
/* 800A5C98  7F 03 C3 78 */	mr r3, r24
/* 800A5C9C  48 00 FC 51 */	bl checkWaitAction__9daAlink_cFv
/* 800A5CA0  48 00 00 0C */	b lbl_800A5CAC
lbl_800A5CA4:
/* 800A5CA4  7F 03 C3 78 */	mr r3, r24
/* 800A5CA8  48 00 FC 45 */	bl checkWaitAction__9daAlink_cFv
lbl_800A5CAC:
/* 800A5CAC  7F 43 D3 78 */	mr r3, r26
/* 800A5CB0  39 61 00 30 */	addi r11, r1, 0x30
/* 800A5CB4  48 2B C5 61 */	bl _restgpr_24
/* 800A5CB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A5CBC  7C 08 03 A6 */	mtlr r0
/* 800A5CC0  38 21 00 30 */	addi r1, r1, 0x30
/* 800A5CC4  4E 80 00 20 */	blr 
