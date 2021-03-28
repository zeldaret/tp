lbl_80641640:
/* 80641640  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80641644  7C 08 02 A6 */	mflr r0
/* 80641648  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8064164C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80641650  4B D2 0B 80 */	b _savegpr_26
/* 80641654  7C 7A 1B 78 */	mr r26, r3
/* 80641658  3C 80 80 65 */	lis r4, lit_3757@ha
/* 8064165C  3B A4 EB 1C */	addi r29, r4, lit_3757@l
/* 80641660  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80641664  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80641668  88 1E 5D B0 */	lbz r0, 0x5db0(r30)
/* 8064166C  7C 00 07 74 */	extsb r0, r0
/* 80641670  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80641674  7C 9E 02 14 */	add r4, r30, r0
/* 80641678  83 84 5D 74 */	lwz r28, 0x5d74(r4)
/* 8064167C  83 7E 5D AC */	lwz r27, 0x5dac(r30)
/* 80641680  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80641684  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80641688  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 8064168C  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80641690  80 03 06 DC */	lwz r0, 0x6dc(r3)
/* 80641694  2C 00 00 17 */	cmpwi r0, 0x17
/* 80641698  41 82 0B BC */	beq lbl_80642254
/* 8064169C  40 80 00 60 */	bge lbl_806416FC
/* 806416A0  2C 00 00 05 */	cmpwi r0, 5
/* 806416A4  41 82 03 94 */	beq lbl_80641A38
/* 806416A8  40 80 00 2C */	bge lbl_806416D4
/* 806416AC  2C 00 00 02 */	cmpwi r0, 2
/* 806416B0  41 82 02 14 */	beq lbl_806418C4
/* 806416B4  40 80 00 14 */	bge lbl_806416C8
/* 806416B8  2C 00 00 00 */	cmpwi r0, 0
/* 806416BC  41 82 00 9C */	beq lbl_80641758
/* 806416C0  40 80 01 84 */	bge lbl_80641844
/* 806416C4  48 00 10 A4 */	b lbl_80642768
lbl_806416C8:
/* 806416C8  2C 00 00 04 */	cmpwi r0, 4
/* 806416CC  40 80 02 A0 */	bge lbl_8064196C
/* 806416D0  48 00 10 98 */	b lbl_80642768
lbl_806416D4:
/* 806416D4  2C 00 00 14 */	cmpwi r0, 0x14
/* 806416D8  41 82 09 F8 */	beq lbl_806420D0
/* 806416DC  40 80 00 14 */	bge lbl_806416F0
/* 806416E0  2C 00 00 07 */	cmpwi r0, 7
/* 806416E4  41 82 03 B8 */	beq lbl_80641A9C
/* 806416E8  40 80 10 80 */	bge lbl_80642768
/* 806416EC  48 00 03 6C */	b lbl_80641A58
lbl_806416F0:
/* 806416F0  2C 00 00 16 */	cmpwi r0, 0x16
/* 806416F4  40 80 0B 40 */	bge lbl_80642234
/* 806416F8  48 00 0A C0 */	b lbl_806421B8
lbl_806416FC:
/* 806416FC  2C 00 00 65 */	cmpwi r0, 0x65
/* 80641700  41 82 04 AC */	beq lbl_80641BAC
/* 80641704  40 80 00 2C */	bge lbl_80641730
/* 80641708  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8064170C  41 82 0F 54 */	beq lbl_80642660
/* 80641710  40 80 00 14 */	bge lbl_80641724
/* 80641714  2C 00 00 19 */	cmpwi r0, 0x19
/* 80641718  41 82 0D 1C */	beq lbl_80642434
/* 8064171C  40 80 0E CC */	bge lbl_806425E8
/* 80641720  48 00 0B A8 */	b lbl_806422C8
lbl_80641724:
/* 80641724  2C 00 00 64 */	cmpwi r0, 0x64
/* 80641728  40 80 04 38 */	bge lbl_80641B60
/* 8064172C  48 00 10 3C */	b lbl_80642768
lbl_80641730:
/* 80641730  2C 00 00 69 */	cmpwi r0, 0x69
/* 80641734  41 82 06 B0 */	beq lbl_80641DE4
/* 80641738  40 80 00 14 */	bge lbl_8064174C
/* 8064173C  2C 00 00 67 */	cmpwi r0, 0x67
/* 80641740  41 82 06 08 */	beq lbl_80641D48
/* 80641744  40 80 06 68 */	bge lbl_80641DAC
/* 80641748  48 00 05 7C */	b lbl_80641CC4
lbl_8064174C:
/* 8064174C  2C 00 00 6B */	cmpwi r0, 0x6b
/* 80641750  40 80 10 18 */	bge lbl_80642768
/* 80641754  48 00 09 18 */	b lbl_8064206C
lbl_80641758:
/* 80641758  D0 3A 04 D0 */	stfs f1, 0x4d0(r26)
/* 8064175C  D0 3A 04 D4 */	stfs f1, 0x4d4(r26)
/* 80641760  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 80641764  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80641768  38 00 80 00 */	li r0, -32768
/* 8064176C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80641770  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80641774  28 00 00 02 */	cmplwi r0, 2
/* 80641778  41 82 00 28 */	beq lbl_806417A0
/* 8064177C  38 80 00 02 */	li r4, 2
/* 80641780  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80641784  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80641788  38 C0 00 04 */	li r6, 4
/* 8064178C  4B 9D A1 7C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80641790  A0 1A 00 FA */	lhz r0, 0xfa(r26)
/* 80641794  60 00 00 02 */	ori r0, r0, 2
/* 80641798  B0 1A 00 FA */	sth r0, 0xfa(r26)
/* 8064179C  48 00 10 38 */	b lbl_806427D4
lbl_806417A0:
/* 806417A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806417A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806417A8  80 63 00 00 */	lwz r3, 0(r3)
/* 806417AC  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 806417B0  3C 80 80 65 */	lis r4, stringBase0@ha
/* 806417B4  38 84 EE 60 */	addi r4, r4, stringBase0@l
/* 806417B8  38 84 00 06 */	addi r4, r4, 6
/* 806417BC  4B C7 4A 2C */	b setDemoName__11Z2StatusMgrFPc
/* 806417C0  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 806417C4  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 806417C8  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 806417CC  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 806417D0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806417D4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806417D8  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 806417DC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806417E0  7F 63 DB 78 */	mr r3, r27
/* 806417E4  38 81 00 8C */	addi r4, r1, 0x8c
/* 806417E8  38 A0 00 00 */	li r5, 0
/* 806417EC  38 C0 00 00 */	li r6, 0
/* 806417F0  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 806417F4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806417F8  7D 89 03 A6 */	mtctr r12
/* 806417FC  4E 80 04 21 */	bctrl 
/* 80641800  7F 43 D3 78 */	mr r3, r26
/* 80641804  38 80 00 2A */	li r4, 0x2a
/* 80641808  38 A0 00 02 */	li r5, 2
/* 8064180C  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80641810  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80641814  4B FF CD B1 */	bl setBck__10daB_ZANT_cFiUcff
/* 80641818  38 00 00 01 */	li r0, 1
/* 8064181C  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641820  38 00 00 1E */	li r0, 0x1e
/* 80641824  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80641828  38 7C 02 48 */	addi r3, r28, 0x248
/* 8064182C  4B B1 FC A4 */	b Stop__9dCamera_cFv
/* 80641830  38 7C 02 48 */	addi r3, r28, 0x248
/* 80641834  38 80 00 03 */	li r4, 3
/* 80641838  4B B2 17 D4 */	b SetTrimSize__9dCamera_cFl
/* 8064183C  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80641840  D0 1A 07 7C */	stfs f0, 0x77c(r26)
lbl_80641844:
/* 80641844  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80641848  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8064184C  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80641850  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80641854  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80641858  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8064185C  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80641860  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80641864  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80641868  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 8064186C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80641870  D0 3A 07 6C */	stfs f1, 0x76c(r26)
/* 80641874  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80641878  D0 1A 07 70 */	stfs f0, 0x770(r26)
/* 8064187C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80641880  D0 1A 07 74 */	stfs f0, 0x774(r26)
/* 80641884  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80641888  D0 1A 07 60 */	stfs f0, 0x760(r26)
/* 8064188C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80641890  D0 1A 07 64 */	stfs f0, 0x764(r26)
/* 80641894  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80641898  D0 1A 07 68 */	stfs f0, 0x768(r26)
/* 8064189C  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 806418A0  D0 1A 07 78 */	stfs f0, 0x778(r26)
/* 806418A4  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 806418A8  2C 00 00 00 */	cmpwi r0, 0
/* 806418AC  40 82 0E BC */	bne lbl_80642768
/* 806418B0  38 00 00 02 */	li r0, 2
/* 806418B4  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 806418B8  38 00 00 50 */	li r0, 0x50
/* 806418BC  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 806418C0  48 00 0E A8 */	b lbl_80642768
lbl_806418C4:
/* 806418C4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 806418C8  C0 1D 00 D4 */	lfs f0, 0xd4(r29)
/* 806418CC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806418D0  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 806418D4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806418D8  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 806418DC  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 806418E0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806418E4  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 806418E8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 806418EC  38 7A 07 6C */	addi r3, r26, 0x76c
/* 806418F0  38 81 00 74 */	addi r4, r1, 0x74
/* 806418F4  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 806418F8  C0 5D 00 E4 */	lfs f2, 0xe4(r29)
/* 806418FC  4B C2 E8 7C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80641900  38 7A 07 60 */	addi r3, r26, 0x760
/* 80641904  38 81 00 80 */	addi r4, r1, 0x80
/* 80641908  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 8064190C  C0 5D 00 E8 */	lfs f2, 0xe8(r29)
/* 80641910  4B C2 E8 68 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80641914  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80641918  2C 00 00 00 */	cmpwi r0, 0
/* 8064191C  40 82 0E 4C */	bne lbl_80642768
/* 80641920  38 00 00 04 */	li r0, 4
/* 80641924  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641928  7F 43 D3 78 */	mr r3, r26
/* 8064192C  38 80 00 2B */	li r4, 0x2b
/* 80641930  38 A0 00 00 */	li r5, 0
/* 80641934  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80641938  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 8064193C  4B FF CC 89 */	bl setBck__10daB_ZANT_cFiUcff
/* 80641940  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070419@ha */
/* 80641944  38 03 04 19 */	addi r0, r3, 0x0419 /* 0x00070419@l */
/* 80641948  90 01 00 34 */	stw r0, 0x34(r1)
/* 8064194C  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80641950  38 81 00 34 */	addi r4, r1, 0x34
/* 80641954  38 A0 FF FF */	li r5, -1
/* 80641958  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 8064195C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80641960  7D 89 03 A6 */	mtctr r12
/* 80641964  4E 80 04 21 */	bctrl 
/* 80641968  48 00 0E 00 */	b lbl_80642768
lbl_8064196C:
/* 8064196C  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80641970  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80641974  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 80641978  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8064197C  40 81 00 54 */	ble lbl_806419D0
/* 80641980  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80641984  C0 1D 00 F0 */	lfs f0, 0xf0(r29)
/* 80641988  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8064198C  C0 1D 00 F4 */	lfs f0, 0xf4(r29)
/* 80641990  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80641994  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80641998  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8064199C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806419A0  C0 1D 00 F8 */	lfs f0, 0xf8(r29)
/* 806419A4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 806419A8  38 7A 07 6C */	addi r3, r26, 0x76c
/* 806419AC  38 81 00 74 */	addi r4, r1, 0x74
/* 806419B0  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 806419B4  C0 5D 00 FC */	lfs f2, 0xfc(r29)
/* 806419B8  4B C2 E7 C0 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 806419BC  38 7A 07 60 */	addi r3, r26, 0x760
/* 806419C0  38 81 00 80 */	addi r4, r1, 0x80
/* 806419C4  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 806419C8  C0 5D 00 D0 */	lfs f2, 0xd0(r29)
/* 806419CC  4B C2 E7 AC */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
lbl_806419D0:
/* 806419D0  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 806419D4  38 80 00 01 */	li r4, 1
/* 806419D8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806419DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806419E0  40 82 00 18 */	bne lbl_806419F8
/* 806419E4  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 806419E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806419EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806419F0  41 82 00 08 */	beq lbl_806419F8
/* 806419F4  38 80 00 00 */	li r4, 0
lbl_806419F8:
/* 806419F8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806419FC  41 82 0D 6C */	beq lbl_80642768
/* 80641A00  38 00 00 05 */	li r0, 5
/* 80641A04  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641A08  38 00 00 14 */	li r0, 0x14
/* 80641A0C  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80641A10  7F 43 D3 78 */	mr r3, r26
/* 80641A14  38 80 00 2C */	li r4, 0x2c
/* 80641A18  38 A0 00 02 */	li r5, 2
/* 80641A1C  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80641A20  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80641A24  4B FF CB A1 */	bl setBck__10daB_ZANT_cFiUcff
/* 80641A28  7F 43 D3 78 */	mr r3, r26
/* 80641A2C  38 80 0E 3B */	li r4, 0xe3b
/* 80641A30  4B FF E6 99 */	bl setZantMessage__10daB_ZANT_cFi
/* 80641A34  48 00 0D 34 */	b lbl_80642768
lbl_80641A38:
/* 80641A38  4B FF E6 CD */	bl doZantMessage__10daB_ZANT_cFv
/* 80641A3C  2C 03 00 01 */	cmpwi r3, 1
/* 80641A40  40 82 0D 28 */	bne lbl_80642768
/* 80641A44  38 00 00 14 */	li r0, 0x14
/* 80641A48  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80641A4C  38 00 00 06 */	li r0, 6
/* 80641A50  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641A54  48 00 0D 14 */	b lbl_80642768
lbl_80641A58:
/* 80641A58  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80641A5C  2C 00 00 00 */	cmpwi r0, 0
/* 80641A60  40 82 0D 08 */	bne lbl_80642768
/* 80641A64  38 00 00 07 */	li r0, 7
/* 80641A68  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641A6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070403@ha */
/* 80641A70  38 03 04 03 */	addi r0, r3, 0x0403 /* 0x00070403@l */
/* 80641A74  90 01 00 30 */	stw r0, 0x30(r1)
/* 80641A78  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80641A7C  38 81 00 30 */	addi r4, r1, 0x30
/* 80641A80  38 A0 00 00 */	li r5, 0
/* 80641A84  38 C0 FF FF */	li r6, -1
/* 80641A88  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80641A8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80641A90  7D 89 03 A6 */	mtctr r12
/* 80641A94  4E 80 04 21 */	bctrl 
/* 80641A98  48 00 0C D0 */	b lbl_80642768
lbl_80641A9C:
/* 80641A9C  38 80 00 00 */	li r4, 0
/* 80641AA0  4B FF F1 81 */	bl calcScale__10daB_ZANT_cFi
/* 80641AA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80641AA8  41 82 0C C0 */	beq lbl_80642768
/* 80641AAC  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80641AB0  D0 3A 04 D0 */	stfs f1, 0x4d0(r26)
/* 80641AB4  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80641AB8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80641ABC  C0 1D 01 04 */	lfs f0, 0x104(r29)
/* 80641AC0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80641AC4  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80641AC8  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80641ACC  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 80641AD0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80641AD4  7F 63 DB 78 */	mr r3, r27
/* 80641AD8  38 81 00 8C */	addi r4, r1, 0x8c
/* 80641ADC  38 A0 00 00 */	li r5, 0
/* 80641AE0  38 C0 00 00 */	li r6, 0
/* 80641AE4  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80641AE8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80641AEC  7D 89 03 A6 */	mtctr r12
/* 80641AF0  4E 80 04 21 */	bctrl 
/* 80641AF4  38 00 00 03 */	li r0, 3
/* 80641AF8  B0 1B 06 04 */	sth r0, 0x604(r27)
/* 80641AFC  38 60 00 00 */	li r3, 0
/* 80641B00  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 80641B04  38 00 00 01 */	li r0, 1
/* 80641B08  90 1B 06 14 */	stw r0, 0x614(r27)
/* 80641B0C  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 80641B10  90 7B 06 10 */	stw r3, 0x610(r27)
/* 80641B14  B0 7B 06 0A */	sth r3, 0x60a(r27)
/* 80641B18  38 00 00 64 */	li r0, 0x64
/* 80641B1C  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641B20  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80641B24  D0 3A 07 6C */	stfs f1, 0x76c(r26)
/* 80641B28  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80641B2C  D0 1A 07 70 */	stfs f0, 0x770(r26)
/* 80641B30  C0 1D 01 04 */	lfs f0, 0x104(r29)
/* 80641B34  D0 1A 07 74 */	stfs f0, 0x774(r26)
/* 80641B38  D0 3A 07 60 */	stfs f1, 0x760(r26)
/* 80641B3C  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 80641B40  D0 1A 07 64 */	stfs f0, 0x764(r26)
/* 80641B44  C0 1D 01 10 */	lfs f0, 0x110(r29)
/* 80641B48  D0 1A 07 68 */	stfs f0, 0x768(r26)
/* 80641B4C  C0 1D 01 14 */	lfs f0, 0x114(r29)
/* 80641B50  D0 1A 07 78 */	stfs f0, 0x778(r26)
/* 80641B54  38 00 00 0F */	li r0, 0xf
/* 80641B58  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80641B5C  48 00 0C 0C */	b lbl_80642768
lbl_80641B60:
/* 80641B60  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80641B64  2C 00 00 00 */	cmpwi r0, 0
/* 80641B68  40 82 0C 00 */	bne lbl_80642768
/* 80641B6C  38 80 00 41 */	li r4, 0x41
/* 80641B70  38 A0 00 02 */	li r5, 2
/* 80641B74  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80641B78  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80641B7C  4B FF CA 49 */	bl setBck__10daB_ZANT_cFiUcff
/* 80641B80  38 00 00 48 */	li r0, 0x48
/* 80641B84  90 1B 06 14 */	stw r0, 0x614(r27)
/* 80641B88  38 00 00 00 */	li r0, 0
/* 80641B8C  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 80641B90  90 1B 06 10 */	stw r0, 0x610(r27)
/* 80641B94  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 80641B98  38 00 00 65 */	li r0, 0x65
/* 80641B9C  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641BA0  38 00 00 69 */	li r0, 0x69
/* 80641BA4  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80641BA8  48 00 0B C0 */	b lbl_80642768
lbl_80641BAC:
/* 80641BAC  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 80641BB0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80641BB4  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 80641BB8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80641BBC  C0 1D 01 20 */	lfs f0, 0x120(r29)
/* 80641BC0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80641BC4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80641BC8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80641BCC  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 80641BD0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80641BD4  C0 1D 01 10 */	lfs f0, 0x110(r29)
/* 80641BD8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80641BDC  38 7A 07 6C */	addi r3, r26, 0x76c
/* 80641BE0  38 81 00 74 */	addi r4, r1, 0x74
/* 80641BE4  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 80641BE8  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80641BEC  4B C2 E5 8C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80641BF0  38 7A 07 60 */	addi r3, r26, 0x760
/* 80641BF4  38 81 00 80 */	addi r4, r1, 0x80
/* 80641BF8  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 80641BFC  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80641C00  4B C2 E5 78 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80641C04  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80641C08  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80641C0C  41 81 00 98 */	bgt lbl_80641CA4
/* 80641C10  40 82 00 88 */	bne lbl_80641C98
/* 80641C14  38 80 00 00 */	li r4, 0
/* 80641C18  B0 9A 04 DE */	sth r4, 0x4de(r26)
/* 80641C1C  B0 9A 04 E6 */	sth r4, 0x4e6(r26)
/* 80641C20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80641C24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80641C28  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80641C2C  90 81 00 08 */	stw r4, 8(r1)
/* 80641C30  38 00 FF FF */	li r0, -1
/* 80641C34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80641C38  90 81 00 10 */	stw r4, 0x10(r1)
/* 80641C3C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80641C40  90 81 00 18 */	stw r4, 0x18(r1)
/* 80641C44  38 80 00 00 */	li r4, 0
/* 80641C48  3C A0 00 01 */	lis r5, 0x0001 /* 0x000088FE@ha */
/* 80641C4C  38 A5 88 FE */	addi r5, r5, 0x88FE /* 0x000088FE@l */
/* 80641C50  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 80641C54  38 E0 00 00 */	li r7, 0
/* 80641C58  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 80641C5C  39 20 00 00 */	li r9, 0
/* 80641C60  39 40 00 FF */	li r10, 0xff
/* 80641C64  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80641C68  4B A0 AE 28 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80641C6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070404@ha */
/* 80641C70  38 03 04 04 */	addi r0, r3, 0x0404 /* 0x00070404@l */
/* 80641C74  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80641C78  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80641C7C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80641C80  38 A0 00 00 */	li r5, 0
/* 80641C84  38 C0 FF FF */	li r6, -1
/* 80641C88  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80641C8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80641C90  7D 89 03 A6 */	mtctr r12
/* 80641C94  4E 80 04 21 */	bctrl 
lbl_80641C98:
/* 80641C98  7F 43 D3 78 */	mr r3, r26
/* 80641C9C  38 80 00 01 */	li r4, 1
/* 80641CA0  4B FF EF 81 */	bl calcScale__10daB_ZANT_cFi
lbl_80641CA4:
/* 80641CA4  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80641CA8  2C 00 00 00 */	cmpwi r0, 0
/* 80641CAC  40 82 0A BC */	bne lbl_80642768
/* 80641CB0  38 00 00 66 */	li r0, 0x66
/* 80641CB4  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641CB8  38 00 00 1E */	li r0, 0x1e
/* 80641CBC  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80641CC0  48 00 0A A8 */	b lbl_80642768
lbl_80641CC4:
/* 80641CC4  38 80 00 01 */	li r4, 1
/* 80641CC8  4B FF EF 59 */	bl calcScale__10daB_ZANT_cFi
/* 80641CCC  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 80641CD0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80641CD4  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 80641CD8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80641CDC  C0 1D 01 20 */	lfs f0, 0x120(r29)
/* 80641CE0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80641CE4  C0 1D 01 24 */	lfs f0, 0x124(r29)
/* 80641CE8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80641CEC  C0 1D 01 28 */	lfs f0, 0x128(r29)
/* 80641CF0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80641CF4  C0 1D 01 2C */	lfs f0, 0x12c(r29)
/* 80641CF8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80641CFC  38 7A 07 6C */	addi r3, r26, 0x76c
/* 80641D00  38 81 00 74 */	addi r4, r1, 0x74
/* 80641D04  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80641D08  C0 5D 01 30 */	lfs f2, 0x130(r29)
/* 80641D0C  4B C2 E4 6C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80641D10  38 7A 07 60 */	addi r3, r26, 0x760
/* 80641D14  38 81 00 80 */	addi r4, r1, 0x80
/* 80641D18  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80641D1C  C0 5D 01 30 */	lfs f2, 0x130(r29)
/* 80641D20  4B C2 E4 58 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80641D24  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80641D28  2C 00 00 00 */	cmpwi r0, 0
/* 80641D2C  40 82 0A 3C */	bne lbl_80642768
/* 80641D30  38 00 00 67 */	li r0, 0x67
/* 80641D34  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641D38  7F 43 D3 78 */	mr r3, r26
/* 80641D3C  38 80 0E 3C */	li r4, 0xe3c
/* 80641D40  4B FF E3 89 */	bl setZantMessage__10daB_ZANT_cFi
/* 80641D44  48 00 0A 24 */	b lbl_80642768
lbl_80641D48:
/* 80641D48  4B FF E3 BD */	bl doZantMessage__10daB_ZANT_cFv
/* 80641D4C  2C 03 00 01 */	cmpwi r3, 1
/* 80641D50  40 82 0A 18 */	bne lbl_80642768
/* 80641D54  7F 43 D3 78 */	mr r3, r26
/* 80641D58  38 80 00 2D */	li r4, 0x2d
/* 80641D5C  38 A0 00 02 */	li r5, 2
/* 80641D60  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80641D64  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80641D68  4B FF C8 5D */	bl setBck__10daB_ZANT_cFiUcff
/* 80641D6C  38 00 00 68 */	li r0, 0x68
/* 80641D70  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641D74  38 00 00 5A */	li r0, 0x5a
/* 80641D78  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80641D7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007041A@ha */
/* 80641D80  38 03 04 1A */	addi r0, r3, 0x041A /* 0x0007041A@l */
/* 80641D84  90 01 00 28 */	stw r0, 0x28(r1)
/* 80641D88  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80641D8C  38 81 00 28 */	addi r4, r1, 0x28
/* 80641D90  38 A0 00 00 */	li r5, 0
/* 80641D94  38 C0 FF FF */	li r6, -1
/* 80641D98  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80641D9C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80641DA0  7D 89 03 A6 */	mtctr r12
/* 80641DA4  4E 80 04 21 */	bctrl 
/* 80641DA8  48 00 09 C0 */	b lbl_80642768
lbl_80641DAC:
/* 80641DAC  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80641DB0  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80641DB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80641DB8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80641DBC  C0 3A 07 70 */	lfs f1, 0x770(r26)
/* 80641DC0  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80641DC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80641DC8  D0 1A 07 70 */	stfs f0, 0x770(r26)
/* 80641DCC  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80641DD0  2C 00 00 00 */	cmpwi r0, 0
/* 80641DD4  40 82 09 94 */	bne lbl_80642768
/* 80641DD8  38 00 00 69 */	li r0, 0x69
/* 80641DDC  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80641DE0  48 00 09 88 */	b lbl_80642768
lbl_80641DE4:
/* 80641DE4  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80641DE8  2C 00 00 00 */	cmpwi r0, 0
/* 80641DEC  40 82 09 7C */	bne lbl_80642768
/* 80641DF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80641DF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80641DF8  38 80 80 00 */	li r4, -32768
/* 80641DFC  4B 9C A5 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 80641E00  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80641E04  C0 5D 00 78 */	lfs f2, 0x78(r29)
/* 80641E08  C0 7D 00 7C */	lfs f3, 0x7c(r29)
/* 80641E0C  4B 9C AF 90 */	b transM__14mDoMtx_stack_cFfff
/* 80641E10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80641E14  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 80641E18  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80641E1C  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80641E20  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80641E24  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80641E28  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80641E2C  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80641E30  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80641E34  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80641E38  EC 01 00 2A */	fadds f0, f1, f0
/* 80641E3C  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80641E40  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 80641E44  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 80641E48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80641E4C  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80641E50  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80641E54  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80641E58  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80641E5C  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80641E60  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80641E64  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80641E68  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80641E6C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80641E70  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80641E74  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 80641E78  7F 43 D3 78 */	mr r3, r26
/* 80641E7C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80641E80  4B 9D 88 90 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80641E84  B0 7A 04 E6 */	sth r3, 0x4e6(r26)
/* 80641E88  7F 43 D3 78 */	mr r3, r26
/* 80641E8C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80641E90  4B 9D 88 A8 */	b fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80641E94  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 80641E98  7C 60 07 34 */	extsh r0, r3
/* 80641E9C  7C 00 00 D0 */	neg r0, r0
/* 80641EA0  C8 3D 01 80 */	lfd f1, 0x180(r29)
/* 80641EA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80641EA8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80641EAC  3C 00 43 30 */	lis r0, 0x4330
/* 80641EB0  90 01 00 98 */	stw r0, 0x98(r1)
/* 80641EB4  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 80641EB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80641EBC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80641EC0  FC 00 00 1E */	fctiwz f0, f0
/* 80641EC4  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 80641EC8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80641ECC  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 80641ED0  7F 43 D3 78 */	mr r3, r26
/* 80641ED4  38 80 00 2D */	li r4, 0x2d
/* 80641ED8  38 A0 00 02 */	li r5, 2
/* 80641EDC  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80641EE0  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80641EE4  4B FF C6 E1 */	bl setBck__10daB_ZANT_cFiUcff
/* 80641EE8  C0 1D 01 34 */	lfs f0, 0x134(r29)
/* 80641EEC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80641EF0  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 80641EF4  C0 1D 01 38 */	lfs f0, 0x138(r29)
/* 80641EF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80641EFC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80641F00  C0 1D 01 3C */	lfs f0, 0x13c(r29)
/* 80641F04  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80641F08  7F 63 DB 78 */	mr r3, r27
/* 80641F0C  38 81 00 8C */	addi r4, r1, 0x8c
/* 80641F10  38 A0 80 00 */	li r5, -32768
/* 80641F14  38 C0 00 00 */	li r6, 0
/* 80641F18  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80641F1C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80641F20  7D 89 03 A6 */	mtctr r12
/* 80641F24  4E 80 04 21 */	bctrl 
/* 80641F28  38 00 00 03 */	li r0, 3
/* 80641F2C  B0 1B 06 04 */	sth r0, 0x604(r27)
/* 80641F30  38 60 00 00 */	li r3, 0
/* 80641F34  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 80641F38  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80641F3C  D0 1B 06 1C */	stfs f0, 0x61c(r27)
/* 80641F40  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80641F44  D0 1B 06 20 */	stfs f0, 0x620(r27)
/* 80641F48  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80641F4C  D0 1B 06 24 */	stfs f0, 0x624(r27)
/* 80641F50  38 00 00 17 */	li r0, 0x17
/* 80641F54  90 1B 06 14 */	stw r0, 0x614(r27)
/* 80641F58  38 00 00 01 */	li r0, 1
/* 80641F5C  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 80641F60  38 00 00 04 */	li r0, 4
/* 80641F64  90 1B 06 10 */	stw r0, 0x610(r27)
/* 80641F68  B0 7B 06 0A */	sth r3, 0x60a(r27)
/* 80641F6C  C0 1D 01 40 */	lfs f0, 0x140(r29)
/* 80641F70  D0 1A 07 78 */	stfs f0, 0x778(r26)
/* 80641F74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80641F78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80641F7C  38 80 80 00 */	li r4, -32768
/* 80641F80  4B 9C A4 5C */	b mDoMtx_YrotS__FPA4_fs
/* 80641F84  C0 3D 01 44 */	lfs f1, 0x144(r29)
/* 80641F88  C0 5D 01 48 */	lfs f2, 0x148(r29)
/* 80641F8C  C0 7D 01 4C */	lfs f3, 0x14c(r29)
/* 80641F90  4B 9C AE 0C */	b transM__14mDoMtx_stack_cFfff
/* 80641F94  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80641F98  D0 1A 07 60 */	stfs f0, 0x760(r26)
/* 80641F9C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80641FA0  D0 1A 07 64 */	stfs f0, 0x764(r26)
/* 80641FA4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80641FA8  D0 1A 07 68 */	stfs f0, 0x768(r26)
/* 80641FAC  C0 3A 07 64 */	lfs f1, 0x764(r26)
/* 80641FB0  C0 1D 01 38 */	lfs f0, 0x138(r29)
/* 80641FB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80641FB8  D0 1A 07 64 */	stfs f0, 0x764(r26)
/* 80641FBC  C0 3A 07 68 */	lfs f1, 0x768(r26)
/* 80641FC0  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 80641FC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80641FC8  D0 1A 07 68 */	stfs f0, 0x768(r26)
/* 80641FCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80641FD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80641FD4  38 80 80 00 */	li r4, -32768
/* 80641FD8  4B 9C A4 04 */	b mDoMtx_YrotS__FPA4_fs
/* 80641FDC  C0 3D 01 50 */	lfs f1, 0x150(r29)
/* 80641FE0  C0 5D 01 54 */	lfs f2, 0x154(r29)
/* 80641FE4  C0 7D 01 58 */	lfs f3, 0x158(r29)
/* 80641FE8  4B 9C AD B4 */	b transM__14mDoMtx_stack_cFfff
/* 80641FEC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80641FF0  D0 1A 07 6C */	stfs f0, 0x76c(r26)
/* 80641FF4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80641FF8  D0 1A 07 70 */	stfs f0, 0x770(r26)
/* 80641FFC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80642000  D0 1A 07 74 */	stfs f0, 0x774(r26)
/* 80642004  C0 3A 07 70 */	lfs f1, 0x770(r26)
/* 80642008  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 8064200C  EC 01 00 2A */	fadds f0, f1, f0
/* 80642010  D0 1A 07 70 */	stfs f0, 0x770(r26)
/* 80642014  C0 3A 07 74 */	lfs f1, 0x774(r26)
/* 80642018  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 8064201C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80642020  D0 1A 07 74 */	stfs f0, 0x774(r26)
/* 80642024  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80642028  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8064202C  80 63 00 00 */	lwz r3, 0(r3)
/* 80642030  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80642034  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000062@ha */
/* 80642038  38 84 00 62 */	addi r4, r4, 0x0062 /* 0x01000062@l */
/* 8064203C  38 A0 00 00 */	li r5, 0
/* 80642040  38 C0 00 00 */	li r6, 0
/* 80642044  4B C6 CF CC */	b bgmStart__8Z2SeqMgrFUlUll
/* 80642048  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8064204C  D0 1A 07 7C */	stfs f0, 0x77c(r26)
/* 80642050  38 00 00 01 */	li r0, 1
/* 80642054  98 1A 06 FC */	stb r0, 0x6fc(r26)
/* 80642058  38 00 00 6A */	li r0, 0x6a
/* 8064205C  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80642060  38 00 00 A0 */	li r0, 0xa0
/* 80642064  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80642068  48 00 07 00 */	b lbl_80642768
lbl_8064206C:
/* 8064206C  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80642070  2C 00 00 64 */	cmpwi r0, 0x64
/* 80642074  40 82 00 0C */	bne lbl_80642080
/* 80642078  38 60 04 86 */	li r3, 0x486
/* 8064207C  4B 9D DF 48 */	b fopMsgM_messageSetDemo__FUl
lbl_80642080:
/* 80642080  38 7A 04 D4 */	addi r3, r26, 0x4d4
/* 80642084  C0 3D 01 5C */	lfs f1, 0x15c(r29)
/* 80642088  C0 5D 00 AC */	lfs f2, 0xac(r29)
/* 8064208C  C0 7D 00 5C */	lfs f3, 0x5c(r29)
/* 80642090  C0 9D 01 60 */	lfs f4, 0x160(r29)
/* 80642094  4B C2 D8 E8 */	b cLib_addCalc__FPfffff
/* 80642098  38 7A 07 70 */	addi r3, r26, 0x770
/* 8064209C  C0 3D 01 64 */	lfs f1, 0x164(r29)
/* 806420A0  C0 5D 00 AC */	lfs f2, 0xac(r29)
/* 806420A4  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 806420A8  C0 9D 01 68 */	lfs f4, 0x168(r29)
/* 806420AC  4B C2 D8 D0 */	b cLib_addCalc__FPfffff
/* 806420B0  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 806420B4  2C 00 00 00 */	cmpwi r0, 0
/* 806420B8  40 82 06 B0 */	bne lbl_80642768
/* 806420BC  38 00 00 16 */	li r0, 0x16
/* 806420C0  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 806420C4  38 00 00 14 */	li r0, 0x14
/* 806420C8  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 806420CC  48 00 06 9C */	b lbl_80642768
lbl_806420D0:
/* 806420D0  7F 64 DB 78 */	mr r4, r27
/* 806420D4  4B 9D 86 3C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806420D8  B0 7A 04 E6 */	sth r3, 0x4e6(r26)
/* 806420DC  7F 43 D3 78 */	mr r3, r26
/* 806420E0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806420E4  4B 9D 86 54 */	b fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806420E8  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 806420EC  7C 60 07 34 */	extsh r0, r3
/* 806420F0  7C 00 00 D0 */	neg r0, r0
/* 806420F4  C8 3D 01 80 */	lfd f1, 0x180(r29)
/* 806420F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806420FC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80642100  3C 00 43 30 */	lis r0, 0x4330
/* 80642104  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80642108  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8064210C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80642110  EC 02 00 32 */	fmuls f0, f2, f0
/* 80642114  FC 00 00 1E */	fctiwz f0, f0
/* 80642118  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8064211C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80642120  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 80642124  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80642128  2C 00 00 00 */	cmpwi r0, 0
/* 8064212C  40 82 06 3C */	bne lbl_80642768
/* 80642130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80642134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80642138  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8064213C  38 80 00 00 */	li r4, 0
/* 80642140  90 81 00 08 */	stw r4, 8(r1)
/* 80642144  38 00 FF FF */	li r0, -1
/* 80642148  90 01 00 0C */	stw r0, 0xc(r1)
/* 8064214C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80642150  90 81 00 14 */	stw r4, 0x14(r1)
/* 80642154  90 81 00 18 */	stw r4, 0x18(r1)
/* 80642158  38 80 00 00 */	li r4, 0
/* 8064215C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000088FE@ha */
/* 80642160  38 A5 88 FE */	addi r5, r5, 0x88FE /* 0x000088FE@l */
/* 80642164  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 80642168  38 E0 00 00 */	li r7, 0
/* 8064216C  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 80642170  39 20 00 00 */	li r9, 0
/* 80642174  39 40 00 FF */	li r10, 0xff
/* 80642178  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8064217C  4B A0 A9 14 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80642180  38 00 00 15 */	li r0, 0x15
/* 80642184  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80642188  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070404@ha */
/* 8064218C  38 03 04 04 */	addi r0, r3, 0x0404 /* 0x00070404@l */
/* 80642190  90 01 00 24 */	stw r0, 0x24(r1)
/* 80642194  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80642198  38 81 00 24 */	addi r4, r1, 0x24
/* 8064219C  38 A0 00 00 */	li r5, 0
/* 806421A0  38 C0 FF FF */	li r6, -1
/* 806421A4  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 806421A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806421AC  7D 89 03 A6 */	mtctr r12
/* 806421B0  4E 80 04 21 */	bctrl 
/* 806421B4  48 00 05 B4 */	b lbl_80642768
lbl_806421B8:
/* 806421B8  7F 64 DB 78 */	mr r4, r27
/* 806421BC  4B 9D 85 54 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806421C0  B0 7A 04 E6 */	sth r3, 0x4e6(r26)
/* 806421C4  7F 43 D3 78 */	mr r3, r26
/* 806421C8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806421CC  4B 9D 85 6C */	b fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806421D0  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 806421D4  7C 60 07 34 */	extsh r0, r3
/* 806421D8  7C 00 00 D0 */	neg r0, r0
/* 806421DC  C8 3D 01 80 */	lfd f1, 0x180(r29)
/* 806421E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806421E4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806421E8  3C 00 43 30 */	lis r0, 0x4330
/* 806421EC  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 806421F0  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 806421F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806421F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 806421FC  FC 00 00 1E */	fctiwz f0, f0
/* 80642200  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 80642204  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80642208  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 8064220C  7F 43 D3 78 */	mr r3, r26
/* 80642210  38 80 00 01 */	li r4, 1
/* 80642214  4B FF EA 0D */	bl calcScale__10daB_ZANT_cFi
/* 80642218  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8064221C  41 82 05 4C */	beq lbl_80642768
/* 80642220  38 00 00 16 */	li r0, 0x16
/* 80642224  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80642228  38 00 00 14 */	li r0, 0x14
/* 8064222C  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80642230  48 00 05 38 */	b lbl_80642768
lbl_80642234:
/* 80642234  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80642238  2C 00 00 00 */	cmpwi r0, 0
/* 8064223C  40 82 05 2C */	bne lbl_80642768
/* 80642240  38 00 00 17 */	li r0, 0x17
/* 80642244  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80642248  38 00 00 32 */	li r0, 0x32
/* 8064224C  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80642250  48 00 05 18 */	b lbl_80642768
lbl_80642254:
/* 80642254  38 80 00 00 */	li r4, 0
/* 80642258  48 00 92 45 */	bl calcRoomChangeCamera__10daB_ZANT_cFi
/* 8064225C  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80642260  2C 00 00 00 */	cmpwi r0, 0
/* 80642264  40 82 05 04 */	bne lbl_80642768
/* 80642268  38 00 00 18 */	li r0, 0x18
/* 8064226C  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80642270  7F 43 D3 78 */	mr r3, r26
/* 80642274  38 80 00 0C */	li r4, 0xc
/* 80642278  38 A0 00 00 */	li r5, 0
/* 8064227C  C0 3D 00 EC */	lfs f1, 0xec(r29)
/* 80642280  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80642284  4B FF C3 41 */	bl setBck__10daB_ZANT_cFiUcff
/* 80642288  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070413@ha */
/* 8064228C  38 03 04 13 */	addi r0, r3, 0x0413 /* 0x00070413@l */
/* 80642290  90 01 00 20 */	stw r0, 0x20(r1)
/* 80642294  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80642298  38 81 00 20 */	addi r4, r1, 0x20
/* 8064229C  38 A0 00 00 */	li r5, 0
/* 806422A0  38 C0 FF FF */	li r6, -1
/* 806422A4  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 806422A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806422AC  7D 89 03 A6 */	mtctr r12
/* 806422B0  4E 80 04 21 */	bctrl 
/* 806422B4  38 00 00 01 */	li r0, 1
/* 806422B8  98 1A 07 14 */	stb r0, 0x714(r26)
/* 806422BC  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 806422C0  D0 1A 06 C8 */	stfs f0, 0x6c8(r26)
/* 806422C4  48 00 04 A4 */	b lbl_80642768
lbl_806422C8:
/* 806422C8  38 7A 06 C8 */	addi r3, r26, 0x6c8
/* 806422CC  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 806422D0  C0 5D 01 6C */	lfs f2, 0x16c(r29)
/* 806422D4  4B C2 E4 6C */	b cLib_chaseF__FPfff
/* 806422D8  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 806422DC  38 63 00 0C */	addi r3, r3, 0xc
/* 806422E0  C0 3D 01 70 */	lfs f1, 0x170(r29)
/* 806422E4  4B CE 61 48 */	b checkPass__12J3DFrameCtrlFf
/* 806422E8  2C 03 00 00 */	cmpwi r3, 0
/* 806422EC  41 82 00 14 */	beq lbl_80642300
/* 806422F0  38 00 00 01 */	li r0, 1
/* 806422F4  98 1A 05 E8 */	stb r0, 0x5e8(r26)
/* 806422F8  38 00 00 1E */	li r0, 0x1e
/* 806422FC  98 1A 07 15 */	stb r0, 0x715(r26)
lbl_80642300:
/* 80642300  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80642304  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80642308  C0 1D 01 70 */	lfs f0, 0x170(r29)
/* 8064230C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80642310  40 81 00 14 */	ble lbl_80642324
/* 80642314  38 7A 06 C8 */	addi r3, r26, 0x6c8
/* 80642318  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8064231C  C0 5D 01 74 */	lfs f2, 0x174(r29)
/* 80642320  4B C2 E4 20 */	b cLib_chaseF__FPfff
lbl_80642324:
/* 80642324  7F 43 D3 78 */	mr r3, r26
/* 80642328  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8064232C  4B 9D 83 E4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80642330  B0 7A 04 E6 */	sth r3, 0x4e6(r26)
/* 80642334  7F 43 D3 78 */	mr r3, r26
/* 80642338  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8064233C  4B 9D 83 FC */	b fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80642340  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 80642344  7C 60 07 34 */	extsh r0, r3
/* 80642348  7C 00 00 D0 */	neg r0, r0
/* 8064234C  C8 3D 01 80 */	lfd f1, 0x180(r29)
/* 80642350  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80642354  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80642358  3C 00 43 30 */	lis r0, 0x4330
/* 8064235C  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80642360  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 80642364  EC 00 08 28 */	fsubs f0, f0, f1
/* 80642368  EC 02 00 32 */	fmuls f0, f2, f0
/* 8064236C  FC 00 00 1E */	fctiwz f0, f0
/* 80642370  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 80642374  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80642378  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 8064237C  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80642380  38 80 00 01 */	li r4, 1
/* 80642384  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80642388  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8064238C  40 82 00 18 */	bne lbl_806423A4
/* 80642390  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80642394  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80642398  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8064239C  41 82 00 08 */	beq lbl_806423A4
/* 806423A0  38 80 00 00 */	li r4, 0
lbl_806423A4:
/* 806423A4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806423A8  41 82 03 C0 */	beq lbl_80642768
/* 806423AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806423B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806423B4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806423B8  38 80 00 1F */	li r4, 0x1f
/* 806423BC  4B A2 D9 D8 */	b StopQuake__12dVibration_cFi
/* 806423C0  7F 43 D3 78 */	mr r3, r26
/* 806423C4  38 80 00 0E */	li r4, 0xe
/* 806423C8  38 A0 00 02 */	li r5, 2
/* 806423CC  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 806423D0  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 806423D4  4B FF C1 F1 */	bl setBck__10daB_ZANT_cFiUcff
/* 806423D8  38 00 00 19 */	li r0, 0x19
/* 806423DC  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 806423E0  3C 60 80 65 */	lis r3, l_HIO@ha
/* 806423E4  38 63 F6 04 */	addi r3, r3, l_HIO@l
/* 806423E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806423EC  FC 00 00 1E */	fctiwz f0, f0
/* 806423F0  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 806423F4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806423F8  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 806423FC  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80642400  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80642404  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80642408  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8064240C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80642410  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80642414  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 80642418  38 81 00 68 */	addi r4, r1, 0x68
/* 8064241C  38 A0 00 00 */	li r5, 0
/* 80642420  3C C0 80 65 */	lis r6, data_8064F030@ha
/* 80642424  38 C6 F0 30 */	addi r6, r6, data_8064F030@l
/* 80642428  88 C6 00 01 */	lbz r6, 1(r6)
/* 8064242C  4B 9F 2B 54 */	b setRoom__13dSv_restart_cFRC4cXyzsSc
/* 80642430  48 00 03 A4 */	b lbl_806427D4
lbl_80642434:
/* 80642434  88 7A 06 FB */	lbz r3, 0x6fb(r26)
/* 80642438  38 03 00 01 */	addi r0, r3, 1
/* 8064243C  98 1A 06 FB */	stb r0, 0x6fb(r26)
/* 80642440  88 1A 06 FB */	lbz r0, 0x6fb(r26)
/* 80642444  28 00 00 07 */	cmplwi r0, 7
/* 80642448  41 80 00 0C */	blt lbl_80642454
/* 8064244C  38 00 00 00 */	li r0, 0
/* 80642450  98 1A 06 FB */	stb r0, 0x6fb(r26)
lbl_80642454:
/* 80642454  C0 1D 01 34 */	lfs f0, 0x134(r29)
/* 80642458  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 8064245C  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80642460  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80642464  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80642468  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 8064246C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80642470  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80642474  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80642478  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8064247C  7F 63 DB 78 */	mr r3, r27
/* 80642480  38 81 00 8C */	addi r4, r1, 0x8c
/* 80642484  38 A0 00 00 */	li r5, 0
/* 80642488  38 C0 00 00 */	li r6, 0
/* 8064248C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80642490  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80642494  7D 89 03 A6 */	mtctr r12
/* 80642498  4E 80 04 21 */	bctrl 
/* 8064249C  38 00 00 17 */	li r0, 0x17
/* 806424A0  90 1B 06 14 */	stw r0, 0x614(r27)
/* 806424A4  38 00 00 01 */	li r0, 1
/* 806424A8  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 806424AC  38 00 00 04 */	li r0, 4
/* 806424B0  90 1B 06 10 */	stw r0, 0x610(r27)
/* 806424B4  38 00 00 00 */	li r0, 0
/* 806424B8  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 806424BC  C0 3A 07 60 */	lfs f1, 0x760(r26)
/* 806424C0  C0 1D 01 78 */	lfs f0, 0x178(r29)
/* 806424C4  EC 01 00 2A */	fadds f0, f1, f0
/* 806424C8  D0 1A 07 60 */	stfs f0, 0x760(r26)
/* 806424CC  C0 3A 07 64 */	lfs f1, 0x764(r26)
/* 806424D0  C0 1D 01 38 */	lfs f0, 0x138(r29)
/* 806424D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806424D8  D0 1A 07 64 */	stfs f0, 0x764(r26)
/* 806424DC  C0 3A 07 68 */	lfs f1, 0x768(r26)
/* 806424E0  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 806424E4  EC 01 00 2A */	fadds f0, f1, f0
/* 806424E8  D0 1A 07 68 */	stfs f0, 0x768(r26)
/* 806424EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806424F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806424F4  38 80 80 00 */	li r4, -32768
/* 806424F8  4B 9C 9E E4 */	b mDoMtx_YrotS__FPA4_fs
/* 806424FC  38 7A 07 60 */	addi r3, r26, 0x760
/* 80642500  4B 9C A8 D4 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80642504  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80642508  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 8064250C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80642510  D0 1A 07 60 */	stfs f0, 0x760(r26)
/* 80642514  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80642518  D0 1A 07 64 */	stfs f0, 0x764(r26)
/* 8064251C  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80642520  D0 1A 07 68 */	stfs f0, 0x768(r26)
/* 80642524  C0 3A 07 6C */	lfs f1, 0x76c(r26)
/* 80642528  C0 1D 01 78 */	lfs f0, 0x178(r29)
/* 8064252C  EC 01 00 2A */	fadds f0, f1, f0
/* 80642530  D0 1A 07 6C */	stfs f0, 0x76c(r26)
/* 80642534  C0 3A 07 70 */	lfs f1, 0x770(r26)
/* 80642538  C0 1D 01 38 */	lfs f0, 0x138(r29)
/* 8064253C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80642540  D0 1A 07 70 */	stfs f0, 0x770(r26)
/* 80642544  C0 3A 07 74 */	lfs f1, 0x774(r26)
/* 80642548  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 8064254C  EC 01 00 2A */	fadds f0, f1, f0
/* 80642550  D0 1A 07 74 */	stfs f0, 0x774(r26)
/* 80642554  7F 63 DB 78 */	mr r3, r27
/* 80642558  38 80 80 00 */	li r4, -32768
/* 8064255C  4B 9C 9E 80 */	b mDoMtx_YrotS__FPA4_fs
/* 80642560  38 7A 07 6C */	addi r3, r26, 0x76c
/* 80642564  4B 9C A8 70 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80642568  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8064256C  D0 1A 07 6C */	stfs f0, 0x76c(r26)
/* 80642570  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80642574  D0 1A 07 70 */	stfs f0, 0x770(r26)
/* 80642578  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 8064257C  D0 1A 07 74 */	stfs f0, 0x774(r26)
/* 80642580  7F 43 D3 78 */	mr r3, r26
/* 80642584  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80642588  4B 9D 81 88 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8064258C  B0 7A 04 E6 */	sth r3, 0x4e6(r26)
/* 80642590  7F 43 D3 78 */	mr r3, r26
/* 80642594  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80642598  4B 9D 81 A0 */	b fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8064259C  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 806425A0  7C 60 07 34 */	extsh r0, r3
/* 806425A4  7C 00 00 D0 */	neg r0, r0
/* 806425A8  C8 3D 01 80 */	lfd f1, 0x180(r29)
/* 806425AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806425B0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806425B4  3C 00 43 30 */	lis r0, 0x4330
/* 806425B8  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 806425BC  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 806425C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806425C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 806425C8  FC 00 00 1E */	fctiwz f0, f0
/* 806425CC  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 806425D0  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 806425D4  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 806425D8  7F 43 D3 78 */	mr r3, r26
/* 806425DC  48 00 90 C1 */	bl initNextRoom__10daB_ZANT_cFv
/* 806425E0  38 00 00 1A */	li r0, 0x1a
/* 806425E4  90 1A 06 DC */	stw r0, 0x6dc(r26)
lbl_806425E8:
/* 806425E8  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 806425EC  2C 00 00 00 */	cmpwi r0, 0
/* 806425F0  40 82 01 78 */	bne lbl_80642768
/* 806425F4  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 806425F8  38 83 60 94 */	addi r4, r3, mStatus__20dStage_roomControl_c@l
/* 806425FC  88 1A 06 FB */	lbz r0, 0x6fb(r26)
/* 80642600  3C 60 80 65 */	lis r3, data_8064F030@ha
/* 80642604  38 63 F0 30 */	addi r3, r3, data_8064F030@l
/* 80642608  7C 03 00 AE */	lbzx r0, r3, r0
/* 8064260C  7C 00 07 74 */	extsb r0, r0
/* 80642610  1C 00 04 04 */	mulli r0, r0, 0x404
/* 80642614  7C 64 02 14 */	add r3, r4, r0
/* 80642618  88 03 03 F4 */	lbz r0, 0x3f4(r3)
/* 8064261C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80642620  41 82 01 48 */	beq lbl_80642768
/* 80642624  38 00 00 1B */	li r0, 0x1b
/* 80642628  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 8064262C  38 00 00 00 */	li r0, 0
/* 80642630  98 1A 07 14 */	stb r0, 0x714(r26)
/* 80642634  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80642638  D0 1A 06 C8 */	stfs f0, 0x6c8(r26)
/* 8064263C  7F 43 D3 78 */	mr r3, r26
/* 80642640  38 80 00 13 */	li r4, 0x13
/* 80642644  38 A0 00 00 */	li r5, 0
/* 80642648  C0 3D 00 EC */	lfs f1, 0xec(r29)
/* 8064264C  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80642650  4B FF BF 75 */	bl setBck__10daB_ZANT_cFiUcff
/* 80642654  38 00 00 04 */	li r0, 4
/* 80642658  98 1A 05 E8 */	stb r0, 0x5e8(r26)
/* 8064265C  48 00 01 0C */	b lbl_80642768
lbl_80642660:
/* 80642660  38 7A 06 C8 */	addi r3, r26, 0x6c8
/* 80642664  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80642668  C0 5D 01 7C */	lfs f2, 0x17c(r29)
/* 8064266C  4B C2 E0 D4 */	b cLib_chaseF__FPfff
/* 80642670  7F 63 DB 78 */	mr r3, r27
/* 80642674  38 81 00 8C */	addi r4, r1, 0x8c
/* 80642678  38 A0 00 00 */	li r5, 0
/* 8064267C  38 C0 00 00 */	li r6, 0
/* 80642680  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80642684  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80642688  7D 89 03 A6 */	mtctr r12
/* 8064268C  4E 80 04 21 */	bctrl 
/* 80642690  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80642694  38 80 00 01 */	li r4, 1
/* 80642698  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8064269C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806426A0  40 82 00 18 */	bne lbl_806426B8
/* 806426A4  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 806426A8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806426AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806426B0  41 82 00 08 */	beq lbl_806426B8
/* 806426B4  38 80 00 00 */	li r4, 0
lbl_806426B8:
/* 806426B8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806426BC  41 82 00 AC */	beq lbl_80642768
/* 806426C0  C0 1A 07 6C */	lfs f0, 0x76c(r26)
/* 806426C4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806426C8  C0 1A 07 70 */	lfs f0, 0x770(r26)
/* 806426CC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806426D0  C0 1A 07 74 */	lfs f0, 0x774(r26)
/* 806426D4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806426D8  C0 1A 07 60 */	lfs f0, 0x760(r26)
/* 806426DC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806426E0  C0 1A 07 64 */	lfs f0, 0x764(r26)
/* 806426E4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806426E8  C0 1A 07 68 */	lfs f0, 0x768(r26)
/* 806426EC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806426F0  38 7C 02 48 */	addi r3, r28, 0x248
/* 806426F4  38 81 00 5C */	addi r4, r1, 0x5c
/* 806426F8  38 A1 00 50 */	addi r5, r1, 0x50
/* 806426FC  4B B3 E5 1C */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80642700  38 7C 02 48 */	addi r3, r28, 0x248
/* 80642704  4B B1 ED A8 */	b Start__9dCamera_cFv
/* 80642708  38 7C 02 48 */	addi r3, r28, 0x248
/* 8064270C  38 80 00 00 */	li r4, 0
/* 80642710  4B B2 08 FC */	b SetTrimSize__9dCamera_cFl
/* 80642714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80642718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8064271C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80642720  4B 9F FD 48 */	b reset__14dEvt_control_cFv
/* 80642724  38 00 00 00 */	li r0, 0
/* 80642728  98 1A 06 FC */	stb r0, 0x6fc(r26)
/* 8064272C  7F 43 D3 78 */	mr r3, r26
/* 80642730  38 80 00 01 */	li r4, 1
/* 80642734  4B FF D8 39 */	bl setTgHitBit__10daB_ZANT_cFi
/* 80642738  7F 43 D3 78 */	mr r3, r26
/* 8064273C  38 80 00 01 */	li r4, 1
/* 80642740  48 00 9A 81 */	bl setBaseActionMode__10daB_ZANT_cFi
/* 80642744  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80642748  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8064274C  80 63 00 00 */	lwz r3, 0(r3)
/* 80642750  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80642754  3C 80 80 65 */	lis r4, stringBase0@ha
/* 80642758  38 84 EE 60 */	addi r4, r4, stringBase0@l
/* 8064275C  38 84 00 12 */	addi r4, r4, 0x12
/* 80642760  4B C7 3A 88 */	b setDemoName__11Z2StatusMgrFPc
/* 80642764  48 00 00 70 */	b lbl_806427D4
lbl_80642768:
/* 80642768  88 1A 07 15 */	lbz r0, 0x715(r26)
/* 8064276C  28 00 00 00 */	cmplwi r0, 0
/* 80642770  41 82 00 1C */	beq lbl_8064278C
/* 80642774  7F 43 D3 78 */	mr r3, r26
/* 80642778  38 80 00 01 */	li r4, 1
/* 8064277C  48 00 8D 21 */	bl calcRoomChangeCamera__10daB_ZANT_cFi
/* 80642780  88 7A 07 15 */	lbz r3, 0x715(r26)
/* 80642784  38 03 FF FF */	addi r0, r3, -1
/* 80642788  98 1A 07 15 */	stb r0, 0x715(r26)
lbl_8064278C:
/* 8064278C  C0 1A 07 6C */	lfs f0, 0x76c(r26)
/* 80642790  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80642794  C0 1A 07 70 */	lfs f0, 0x770(r26)
/* 80642798  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8064279C  C0 1A 07 74 */	lfs f0, 0x774(r26)
/* 806427A0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806427A4  C0 1A 07 60 */	lfs f0, 0x760(r26)
/* 806427A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806427AC  C0 1A 07 64 */	lfs f0, 0x764(r26)
/* 806427B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806427B4  C0 1A 07 68 */	lfs f0, 0x768(r26)
/* 806427B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806427BC  38 7C 02 48 */	addi r3, r28, 0x248
/* 806427C0  38 81 00 44 */	addi r4, r1, 0x44
/* 806427C4  38 A1 00 38 */	addi r5, r1, 0x38
/* 806427C8  C0 3A 07 78 */	lfs f1, 0x778(r26)
/* 806427CC  38 C0 00 00 */	li r6, 0
/* 806427D0  4B B3 E3 10 */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_806427D4:
/* 806427D4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806427D8  4B D1 FA 44 */	b _restgpr_26
/* 806427DC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806427E0  7C 08 03 A6 */	mtlr r0
/* 806427E4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806427E8  4E 80 00 20 */	blr 
