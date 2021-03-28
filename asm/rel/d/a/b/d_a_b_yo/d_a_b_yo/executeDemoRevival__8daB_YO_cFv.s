lbl_806352C8:
/* 806352C8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806352CC  7C 08 02 A6 */	mflr r0
/* 806352D0  90 01 00 74 */	stw r0, 0x74(r1)
/* 806352D4  39 61 00 70 */	addi r11, r1, 0x70
/* 806352D8  4B D2 CE F8 */	b _savegpr_26
/* 806352DC  7C 7C 1B 78 */	mr r28, r3
/* 806352E0  3C 80 80 64 */	lis r4, lit_3788@ha
/* 806352E4  3B E4 97 F4 */	addi r31, r4, lit_3788@l
/* 806352E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806352EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806352F0  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 806352F4  7C 00 07 74 */	extsb r0, r0
/* 806352F8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806352FC  7C 84 02 14 */	add r4, r4, r0
/* 80635300  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 80635304  80 03 0F 74 */	lwz r0, 0xf74(r3)
/* 80635308  2C 00 00 02 */	cmpwi r0, 2
/* 8063530C  41 82 01 B8 */	beq lbl_806354C4
/* 80635310  40 80 00 14 */	bge lbl_80635324
/* 80635314  2C 00 00 00 */	cmpwi r0, 0
/* 80635318  41 82 00 18 */	beq lbl_80635330
/* 8063531C  40 80 01 28 */	bge lbl_80635444
/* 80635320  48 00 03 D8 */	b lbl_806356F8
lbl_80635324:
/* 80635324  2C 00 00 04 */	cmpwi r0, 4
/* 80635328  40 80 03 D0 */	bge lbl_806356F8
/* 8063532C  48 00 02 90 */	b lbl_806355BC
lbl_80635330:
/* 80635330  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80635334  28 00 00 02 */	cmplwi r0, 2
/* 80635338  41 82 00 28 */	beq lbl_80635360
/* 8063533C  38 80 00 02 */	li r4, 2
/* 80635340  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80635344  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80635348  38 C0 00 00 */	li r6, 0
/* 8063534C  4B 9E 65 BC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80635350  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80635354  60 00 00 02 */	ori r0, r0, 2
/* 80635358  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 8063535C  48 00 04 24 */	b lbl_80635780
lbl_80635360:
/* 80635360  38 80 00 01 */	li r4, 1
/* 80635364  90 9C 0F 74 */	stw r4, 0xf74(r28)
/* 80635368  38 00 02 00 */	li r0, 0x200
/* 8063536C  B0 1C 0F 5E */	sth r0, 0xf5e(r28)
/* 80635370  38 00 00 32 */	li r0, 0x32
/* 80635374  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80635378  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8063537C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80635380  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80635384  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80635388  38 00 00 00 */	li r0, 0
/* 8063538C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80635390  38 A0 00 00 */	li r5, 0
/* 80635394  38 00 00 0A */	li r0, 0xa
/* 80635398  7C 09 03 A6 */	mtctr r0
lbl_8063539C:
/* 8063539C  A0 7C 0F 6E */	lhz r3, 0xf6e(r28)
/* 806353A0  7C 80 28 30 */	slw r0, r4, r5
/* 806353A4  7C 60 00 39 */	and. r0, r3, r0
/* 806353A8  41 82 00 10 */	beq lbl_806353B8
/* 806353AC  1C 05 19 99 */	mulli r0, r5, 0x1999
/* 806353B0  B0 1C 0F 80 */	sth r0, 0xf80(r28)
/* 806353B4  48 00 00 0C */	b lbl_806353C0
lbl_806353B8:
/* 806353B8  38 A5 00 01 */	addi r5, r5, 1
/* 806353BC  42 00 FF E0 */	bdnz lbl_8063539C
lbl_806353C0:
/* 806353C0  A8 9C 0F 80 */	lha r4, 0xf80(r28)
/* 806353C4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 806353C8  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 806353CC  7C 04 00 50 */	subf r0, r4, r0
/* 806353D0  B0 1C 0F 5C */	sth r0, 0xf5c(r28)
/* 806353D4  38 7E 02 48 */	addi r3, r30, 0x248
/* 806353D8  4B B2 C0 F8 */	b Stop__9dCamera_cFv
/* 806353DC  38 7E 02 48 */	addi r3, r30, 0x248
/* 806353E0  38 80 00 03 */	li r4, 3
/* 806353E4  4B B2 DC 28 */	b SetTrimSize__9dCamera_cFl
/* 806353E8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806353EC  D0 3C 04 D0 */	stfs f1, 0x4d0(r28)
/* 806353F0  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 806353F4  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 806353F8  D0 3C 04 D8 */	stfs f1, 0x4d8(r28)
/* 806353FC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80635400  D0 1C 07 24 */	stfs f0, 0x724(r28)
/* 80635404  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80635408  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 8063540C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80635410  D0 1C 07 2C */	stfs f0, 0x72c(r28)
/* 80635414  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80635418  D0 1C 07 28 */	stfs f0, 0x728(r28)
/* 8063541C  D0 3C 07 18 */	stfs f1, 0x718(r28)
/* 80635420  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80635424  D0 1C 07 1C */	stfs f0, 0x71c(r28)
/* 80635428  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 8063542C  D0 1C 07 20 */	stfs f0, 0x720(r28)
/* 80635430  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80635434  D0 1C 07 30 */	stfs f0, 0x730(r28)
/* 80635438  7F 83 E3 78 */	mr r3, r28
/* 8063543C  38 80 00 08 */	li r4, 8
/* 80635440  4B FF AD ED */	bl setIcicleOperate__8daB_YO_cFi
lbl_80635444:
/* 80635444  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 80635448  2C 00 00 00 */	cmpwi r0, 0
/* 8063544C  40 82 00 14 */	bne lbl_80635460
/* 80635450  38 7C 0F 5E */	addi r3, r28, 0xf5e
/* 80635454  38 80 00 00 */	li r4, 0
/* 80635458  38 A0 00 10 */	li r5, 0x10
/* 8063545C  4B C3 B7 34 */	b cLib_chaseAngleS__FPsss
lbl_80635460:
/* 80635460  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80635464  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 80635468  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063546C  40 81 02 8C */	ble lbl_806356F8
/* 80635470  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 80635474  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80635478  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8063547C  4B C3 B2 C4 */	b cLib_chaseF__FPfff
/* 80635480  2C 03 00 00 */	cmpwi r3, 0
/* 80635484  41 82 02 74 */	beq lbl_806356F8
/* 80635488  38 00 00 02 */	li r0, 2
/* 8063548C  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 80635490  38 00 00 1E */	li r0, 0x1e
/* 80635494  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80635498  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007030D@ha */
/* 8063549C  38 03 03 0D */	addi r0, r3, 0x030D /* 0x0007030D@l */
/* 806354A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806354A4  38 7C 06 34 */	addi r3, r28, 0x634
/* 806354A8  38 81 00 10 */	addi r4, r1, 0x10
/* 806354AC  38 A0 FF FF */	li r5, -1
/* 806354B0  81 9C 06 34 */	lwz r12, 0x634(r28)
/* 806354B4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806354B8  7D 89 03 A6 */	mtctr r12
/* 806354BC  4E 80 04 21 */	bctrl 
/* 806354C0  48 00 02 38 */	b lbl_806356F8
lbl_806354C4:
/* 806354C4  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 806354C8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806354CC  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806354D0  4B C3 B2 70 */	b cLib_chaseF__FPfff
/* 806354D4  38 7C 0F 4C */	addi r3, r28, 0xf4c
/* 806354D8  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 806354DC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806354E0  4B C3 B2 60 */	b cLib_chaseF__FPfff
/* 806354E4  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 806354E8  2C 00 00 00 */	cmpwi r0, 0
/* 806354EC  40 82 02 0C */	bne lbl_806356F8
/* 806354F0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 806354F4  D0 1C 0F 4C */	stfs f0, 0xf4c(r28)
/* 806354F8  3B 60 00 00 */	li r27, 0
/* 806354FC  B3 7C 0F 6E */	sth r27, 0xf6e(r28)
/* 80635500  9B 7C 0F B0 */	stb r27, 0xfb0(r28)
/* 80635504  3B A0 00 00 */	li r29, 0
lbl_80635508:
/* 80635508  38 00 00 00 */	li r0, 0
/* 8063550C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80635510  3B 5B 06 08 */	addi r26, r27, 0x608
/* 80635514  7C 7C D0 2E */	lwzx r3, r28, r26
/* 80635518  3C 03 00 01 */	addis r0, r3, 1
/* 8063551C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80635520  41 82 00 0C */	beq lbl_8063552C
/* 80635524  38 81 00 18 */	addi r4, r1, 0x18
/* 80635528  4B 9E 44 94 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
lbl_8063552C:
/* 8063552C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80635530  28 03 00 00 */	cmplwi r3, 0
/* 80635534  40 82 00 4C */	bne lbl_80635580
/* 80635538  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8063553C  7C 07 07 74 */	extsb r7, r0
/* 80635540  38 00 00 00 */	li r0, 0
/* 80635544  90 01 00 08 */	stw r0, 8(r1)
/* 80635548  38 60 02 12 */	li r3, 0x212
/* 8063554C  28 1C 00 00 */	cmplwi r28, 0
/* 80635550  41 82 00 0C */	beq lbl_8063555C
/* 80635554  80 9C 00 04 */	lwz r4, 4(r28)
/* 80635558  48 00 00 08 */	b lbl_80635560
lbl_8063555C:
/* 8063555C  38 80 FF FF */	li r4, -1
lbl_80635560:
/* 80635560  67 A5 00 02 */	oris r5, r29, 2
/* 80635564  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 80635568  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 8063556C  39 20 00 00 */	li r9, 0
/* 80635570  39 40 FF FF */	li r10, -1
/* 80635574  4B 9E 49 7C */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80635578  7C 7C D1 2E */	stwx r3, r28, r26
/* 8063557C  48 00 00 10 */	b lbl_8063558C
lbl_80635580:
/* 80635580  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80635584  60 00 40 00 */	ori r0, r0, 0x4000
/* 80635588  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_8063558C:
/* 8063558C  88 7C 0F B0 */	lbz r3, 0xfb0(r28)
/* 80635590  38 03 00 01 */	addi r0, r3, 1
/* 80635594  98 1C 0F B0 */	stb r0, 0xfb0(r28)
/* 80635598  3B BD 00 01 */	addi r29, r29, 1
/* 8063559C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 806355A0  3B 7B 00 04 */	addi r27, r27, 4
/* 806355A4  41 80 FF 64 */	blt lbl_80635508
/* 806355A8  38 00 00 03 */	li r0, 3
/* 806355AC  90 1C 0F 74 */	stw r0, 0xf74(r28)
/* 806355B0  38 00 00 3C */	li r0, 0x3c
/* 806355B4  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 806355B8  48 00 01 40 */	b lbl_806356F8
lbl_806355BC:
/* 806355BC  38 7C 0F 5E */	addi r3, r28, 0xf5e
/* 806355C0  38 80 04 00 */	li r4, 0x400
/* 806355C4  38 A0 00 10 */	li r5, 0x10
/* 806355C8  4B C3 B5 C8 */	b cLib_chaseAngleS__FPsss
/* 806355CC  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 806355D0  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 806355D4  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806355D8  4B C3 B1 68 */	b cLib_chaseF__FPfff
/* 806355DC  7F 83 E3 78 */	mr r3, r28
/* 806355E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806355E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806355E8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806355EC  4B 9E 51 24 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806355F0  7C 64 1B 78 */	mr r4, r3
/* 806355F4  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806355F8  38 A0 00 20 */	li r5, 0x20
/* 806355FC  38 C0 00 40 */	li r6, 0x40
/* 80635600  38 E0 00 04 */	li r7, 4
/* 80635604  4B C3 AF 3C */	b cLib_addCalcAngleS__FPsssss
/* 80635608  80 1C 0F 8C */	lwz r0, 0xf8c(r28)
/* 8063560C  2C 00 00 00 */	cmpwi r0, 0
/* 80635610  40 82 00 E8 */	bne lbl_806356F8
/* 80635614  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80635618  4B C3 23 3C */	b cM_rndF__Ff
/* 8063561C  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80635620  EC 00 08 2A */	fadds f0, f0, f1
/* 80635624  FC 00 00 1E */	fctiwz f0, f0
/* 80635628  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8063562C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80635630  90 1C 0F 8C */	stw r0, 0xf8c(r28)
/* 80635634  3B 40 00 00 */	li r26, 0
/* 80635638  3B A0 00 00 */	li r29, 0
lbl_8063563C:
/* 8063563C  38 1D 06 08 */	addi r0, r29, 0x608
/* 80635640  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80635644  3C 03 00 01 */	addis r0, r3, 1
/* 80635648  28 00 FF FF */	cmplwi r0, 0xffff
/* 8063564C  41 82 00 24 */	beq lbl_80635670
/* 80635650  38 81 00 14 */	addi r4, r1, 0x14
/* 80635654  4B 9E 43 68 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80635658  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8063565C  28 03 00 00 */	cmplwi r3, 0
/* 80635660  41 82 00 10 */	beq lbl_80635670
/* 80635664  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80635668  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8063566C  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80635670:
/* 80635670  3B 5A 00 01 */	addi r26, r26, 1
/* 80635674  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80635678  3B BD 00 04 */	addi r29, r29, 4
/* 8063567C  41 80 FF C0 */	blt lbl_8063563C
/* 80635680  7F 83 E3 78 */	mr r3, r28
/* 80635684  38 80 00 03 */	li r4, 3
/* 80635688  38 A0 00 02 */	li r5, 2
/* 8063568C  4B FF A7 81 */	bl setActionMode__8daB_YO_cFii
/* 80635690  C0 1C 07 24 */	lfs f0, 0x724(r28)
/* 80635694  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80635698  C0 1C 07 28 */	lfs f0, 0x728(r28)
/* 8063569C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806356A0  C0 1C 07 2C */	lfs f0, 0x72c(r28)
/* 806356A4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806356A8  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 806356AC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806356B0  C0 1C 07 1C */	lfs f0, 0x71c(r28)
/* 806356B4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806356B8  C0 1C 07 20 */	lfs f0, 0x720(r28)
/* 806356BC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806356C0  38 7E 02 48 */	addi r3, r30, 0x248
/* 806356C4  38 81 00 40 */	addi r4, r1, 0x40
/* 806356C8  38 A1 00 34 */	addi r5, r1, 0x34
/* 806356CC  4B B4 B5 4C */	b Reset__9dCamera_cF4cXyz4cXyz
/* 806356D0  38 7E 02 48 */	addi r3, r30, 0x248
/* 806356D4  4B B2 BD D8 */	b Start__9dCamera_cFv
/* 806356D8  38 7E 02 48 */	addi r3, r30, 0x248
/* 806356DC  38 80 00 00 */	li r4, 0
/* 806356E0  4B B2 D9 2C */	b SetTrimSize__9dCamera_cFl
/* 806356E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806356E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806356EC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806356F0  4B A0 CD 78 */	b reset__14dEvt_control_cFv
/* 806356F4  48 00 00 8C */	b lbl_80635780
lbl_806356F8:
/* 806356F8  A8 7C 0F 5C */	lha r3, 0xf5c(r28)
/* 806356FC  A8 1C 0F 5E */	lha r0, 0xf5e(r28)
/* 80635700  7C 03 02 14 */	add r0, r3, r0
/* 80635704  B0 1C 0F 5C */	sth r0, 0xf5c(r28)
/* 80635708  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8063570C  D0 1C 0F 34 */	stfs f0, 0xf34(r28)
/* 80635710  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80635714  D0 1C 0F 38 */	stfs f0, 0xf38(r28)
/* 80635718  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8063571C  D0 1C 0F 3C */	stfs f0, 0xf3c(r28)
/* 80635720  C0 3C 0F 38 */	lfs f1, 0xf38(r28)
/* 80635724  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80635728  EC 01 00 2A */	fadds f0, f1, f0
/* 8063572C  D0 1C 0F 38 */	stfs f0, 0xf38(r28)
/* 80635730  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80635734  D0 1C 0F 50 */	stfs f0, 0xf50(r28)
/* 80635738  C0 1C 07 24 */	lfs f0, 0x724(r28)
/* 8063573C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80635740  C0 1C 07 28 */	lfs f0, 0x728(r28)
/* 80635744  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80635748  C0 1C 07 2C */	lfs f0, 0x72c(r28)
/* 8063574C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80635750  C0 1C 07 18 */	lfs f0, 0x718(r28)
/* 80635754  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80635758  C0 1C 07 1C */	lfs f0, 0x71c(r28)
/* 8063575C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80635760  C0 1C 07 20 */	lfs f0, 0x720(r28)
/* 80635764  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80635768  38 7E 02 48 */	addi r3, r30, 0x248
/* 8063576C  38 81 00 28 */	addi r4, r1, 0x28
/* 80635770  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80635774  C0 3C 07 30 */	lfs f1, 0x730(r28)
/* 80635778  38 C0 00 00 */	li r6, 0
/* 8063577C  4B B4 B3 64 */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_80635780:
/* 80635780  39 61 00 70 */	addi r11, r1, 0x70
/* 80635784  4B D2 CA 98 */	b _restgpr_26
/* 80635788  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8063578C  7C 08 03 A6 */	mtlr r0
/* 80635790  38 21 00 70 */	addi r1, r1, 0x70
/* 80635794  4E 80 00 20 */	blr 
