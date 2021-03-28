lbl_80493518:
/* 80493518  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049351C  7C 08 02 A6 */	mflr r0
/* 80493520  90 01 00 24 */	stw r0, 0x24(r1)
/* 80493524  39 61 00 20 */	addi r11, r1, 0x20
/* 80493528  4B EC EC B4 */	b _savegpr_29
/* 8049352C  7C 7E 1B 78 */	mr r30, r3
/* 80493530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80493534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80493538  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8049353C  7F E3 FB 78 */	mr r3, r31
/* 80493540  80 9E 07 4C */	lwz r4, 0x74c(r30)
/* 80493544  3C A0 80 49 */	lis r5, action_table@ha
/* 80493548  38 A5 65 C8 */	addi r5, r5, action_table@l
/* 8049354C  38 C0 00 05 */	li r6, 5
/* 80493550  38 E0 00 00 */	li r7, 0
/* 80493554  39 00 00 00 */	li r8, 0
/* 80493558  4B BB 48 B8 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8049355C  7C 7D 1B 78 */	mr r29, r3
/* 80493560  7F E3 FB 78 */	mr r3, r31
/* 80493564  80 9E 07 4C */	lwz r4, 0x74c(r30)
/* 80493568  4B BB 47 E4 */	b getIsAddvance__16dEvent_manager_cFi
/* 8049356C  2C 03 00 00 */	cmpwi r3, 0
/* 80493570  41 82 00 C8 */	beq lbl_80493638
/* 80493574  38 00 00 00 */	li r0, 0
/* 80493578  98 1E 07 58 */	stb r0, 0x758(r30)
/* 8049357C  2C 1D 00 03 */	cmpwi r29, 3
/* 80493580  41 82 00 90 */	beq lbl_80493610
/* 80493584  40 80 00 14 */	bge lbl_80493598
/* 80493588  2C 1D 00 01 */	cmpwi r29, 1
/* 8049358C  41 82 00 18 */	beq lbl_804935A4
/* 80493590  40 80 00 34 */	bge lbl_804935C4
/* 80493594  48 00 00 A4 */	b lbl_80493638
lbl_80493598:
/* 80493598  2C 1D 00 05 */	cmpwi r29, 5
/* 8049359C  40 80 00 9C */	bge lbl_80493638
/* 804935A0  48 00 00 90 */	b lbl_80493630
lbl_804935A4:
/* 804935A4  7F C3 F3 78 */	mr r3, r30
/* 804935A8  48 00 03 FD */	bl OpenInit__8daTbox_cFv
/* 804935AC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804935B0  54 04 D6 BE */	rlwinm r4, r0, 0x1a, 0x1a, 0x1f
/* 804935B4  38 60 00 00 */	li r3, 0
/* 804935B8  38 A0 00 01 */	li r5, 1
/* 804935BC  4B C0 8C 34 */	b offStatus__7dTres_cFUcii
/* 804935C0  48 00 00 78 */	b lbl_80493638
lbl_804935C4:
/* 804935C4  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 804935C8  60 00 00 20 */	ori r0, r0, 0x20
/* 804935CC  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 804935D0  3C 60 80 49 */	lis r3, lit_5135@ha
/* 804935D4  C0 03 63 10 */	lfs f0, lit_5135@l(r3)
/* 804935D8  D0 1E 07 50 */	stfs f0, 0x750(r30)
/* 804935DC  7F C3 F3 78 */	mr r3, r30
/* 804935E0  4B FF DE 3D */	bl setDzb__8daTbox_cFv
/* 804935E4  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 804935E8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804935EC  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 804935F0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804935F4  54 04 D6 BE */	rlwinm r4, r0, 0x1a, 0x1a, 0x1f
/* 804935F8  38 60 00 00 */	li r3, 0
/* 804935FC  38 A0 00 01 */	li r5, 1
/* 80493600  4B C0 8B 68 */	b onStatus__7dTres_cFUcii
/* 80493604  7F C3 F3 78 */	mr r3, r30
/* 80493608  4B FF FD 31 */	bl demoInitAppear__8daTbox_cFv
/* 8049360C  48 00 00 2C */	b lbl_80493638
lbl_80493610:
/* 80493610  7F C3 F3 78 */	mr r3, r30
/* 80493614  48 00 02 25 */	bl OpenInit_com__8daTbox_cFv
/* 80493618  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8049361C  54 04 D6 BE */	rlwinm r4, r0, 0x1a, 0x1a, 0x1f
/* 80493620  38 60 00 00 */	li r3, 0
/* 80493624  38 A0 00 01 */	li r5, 1
/* 80493628  4B C0 8B C8 */	b offStatus__7dTres_cFUcii
/* 8049362C  48 00 00 0C */	b lbl_80493638
lbl_80493630:
/* 80493630  38 00 00 07 */	li r0, 7
/* 80493634  B0 1E 09 CA */	sth r0, 0x9ca(r30)
lbl_80493638:
/* 80493638  2C 1D 00 03 */	cmpwi r29, 3
/* 8049363C  41 82 00 C0 */	beq lbl_804936FC
/* 80493640  40 80 00 14 */	bge lbl_80493654
/* 80493644  2C 1D 00 01 */	cmpwi r29, 1
/* 80493648  41 82 00 2C */	beq lbl_80493674
/* 8049364C  40 80 00 14 */	bge lbl_80493660
/* 80493650  48 00 01 98 */	b lbl_804937E8
lbl_80493654:
/* 80493654  2C 1D 00 05 */	cmpwi r29, 5
/* 80493658  40 80 01 90 */	bge lbl_804937E8
/* 8049365C  48 00 01 28 */	b lbl_80493784
lbl_80493660:
/* 80493660  7F C3 F3 78 */	mr r3, r30
/* 80493664  4B FF FE 21 */	bl demoProcAppear__8daTbox_cFv
/* 80493668  7F C3 F3 78 */	mr r3, r30
/* 8049366C  4B FF DE 19 */	bl surfaceProc__8daTbox_cFv
/* 80493670  48 00 01 84 */	b lbl_804937F4
lbl_80493674:
/* 80493674  88 1E 07 58 */	lbz r0, 0x758(r30)
/* 80493678  28 00 00 00 */	cmplwi r0, 0
/* 8049367C  41 82 00 14 */	beq lbl_80493690
/* 80493680  7F E3 FB 78 */	mr r3, r31
/* 80493684  80 9E 07 4C */	lwz r4, 0x74c(r30)
/* 80493688  4B BB 4A F4 */	b cutEnd__16dEvent_manager_cFi
/* 8049368C  48 00 00 60 */	b lbl_804936EC
lbl_80493690:
/* 80493690  88 1E 09 7E */	lbz r0, 0x97e(r30)
/* 80493694  28 00 00 00 */	cmplwi r0, 0
/* 80493698  41 82 00 28 */	beq lbl_804936C0
/* 8049369C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804936A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804936A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804936A8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804936AC  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 804936B0  7D 89 03 A6 */	mtctr r12
/* 804936B4  4E 80 04 21 */	bctrl 
/* 804936B8  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 804936BC  D0 23 00 10 */	stfs f1, 0x10(r3)
lbl_804936C0:
/* 804936C0  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 804936C4  4B B7 9D 64 */	b play__14mDoExt_baseAnmFv
/* 804936C8  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 804936CC  88 03 00 05 */	lbz r0, 5(r3)
/* 804936D0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804936D4  41 82 00 18 */	beq lbl_804936EC
/* 804936D8  38 00 00 01 */	li r0, 1
/* 804936DC  98 1E 07 58 */	stb r0, 0x758(r30)
/* 804936E0  7F E3 FB 78 */	mr r3, r31
/* 804936E4  80 9E 07 4C */	lwz r4, 0x74c(r30)
/* 804936E8  4B BB 4A 94 */	b cutEnd__16dEvent_manager_cFi
lbl_804936EC:
/* 804936EC  88 7E 09 7E */	lbz r3, 0x97e(r30)
/* 804936F0  38 03 00 01 */	addi r0, r3, 1
/* 804936F4  98 1E 09 7E */	stb r0, 0x97e(r30)
/* 804936F8  48 00 00 FC */	b lbl_804937F4
lbl_804936FC:
/* 804936FC  88 1E 07 58 */	lbz r0, 0x758(r30)
/* 80493700  28 00 00 00 */	cmplwi r0, 0
/* 80493704  41 82 00 14 */	beq lbl_80493718
/* 80493708  7F E3 FB 78 */	mr r3, r31
/* 8049370C  80 9E 07 4C */	lwz r4, 0x74c(r30)
/* 80493710  4B BB 4A 6C */	b cutEnd__16dEvent_manager_cFi
/* 80493714  48 00 00 60 */	b lbl_80493774
lbl_80493718:
/* 80493718  88 1E 09 7E */	lbz r0, 0x97e(r30)
/* 8049371C  28 00 00 00 */	cmplwi r0, 0
/* 80493720  41 82 00 28 */	beq lbl_80493748
/* 80493724  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80493728  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049372C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80493730  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80493734  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80493738  7D 89 03 A6 */	mtctr r12
/* 8049373C  4E 80 04 21 */	bctrl 
/* 80493740  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 80493744  D0 23 00 10 */	stfs f1, 0x10(r3)
lbl_80493748:
/* 80493748  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 8049374C  4B B7 9C DC */	b play__14mDoExt_baseAnmFv
/* 80493750  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 80493754  88 03 00 05 */	lbz r0, 5(r3)
/* 80493758  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8049375C  41 82 00 18 */	beq lbl_80493774
/* 80493760  38 00 00 01 */	li r0, 1
/* 80493764  98 1E 07 58 */	stb r0, 0x758(r30)
/* 80493768  7F E3 FB 78 */	mr r3, r31
/* 8049376C  80 9E 07 4C */	lwz r4, 0x74c(r30)
/* 80493770  4B BB 4A 0C */	b cutEnd__16dEvent_manager_cFi
lbl_80493774:
/* 80493774  88 7E 09 7E */	lbz r3, 0x97e(r30)
/* 80493778  38 03 00 01 */	addi r0, r3, 1
/* 8049377C  98 1E 09 7E */	stb r0, 0x97e(r30)
/* 80493780  48 00 00 74 */	b lbl_804937F4
lbl_80493784:
/* 80493784  A8 7E 09 CA */	lha r3, 0x9ca(r30)
/* 80493788  2C 03 FF FE */	cmpwi r3, -2
/* 8049378C  40 81 00 0C */	ble lbl_80493798
/* 80493790  38 03 FF FF */	addi r0, r3, -1
/* 80493794  B0 1E 09 CA */	sth r0, 0x9ca(r30)
lbl_80493798:
/* 80493798  A8 7E 09 CA */	lha r3, 0x9ca(r30)
/* 8049379C  7C 60 07 35 */	extsh. r0, r3
/* 804937A0  40 82 00 10 */	bne lbl_804937B0
/* 804937A4  7F C3 F3 78 */	mr r3, r30
/* 804937A8  4B FF EC 61 */	bl dropProcInitCall__8daTbox_cFv
/* 804937AC  48 00 00 48 */	b lbl_804937F4
lbl_804937B0:
/* 804937B0  7C 60 07 35 */	extsh. r0, r3
/* 804937B4  40 80 00 40 */	bge lbl_804937F4
/* 804937B8  7F C3 F3 78 */	mr r3, r30
/* 804937BC  4B FF F7 95 */	bl dropProc__8daTbox_cFv
/* 804937C0  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 804937C4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804937C8  41 82 00 2C */	beq lbl_804937F4
/* 804937CC  88 1E 09 7D */	lbz r0, 0x97d(r30)
/* 804937D0  28 00 00 00 */	cmplwi r0, 0
/* 804937D4  41 82 00 20 */	beq lbl_804937F4
/* 804937D8  7F E3 FB 78 */	mr r3, r31
/* 804937DC  80 9E 07 4C */	lwz r4, 0x74c(r30)
/* 804937E0  4B BB 49 9C */	b cutEnd__16dEvent_manager_cFi
/* 804937E4  48 00 00 10 */	b lbl_804937F4
lbl_804937E8:
/* 804937E8  7F E3 FB 78 */	mr r3, r31
/* 804937EC  80 9E 07 4C */	lwz r4, 0x74c(r30)
/* 804937F0  4B BB 49 8C */	b cutEnd__16dEvent_manager_cFi
lbl_804937F4:
/* 804937F4  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 804937F8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804937FC  41 82 00 0C */	beq lbl_80493808
/* 80493800  7F C3 F3 78 */	mr r3, r30
/* 80493804  4B FF E8 A5 */	bl demoProcOpen__8daTbox_cFv
lbl_80493808:
/* 80493808  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 8049380C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80493810  41 82 00 0C */	beq lbl_8049381C
/* 80493814  C0 3E 09 F0 */	lfs f1, 0x9f0(r30)
/* 80493818  4B D1 52 2C */	b dKy_set_allcol_ratio__Ff
lbl_8049381C:
/* 8049381C  38 60 00 00 */	li r3, 0
/* 80493820  39 61 00 20 */	addi r11, r1, 0x20
/* 80493824  4B EC EA 04 */	b _restgpr_29
/* 80493828  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049382C  7C 08 03 A6 */	mtlr r0
/* 80493830  38 21 00 20 */	addi r1, r1, 0x20
/* 80493834  4E 80 00 20 */	blr 
