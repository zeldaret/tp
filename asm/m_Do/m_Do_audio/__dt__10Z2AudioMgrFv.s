lbl_800073C8:
/* 800073C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800073CC  7C 08 02 A6 */	mflr r0
/* 800073D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800073D4  39 61 00 20 */	addi r11, r1, 0x20
/* 800073D8  48 35 AE 05 */	bl _savegpr_29
/* 800073DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 800073E0  7C 9F 23 78 */	mr r31, r4
/* 800073E4  41 82 04 38 */	beq lbl_8000781C
/* 800073E8  3C 60 80 3D */	lis r3, __vt__10Z2AudioMgr@ha
/* 800073EC  38 03 BF 38 */	addi r0, r3, __vt__10Z2AudioMgr@l
/* 800073F0  90 1E 05 14 */	stw r0, 0x514(r30)
/* 800073F4  34 1E 13 70 */	addic. r0, r30, 0x1370
/* 800073F8  41 82 00 24 */	beq lbl_8000741C
/* 800073FC  34 1E 13 70 */	addic. r0, r30, 0x1370
/* 80007400  41 82 00 1C */	beq lbl_8000741C
/* 80007404  80 6D 85 C0 */	lwz r3, data_80450B40(r13)
/* 80007408  38 1E 13 70 */	addi r0, r30, 0x1370
/* 8000740C  7C 03 00 40 */	cmplw r3, r0
/* 80007410  40 82 00 0C */	bne lbl_8000741C
/* 80007414  38 00 00 00 */	li r0, 0
/* 80007418  90 0D 85 C0 */	stw r0, data_80450B40(r13)
lbl_8000741C:
/* 8000741C  34 1E 0F 2C */	addic. r0, r30, 0xf2c
/* 80007420  41 82 00 98 */	beq lbl_800074B8
/* 80007424  34 7E 0F 38 */	addic. r3, r30, 0xf38
/* 80007428  41 82 00 54 */	beq lbl_8000747C
/* 8000742C  3C 80 80 3D */	lis r4, __vt__15Z2SpeechStarter@ha
/* 80007430  38 04 BF 24 */	addi r0, r4, __vt__15Z2SpeechStarter@l
/* 80007434  90 1E 0F 38 */	stw r0, 0xf38(r30)
/* 80007438  28 03 00 00 */	cmplwi r3, 0
/* 8000743C  41 82 00 40 */	beq lbl_8000747C
/* 80007440  3C 80 80 3D */	lis r4, __vt__14Z2SoundStarter@ha
/* 80007444  38 04 9D 80 */	addi r0, r4, __vt__14Z2SoundStarter@l
/* 80007448  90 1E 0F 38 */	stw r0, 0xf38(r30)
/* 8000744C  34 1E 0F 3C */	addic. r0, r30, 0xf3c
/* 80007450  41 82 00 24 */	beq lbl_80007474
/* 80007454  34 83 00 04 */	addic. r4, r3, 4
/* 80007458  41 82 00 08 */	beq lbl_80007460
/* 8000745C  38 84 FF FC */	addi r4, r4, -4
lbl_80007460:
/* 80007460  80 0D 85 F4 */	lwz r0, data_80450B74(r13)
/* 80007464  7C 00 20 40 */	cmplw r0, r4
/* 80007468  40 82 00 0C */	bne lbl_80007474
/* 8000746C  38 00 00 00 */	li r0, 0
/* 80007470  90 0D 85 F4 */	stw r0, data_80450B74(r13)
lbl_80007474:
/* 80007474  38 80 00 00 */	li r4, 0
/* 80007478  48 29 BB 11 */	bl __dt__15JAISoundStarterFv
lbl_8000747C:
/* 8000747C  34 7E 0F 30 */	addic. r3, r30, 0xf30
/* 80007480  41 82 00 08 */	beq lbl_80007488
/* 80007484  48 29 AD 01 */	bl releaseSound__14JAISoundHandleFv
lbl_80007488:
/* 80007488  34 1E 0F 2C */	addic. r0, r30, 0xf2c
/* 8000748C  41 82 00 0C */	beq lbl_80007498
/* 80007490  38 7E 0F 2C */	addi r3, r30, 0xf2c
/* 80007494  48 29 AC F1 */	bl releaseSound__14JAISoundHandleFv
lbl_80007498:
/* 80007498  34 1E 0F 2C */	addic. r0, r30, 0xf2c
/* 8000749C  41 82 00 1C */	beq lbl_800074B8
/* 800074A0  80 6D 85 F0 */	lwz r3, data_80450B70(r13)
/* 800074A4  38 1E 0F 2C */	addi r0, r30, 0xf2c
/* 800074A8  7C 03 00 40 */	cmplw r3, r0
/* 800074AC  40 82 00 0C */	bne lbl_800074B8
/* 800074B0  38 00 00 00 */	li r0, 0
/* 800074B4  90 0D 85 F0 */	stw r0, data_80450B70(r13)
lbl_800074B8:
/* 800074B8  38 7E 0D 4C */	addi r3, r30, 0xd4c
/* 800074BC  38 80 FF FF */	li r4, -1
/* 800074C0  48 2B 5D 3D */	bl __dt__10Z2AudienceFv
/* 800074C4  34 1E 0D 40 */	addic. r0, r30, 0xd40
/* 800074C8  41 82 00 94 */	beq lbl_8000755C
/* 800074CC  3C 60 80 3D */	lis r3, __vt__11Z2SoundInfo@ha
/* 800074D0  38 63 AC 48 */	addi r3, r3, __vt__11Z2SoundInfo@l
/* 800074D4  90 7E 0D 40 */	stw r3, 0xd40(r30)
/* 800074D8  38 03 00 24 */	addi r0, r3, 0x24
/* 800074DC  90 1E 0D 44 */	stw r0, 0xd44(r30)
/* 800074E0  38 03 00 34 */	addi r0, r3, 0x34
/* 800074E4  90 1E 0D 48 */	stw r0, 0xd48(r30)
/* 800074E8  34 1E 0D 4C */	addic. r0, r30, 0xd4c
/* 800074EC  41 82 00 24 */	beq lbl_80007510
/* 800074F0  34 7E 0D 4C */	addic. r3, r30, 0xd4c
/* 800074F4  41 82 00 08 */	beq lbl_800074FC
/* 800074F8  38 63 FF F4 */	addi r3, r3, -12
lbl_800074FC:
/* 800074FC  80 0D 85 CC */	lwz r0, data_80450B4C(r13)
/* 80007500  7C 00 18 40 */	cmplw r0, r3
/* 80007504  40 82 00 0C */	bne lbl_80007510
/* 80007508  38 00 00 00 */	li r0, 0
/* 8000750C  90 0D 85 CC */	stw r0, data_80450B4C(r13)
lbl_80007510:
/* 80007510  38 7E 0D 48 */	addi r3, r30, 0xd48
/* 80007514  38 80 00 00 */	li r4, 0
/* 80007518  48 29 C5 C1 */	bl __dt__16JAIStreamDataMgrFv
/* 8000751C  34 1E 0D 44 */	addic. r0, r30, 0xd44
/* 80007520  41 82 00 30 */	beq lbl_80007550
/* 80007524  3C 60 80 3A */	lis r3, __vt__12JAUSoundInfo@ha
/* 80007528  38 03 2F 4C */	addi r0, r3, __vt__12JAUSoundInfo@l
/* 8000752C  90 1E 0D 44 */	stw r0, 0xd44(r30)
/* 80007530  34 1E 0D 44 */	addic. r0, r30, 0xd44
/* 80007534  41 82 00 1C */	beq lbl_80007550
/* 80007538  80 6D 85 D0 */	lwz r3, data_80450B50(r13)
/* 8000753C  38 1E 0D 44 */	addi r0, r30, 0xd44
/* 80007540  7C 03 00 40 */	cmplw r3, r0
/* 80007544  40 82 00 0C */	bne lbl_80007550
/* 80007548  38 00 00 00 */	li r0, 0
/* 8000754C  90 0D 85 D0 */	stw r0, data_80450B50(r13)
lbl_80007550:
/* 80007550  38 7E 0D 40 */	addi r3, r30, 0xd40
/* 80007554  38 80 00 00 */	li r4, 0
/* 80007558  48 29 B7 F9 */	bl __dt__12JAISoundInfoFv
lbl_8000755C:
/* 8000755C  34 1E 05 30 */	addic. r0, r30, 0x530
/* 80007560  41 82 01 04 */	beq lbl_80007664
/* 80007564  3C 60 80 3D */	lis r3, __vt__10Z2SoundMgr@ha
/* 80007568  38 03 9D 70 */	addi r0, r3, __vt__10Z2SoundMgr@l
/* 8000756C  90 1E 05 30 */	stw r0, 0x530(r30)
/* 80007570  37 BE 0C CC */	addic. r29, r30, 0xccc
/* 80007574  41 82 00 30 */	beq lbl_800075A4
/* 80007578  34 7D 00 58 */	addic. r3, r29, 0x58
/* 8000757C  41 82 00 0C */	beq lbl_80007588
/* 80007580  38 80 00 00 */	li r4, 0
/* 80007584  48 2D 49 29 */	bl __dt__10JSUPtrListFv
lbl_80007588:
/* 80007588  28 1D 00 00 */	cmplwi r29, 0
/* 8000758C  41 82 00 18 */	beq lbl_800075A4
/* 80007590  80 0D 85 E4 */	lwz r0, data_80450B64(r13)
/* 80007594  7C 00 E8 40 */	cmplw r0, r29
/* 80007598  40 82 00 0C */	bne lbl_800075A4
/* 8000759C  38 00 00 00 */	li r0, 0
/* 800075A0  90 0D 85 E4 */	stw r0, data_80450B64(r13)
lbl_800075A4:
/* 800075A4  37 BE 0C 58 */	addic. r29, r30, 0xc58
/* 800075A8  41 82 00 48 */	beq lbl_800075F0
/* 800075AC  3C 60 80 3D */	lis r3, __vt__9JAISeqMgr@ha
/* 800075B0  38 03 99 58 */	addi r0, r3, __vt__9JAISeqMgr@l
/* 800075B4  90 1E 0C 58 */	stw r0, 0xc58(r30)
/* 800075B8  34 7D 00 64 */	addic. r3, r29, 0x64
/* 800075BC  41 82 00 0C */	beq lbl_800075C8
/* 800075C0  38 80 00 00 */	li r4, 0
/* 800075C4  48 2D 48 E9 */	bl __dt__10JSUPtrListFv
lbl_800075C8:
/* 800075C8  7F A3 EB 78 */	mr r3, r29
/* 800075CC  38 80 00 00 */	li r4, 0
/* 800075D0  48 29 A1 A5 */	bl __dt__14JAISeqDataUserFv
/* 800075D4  28 1D 00 00 */	cmplwi r29, 0
/* 800075D8  41 82 00 18 */	beq lbl_800075F0
/* 800075DC  80 0D 85 E8 */	lwz r0, data_80450B68(r13)
/* 800075E0  7C 00 E8 40 */	cmplw r0, r29
/* 800075E4  40 82 00 0C */	bne lbl_800075F0
/* 800075E8  38 00 00 00 */	li r0, 0
/* 800075EC  90 0D 85 E8 */	stw r0, data_80450B68(r13)
lbl_800075F0:
/* 800075F0  37 BE 05 34 */	addic. r29, r30, 0x534
/* 800075F4  41 82 00 50 */	beq lbl_80007644
/* 800075F8  3C 60 80 3D */	lis r3, __vt__8JAISeMgr@ha
/* 800075FC  38 03 98 B0 */	addi r0, r3, __vt__8JAISeMgr@l
/* 80007600  90 1E 05 34 */	stw r0, 0x534(r30)
/* 80007604  38 7E 05 48 */	addi r3, r30, 0x548
/* 80007608  3C 80 80 00 */	lis r4, __dt__16JAISeCategoryMgrFv@ha
/* 8000760C  38 84 78 DC */	addi r4, r4, __dt__16JAISeCategoryMgrFv@l
/* 80007610  38 A0 00 6C */	li r5, 0x6c
/* 80007614  38 C0 00 10 */	li r6, 0x10
/* 80007618  48 35 A6 D1 */	bl __destroy_arr
/* 8000761C  7F A3 EB 78 */	mr r3, r29
/* 80007620  38 80 00 00 */	li r4, 0
/* 80007624  48 29 A1 51 */	bl __dt__14JAISeqDataUserFv
/* 80007628  28 1D 00 00 */	cmplwi r29, 0
/* 8000762C  41 82 00 18 */	beq lbl_80007644
/* 80007630  80 0D 85 EC */	lwz r0, data_80450B6C(r13)
/* 80007634  7C 00 E8 40 */	cmplw r0, r29
/* 80007638  40 82 00 0C */	bne lbl_80007644
/* 8000763C  38 00 00 00 */	li r0, 0
/* 80007640  90 0D 85 EC */	stw r0, data_80450B6C(r13)
lbl_80007644:
/* 80007644  34 1E 05 30 */	addic. r0, r30, 0x530
/* 80007648  41 82 00 1C */	beq lbl_80007664
/* 8000764C  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 80007650  38 1E 05 30 */	addi r0, r30, 0x530
/* 80007654  7C 03 00 40 */	cmplw r3, r0
/* 80007658  40 82 00 0C */	bne lbl_80007664
/* 8000765C  38 00 00 00 */	li r0, 0
/* 80007660  90 0D 85 E0 */	stw r0, data_80450B60(r13)
lbl_80007664:
/* 80007664  34 1E 05 2C */	addic. r0, r30, 0x52c
/* 80007668  41 82 00 44 */	beq lbl_800076AC
/* 8000766C  3C 60 80 3D */	lis r3, __vt__14Z2SoundStarter@ha
/* 80007670  38 03 9D 80 */	addi r0, r3, __vt__14Z2SoundStarter@l
/* 80007674  90 1E 05 2C */	stw r0, 0x52c(r30)
/* 80007678  34 1E 05 30 */	addic. r0, r30, 0x530
/* 8000767C  41 82 00 24 */	beq lbl_800076A0
/* 80007680  34 7E 05 30 */	addic. r3, r30, 0x530
/* 80007684  41 82 00 08 */	beq lbl_8000768C
/* 80007688  38 63 FF FC */	addi r3, r3, -4
lbl_8000768C:
/* 8000768C  80 0D 85 F4 */	lwz r0, data_80450B74(r13)
/* 80007690  7C 00 18 40 */	cmplw r0, r3
/* 80007694  40 82 00 0C */	bne lbl_800076A0
/* 80007698  38 00 00 00 */	li r0, 0
/* 8000769C  90 0D 85 F4 */	stw r0, data_80450B74(r13)
lbl_800076A0:
/* 800076A0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 800076A4  38 80 00 00 */	li r4, 0
/* 800076A8  48 29 B8 E1 */	bl __dt__15JAISoundStarterFv
lbl_800076AC:
/* 800076AC  38 7E 05 1C */	addi r3, r30, 0x51c
/* 800076B0  38 80 FF FF */	li r4, -1
/* 800076B4  48 29 5A 49 */	bl __dt__15JASAudioReseterFv
/* 800076B8  34 1E 04 F4 */	addic. r0, r30, 0x4f4
/* 800076BC  41 82 00 38 */	beq lbl_800076F4
/* 800076C0  34 1E 04 F4 */	addic. r0, r30, 0x4f4
/* 800076C4  41 82 00 10 */	beq lbl_800076D4
/* 800076C8  38 7E 04 F4 */	addi r3, r30, 0x4f4
/* 800076CC  38 80 00 00 */	li r4, 0
/* 800076D0  48 2D 47 DD */	bl __dt__10JSUPtrListFv
lbl_800076D4:
/* 800076D4  34 1E 04 F4 */	addic. r0, r30, 0x4f4
/* 800076D8  41 82 00 1C */	beq lbl_800076F4
/* 800076DC  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 800076E0  38 1E 04 F4 */	addi r0, r30, 0x4f4
/* 800076E4  7C 03 00 40 */	cmplw r3, r0
/* 800076E8  40 82 00 0C */	bne lbl_800076F4
/* 800076EC  38 00 00 00 */	li r0, 0
/* 800076F0  90 0D 85 C8 */	stw r0, data_80450B48(r13)
lbl_800076F4:
/* 800076F4  34 1E 04 C4 */	addic. r0, r30, 0x4c4
/* 800076F8  41 82 00 24 */	beq lbl_8000771C
/* 800076FC  34 1E 04 C4 */	addic. r0, r30, 0x4c4
/* 80007700  41 82 00 1C */	beq lbl_8000771C
/* 80007704  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 80007708  38 1E 04 C4 */	addi r0, r30, 0x4c4
/* 8000770C  7C 03 00 40 */	cmplw r3, r0
/* 80007710  40 82 00 0C */	bne lbl_8000771C
/* 80007714  38 00 00 00 */	li r0, 0
/* 80007718  90 0D 85 FC */	stw r0, data_80450B7C(r13)
lbl_8000771C:
/* 8000771C  34 1E 04 A4 */	addic. r0, r30, 0x4a4
/* 80007720  41 82 00 24 */	beq lbl_80007744
/* 80007724  34 1E 04 A4 */	addic. r0, r30, 0x4a4
/* 80007728  41 82 00 1C */	beq lbl_80007744
/* 8000772C  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 80007730  38 1E 04 A4 */	addi r0, r30, 0x4a4
/* 80007734  7C 03 00 40 */	cmplw r3, r0
/* 80007738  40 82 00 0C */	bne lbl_80007744
/* 8000773C  38 00 00 00 */	li r0, 0
/* 80007740  90 0D 86 00 */	stw r0, data_80450B80(r13)
lbl_80007744:
/* 80007744  34 1E 03 D0 */	addic. r0, r30, 0x3d0
/* 80007748  41 82 00 58 */	beq lbl_800077A0
/* 8000774C  34 7E 03 DC */	addic. r3, r30, 0x3dc
/* 80007750  41 82 00 08 */	beq lbl_80007758
/* 80007754  48 29 AA 31 */	bl releaseSound__14JAISoundHandleFv
lbl_80007758:
/* 80007758  34 7E 03 D8 */	addic. r3, r30, 0x3d8
/* 8000775C  41 82 00 08 */	beq lbl_80007764
/* 80007760  48 29 AA 25 */	bl releaseSound__14JAISoundHandleFv
lbl_80007764:
/* 80007764  34 7E 03 D4 */	addic. r3, r30, 0x3d4
/* 80007768  41 82 00 08 */	beq lbl_80007770
/* 8000776C  48 29 AA 19 */	bl releaseSound__14JAISoundHandleFv
lbl_80007770:
/* 80007770  34 1E 03 D0 */	addic. r0, r30, 0x3d0
/* 80007774  41 82 00 0C */	beq lbl_80007780
/* 80007778  38 7E 03 D0 */	addi r3, r30, 0x3d0
/* 8000777C  48 29 AA 09 */	bl releaseSound__14JAISoundHandleFv
lbl_80007780:
/* 80007780  34 1E 03 D0 */	addic. r0, r30, 0x3d0
/* 80007784  41 82 00 1C */	beq lbl_800077A0
/* 80007788  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 8000778C  38 1E 03 D0 */	addi r0, r30, 0x3d0
/* 80007790  7C 03 00 40 */	cmplw r3, r0
/* 80007794  40 82 00 0C */	bne lbl_800077A0
/* 80007798  38 00 00 00 */	li r0, 0
/* 8000779C  90 0D 86 04 */	stw r0, data_80450B84(r13)
lbl_800077A0:
/* 800077A0  28 1E 00 00 */	cmplwi r30, 0
/* 800077A4  41 82 00 68 */	beq lbl_8000780C
/* 800077A8  38 7E 01 D4 */	addi r3, r30, 0x1d4
/* 800077AC  3C 80 80 00 */	lis r4, __dt__12Z2MultiSeObjFv@ha
/* 800077B0  38 84 78 88 */	addi r4, r4, __dt__12Z2MultiSeObjFv@l
/* 800077B4  38 A0 00 24 */	li r5, 0x24
/* 800077B8  38 C0 00 0A */	li r6, 0xa
/* 800077BC  48 35 A5 2D */	bl __destroy_arr
/* 800077C0  38 7E 00 68 */	addi r3, r30, 0x68
/* 800077C4  3C 80 80 00 */	lis r4, __dt__12Z2MultiSeObjFv@ha
/* 800077C8  38 84 78 88 */	addi r4, r4, __dt__12Z2MultiSeObjFv@l
/* 800077CC  38 A0 00 24 */	li r5, 0x24
/* 800077D0  38 C0 00 0A */	li r6, 0xa
/* 800077D4  48 35 A5 15 */	bl __destroy_arr
/* 800077D8  7F C3 F3 78 */	mr r3, r30
/* 800077DC  3C 80 80 00 */	lis r4, __dt__14JAISoundHandleFv@ha
/* 800077E0  38 84 78 38 */	addi r4, r4, __dt__14JAISoundHandleFv@l
/* 800077E4  38 A0 00 04 */	li r5, 4
/* 800077E8  38 C0 00 18 */	li r6, 0x18
/* 800077EC  48 35 A4 FD */	bl __destroy_arr
/* 800077F0  28 1E 00 00 */	cmplwi r30, 0
/* 800077F4  41 82 00 18 */	beq lbl_8000780C
/* 800077F8  80 0D 86 08 */	lwz r0, data_80450B88(r13)
/* 800077FC  7C 00 F0 40 */	cmplw r0, r30
/* 80007800  40 82 00 0C */	bne lbl_8000780C
/* 80007804  38 00 00 00 */	li r0, 0
/* 80007808  90 0D 86 08 */	stw r0, data_80450B88(r13)
lbl_8000780C:
/* 8000780C  7F E0 07 35 */	extsh. r0, r31
/* 80007810  40 81 00 0C */	ble lbl_8000781C
/* 80007814  7F C3 F3 78 */	mr r3, r30
/* 80007818  48 2C 75 25 */	bl __dl__FPv
lbl_8000781C:
/* 8000781C  7F C3 F3 78 */	mr r3, r30
/* 80007820  39 61 00 20 */	addi r11, r1, 0x20
/* 80007824  48 35 AA 05 */	bl _restgpr_29
/* 80007828  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000782C  7C 08 03 A6 */	mtlr r0
/* 80007830  38 21 00 20 */	addi r1, r1, 0x20
/* 80007834  4E 80 00 20 */	blr 
