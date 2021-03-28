lbl_80B923BC:
/* 80B923BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B923C0  7C 08 02 A6 */	mflr r0
/* 80B923C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B923C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B923CC  4B 7C FE 04 */	b _savegpr_26
/* 80B923D0  7C 7C 1B 78 */	mr r28, r3
/* 80B923D4  7C 9A 23 78 */	mr r26, r4
/* 80B923D8  3C 60 80 B9 */	lis r3, m__17daNpc_zrC_Param_c@ha
/* 80B923DC  3B E3 31 FC */	addi r31, r3, m__17daNpc_zrC_Param_c@l
/* 80B923E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B923E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B923E8  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80B923EC  3B C0 00 00 */	li r30, 0
/* 80B923F0  3B A0 FF FF */	li r29, -1
/* 80B923F4  7F 63 DB 78 */	mr r3, r27
/* 80B923F8  3C A0 80 B9 */	lis r5, stringBase0@ha
/* 80B923FC  38 A5 36 9C */	addi r5, r5, stringBase0@l
/* 80B92400  38 A5 00 47 */	addi r5, r5, 0x47
/* 80B92404  38 C0 00 03 */	li r6, 3
/* 80B92408  4B 4B 5C E4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B9240C  28 03 00 00 */	cmplwi r3, 0
/* 80B92410  41 82 00 08 */	beq lbl_80B92418
/* 80B92414  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B92418:
/* 80B92418  7F 63 DB 78 */	mr r3, r27
/* 80B9241C  7F 44 D3 78 */	mr r4, r26
/* 80B92420  4B 4B 59 2C */	b getIsAddvance__16dEvent_manager_cFi
/* 80B92424  2C 03 00 00 */	cmpwi r3, 0
/* 80B92428  41 82 02 7C */	beq lbl_80B926A4
/* 80B9242C  2C 1D 00 32 */	cmpwi r29, 0x32
/* 80B92430  41 82 01 BC */	beq lbl_80B925EC
/* 80B92434  40 80 00 40 */	bge lbl_80B92474
/* 80B92438  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B9243C  41 82 00 B4 */	beq lbl_80B924F0
/* 80B92440  40 80 00 1C */	bge lbl_80B9245C
/* 80B92444  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B92448  41 82 00 94 */	beq lbl_80B924DC
/* 80B9244C  40 80 02 58 */	bge lbl_80B926A4
/* 80B92450  2C 1D 00 00 */	cmpwi r29, 0
/* 80B92454  41 82 00 50 */	beq lbl_80B924A4
/* 80B92458  48 00 02 4C */	b lbl_80B926A4
lbl_80B9245C:
/* 80B9245C  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80B92460  41 82 01 44 */	beq lbl_80B925A4
/* 80B92464  40 80 02 40 */	bge lbl_80B926A4
/* 80B92468  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80B9246C  41 82 01 24 */	beq lbl_80B92590
/* 80B92470  48 00 02 34 */	b lbl_80B926A4
lbl_80B92474:
/* 80B92474  2C 1D 00 50 */	cmpwi r29, 0x50
/* 80B92478  41 82 01 B0 */	beq lbl_80B92628
/* 80B9247C  40 80 00 1C */	bge lbl_80B92498
/* 80B92480  2C 1D 00 46 */	cmpwi r29, 0x46
/* 80B92484  41 82 01 90 */	beq lbl_80B92614
/* 80B92488  40 80 02 1C */	bge lbl_80B926A4
/* 80B9248C  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 80B92490  41 82 01 70 */	beq lbl_80B92600
/* 80B92494  48 00 02 10 */	b lbl_80B926A4
lbl_80B92498:
/* 80B92498  2C 1D 00 5A */	cmpwi r29, 0x5a
/* 80B9249C  41 82 01 AC */	beq lbl_80B92648
/* 80B924A0  48 00 02 04 */	b lbl_80B926A4
lbl_80B924A4:
/* 80B924A4  7F 83 E3 78 */	mr r3, r28
/* 80B924A8  38 80 00 02 */	li r4, 2
/* 80B924AC  4B FF EC 91 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B924B0  38 60 00 0B */	li r3, 0xb
/* 80B924B4  4B 5C 32 80 */	b daNpcF_offTmpBit__FUl
/* 80B924B8  38 60 00 0C */	li r3, 0xc
/* 80B924BC  4B 5C 32 78 */	b daNpcF_offTmpBit__FUl
/* 80B924C0  38 60 00 0D */	li r3, 0xd
/* 80B924C4  4B 5C 32 70 */	b daNpcF_offTmpBit__FUl
/* 80B924C8  38 60 00 0E */	li r3, 0xe
/* 80B924CC  4B 5C 32 68 */	b daNpcF_offTmpBit__FUl
/* 80B924D0  38 60 00 0F */	li r3, 0xf
/* 80B924D4  4B 5C 32 60 */	b daNpcF_offTmpBit__FUl
/* 80B924D8  48 00 01 CC */	b lbl_80B926A4
lbl_80B924DC:
/* 80B924DC  7F 83 E3 78 */	mr r3, r28
/* 80B924E0  80 9C 0E 20 */	lwz r4, 0xe20(r28)
/* 80B924E4  38 A0 00 00 */	li r5, 0
/* 80B924E8  4B 5C 18 34 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B924EC  48 00 01 B8 */	b lbl_80B926A4
lbl_80B924F0:
/* 80B924F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B924F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B924F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80B924FC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B92500  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000047@ha */
/* 80B92504  38 84 00 47 */	addi r4, r4, 0x0047 /* 0x01000047@l */
/* 80B92508  4B 71 CF 94 */	b subBgmStart__8Z2SeqMgrFUl
/* 80B9250C  C0 1F 04 94 */	lfs f0, 0x494(r31)
/* 80B92510  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B92514  C0 1F 04 98 */	lfs f0, 0x498(r31)
/* 80B92518  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B9251C  C0 1F 04 9C */	lfs f0, 0x49c(r31)
/* 80B92520  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B92524  38 61 00 0C */	addi r3, r1, 0xc
/* 80B92528  4B 48 B7 94 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80B9252C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B92530  41 82 00 10 */	beq lbl_80B92540
/* 80B92534  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80B92538  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80B9253C  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80B92540:
/* 80B92540  38 61 00 0C */	addi r3, r1, 0xc
/* 80B92544  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B92548  4B 6D E6 BC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B9254C  7C 7B 1B 78 */	mr r27, r3
/* 80B92550  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B92554  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B92558  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B9255C  38 81 00 0C */	addi r4, r1, 0xc
/* 80B92560  7F 65 DB 78 */	mr r5, r27
/* 80B92564  38 C0 00 00 */	li r6, 0
/* 80B92568  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B9256C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B92570  7D 89 03 A6 */	mtctr r12
/* 80B92574  4E 80 04 21 */	bctrl 
/* 80B92578  7F 83 E3 78 */	mr r3, r28
/* 80B9257C  3C 9B 00 01 */	addis r4, r27, 1
/* 80B92580  38 04 80 00 */	addi r0, r4, -32768
/* 80B92584  7C 04 07 34 */	extsh r4, r0
/* 80B92588  4B 5C 1C C8 */	b setAngle__8daNpcF_cFs
/* 80B9258C  48 00 01 18 */	b lbl_80B926A4
lbl_80B92590:
/* 80B92590  7F 83 E3 78 */	mr r3, r28
/* 80B92594  80 9C 0E 20 */	lwz r4, 0xe20(r28)
/* 80B92598  38 A0 00 00 */	li r5, 0
/* 80B9259C  4B 5C 17 80 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B925A0  48 00 01 04 */	b lbl_80B926A4
lbl_80B925A4:
/* 80B925A4  38 00 00 00 */	li r0, 0
/* 80B925A8  90 01 00 08 */	stw r0, 8(r1)
/* 80B925AC  38 7C 09 F8 */	addi r3, r28, 0x9f8
/* 80B925B0  38 81 00 08 */	addi r4, r1, 8
/* 80B925B4  4B 6B 7F 74 */	b getEventId__10dMsgFlow_cFPi
/* 80B925B8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B925BC  28 00 00 01 */	cmplwi r0, 1
/* 80B925C0  40 82 00 E4 */	bne lbl_80B926A4
/* 80B925C4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B925C8  80 81 00 08 */	lwz r4, 8(r1)
/* 80B925CC  38 A0 00 00 */	li r5, 0
/* 80B925D0  38 C0 FF FF */	li r6, -1
/* 80B925D4  38 E0 FF FF */	li r7, -1
/* 80B925D8  39 00 00 00 */	li r8, 0
/* 80B925DC  39 20 00 00 */	li r9, 0
/* 80B925E0  4B 48 96 08 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80B925E4  90 7C 0E 34 */	stw r3, 0xe34(r28)
/* 80B925E8  48 00 00 BC */	b lbl_80B926A4
lbl_80B925EC:
/* 80B925EC  7F 83 E3 78 */	mr r3, r28
/* 80B925F0  80 9C 0E 20 */	lwz r4, 0xe20(r28)
/* 80B925F4  38 A0 00 00 */	li r5, 0
/* 80B925F8  4B 5C 17 24 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B925FC  48 00 00 A8 */	b lbl_80B926A4
lbl_80B92600:
/* 80B92600  7F 83 E3 78 */	mr r3, r28
/* 80B92604  80 9C 0E 20 */	lwz r4, 0xe20(r28)
/* 80B92608  38 A0 00 00 */	li r5, 0
/* 80B9260C  4B 5C 17 10 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B92610  48 00 00 94 */	b lbl_80B926A4
lbl_80B92614:
/* 80B92614  7F 83 E3 78 */	mr r3, r28
/* 80B92618  80 9C 0E 20 */	lwz r4, 0xe20(r28)
/* 80B9261C  38 A0 00 00 */	li r5, 0
/* 80B92620  4B 5C 16 FC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B92624  48 00 00 80 */	b lbl_80B926A4
lbl_80B92628:
/* 80B92628  7F 83 E3 78 */	mr r3, r28
/* 80B9262C  38 80 00 02 */	li r4, 2
/* 80B92630  4B FF EB 0D */	bl setLookMode__11daNpc_zrC_cFi
/* 80B92634  7F 83 E3 78 */	mr r3, r28
/* 80B92638  80 9C 0E 20 */	lwz r4, 0xe20(r28)
/* 80B9263C  38 A0 00 00 */	li r5, 0
/* 80B92640  4B 5C 16 DC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B92644  48 00 00 60 */	b lbl_80B926A4
lbl_80B92648:
/* 80B92648  7F 83 E3 78 */	mr r3, r28
/* 80B9264C  38 80 00 02 */	li r4, 2
/* 80B92650  4B FF EA ED */	bl setLookMode__11daNpc_zrC_cFi
/* 80B92654  7F 83 E3 78 */	mr r3, r28
/* 80B92658  38 80 00 11 */	li r4, 0x11
/* 80B9265C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80B92660  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B92664  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B92668  7D 89 03 A6 */	mtctr r12
/* 80B9266C  4E 80 04 21 */	bctrl 
/* 80B92670  7F 83 E3 78 */	mr r3, r28
/* 80B92674  38 80 00 00 */	li r4, 0
/* 80B92678  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80B9267C  38 A0 00 00 */	li r5, 0
/* 80B92680  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B92684  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B92688  7D 89 03 A6 */	mtctr r12
/* 80B9268C  4E 80 04 21 */	bctrl 
/* 80B92690  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B92694  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B92698  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9269C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B926A0  4B 71 D1 E4 */	b subBgmStop__8Z2SeqMgrFv
lbl_80B926A4:
/* 80B926A4  2C 1D 00 32 */	cmpwi r29, 0x32
/* 80B926A8  41 82 01 78 */	beq lbl_80B92820
/* 80B926AC  40 80 00 40 */	bge lbl_80B926EC
/* 80B926B0  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B926B4  41 82 01 30 */	beq lbl_80B927E4
/* 80B926B8  40 80 00 1C */	bge lbl_80B926D4
/* 80B926BC  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B926C0  41 82 01 00 */	beq lbl_80B927C0
/* 80B926C4  40 80 01 88 */	bge lbl_80B9284C
/* 80B926C8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B926CC  41 82 00 50 */	beq lbl_80B9271C
/* 80B926D0  48 00 01 7C */	b lbl_80B9284C
lbl_80B926D4:
/* 80B926D4  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80B926D8  41 82 01 38 */	beq lbl_80B92810
/* 80B926DC  40 80 01 70 */	bge lbl_80B9284C
/* 80B926E0  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80B926E4  41 82 01 08 */	beq lbl_80B927EC
/* 80B926E8  48 00 01 64 */	b lbl_80B9284C
lbl_80B926EC:
/* 80B926EC  2C 1D 00 50 */	cmpwi r29, 0x50
/* 80B926F0  41 82 01 30 */	beq lbl_80B92820
/* 80B926F4  40 80 00 1C */	bge lbl_80B92710
/* 80B926F8  2C 1D 00 46 */	cmpwi r29, 0x46
/* 80B926FC  41 82 01 24 */	beq lbl_80B92820
/* 80B92700  40 80 01 4C */	bge lbl_80B9284C
/* 80B92704  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 80B92708  41 82 01 18 */	beq lbl_80B92820
/* 80B9270C  48 00 01 40 */	b lbl_80B9284C
lbl_80B92710:
/* 80B92710  2C 1D 00 5A */	cmpwi r29, 0x5a
/* 80B92714  41 82 01 30 */	beq lbl_80B92844
/* 80B92718  48 00 01 34 */	b lbl_80B9284C
lbl_80B9271C:
/* 80B9271C  7F 83 E3 78 */	mr r3, r28
/* 80B92720  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B92724  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80B92728  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B9272C  4B 48 7F E4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B92730  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B92734  7C 60 07 34 */	extsh r0, r3
/* 80B92738  7C 04 00 00 */	cmpw r4, r0
/* 80B9273C  41 82 00 7C */	beq lbl_80B927B8
/* 80B92740  7F 83 E3 78 */	mr r3, r28
/* 80B92744  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B92748  4B 48 7F C8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B9274C  7C 64 1B 78 */	mr r4, r3
/* 80B92750  7F 83 E3 78 */	mr r3, r28
/* 80B92754  38 A0 FF FF */	li r5, -1
/* 80B92758  38 C0 FF FF */	li r6, -1
/* 80B9275C  38 E0 00 1E */	li r7, 0x1e
/* 80B92760  4B 5C 19 44 */	b step__8daNpcF_cFsiii
/* 80B92764  2C 03 00 00 */	cmpwi r3, 0
/* 80B92768  41 82 00 E8 */	beq lbl_80B92850
/* 80B9276C  7F 83 E3 78 */	mr r3, r28
/* 80B92770  38 80 00 11 */	li r4, 0x11
/* 80B92774  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80B92778  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B9277C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B92780  7D 89 03 A6 */	mtctr r12
/* 80B92784  4E 80 04 21 */	bctrl 
/* 80B92788  7F 83 E3 78 */	mr r3, r28
/* 80B9278C  38 80 00 00 */	li r4, 0
/* 80B92790  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80B92794  38 A0 00 00 */	li r5, 0
/* 80B92798  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B9279C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B927A0  7D 89 03 A6 */	mtctr r12
/* 80B927A4  4E 80 04 21 */	bctrl 
/* 80B927A8  38 00 00 00 */	li r0, 0
/* 80B927AC  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80B927B0  3B C0 00 01 */	li r30, 1
/* 80B927B4  48 00 00 9C */	b lbl_80B92850
lbl_80B927B8:
/* 80B927B8  3B C0 00 01 */	li r30, 1
/* 80B927BC  48 00 00 94 */	b lbl_80B92850
lbl_80B927C0:
/* 80B927C0  7F 83 E3 78 */	mr r3, r28
/* 80B927C4  38 80 00 00 */	li r4, 0
/* 80B927C8  38 A0 00 01 */	li r5, 1
/* 80B927CC  38 C0 00 00 */	li r6, 0
/* 80B927D0  4B 5C 15 B4 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B927D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B927D8  41 82 00 78 */	beq lbl_80B92850
/* 80B927DC  3B C0 00 01 */	li r30, 1
/* 80B927E0  48 00 00 70 */	b lbl_80B92850
lbl_80B927E4:
/* 80B927E4  3B C0 00 01 */	li r30, 1
/* 80B927E8  48 00 00 68 */	b lbl_80B92850
lbl_80B927EC:
/* 80B927EC  7F 83 E3 78 */	mr r3, r28
/* 80B927F0  38 80 00 00 */	li r4, 0
/* 80B927F4  38 A0 00 01 */	li r5, 1
/* 80B927F8  38 C0 00 00 */	li r6, 0
/* 80B927FC  4B 5C 15 88 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B92800  2C 03 00 00 */	cmpwi r3, 0
/* 80B92804  41 82 00 4C */	beq lbl_80B92850
/* 80B92808  3B C0 00 01 */	li r30, 1
/* 80B9280C  48 00 00 44 */	b lbl_80B92850
lbl_80B92810:
/* 80B92810  38 00 00 01 */	li r0, 1
/* 80B92814  98 1C 09 EB */	stb r0, 0x9eb(r28)
/* 80B92818  3B C0 00 01 */	li r30, 1
/* 80B9281C  48 00 00 34 */	b lbl_80B92850
lbl_80B92820:
/* 80B92820  7F 83 E3 78 */	mr r3, r28
/* 80B92824  38 80 00 00 */	li r4, 0
/* 80B92828  38 A0 00 01 */	li r5, 1
/* 80B9282C  38 C0 00 00 */	li r6, 0
/* 80B92830  4B 5C 15 54 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B92834  2C 03 00 00 */	cmpwi r3, 0
/* 80B92838  41 82 00 18 */	beq lbl_80B92850
/* 80B9283C  3B C0 00 01 */	li r30, 1
/* 80B92840  48 00 00 10 */	b lbl_80B92850
lbl_80B92844:
/* 80B92844  3B C0 00 01 */	li r30, 1
/* 80B92848  48 00 00 08 */	b lbl_80B92850
lbl_80B9284C:
/* 80B9284C  3B C0 00 01 */	li r30, 1
lbl_80B92850:
/* 80B92850  7F C3 F3 78 */	mr r3, r30
/* 80B92854  39 61 00 30 */	addi r11, r1, 0x30
/* 80B92858  4B 7C F9 C4 */	b _restgpr_26
/* 80B9285C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B92860  7C 08 03 A6 */	mtlr r0
/* 80B92864  38 21 00 30 */	addi r1, r1, 0x30
/* 80B92868  4E 80 00 20 */	blr 
