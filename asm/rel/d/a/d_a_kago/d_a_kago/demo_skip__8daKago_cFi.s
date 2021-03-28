lbl_8084A6E4:
/* 8084A6E4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8084A6E8  7C 08 02 A6 */	mflr r0
/* 8084A6EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8084A6F0  39 61 00 50 */	addi r11, r1, 0x50
/* 8084A6F4  4B B1 7A E4 */	b _savegpr_28
/* 8084A6F8  7C 7F 1B 78 */	mr r31, r3
/* 8084A6FC  7C 9C 23 78 */	mr r28, r4
/* 8084A700  3C 60 80 85 */	lis r3, lit_3929@ha
/* 8084A704  3B C3 4B 04 */	addi r30, r3, lit_3929@l
/* 8084A708  4B 93 6F 38 */	b dCam_getBody__Fv
/* 8084A70C  7C 7D 1B 78 */	mr r29, r3
/* 8084A710  28 1C 00 0A */	cmplwi r28, 0xa
/* 8084A714  41 81 03 38 */	bgt lbl_8084AA4C
/* 8084A718  3C 60 80 85 */	lis r3, lit_4496@ha
/* 8084A71C  38 63 4D C8 */	addi r3, r3, lit_4496@l
/* 8084A720  57 80 10 3A */	slwi r0, r28, 2
/* 8084A724  7C 03 00 2E */	lwzx r0, r3, r0
/* 8084A728  7C 09 03 A6 */	mtctr r0
/* 8084A72C  4E 80 04 20 */	bctr 
lbl_8084A730:
/* 8084A730  38 00 00 02 */	li r0, 2
/* 8084A734  90 1F 07 48 */	stw r0, 0x748(r31)
/* 8084A738  38 00 00 00 */	li r0, 0
/* 8084A73C  90 1F 07 4C */	stw r0, 0x74c(r31)
/* 8084A740  48 00 03 0C */	b lbl_8084AA4C
lbl_8084A744:
/* 8084A744  38 00 00 00 */	li r0, 0
/* 8084A748  90 1F 07 28 */	stw r0, 0x728(r31)
/* 8084A74C  48 00 03 00 */	b lbl_8084AA4C
lbl_8084A750:
/* 8084A750  38 7F 0B 58 */	addi r3, r31, 0xb58
/* 8084A754  4B 9F FD 70 */	b remove__10dMsgFlow_cFv
lbl_8084A758:
/* 8084A758  7F E3 FB 78 */	mr r3, r31
/* 8084A75C  48 00 03 E5 */	bl setMidnaRideOn__8daKago_cFv
/* 8084A760  7F E3 FB 78 */	mr r3, r31
/* 8084A764  48 00 04 29 */	bl setPlayerRideOn__8daKago_cFv
/* 8084A768  38 00 00 00 */	li r0, 0
/* 8084A76C  B0 1F 07 1A */	sth r0, 0x71a(r31)
/* 8084A770  B0 1F 07 18 */	sth r0, 0x718(r31)
/* 8084A774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084A778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084A77C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8084A780  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8084A784  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8084A788  A0 84 00 A8 */	lhz r4, 0xa8(r4)
/* 8084A78C  4B 7E A2 00 */	b onEventBit__11dSv_event_cFUs
/* 8084A790  38 00 00 07 */	li r0, 7
/* 8084A794  90 1F 07 48 */	stw r0, 0x748(r31)
/* 8084A798  38 00 00 00 */	li r0, 0
/* 8084A79C  90 1F 07 4C */	stw r0, 0x74c(r31)
/* 8084A7A0  48 00 02 AC */	b lbl_8084AA4C
lbl_8084A7A4:
/* 8084A7A4  7F E3 FB 78 */	mr r3, r31
/* 8084A7A8  38 80 00 00 */	li r4, 0
/* 8084A7AC  48 00 06 CD */	bl setSceneChange__8daKago_cFi
/* 8084A7B0  38 00 00 01 */	li r0, 1
/* 8084A7B4  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 8084A7B8  48 00 02 94 */	b lbl_8084AA4C
lbl_8084A7BC:
/* 8084A7BC  7F E3 FB 78 */	mr r3, r31
/* 8084A7C0  38 80 00 03 */	li r4, 3
/* 8084A7C4  48 00 06 B5 */	bl setSceneChange__8daKago_cFi
/* 8084A7C8  2C 03 00 00 */	cmpwi r3, 0
/* 8084A7CC  41 82 02 80 */	beq lbl_8084AA4C
/* 8084A7D0  2C 1C 00 05 */	cmpwi r28, 5
/* 8084A7D4  40 82 00 10 */	bne lbl_8084A7E4
/* 8084A7D8  38 00 00 06 */	li r0, 6
/* 8084A7DC  90 1F 07 48 */	stw r0, 0x748(r31)
/* 8084A7E0  48 00 02 6C */	b lbl_8084AA4C
lbl_8084A7E4:
/* 8084A7E4  38 00 00 05 */	li r0, 5
/* 8084A7E8  90 1F 07 48 */	stw r0, 0x748(r31)
/* 8084A7EC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8084A7F0  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 8084A7F4  48 00 02 58 */	b lbl_8084AA4C
lbl_8084A7F8:
/* 8084A7F8  7F E3 FB 78 */	mr r3, r31
/* 8084A7FC  48 00 03 CD */	bl setRideOff__8daKago_cFv
lbl_8084A800:
/* 8084A800  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8084A804  D0 1F 06 8C */	stfs f0, 0x68c(r31)
/* 8084A808  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8084A80C  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 8084A810  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8084A814  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 8084A818  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 8084A81C  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 8084A820  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 8084A824  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 8084A828  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 8084A82C  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 8084A830  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 8084A834  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 8084A838  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8084A83C  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 8084A840  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8084A844  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 8084A848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084A84C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084A850  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8084A854  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 8084A858  38 A0 00 00 */	li r5, 0
/* 8084A85C  38 C0 00 00 */	li r6, 0
/* 8084A860  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8084A864  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8084A868  7D 89 03 A6 */	mtctr r12
/* 8084A86C  4E 80 04 21 */	bctrl 
/* 8084A870  38 00 00 00 */	li r0, 0
/* 8084A874  98 1F 06 DE */	stb r0, 0x6de(r31)
/* 8084A878  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8084A87C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8084A880  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8084A884  7F E3 FB 78 */	mr r3, r31
/* 8084A888  38 80 00 04 */	li r4, 4
/* 8084A88C  38 A0 00 00 */	li r5, 0
/* 8084A890  48 00 02 09 */	bl setActionMode__8daKago_cFii
/* 8084A894  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 8084A898  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8084A89C  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 8084A8A0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8084A8A4  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 8084A8A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8084A8AC  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 8084A8B0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8084A8B4  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 8084A8B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8084A8BC  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 8084A8C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8084A8C4  7F A3 EB 78 */	mr r3, r29
/* 8084A8C8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8084A8CC  38 A1 00 20 */	addi r5, r1, 0x20
/* 8084A8D0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8084A8D4  38 C0 00 00 */	li r6, 0
/* 8084A8D8  4B 93 62 08 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8084A8DC  7F A3 EB 78 */	mr r3, r29
/* 8084A8E0  4B 93 63 88 */	b Reset__9dCamera_cFv
/* 8084A8E4  7F A3 EB 78 */	mr r3, r29
/* 8084A8E8  4B 91 6B C4 */	b Start__9dCamera_cFv
/* 8084A8EC  7F A3 EB 78 */	mr r3, r29
/* 8084A8F0  38 80 00 00 */	li r4, 0
/* 8084A8F4  4B 91 87 18 */	b SetTrimSize__9dCamera_cFl
/* 8084A8F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084A8FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084A900  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084A904  4B 7F 7B 64 */	b reset__14dEvt_control_cFv
/* 8084A908  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8084A90C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8084A910  80 63 00 00 */	lwz r3, 0(r3)
/* 8084A914  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 8084A918  38 80 00 00 */	li r4, 0
/* 8084A91C  4B A6 B8 CC */	b setDemoName__11Z2StatusMgrFPc
/* 8084A920  48 00 01 2C */	b lbl_8084AA4C
lbl_8084A924:
/* 8084A924  7F E3 FB 78 */	mr r3, r31
/* 8084A928  48 00 02 A1 */	bl setRideOff__8daKago_cFv
lbl_8084A92C:
/* 8084A92C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 8084A930  D0 1F 06 8C */	stfs f0, 0x68c(r31)
/* 8084A934  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 8084A938  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 8084A93C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8084A940  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 8084A944  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8084A948  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 8084A94C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8084A950  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 8084A954  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8084A958  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 8084A95C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 8084A960  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 8084A964  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 8084A968  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 8084A96C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8084A970  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 8084A974  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084A978  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084A97C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8084A980  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 8084A984  38 A0 00 00 */	li r5, 0
/* 8084A988  38 C0 00 00 */	li r6, 0
/* 8084A98C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8084A990  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8084A994  7D 89 03 A6 */	mtctr r12
/* 8084A998  4E 80 04 21 */	bctrl 
/* 8084A99C  38 00 00 00 */	li r0, 0
/* 8084A9A0  98 1F 06 DE */	stb r0, 0x6de(r31)
/* 8084A9A4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8084A9A8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8084A9AC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8084A9B0  7F E3 FB 78 */	mr r3, r31
/* 8084A9B4  38 80 00 04 */	li r4, 4
/* 8084A9B8  38 A0 00 00 */	li r5, 0
/* 8084A9BC  48 00 00 DD */	bl setActionMode__8daKago_cFii
/* 8084A9C0  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 8084A9C4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8084A9C8  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 8084A9CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8084A9D0  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 8084A9D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8084A9D8  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 8084A9DC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8084A9E0  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 8084A9E4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8084A9E8  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 8084A9EC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8084A9F0  7F A3 EB 78 */	mr r3, r29
/* 8084A9F4  38 81 00 14 */	addi r4, r1, 0x14
/* 8084A9F8  38 A1 00 08 */	addi r5, r1, 8
/* 8084A9FC  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8084AA00  38 C0 00 00 */	li r6, 0
/* 8084AA04  4B 93 60 DC */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8084AA08  7F A3 EB 78 */	mr r3, r29
/* 8084AA0C  4B 93 62 5C */	b Reset__9dCamera_cFv
/* 8084AA10  7F A3 EB 78 */	mr r3, r29
/* 8084AA14  4B 91 6A 98 */	b Start__9dCamera_cFv
/* 8084AA18  7F A3 EB 78 */	mr r3, r29
/* 8084AA1C  38 80 00 00 */	li r4, 0
/* 8084AA20  4B 91 85 EC */	b SetTrimSize__9dCamera_cFl
/* 8084AA24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084AA28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084AA2C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8084AA30  4B 7F 7A 38 */	b reset__14dEvt_control_cFv
/* 8084AA34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8084AA38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8084AA3C  80 63 00 00 */	lwz r3, 0(r3)
/* 8084AA40  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 8084AA44  38 80 00 00 */	li r4, 0
/* 8084AA48  4B A6 B7 A0 */	b setDemoName__11Z2StatusMgrFPc
lbl_8084AA4C:
/* 8084AA4C  39 61 00 50 */	addi r11, r1, 0x50
/* 8084AA50  4B B1 77 D4 */	b _restgpr_28
/* 8084AA54  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8084AA58  7C 08 03 A6 */	mtlr r0
/* 8084AA5C  38 21 00 50 */	addi r1, r1, 0x50
/* 8084AA60  4E 80 00 20 */	blr 
