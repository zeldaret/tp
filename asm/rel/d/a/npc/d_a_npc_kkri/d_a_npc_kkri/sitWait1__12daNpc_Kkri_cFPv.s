lbl_80551538:
/* 80551538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055153C  7C 08 02 A6 */	mflr r0
/* 80551540  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551544  39 61 00 20 */	addi r11, r1, 0x20
/* 80551548  4B E1 0C 90 */	b _savegpr_28
/* 8055154C  7C 7D 1B 78 */	mr r29, r3
/* 80551550  3C 60 80 55 */	lis r3, m__18daNpc_Kkri_Param_c@ha
/* 80551554  3B E3 34 90 */	addi r31, r3, m__18daNpc_Kkri_Param_c@l
/* 80551558  3B C0 00 00 */	li r30, 0
/* 8055155C  A0 1D 0E 22 */	lhz r0, 0xe22(r29)
/* 80551560  2C 00 00 02 */	cmpwi r0, 2
/* 80551564  41 82 00 90 */	beq lbl_805515F4
/* 80551568  40 80 04 C8 */	bge lbl_80551A30
/* 8055156C  2C 00 00 00 */	cmpwi r0, 0
/* 80551570  40 80 00 0C */	bge lbl_8055157C
/* 80551574  48 00 04 BC */	b lbl_80551A30
/* 80551578  48 00 04 B8 */	b lbl_80551A30
lbl_8055157C:
/* 8055157C  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80551580  2C 00 00 00 */	cmpwi r0, 0
/* 80551584  40 82 00 70 */	bne lbl_805515F4
/* 80551588  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8055158C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80551590  41 82 00 24 */	beq lbl_805515B4
/* 80551594  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80551598  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8055159C  4B BF 42 FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805515A0  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 805515A4  38 00 00 0E */	li r0, 0xe
/* 805515A8  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 805515AC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 805515B0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_805515B4:
/* 805515B4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 805515B8  2C 00 00 00 */	cmpwi r0, 0
/* 805515BC  41 82 00 24 */	beq lbl_805515E0
/* 805515C0  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 805515C4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 805515C8  4B BF 42 D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805515CC  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 805515D0  38 00 00 00 */	li r0, 0
/* 805515D4  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 805515D8  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 805515DC  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_805515E0:
/* 805515E0  38 00 00 00 */	li r0, 0
/* 805515E4  98 1D 0F D6 */	stb r0, 0xfd6(r29)
/* 805515E8  90 1D 0F D0 */	stw r0, 0xfd0(r29)
/* 805515EC  38 00 00 02 */	li r0, 2
/* 805515F0  B0 1D 0E 22 */	sth r0, 0xe22(r29)
lbl_805515F4:
/* 805515F4  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 805515F8  28 00 00 00 */	cmplwi r0, 0
/* 805515FC  40 82 01 74 */	bne lbl_80551770
/* 80551600  88 1D 0F D5 */	lbz r0, 0xfd5(r29)
/* 80551604  28 00 00 00 */	cmplwi r0, 0
/* 80551608  41 82 00 28 */	beq lbl_80551630
/* 8055160C  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 80551610  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80551614  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80551618  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8055161C  4B BF 40 C4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80551620  38 00 00 01 */	li r0, 1
/* 80551624  98 1D 0E 32 */	stb r0, 0xe32(r29)
/* 80551628  98 1D 0E 33 */	stb r0, 0xe33(r29)
/* 8055162C  48 00 01 44 */	b lbl_80551770
lbl_80551630:
/* 80551630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80551634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80551638  38 63 09 78 */	addi r3, r3, 0x978
/* 8055163C  38 80 00 01 */	li r4, 1
/* 80551640  4B AE 35 A8 */	b isSwitch__12dSv_danBit_cCFi
/* 80551644  2C 03 00 00 */	cmpwi r3, 0
/* 80551648  41 82 00 E8 */	beq lbl_80551730
/* 8055164C  38 60 01 59 */	li r3, 0x159
/* 80551650  4B BF B4 5C */	b daNpcT_chkEvtBit__FUl
/* 80551654  2C 03 00 00 */	cmpwi r3, 0
/* 80551658  40 82 00 4C */	bne lbl_805516A4
/* 8055165C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80551660  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80551664  28 04 00 FF */	cmplwi r4, 0xff
/* 80551668  41 82 00 3C */	beq lbl_805516A4
/* 8055166C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80551670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80551674  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80551678  7C 05 07 74 */	extsb r5, r0
/* 8055167C  4B AE 3C E4 */	b isSwitch__10dSv_info_cCFii
/* 80551680  2C 03 00 00 */	cmpwi r3, 0
/* 80551684  41 82 00 20 */	beq lbl_805516A4
/* 80551688  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 8055168C  4B BF 40 70 */	b remove__18daNpcT_ActorMngr_cFv
/* 80551690  3B C0 00 01 */	li r30, 1
/* 80551694  38 00 00 01 */	li r0, 1
/* 80551698  98 1D 0E 32 */	stb r0, 0xe32(r29)
/* 8055169C  98 1D 0E 33 */	stb r0, 0xe33(r29)
/* 805516A0  48 00 00 D0 */	b lbl_80551770
lbl_805516A4:
/* 805516A4  38 60 02 F1 */	li r3, 0x2f1
/* 805516A8  4B BF B4 04 */	b daNpcT_chkEvtBit__FUl
/* 805516AC  2C 03 00 00 */	cmpwi r3, 0
/* 805516B0  40 82 00 C0 */	bne lbl_80551770
/* 805516B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805516B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805516BC  88 03 5E 20 */	lbz r0, 0x5e20(r3)
/* 805516C0  28 00 00 6C */	cmplwi r0, 0x6c
/* 805516C4  40 82 00 60 */	bne lbl_80551724
/* 805516C8  80 1D 0F D0 */	lwz r0, 0xfd0(r29)
/* 805516CC  2C 00 00 00 */	cmpwi r0, 0
/* 805516D0  41 82 00 30 */	beq lbl_80551700
/* 805516D4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805516D8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805516DC  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 805516E0  7D 89 03 A6 */	mtctr r12
/* 805516E4  4E 80 04 21 */	bctrl 
/* 805516E8  2C 03 00 00 */	cmpwi r3, 0
/* 805516EC  40 82 00 14 */	bne lbl_80551700
/* 805516F0  38 00 00 03 */	li r0, 3
/* 805516F4  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 805516F8  38 00 00 01 */	li r0, 1
/* 805516FC  98 1D 0E 33 */	stb r0, 0xe33(r29)
lbl_80551700:
/* 80551700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80551704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80551708  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8055170C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80551710  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80551714  7D 89 03 A6 */	mtctr r12
/* 80551718  4E 80 04 21 */	bctrl 
/* 8055171C  90 7D 0F D0 */	stw r3, 0xfd0(r29)
/* 80551720  48 00 00 50 */	b lbl_80551770
lbl_80551724:
/* 80551724  38 00 00 00 */	li r0, 0
/* 80551728  90 1D 0F D0 */	stw r0, 0xfd0(r29)
/* 8055172C  48 00 00 44 */	b lbl_80551770
lbl_80551730:
/* 80551730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80551734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80551738  88 03 5E 20 */	lbz r0, 0x5e20(r3)
/* 8055173C  28 00 00 6C */	cmplwi r0, 0x6c
/* 80551740  40 82 00 30 */	bne lbl_80551770
/* 80551744  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80551748  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8055174C  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80551750  7D 89 03 A6 */	mtctr r12
/* 80551754  4E 80 04 21 */	bctrl 
/* 80551758  2C 03 00 00 */	cmpwi r3, 0
/* 8055175C  41 82 00 14 */	beq lbl_80551770
/* 80551760  38 00 00 03 */	li r0, 3
/* 80551764  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 80551768  38 00 00 01 */	li r0, 1
/* 8055176C  98 1D 0E 33 */	stb r0, 0xe33(r29)
lbl_80551770:
/* 80551770  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80551774  2C 00 00 00 */	cmpwi r0, 0
/* 80551778  40 82 02 B8 */	bne lbl_80551A30
/* 8055177C  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 80551780  4B BF 3F 88 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80551784  28 03 00 00 */	cmplwi r3, 0
/* 80551788  41 82 01 00 */	beq lbl_80551888
/* 8055178C  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80551790  2C 00 00 01 */	cmpwi r0, 1
/* 80551794  41 82 00 28 */	beq lbl_805517BC
/* 80551798  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8055179C  4B BF 3F 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 805517A0  38 00 00 00 */	li r0, 0
/* 805517A4  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 805517A8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 805517AC  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 805517B0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 805517B4  38 00 00 01 */	li r0, 1
/* 805517B8  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_805517BC:
/* 805517BC  38 00 00 00 */	li r0, 0
/* 805517C0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 805517C4  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 805517C8  4B BF 3F 40 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 805517CC  7C 64 1B 78 */	mr r4, r3
/* 805517D0  7F A3 EB 78 */	mr r3, r29
/* 805517D4  C0 3D 0D F8 */	lfs f1, 0xdf8(r29)
/* 805517D8  A8 BD 0D 7A */	lha r5, 0xd7a(r29)
/* 805517DC  4B BF 93 F4 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 805517E0  2C 03 00 00 */	cmpwi r3, 0
/* 805517E4  40 82 00 38 */	bne lbl_8055181C
/* 805517E8  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 805517EC  2C 00 00 00 */	cmpwi r0, 0
/* 805517F0  41 82 00 24 */	beq lbl_80551814
/* 805517F4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 805517F8  4B BF 3F 04 */	b remove__18daNpcT_ActorMngr_cFv
/* 805517FC  38 00 00 00 */	li r0, 0
/* 80551800  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80551804  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80551808  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8055180C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80551810  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80551814:
/* 80551814  38 00 00 00 */	li r0, 0
/* 80551818  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_8055181C:
/* 8055181C  88 1D 0F D6 */	lbz r0, 0xfd6(r29)
/* 80551820  28 00 00 00 */	cmplwi r0, 0
/* 80551824  41 82 00 38 */	beq lbl_8055185C
/* 80551828  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8055182C  2C 00 00 00 */	cmpwi r0, 0
/* 80551830  41 82 00 24 */	beq lbl_80551854
/* 80551834  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80551838  4B BF 3E C4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055183C  38 00 00 00 */	li r0, 0
/* 80551840  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80551844  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80551848  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8055184C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80551850  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80551854:
/* 80551854  38 00 00 00 */	li r0, 0
/* 80551858  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_8055185C:
/* 8055185C  7F A3 EB 78 */	mr r3, r29
/* 80551860  4B BF 9A D8 */	b srchPlayerActor__8daNpcT_cFv
/* 80551864  2C 03 00 00 */	cmpwi r3, 0
/* 80551868  40 82 00 CC */	bne lbl_80551934
/* 8055186C  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 80551870  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80551874  7C 03 00 00 */	cmpw r3, r0
/* 80551878  40 82 00 BC */	bne lbl_80551934
/* 8055187C  38 00 00 01 */	li r0, 1
/* 80551880  B0 1D 0E 22 */	sth r0, 0xe22(r29)
/* 80551884  48 00 00 B0 */	b lbl_80551934
lbl_80551888:
/* 80551888  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8055188C  2C 00 00 00 */	cmpwi r0, 0
/* 80551890  41 82 00 24 */	beq lbl_805518B4
/* 80551894  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80551898  4B BF 3E 64 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055189C  38 00 00 00 */	li r0, 0
/* 805518A0  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 805518A4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 805518A8  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 805518AC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 805518B0  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_805518B4:
/* 805518B4  38 00 00 00 */	li r0, 0
/* 805518B8  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 805518BC  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 805518C0  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 805518C4  7C 04 00 00 */	cmpw r4, r0
/* 805518C8  41 82 00 58 */	beq lbl_80551920
/* 805518CC  88 1D 0E 34 */	lbz r0, 0xe34(r29)
/* 805518D0  28 00 00 00 */	cmplwi r0, 0
/* 805518D4  41 82 00 30 */	beq lbl_80551904
/* 805518D8  7F A3 EB 78 */	mr r3, r29
/* 805518DC  38 A0 FF FF */	li r5, -1
/* 805518E0  38 C0 FF FF */	li r6, -1
/* 805518E4  38 E0 00 0F */	li r7, 0xf
/* 805518E8  39 00 00 00 */	li r8, 0
/* 805518EC  4B BF 9D 5C */	b step__8daNpcT_cFsiiii
/* 805518F0  2C 03 00 00 */	cmpwi r3, 0
/* 805518F4  41 82 00 20 */	beq lbl_80551914
/* 805518F8  38 00 00 01 */	li r0, 1
/* 805518FC  B0 1D 0E 22 */	sth r0, 0xe22(r29)
/* 80551900  48 00 00 14 */	b lbl_80551914
lbl_80551904:
/* 80551904  7F A3 EB 78 */	mr r3, r29
/* 80551908  4B BF 91 10 */	b setAngle__8daNpcT_cFs
/* 8055190C  38 00 00 01 */	li r0, 1
/* 80551910  B0 1D 0E 22 */	sth r0, 0xe22(r29)
lbl_80551914:
/* 80551914  38 00 00 00 */	li r0, 0
/* 80551918  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8055191C  48 00 00 18 */	b lbl_80551934
lbl_80551920:
/* 80551920  88 1D 0A 89 */	lbz r0, 0xa89(r29)
/* 80551924  28 00 00 00 */	cmplwi r0, 0
/* 80551928  40 82 00 0C */	bne lbl_80551934
/* 8055192C  7F A3 EB 78 */	mr r3, r29
/* 80551930  4B BF 9A 08 */	b srchPlayerActor__8daNpcT_cFv
lbl_80551934:
/* 80551934  38 60 00 29 */	li r3, 0x29
/* 80551938  4B BF B1 F4 */	b daNpcT_offTmpBit__FUl
/* 8055193C  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80551940  2C 00 00 00 */	cmpwi r0, 0
/* 80551944  41 82 00 08 */	beq lbl_8055194C
/* 80551948  48 00 00 D4 */	b lbl_80551A1C
lbl_8055194C:
/* 8055194C  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80551950  28 00 00 00 */	cmplwi r0, 0
/* 80551954  40 82 00 C0 */	bne lbl_80551A14
/* 80551958  88 1D 0F D6 */	lbz r0, 0xfd6(r29)
/* 8055195C  28 00 00 00 */	cmplwi r0, 0
/* 80551960  40 82 00 B4 */	bne lbl_80551A14
/* 80551964  2C 1E 00 00 */	cmpwi r30, 0
/* 80551968  41 82 00 AC */	beq lbl_80551A14
/* 8055196C  38 7D 0F 84 */	addi r3, r29, 0xf84
/* 80551970  4B BF 3D 98 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80551974  7C 7C 1B 79 */	or. r28, r3, r3
/* 80551978  41 82 00 9C */	beq lbl_80551A14
/* 8055197C  88 1D 0F D6 */	lbz r0, 0xfd6(r29)
/* 80551980  28 00 00 00 */	cmplwi r0, 0
/* 80551984  40 82 00 90 */	bne lbl_80551A14
/* 80551988  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8055198C  4B BF 3D 7C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80551990  7C 63 E0 50 */	subf r3, r3, r28
/* 80551994  30 03 FF FF */	addic r0, r3, -1
/* 80551998  7C 00 19 10 */	subfe r0, r0, r3
/* 8055199C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805519A0  40 82 00 10 */	bne lbl_805519B0
/* 805519A4  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 805519A8  2C 00 00 02 */	cmpwi r0, 2
/* 805519AC  41 82 00 30 */	beq lbl_805519DC
lbl_805519B0:
/* 805519B0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 805519B4  4B BF 3D 48 */	b remove__18daNpcT_ActorMngr_cFv
/* 805519B8  38 00 00 00 */	li r0, 0
/* 805519BC  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 805519C0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 805519C4  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 805519C8  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 805519CC  38 00 00 02 */	li r0, 2
/* 805519D0  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 805519D4  38 00 00 01 */	li r0, 1
/* 805519D8  48 00 00 08 */	b lbl_805519E0
lbl_805519DC:
/* 805519DC  38 00 00 00 */	li r0, 0
lbl_805519E0:
/* 805519E0  2C 00 00 00 */	cmpwi r0, 0
/* 805519E4  41 82 00 28 */	beq lbl_80551A0C
/* 805519E8  7F 83 E3 78 */	mr r3, r28
/* 805519EC  4B AC 72 F4 */	b fopAc_IsActor__FPv
/* 805519F0  2C 03 00 00 */	cmpwi r3, 0
/* 805519F4  41 82 00 18 */	beq lbl_80551A0C
/* 805519F8  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 805519FC  7F 84 E3 78 */	mr r4, r28
/* 80551A00  4B BF 3C E0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80551A04  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80551A08  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
lbl_80551A0C:
/* 80551A0C  38 00 00 00 */	li r0, 0
/* 80551A10  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_80551A14:
/* 80551A14  7F A3 EB 78 */	mr r3, r29
/* 80551A18  4B FF F6 6D */	bl sleep__12daNpc_Kkri_cFv
lbl_80551A1C:
/* 80551A1C  88 1D 0F D6 */	lbz r0, 0xfd6(r29)
/* 80551A20  28 00 00 00 */	cmplwi r0, 0
/* 80551A24  41 82 00 0C */	beq lbl_80551A30
/* 80551A28  38 60 00 29 */	li r3, 0x29
/* 80551A2C  4B BF B0 C0 */	b daNpcT_onTmpBit__FUl
lbl_80551A30:
/* 80551A30  38 60 00 01 */	li r3, 1
/* 80551A34  39 61 00 20 */	addi r11, r1, 0x20
/* 80551A38  4B E1 07 EC */	b _restgpr_28
/* 80551A3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80551A40  7C 08 03 A6 */	mtlr r0
/* 80551A44  38 21 00 20 */	addi r1, r1, 0x20
/* 80551A48  4E 80 00 20 */	blr 
