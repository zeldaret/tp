lbl_8081D594:
/* 8081D594  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8081D598  7C 08 02 A6 */	mflr r0
/* 8081D59C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8081D5A0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8081D5A4  4B B4 4C 35 */	bl _savegpr_28
/* 8081D5A8  7C 7D 1B 78 */	mr r29, r3
/* 8081D5AC  3C 80 80 82 */	lis r4, lit_3791@ha /* 0x808218AC@ha */
/* 8081D5B0  3B E4 18 AC */	addi r31, r4, lit_3791@l /* 0x808218AC@l */
/* 8081D5B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081D5B8  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081D5BC  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 8081D5C0  7C 00 07 74 */	extsb r0, r0
/* 8081D5C4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8081D5C8  7C 85 02 14 */	add r4, r5, r0
/* 8081D5CC  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 8081D5D0  83 85 5D AC */	lwz r28, 0x5dac(r5)
/* 8081D5D4  80 03 06 B8 */	lwz r0, 0x6b8(r3)
/* 8081D5D8  2C 00 00 03 */	cmpwi r0, 3
/* 8081D5DC  41 82 04 08 */	beq lbl_8081D9E4
/* 8081D5E0  40 80 00 14 */	bge lbl_8081D5F4
/* 8081D5E4  2C 00 00 00 */	cmpwi r0, 0
/* 8081D5E8  41 82 00 18 */	beq lbl_8081D600
/* 8081D5EC  40 80 02 08 */	bge lbl_8081D7F4
/* 8081D5F0  48 00 05 C8 */	b lbl_8081DBB8
lbl_8081D5F4:
/* 8081D5F4  2C 00 00 05 */	cmpwi r0, 5
/* 8081D5F8  40 80 05 C0 */	bge lbl_8081DBB8
/* 8081D5FC  48 00 04 74 */	b lbl_8081DA70
lbl_8081D600:
/* 8081D600  4B FF A5 D9 */	bl setDownHamonEffect__9daE_YMB_cFv
/* 8081D604  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8081D608  28 00 00 02 */	cmplwi r0, 2
/* 8081D60C  41 82 00 2C */	beq lbl_8081D638
/* 8081D610  7F A3 EB 78 */	mr r3, r29
/* 8081D614  38 80 00 02 */	li r4, 2
/* 8081D618  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8081D61C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8081D620  38 C0 00 00 */	li r6, 0
/* 8081D624  4B 7F E2 E5 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8081D628  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8081D62C  60 00 00 02 */	ori r0, r0, 2
/* 8081D630  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 8081D634  48 00 05 84 */	b lbl_8081DBB8
lbl_8081D638:
/* 8081D638  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702BC@ha */
/* 8081D63C  38 03 02 BC */	addi r0, r3, 0x02BC /* 0x000702BC@l */
/* 8081D640  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081D644  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081D648  38 81 00 0C */	addi r4, r1, 0xc
/* 8081D64C  38 A0 FF FF */	li r5, -1
/* 8081D650  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081D654  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8081D658  7D 89 03 A6 */	mtctr r12
/* 8081D65C  4E 80 04 21 */	bctrl 
/* 8081D660  7F A3 EB 78 */	mr r3, r29
/* 8081D664  38 80 00 0F */	li r4, 0xf
/* 8081D668  38 A0 00 00 */	li r5, 0
/* 8081D66C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8081D670  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081D674  4B FF 93 09 */	bl setBck__9daE_YMB_cFiUcff
/* 8081D678  38 00 00 00 */	li r0, 0
/* 8081D67C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8081D680  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081D684  4B 94 3E 4D */	bl Stop__9dCamera_cFv
/* 8081D688  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081D68C  38 80 00 03 */	li r4, 3
/* 8081D690  4B 94 59 7D */	bl SetTrimSize__9dCamera_cFl
/* 8081D694  C0 3D 06 CC */	lfs f1, 0x6cc(r29)
/* 8081D698  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8081D69C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8081D6A0  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 8081D6A4  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8081D6A8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8081D6AC  38 00 08 00 */	li r0, 0x800
/* 8081D6B0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8081D6B4  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8081D6B8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8081D6BC  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 8081D6C0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8081D6C4  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8081D6C8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8081D6CC  7F 83 E3 78 */	mr r3, r28
/* 8081D6D0  38 81 00 70 */	addi r4, r1, 0x70
/* 8081D6D4  38 A0 65 00 */	li r5, 0x6500
/* 8081D6D8  38 C0 00 00 */	li r6, 0
/* 8081D6DC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8081D6E0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8081D6E4  7D 89 03 A6 */	mtctr r12
/* 8081D6E8  4E 80 04 21 */	bctrl 
/* 8081D6EC  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8081D6F0  80 63 00 04 */	lwz r3, 4(r3)
/* 8081D6F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8081D6F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8081D6FC  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8081D700  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081D704  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081D708  4B B2 8D A9 */	bl PSMTXCopy
/* 8081D70C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081D710  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081D714  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8081D718  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8081D71C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8081D720  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 8081D724  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8081D728  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8081D72C  38 00 6F 00 */	li r0, 0x6f00
/* 8081D730  B0 1D 07 60 */	sth r0, 0x760(r29)
/* 8081D734  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8081D738  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 8081D73C  C0 3D 07 5C */	lfs f1, 0x75c(r29)
/* 8081D740  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081D744  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8081D748  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8081D74C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8081D750  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8081D754  38 7D 07 28 */	addi r3, r29, 0x728
/* 8081D758  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8081D75C  A8 BD 07 60 */	lha r5, 0x760(r29)
/* 8081D760  38 C1 00 7C */	addi r6, r1, 0x7c
/* 8081D764  4B A5 36 5D */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081D768  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8081D76C  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 8081D770  C0 1D 07 34 */	lfs f0, 0x734(r29)
/* 8081D774  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8081D778  C0 1D 07 38 */	lfs f0, 0x738(r29)
/* 8081D77C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8081D780  C0 1D 07 3C */	lfs f0, 0x73c(r29)
/* 8081D784  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8081D788  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 8081D78C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8081D790  C0 1D 07 2C */	lfs f0, 0x72c(r29)
/* 8081D794  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8081D798  C0 1D 07 30 */	lfs f0, 0x730(r29)
/* 8081D79C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8081D7A0  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081D7A4  38 81 00 64 */	addi r4, r1, 0x64
/* 8081D7A8  38 A1 00 58 */	addi r5, r1, 0x58
/* 8081D7AC  C0 3D 07 58 */	lfs f1, 0x758(r29)
/* 8081D7B0  38 C0 00 00 */	li r6, 0
/* 8081D7B4  4B 96 33 2D */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 8081D7B8  38 00 65 00 */	li r0, 0x6500
/* 8081D7BC  B0 1D 06 E6 */	sth r0, 0x6e6(r29)
/* 8081D7C0  38 00 00 28 */	li r0, 0x28
/* 8081D7C4  B0 1D 07 62 */	sth r0, 0x762(r29)
/* 8081D7C8  38 00 01 0E */	li r0, 0x10e
/* 8081D7CC  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081D7D0  38 00 00 02 */	li r0, 2
/* 8081D7D4  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081D7D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081D7DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081D7E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8081D7E4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081D7E8  38 80 00 01 */	li r4, 1
/* 8081D7EC  4B A9 69 79 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 8081D7F0  48 00 03 C8 */	b lbl_8081DBB8
lbl_8081D7F4:
/* 8081D7F4  4B FF A3 E5 */	bl setDownHamonEffect__9daE_YMB_cFv
/* 8081D7F8  38 7D 06 E6 */	addi r3, r29, 0x6e6
/* 8081D7FC  38 80 E4 00 */	li r4, -7168
/* 8081D800  38 A0 00 08 */	li r5, 8
/* 8081D804  38 C0 02 00 */	li r6, 0x200
/* 8081D808  38 E0 00 80 */	li r7, 0x80
/* 8081D80C  4B A5 2D 35 */	bl cLib_addCalcAngleS__FPsssss
/* 8081D810  7F 83 E3 78 */	mr r3, r28
/* 8081D814  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8081D818  A8 BD 06 E6 */	lha r5, 0x6e6(r29)
/* 8081D81C  38 C0 00 00 */	li r6, 0
/* 8081D820  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8081D824  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8081D828  7D 89 03 A6 */	mtctr r12
/* 8081D82C  4E 80 04 21 */	bctrl 
/* 8081D830  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8081D834  80 63 00 04 */	lwz r3, 4(r3)
/* 8081D838  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8081D83C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8081D840  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8081D844  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081D848  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081D84C  4B B2 8C 65 */	bl PSMTXCopy
/* 8081D850  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081D854  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081D858  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8081D85C  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8081D860  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8081D864  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 8081D868  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8081D86C  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8081D870  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081D874  2C 00 00 00 */	cmpwi r0, 0
/* 8081D878  40 82 00 14 */	bne lbl_8081D88C
/* 8081D87C  38 7D 07 62 */	addi r3, r29, 0x762
/* 8081D880  38 80 00 00 */	li r4, 0
/* 8081D884  38 A0 00 04 */	li r5, 4
/* 8081D888  4B A5 33 09 */	bl cLib_chaseAngleS__FPsss
lbl_8081D88C:
/* 8081D88C  A8 7D 07 60 */	lha r3, 0x760(r29)
/* 8081D890  A8 1D 07 62 */	lha r0, 0x762(r29)
/* 8081D894  7C 03 02 14 */	add r0, r3, r0
/* 8081D898  B0 1D 07 60 */	sth r0, 0x760(r29)
/* 8081D89C  38 7D 07 5C */	addi r3, r29, 0x75c
/* 8081D8A0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 8081D8A4  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 8081D8A8  4B A5 2E 99 */	bl cLib_chaseF__FPfff
/* 8081D8AC  C0 3D 07 5C */	lfs f1, 0x75c(r29)
/* 8081D8B0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081D8B4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8081D8B8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8081D8BC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8081D8C0  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8081D8C4  38 7D 07 28 */	addi r3, r29, 0x728
/* 8081D8C8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8081D8CC  A8 BD 07 60 */	lha r5, 0x760(r29)
/* 8081D8D0  38 C1 00 7C */	addi r6, r1, 0x7c
/* 8081D8D4  4B A5 34 ED */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081D8D8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8081D8DC  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 8081D8E0  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 8081D8E4  2C 00 00 02 */	cmpwi r0, 2
/* 8081D8E8  40 82 00 B0 */	bne lbl_8081D998
/* 8081D8EC  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8081D8F0  38 63 00 0C */	addi r3, r3, 0xc
/* 8081D8F4  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 8081D8F8  4B B0 AB 35 */	bl checkPass__12J3DFrameCtrlFf
/* 8081D8FC  2C 03 00 00 */	cmpwi r3, 0
/* 8081D900  41 82 00 38 */	beq lbl_8081D938
/* 8081D904  7F A3 EB 78 */	mr r3, r29
/* 8081D908  4B FF 9E 3D */	bl setWaterEffect1__9daE_YMB_cFv
/* 8081D90C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029D@ha */
/* 8081D910  38 03 02 9D */	addi r0, r3, 0x029D /* 0x0007029D@l */
/* 8081D914  90 01 00 08 */	stw r0, 8(r1)
/* 8081D918  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081D91C  38 81 00 08 */	addi r4, r1, 8
/* 8081D920  38 A0 00 00 */	li r5, 0
/* 8081D924  38 C0 FF FF */	li r6, -1
/* 8081D928  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081D92C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8081D930  7D 89 03 A6 */	mtctr r12
/* 8081D934  4E 80 04 21 */	bctrl 
lbl_8081D938:
/* 8081D938  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8081D93C  38 63 00 0C */	addi r3, r3, 0xc
/* 8081D940  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 8081D944  4B B0 AA E9 */	bl checkPass__12J3DFrameCtrlFf
/* 8081D948  2C 03 00 00 */	cmpwi r3, 0
/* 8081D94C  41 82 00 4C */	beq lbl_8081D998
/* 8081D950  38 00 00 03 */	li r0, 3
/* 8081D954  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081D958  38 00 00 3C */	li r0, 0x3c
/* 8081D95C  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081D960  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8081D964  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 8081D968  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8081D96C  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 8081D970  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8081D974  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8081D978  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8081D97C  D0 1D 07 28 */	stfs f0, 0x728(r29)
/* 8081D980  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8081D984  D0 1D 07 2C */	stfs f0, 0x72c(r29)
/* 8081D988  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 8081D98C  D0 1D 07 30 */	stfs f0, 0x730(r29)
/* 8081D990  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8081D994  D0 1D 07 5C */	stfs f0, 0x75c(r29)
lbl_8081D998:
/* 8081D998  C0 1D 07 34 */	lfs f0, 0x734(r29)
/* 8081D99C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081D9A0  C0 1D 07 38 */	lfs f0, 0x738(r29)
/* 8081D9A4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8081D9A8  C0 1D 07 3C */	lfs f0, 0x73c(r29)
/* 8081D9AC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8081D9B0  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 8081D9B4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8081D9B8  C0 1D 07 2C */	lfs f0, 0x72c(r29)
/* 8081D9BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8081D9C0  C0 1D 07 30 */	lfs f0, 0x730(r29)
/* 8081D9C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081D9C8  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081D9CC  38 81 00 4C */	addi r4, r1, 0x4c
/* 8081D9D0  38 A1 00 40 */	addi r5, r1, 0x40
/* 8081D9D4  C0 3D 07 58 */	lfs f1, 0x758(r29)
/* 8081D9D8  38 C0 00 00 */	li r6, 0
/* 8081D9DC  4B 96 31 05 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 8081D9E0  48 00 01 D8 */	b lbl_8081DBB8
lbl_8081D9E4:
/* 8081D9E4  4B FF A1 F5 */	bl setDownHamonEffect__9daE_YMB_cFv
/* 8081D9E8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8081D9EC  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 8081D9F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8081D9F4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8081D9F8  38 7D 06 E0 */	addi r3, r29, 0x6e0
/* 8081D9FC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8081DA00  4B A5 2D 41 */	bl cLib_chaseF__FPfff
/* 8081DA04  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8081DA08  38 80 00 01 */	li r4, 1
/* 8081DA0C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8081DA10  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8081DA14  40 82 00 18 */	bne lbl_8081DA2C
/* 8081DA18  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081DA1C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8081DA20  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081DA24  41 82 00 08 */	beq lbl_8081DA2C
/* 8081DA28  38 80 00 00 */	li r4, 0
lbl_8081DA2C:
/* 8081DA2C  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8081DA30  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081DA34  7C 00 00 34 */	cntlzw r0, r0
/* 8081DA38  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 8081DA3C  7C 00 18 39 */	and. r0, r0, r3
/* 8081DA40  41 82 01 78 */	beq lbl_8081DBB8
/* 8081DA44  38 00 00 01 */	li r0, 1
/* 8081DA48  98 1D 07 10 */	stb r0, 0x710(r29)
/* 8081DA4C  38 00 00 04 */	li r0, 4
/* 8081DA50  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081DA54  38 00 00 5A */	li r0, 0x5a
/* 8081DA58  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081DA5C  7F A3 EB 78 */	mr r3, r29
/* 8081DA60  4B FF FA 79 */	bl setCreateDrop__9daE_YMB_cFv
/* 8081DA64  7F A3 EB 78 */	mr r3, r29
/* 8081DA68  4B FF A5 75 */	bl setDeathEffect__9daE_YMB_cFv
/* 8081DA6C  48 00 01 4C */	b lbl_8081DBB8
lbl_8081DA70:
/* 8081DA70  38 7D 07 5C */	addi r3, r29, 0x75c
/* 8081DA74  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 8081DA78  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081DA7C  4B A5 2C C5 */	bl cLib_chaseF__FPfff
/* 8081DA80  C0 3D 07 38 */	lfs f1, 0x738(r29)
/* 8081DA84  C0 1D 07 5C */	lfs f0, 0x75c(r29)
/* 8081DA88  EC 01 00 2A */	fadds f0, f1, f0
/* 8081DA8C  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 8081DA90  C0 1D 07 34 */	lfs f0, 0x734(r29)
/* 8081DA94  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8081DA98  C0 1D 07 38 */	lfs f0, 0x738(r29)
/* 8081DA9C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8081DAA0  C0 1D 07 3C */	lfs f0, 0x73c(r29)
/* 8081DAA4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8081DAA8  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 8081DAAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8081DAB0  C0 1D 07 2C */	lfs f0, 0x72c(r29)
/* 8081DAB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8081DAB8  C0 1D 07 30 */	lfs f0, 0x730(r29)
/* 8081DABC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8081DAC0  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081DAC4  38 81 00 34 */	addi r4, r1, 0x34
/* 8081DAC8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8081DACC  C0 3D 07 58 */	lfs f1, 0x758(r29)
/* 8081DAD0  38 C0 00 00 */	li r6, 0
/* 8081DAD4  4B 96 30 0D */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 8081DAD8  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081DADC  2C 00 00 00 */	cmpwi r0, 0
/* 8081DAE0  40 82 00 D8 */	bne lbl_8081DBB8
/* 8081DAE4  88 9D 06 C0 */	lbz r4, 0x6c0(r29)
/* 8081DAE8  28 04 00 FF */	cmplwi r4, 0xff
/* 8081DAEC  41 82 00 38 */	beq lbl_8081DB24
/* 8081DAF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DAF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DAF8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8081DAFC  7C 05 07 74 */	extsb r5, r0
/* 8081DB00  4B 81 78 61 */	bl isSwitch__10dSv_info_cCFii
/* 8081DB04  2C 03 00 00 */	cmpwi r3, 0
/* 8081DB08  40 82 00 1C */	bne lbl_8081DB24
/* 8081DB0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DB10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DB14  88 9D 06 C0 */	lbz r4, 0x6c0(r29)
/* 8081DB18  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8081DB1C  7C 05 07 74 */	extsb r5, r0
/* 8081DB20  4B 81 76 E1 */	bl onSwitch__10dSv_info_cFii
lbl_8081DB24:
/* 8081DB24  C0 1D 07 34 */	lfs f0, 0x734(r29)
/* 8081DB28  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8081DB2C  C0 1D 07 38 */	lfs f0, 0x738(r29)
/* 8081DB30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8081DB34  C0 1D 07 3C */	lfs f0, 0x73c(r29)
/* 8081DB38  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8081DB3C  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 8081DB40  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8081DB44  C0 1D 07 2C */	lfs f0, 0x72c(r29)
/* 8081DB48  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8081DB4C  C0 1D 07 30 */	lfs f0, 0x730(r29)
/* 8081DB50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8081DB54  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081DB58  38 81 00 1C */	addi r4, r1, 0x1c
/* 8081DB5C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8081DB60  4B 96 30 B9 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 8081DB64  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081DB68  4B 94 39 45 */	bl Start__9dCamera_cFv
/* 8081DB6C  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081DB70  38 80 00 00 */	li r4, 0
/* 8081DB74  4B 94 54 99 */	bl SetTrimSize__9dCamera_cFl
/* 8081DB78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DB7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DB80  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8081DB84  4B 82 48 E5 */	bl reset__14dEvt_control_cFv
/* 8081DB88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DB8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DB90  38 80 00 05 */	li r4, 5
/* 8081DB94  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8081DB98  7C 05 07 74 */	extsb r5, r0
/* 8081DB9C  4B 81 77 15 */	bl offSwitch__10dSv_info_cFii
/* 8081DBA0  38 60 00 0F */	li r3, 0xf
/* 8081DBA4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8081DBA8  7C 04 07 74 */	extsb r4, r0
/* 8081DBAC  4B 80 FF 55 */	bl dComIfGs_offOneZoneSwitch__Fii
/* 8081DBB0  7F A3 EB 78 */	mr r3, r29
/* 8081DBB4  4B 7F C0 C9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8081DBB8:
/* 8081DBB8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8081DBBC  4B B4 46 69 */	bl _restgpr_28
/* 8081DBC0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8081DBC4  7C 08 03 A6 */	mtlr r0
/* 8081DBC8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8081DBCC  4E 80 00 20 */	blr 
