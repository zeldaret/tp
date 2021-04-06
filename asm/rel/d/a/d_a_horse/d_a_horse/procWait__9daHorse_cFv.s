lbl_808417B8:
/* 808417B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 808417BC  7C 08 02 A6 */	mflr r0
/* 808417C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 808417C4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 808417C8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 808417CC  39 61 00 30 */	addi r11, r1, 0x30
/* 808417D0  4B B2 0A 05 */	bl _savegpr_27
/* 808417D4  7C 7B 1B 78 */	mr r27, r3
/* 808417D8  3C 60 80 84 */	lis r3, lit_3894@ha /* 0x808454AC@ha */
/* 808417DC  3B A3 54 AC */	addi r29, r3, lit_3894@l /* 0x808454AC@l */
/* 808417E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808417E4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808417E8  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 808417EC  28 00 00 00 */	cmplwi r0, 0
/* 808417F0  40 82 00 10 */	bne lbl_80841800
/* 808417F4  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 808417F8  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 808417FC  40 82 00 14 */	bne lbl_80841810
lbl_80841800:
/* 80841800  7F 63 DB 78 */	mr r3, r27
/* 80841804  4B FF FD B1 */	bl checkPlayerHeavy__9daHorse_cFv
/* 80841808  2C 03 00 00 */	cmpwi r3, 0
/* 8084180C  41 82 00 14 */	beq lbl_80841820
lbl_80841810:
/* 80841810  7F 63 DB 78 */	mr r3, r27
/* 80841814  38 80 00 00 */	li r4, 0
/* 80841818  48 00 10 61 */	bl procTurnInit__9daHorse_cFi
/* 8084181C  48 00 06 C8 */	b lbl_80841EE4
lbl_80841820:
/* 80841820  7F 63 DB 78 */	mr r3, r27
/* 80841824  4B FF B3 15 */	bl setSpeedAndAngle__9daHorse_cFv
/* 80841828  7C 7C 1B 78 */	mr r28, r3
/* 8084182C  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80841830  D0 1B 17 60 */	stfs f0, 0x1760(r27)
/* 80841834  80 1B 17 4C */	lwz r0, 0x174c(r27)
/* 80841838  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8084183C  40 82 00 80 */	bne lbl_808418BC
/* 80841840  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 80841844  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 80841848  40 82 00 74 */	bne lbl_808418BC
/* 8084184C  A0 7B 16 C4 */	lhz r3, 0x16c4(r27)
/* 80841850  28 03 00 07 */	cmplwi r3, 7
/* 80841854  40 82 00 18 */	bne lbl_8084186C
/* 80841858  C0 3B 05 C0 */	lfs f1, 0x5c0(r27)
/* 8084185C  C0 1D 02 F8 */	lfs f0, 0x2f8(r29)
/* 80841860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841864  4C 41 13 82 */	cror 2, 1, 2
/* 80841868  41 82 00 54 */	beq lbl_808418BC
lbl_8084186C:
/* 8084186C  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80841870  28 00 00 00 */	cmplwi r0, 0
/* 80841874  40 82 00 48 */	bne lbl_808418BC
/* 80841878  2C 1C 00 00 */	cmpwi r28, 0
/* 8084187C  40 82 00 38 */	bne lbl_808418B4
/* 80841880  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80841884  C0 5D 01 50 */	lfs f2, 0x150(r29)
/* 80841888  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8084188C  40 80 00 28 */	bge lbl_808418B4
/* 80841890  28 03 00 07 */	cmplwi r3, 7
/* 80841894  41 82 00 20 */	beq lbl_808418B4
/* 80841898  7F 63 DB 78 */	mr r3, r27
/* 8084189C  38 80 00 07 */	li r4, 7
/* 808418A0  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 808418A4  38 A0 FF FF */	li r5, -1
/* 808418A8  C0 7D 01 44 */	lfs f3, 0x144(r29)
/* 808418AC  38 C0 00 00 */	li r6, 0
/* 808418B0  4B FF 89 5D */	bl setSingleAnime__9daHorse_cFUsffsfi
lbl_808418B4:
/* 808418B4  C0 1D 01 50 */	lfs f0, 0x150(r29)
/* 808418B8  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_808418BC:
/* 808418BC  A0 1B 16 C4 */	lhz r0, 0x16c4(r27)
/* 808418C0  28 00 00 1F */	cmplwi r0, 0x1f
/* 808418C4  40 82 00 40 */	bne lbl_80841904
/* 808418C8  38 7B 05 B0 */	addi r3, r27, 0x5b0
/* 808418CC  C0 3D 01 C4 */	lfs f1, 0x1c4(r29)
/* 808418D0  4B AE 6B 5D */	bl checkPass__12J3DFrameCtrlFf
/* 808418D4  2C 03 00 00 */	cmpwi r3, 0
/* 808418D8  41 82 00 2C */	beq lbl_80841904
/* 808418DC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050001@ha */
/* 808418E0  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x00050001@l */
/* 808418E4  90 01 00 08 */	stw r0, 8(r1)
/* 808418E8  38 7B 10 A4 */	addi r3, r27, 0x10a4
/* 808418EC  38 81 00 08 */	addi r4, r1, 8
/* 808418F0  88 BB 16 B5 */	lbz r5, 0x16b5(r27)
/* 808418F4  81 9B 10 A4 */	lwz r12, 0x10a4(r27)
/* 808418F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 808418FC  7D 89 03 A6 */	mtctr r12
/* 80841900  4E 80 04 21 */	bctrl 
lbl_80841904:
/* 80841904  2C 1C 00 00 */	cmpwi r28, 0
/* 80841908  41 82 00 14 */	beq lbl_8084191C
/* 8084190C  7F 63 DB 78 */	mr r3, r27
/* 80841910  38 80 00 00 */	li r4, 0
/* 80841914  48 00 0F 65 */	bl procTurnInit__9daHorse_cFi
/* 80841918  48 00 05 CC */	b lbl_80841EE4
lbl_8084191C:
/* 8084191C  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80841920  FC 00 02 10 */	fabs f0, f0
/* 80841924  FC 20 00 18 */	frsp f1, f0
/* 80841928  C0 1D 01 CC */	lfs f0, 0x1cc(r29)
/* 8084192C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841930  4C 41 13 82 */	cror 2, 1, 2
/* 80841934  40 82 00 30 */	bne lbl_80841964
/* 80841938  80 1B 17 4C */	lwz r0, 0x174c(r27)
/* 8084193C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80841940  41 82 00 18 */	beq lbl_80841958
/* 80841944  38 7D 00 20 */	addi r3, r29, 0x20
/* 80841948  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8084194C  C0 1B 17 8C */	lfs f0, 0x178c(r27)
/* 80841950  EC 01 00 32 */	fmuls f0, f1, f0
/* 80841954  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80841958:
/* 80841958  7F 63 DB 78 */	mr r3, r27
/* 8084195C  48 00 05 A9 */	bl procMoveInit__9daHorse_cFv
/* 80841960  48 00 05 84 */	b lbl_80841EE4
lbl_80841964:
/* 80841964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80841968  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084196C  83 9F 5D B4 */	lwz r28, 0x5db4(r31)
/* 80841970  7F 63 DB 78 */	mr r3, r27
/* 80841974  4B FF EF 7D */	bl checkTgHitTurn__9daHorse_cFv
/* 80841978  2C 03 00 00 */	cmpwi r3, 0
/* 8084197C  41 82 00 0C */	beq lbl_80841988
/* 80841980  38 60 00 01 */	li r3, 1
/* 80841984  48 00 05 60 */	b lbl_80841EE4
lbl_80841988:
/* 80841988  38 7D 00 20 */	addi r3, r29, 0x20
/* 8084198C  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 80841990  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80841994  C0 3B 17 58 */	lfs f1, 0x1758(r27)
/* 80841998  C0 1D 01 CC */	lfs f0, 0x1cc(r29)
/* 8084199C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808419A0  40 81 00 10 */	ble lbl_808419B0
/* 808419A4  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 808419A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 808419AC  40 82 01 80 */	bne lbl_80841B2C
lbl_808419B0:
/* 808419B0  3C 60 80 84 */	lis r3, daHorse_searchEnemy__FP10fopAc_ac_cPv@ha /* 0x80838AC4@ha */
/* 808419B4  38 63 8A C4 */	addi r3, r3, daHorse_searchEnemy__FP10fopAc_ac_cPv@l /* 0x80838AC4@l */
/* 808419B8  38 81 00 0C */	addi r4, r1, 0xc
/* 808419BC  4B 7D 7E 3D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 808419C0  28 03 00 00 */	cmplwi r3, 0
/* 808419C4  41 82 01 68 */	beq lbl_80841B2C
/* 808419C8  80 1B 17 48 */	lwz r0, 0x1748(r27)
/* 808419CC  60 00 00 02 */	ori r0, r0, 2
/* 808419D0  90 1B 17 48 */	stw r0, 0x1748(r27)
/* 808419D4  A8 1B 17 0C */	lha r0, 0x170c(r27)
/* 808419D8  2C 00 00 00 */	cmpwi r0, 0
/* 808419DC  40 82 00 74 */	bne lbl_80841A50
/* 808419E0  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 808419E4  54 00 02 97 */	rlwinm. r0, r0, 0, 0xa, 0xb
/* 808419E8  40 82 00 68 */	bne lbl_80841A50
/* 808419EC  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 808419F0  28 00 00 00 */	cmplwi r0, 0
/* 808419F4  40 82 00 5C */	bne lbl_80841A50
/* 808419F8  38 00 00 00 */	li r0, 0
/* 808419FC  A0 7C 2F E8 */	lhz r3, 0x2fe8(r28)
/* 80841A00  28 03 00 3A */	cmplwi r3, 0x3a
/* 80841A04  41 82 00 0C */	beq lbl_80841A10
/* 80841A08  28 03 00 3B */	cmplwi r3, 0x3b
/* 80841A0C  40 82 00 08 */	bne lbl_80841A14
lbl_80841A10:
/* 80841A10  38 00 00 01 */	li r0, 1
lbl_80841A14:
/* 80841A14  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80841A18  40 82 00 38 */	bne lbl_80841A50
/* 80841A1C  7F 83 E3 78 */	mr r3, r28
/* 80841A20  4B 8A B4 E5 */	bl checkHorseLieAnime__9daAlink_cCFv
/* 80841A24  2C 03 00 00 */	cmpwi r3, 0
/* 80841A28  40 82 00 28 */	bne lbl_80841A50
/* 80841A2C  80 7B 17 44 */	lwz r3, 0x1744(r27)
/* 80841A30  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80841A34  40 82 00 1C */	bne lbl_80841A50
/* 80841A38  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80841A3C  40 82 00 14 */	bne lbl_80841A50
/* 80841A40  7F 63 DB 78 */	mr r3, r27
/* 80841A44  38 80 00 01 */	li r4, 1
/* 80841A48  48 00 0E 31 */	bl procTurnInit__9daHorse_cFi
/* 80841A4C  48 00 04 98 */	b lbl_80841EE4
lbl_80841A50:
/* 80841A50  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80841A54  28 00 00 00 */	cmplwi r0, 0
/* 80841A58  40 82 01 08 */	bne lbl_80841B60
/* 80841A5C  38 00 00 00 */	li r0, 0
/* 80841A60  A0 7C 2F E8 */	lhz r3, 0x2fe8(r28)
/* 80841A64  28 03 00 3A */	cmplwi r3, 0x3a
/* 80841A68  41 82 00 0C */	beq lbl_80841A74
/* 80841A6C  28 03 00 3B */	cmplwi r3, 0x3b
/* 80841A70  40 82 00 08 */	bne lbl_80841A78
lbl_80841A74:
/* 80841A74  38 00 00 01 */	li r0, 1
lbl_80841A78:
/* 80841A78  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80841A7C  40 82 00 E4 */	bne lbl_80841B60
/* 80841A80  A0 1B 16 C4 */	lhz r0, 0x16c4(r27)
/* 80841A84  28 00 00 08 */	cmplwi r0, 8
/* 80841A88  41 82 00 D8 */	beq lbl_80841B60
/* 80841A8C  28 00 00 09 */	cmplwi r0, 9
/* 80841A90  41 82 00 D0 */	beq lbl_80841B60
/* 80841A94  4B A2 5D D9 */	bl cM_rnd__Fv
/* 80841A98  C0 1D 02 28 */	lfs f0, 0x228(r29)
/* 80841A9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841AA0  40 80 00 48 */	bge lbl_80841AE8
/* 80841AA4  7F 63 DB 78 */	mr r3, r27
/* 80841AA8  38 80 00 09 */	li r4, 9
/* 80841AAC  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 80841AB0  C0 5D 01 50 */	lfs f2, 0x150(r29)
/* 80841AB4  38 A0 FF FF */	li r5, -1
/* 80841AB8  C0 7D 01 44 */	lfs f3, 0x144(r29)
/* 80841ABC  38 C0 00 00 */	li r6, 0
/* 80841AC0  4B FF 87 4D */	bl setSingleAnime__9daHorse_cFUsffsfi
/* 80841AC4  C0 3D 02 A0 */	lfs f1, 0x2a0(r29)
/* 80841AC8  4B A2 5E 8D */	bl cM_rndF__Ff
/* 80841ACC  C0 1D 02 8C */	lfs f0, 0x28c(r29)
/* 80841AD0  EC 00 08 2A */	fadds f0, f0, f1
/* 80841AD4  FC 00 00 1E */	fctiwz f0, f0
/* 80841AD8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80841ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80841AE0  B0 1B 17 0C */	sth r0, 0x170c(r27)
/* 80841AE4  48 00 00 7C */	b lbl_80841B60
lbl_80841AE8:
/* 80841AE8  7F 63 DB 78 */	mr r3, r27
/* 80841AEC  38 80 00 08 */	li r4, 8
/* 80841AF0  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 80841AF4  C0 5D 01 50 */	lfs f2, 0x150(r29)
/* 80841AF8  38 A0 FF FF */	li r5, -1
/* 80841AFC  C0 7D 01 44 */	lfs f3, 0x144(r29)
/* 80841B00  38 C0 00 00 */	li r6, 0
/* 80841B04  4B FF 87 09 */	bl setSingleAnime__9daHorse_cFUsffsfi
/* 80841B08  C0 3D 02 A0 */	lfs f1, 0x2a0(r29)
/* 80841B0C  4B A2 5E 49 */	bl cM_rndF__Ff
/* 80841B10  C0 1D 02 A0 */	lfs f0, 0x2a0(r29)
/* 80841B14  EC 00 08 2A */	fadds f0, f0, f1
/* 80841B18  FC 00 00 1E */	fctiwz f0, f0
/* 80841B1C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80841B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80841B24  B0 1B 17 0C */	sth r0, 0x170c(r27)
/* 80841B28  48 00 00 38 */	b lbl_80841B60
lbl_80841B2C:
/* 80841B2C  A0 1B 16 C4 */	lhz r0, 0x16c4(r27)
/* 80841B30  28 00 00 08 */	cmplwi r0, 8
/* 80841B34  41 82 00 0C */	beq lbl_80841B40
/* 80841B38  28 00 00 09 */	cmplwi r0, 9
/* 80841B3C  40 82 00 24 */	bne lbl_80841B60
lbl_80841B40:
/* 80841B40  38 7B 05 B0 */	addi r3, r27, 0x5b0
/* 80841B44  C0 3D 01 50 */	lfs f1, 0x150(r29)
/* 80841B48  4B AE 68 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 80841B4C  2C 03 00 00 */	cmpwi r3, 0
/* 80841B50  40 82 00 10 */	bne lbl_80841B60
/* 80841B54  80 1B 17 48 */	lwz r0, 0x1748(r27)
/* 80841B58  60 00 00 02 */	ori r0, r0, 2
/* 80841B5C  90 1B 17 48 */	stw r0, 0x1748(r27)
lbl_80841B60:
/* 80841B60  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 80841B64  FC 00 02 10 */	fabs f0, f0
/* 80841B68  FF E0 00 18 */	frsp f31, f0
/* 80841B6C  A0 9B 16 C4 */	lhz r4, 0x16c4(r27)
/* 80841B70  28 04 00 07 */	cmplwi r4, 7
/* 80841B74  40 82 00 40 */	bne lbl_80841BB4
/* 80841B78  7F 63 DB 78 */	mr r3, r27
/* 80841B7C  4B FF EC 35 */	bl setServiceWaitTimer__9daHorse_cFv
/* 80841B80  C0 1B 17 60 */	lfs f0, 0x1760(r27)
/* 80841B84  FC 00 02 10 */	fabs f0, f0
/* 80841B88  FC 20 00 18 */	frsp f1, f0
/* 80841B8C  C0 1D 01 CC */	lfs f0, 0x1cc(r29)
/* 80841B90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841B94  40 80 02 84 */	bge lbl_80841E18
/* 80841B98  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80841B9C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80841BA0  B0 1B 16 C4 */	sth r0, 0x16c4(r27)
/* 80841BA4  7F 63 DB 78 */	mr r3, r27
/* 80841BA8  C0 3D 01 44 */	lfs f1, 0x144(r29)
/* 80841BAC  4B FF 9C 85 */	bl setMoveAnime__9daHorse_cFf
/* 80841BB0  48 00 02 68 */	b lbl_80841E18
lbl_80841BB4:
/* 80841BB4  C0 1D 02 FC */	lfs f0, 0x2fc(r29)
/* 80841BB8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80841BBC  41 80 00 2C */	blt lbl_80841BE8
/* 80841BC0  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 80841BC4  A8 7B 16 E8 */	lha r3, 0x16e8(r27)
/* 80841BC8  7C 05 18 00 */	cmpw r5, r3
/* 80841BCC  40 82 00 1C */	bne lbl_80841BE8
/* 80841BD0  A8 1B 16 F0 */	lha r0, 0x16f0(r27)
/* 80841BD4  2C 00 00 00 */	cmpwi r0, 0
/* 80841BD8  40 82 00 10 */	bne lbl_80841BE8
/* 80841BDC  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80841BE0  28 00 00 01 */	cmplwi r0, 1
/* 80841BE4  40 82 01 08 */	bne lbl_80841CEC
lbl_80841BE8:
/* 80841BE8  38 A0 00 00 */	li r5, 0
/* 80841BEC  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80841BF0  A8 1B 16 E8 */	lha r0, 0x16e8(r27)
/* 80841BF4  7C 03 00 00 */	cmpw r3, r0
/* 80841BF8  40 82 00 98 */	bne lbl_80841C90
/* 80841BFC  A8 1B 16 F0 */	lha r0, 0x16f0(r27)
/* 80841C00  2C 00 00 00 */	cmpwi r0, 0
/* 80841C04  40 82 00 8C */	bne lbl_80841C90
/* 80841C08  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80841C0C  28 00 00 01 */	cmplwi r0, 1
/* 80841C10  41 82 00 80 */	beq lbl_80841C90
/* 80841C14  28 04 00 20 */	cmplwi r4, 0x20
/* 80841C18  41 82 00 1C */	beq lbl_80841C34
/* 80841C1C  28 04 00 1D */	cmplwi r4, 0x1d
/* 80841C20  40 82 00 44 */	bne lbl_80841C64
/* 80841C24  C0 3B 05 C0 */	lfs f1, 0x5c0(r27)
/* 80841C28  C0 1D 01 48 */	lfs f0, 0x148(r29)
/* 80841C2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841C30  40 81 00 34 */	ble lbl_80841C64
lbl_80841C34:
/* 80841C34  7F 63 DB 78 */	mr r3, r27
/* 80841C38  38 80 00 1C */	li r4, 0x1c
/* 80841C3C  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 80841C40  C0 5D 01 50 */	lfs f2, 0x150(r29)
/* 80841C44  38 A0 FF FF */	li r5, -1
/* 80841C48  C0 7D 01 44 */	lfs f3, 0x144(r29)
/* 80841C4C  38 C0 00 00 */	li r6, 0
/* 80841C50  4B FF 85 BD */	bl setSingleAnime__9daHorse_cFUsffsfi
/* 80841C54  38 00 00 00 */	li r0, 0
/* 80841C58  98 1B 05 B4 */	stb r0, 0x5b4(r27)
/* 80841C5C  38 A0 00 01 */	li r5, 1
/* 80841C60  48 00 00 30 */	b lbl_80841C90
lbl_80841C64:
/* 80841C64  28 04 00 1C */	cmplwi r4, 0x1c
/* 80841C68  40 82 00 28 */	bne lbl_80841C90
/* 80841C6C  7F 63 DB 78 */	mr r3, r27
/* 80841C70  38 80 00 1D */	li r4, 0x1d
/* 80841C74  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
/* 80841C78  C0 5D 01 50 */	lfs f2, 0x150(r29)
/* 80841C7C  38 A0 FF FF */	li r5, -1
/* 80841C80  C0 7D 01 44 */	lfs f3, 0x144(r29)
/* 80841C84  38 C0 00 00 */	li r6, 0
/* 80841C88  4B FF 85 85 */	bl setSingleAnime__9daHorse_cFUsffsfi
/* 80841C8C  38 A0 00 01 */	li r5, 1
lbl_80841C90:
/* 80841C90  2C 05 00 00 */	cmpwi r5, 0
/* 80841C94  40 82 01 84 */	bne lbl_80841E18
/* 80841C98  C0 1D 02 FC */	lfs f0, 0x2fc(r29)
/* 80841C9C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80841CA0  40 80 00 0C */	bge lbl_80841CAC
/* 80841CA4  C0 3D 01 44 */	lfs f1, 0x144(r29)
/* 80841CA8  48 00 00 08 */	b lbl_80841CB0
lbl_80841CAC:
/* 80841CAC  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
lbl_80841CB0:
/* 80841CB0  80 1B 17 48 */	lwz r0, 0x1748(r27)
/* 80841CB4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80841CB8  41 82 00 20 */	beq lbl_80841CD8
/* 80841CBC  C0 5B 17 58 */	lfs f2, 0x1758(r27)
/* 80841CC0  C0 1D 01 CC */	lfs f0, 0x1cc(r29)
/* 80841CC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80841CC8  40 81 00 18 */	ble lbl_80841CE0
/* 80841CCC  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 80841CD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80841CD4  41 82 00 0C */	beq lbl_80841CE0
lbl_80841CD8:
/* 80841CD8  7F 63 DB 78 */	mr r3, r27
/* 80841CDC  4B FF 9B 55 */	bl setMoveAnime__9daHorse_cFf
lbl_80841CE0:
/* 80841CE0  7F 63 DB 78 */	mr r3, r27
/* 80841CE4  4B FF EA CD */	bl setServiceWaitTimer__9daHorse_cFv
/* 80841CE8  48 00 01 30 */	b lbl_80841E18
lbl_80841CEC:
/* 80841CEC  7C 05 18 00 */	cmpw r5, r3
/* 80841CF0  40 82 00 EC */	bne lbl_80841DDC
/* 80841CF4  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80841CF8  28 00 00 00 */	cmplwi r0, 0
/* 80841CFC  40 82 00 E0 */	bne lbl_80841DDC
/* 80841D00  C0 1B 17 60 */	lfs f0, 0x1760(r27)
/* 80841D04  FC 00 02 10 */	fabs f0, f0
/* 80841D08  FC 20 00 18 */	frsp f1, f0
/* 80841D0C  C0 1D 01 CC */	lfs f0, 0x1cc(r29)
/* 80841D10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841D14  40 80 00 C8 */	bge lbl_80841DDC
/* 80841D18  80 1B 17 48 */	lwz r0, 0x1748(r27)
/* 80841D1C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80841D20  40 82 00 BC */	bne lbl_80841DDC
/* 80841D24  80 1B 05 A8 */	lwz r0, 0x5a8(r27)
/* 80841D28  28 00 00 00 */	cmplwi r0, 0
/* 80841D2C  40 82 00 B0 */	bne lbl_80841DDC
/* 80841D30  A8 7B 16 EE */	lha r3, 0x16ee(r27)
/* 80841D34  2C 03 00 00 */	cmpwi r3, 0
/* 80841D38  40 82 00 8C */	bne lbl_80841DC4
/* 80841D3C  7F 63 DB 78 */	mr r3, r27
/* 80841D40  4B FF EA C1 */	bl checkServiceWaitAnime__9daHorse_cFv
/* 80841D44  2C 03 00 00 */	cmpwi r3, 0
/* 80841D48  40 82 00 D0 */	bne lbl_80841E18
/* 80841D4C  4B A2 5B 21 */	bl cM_rnd__Fv
/* 80841D50  C0 1D 01 7C */	lfs f0, 0x17c(r29)
/* 80841D54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841D58  40 80 00 0C */	bge lbl_80841D64
/* 80841D5C  38 80 00 1E */	li r4, 0x1e
/* 80841D60  48 00 00 44 */	b lbl_80841DA4
lbl_80841D64:
/* 80841D64  C0 1D 03 00 */	lfs f0, 0x300(r29)
/* 80841D68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841D6C  40 80 00 0C */	bge lbl_80841D78
/* 80841D70  38 80 00 1F */	li r4, 0x1f
/* 80841D74  48 00 00 30 */	b lbl_80841DA4
lbl_80841D78:
/* 80841D78  C0 1D 03 04 */	lfs f0, 0x304(r29)
/* 80841D7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841D80  40 80 00 0C */	bge lbl_80841D8C
/* 80841D84  38 80 00 20 */	li r4, 0x20
/* 80841D88  48 00 00 1C */	b lbl_80841DA4
lbl_80841D8C:
/* 80841D8C  C0 1D 02 2C */	lfs f0, 0x22c(r29)
/* 80841D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841D94  40 80 00 0C */	bge lbl_80841DA0
/* 80841D98  38 80 00 21 */	li r4, 0x21
/* 80841D9C  48 00 00 08 */	b lbl_80841DA4
lbl_80841DA0:
/* 80841DA0  38 80 00 1D */	li r4, 0x1d
lbl_80841DA4:
/* 80841DA4  7F 63 DB 78 */	mr r3, r27
/* 80841DA8  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 80841DAC  C0 5D 01 50 */	lfs f2, 0x150(r29)
/* 80841DB0  38 A0 FF FF */	li r5, -1
/* 80841DB4  C0 7D 03 08 */	lfs f3, 0x308(r29)
/* 80841DB8  38 C0 00 00 */	li r6, 0
/* 80841DBC  4B FF 84 51 */	bl setSingleAnime__9daHorse_cFUsffsfi
/* 80841DC0  48 00 00 58 */	b lbl_80841E18
lbl_80841DC4:
/* 80841DC4  38 03 FF FF */	addi r0, r3, -1
/* 80841DC8  B0 1B 16 EE */	sth r0, 0x16ee(r27)
/* 80841DCC  7F 63 DB 78 */	mr r3, r27
/* 80841DD0  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
/* 80841DD4  4B FF 9A 5D */	bl setMoveAnime__9daHorse_cFf
/* 80841DD8  48 00 00 40 */	b lbl_80841E18
lbl_80841DDC:
/* 80841DDC  80 1B 17 48 */	lwz r0, 0x1748(r27)
/* 80841DE0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80841DE4  41 82 00 20 */	beq lbl_80841E04
/* 80841DE8  C0 3B 17 58 */	lfs f1, 0x1758(r27)
/* 80841DEC  C0 1D 01 CC */	lfs f0, 0x1cc(r29)
/* 80841DF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841DF4  40 81 00 1C */	ble lbl_80841E10
/* 80841DF8  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 80841DFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80841E00  41 82 00 10 */	beq lbl_80841E10
lbl_80841E04:
/* 80841E04  7F 63 DB 78 */	mr r3, r27
/* 80841E08  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
/* 80841E0C  4B FF 9A 25 */	bl setMoveAnime__9daHorse_cFf
lbl_80841E10:
/* 80841E10  7F 63 DB 78 */	mr r3, r27
/* 80841E14  4B FF E9 9D */	bl setServiceWaitTimer__9daHorse_cFv
lbl_80841E18:
/* 80841E18  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 80841E1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80841E20  40 82 00 C0 */	bne lbl_80841EE0
/* 80841E24  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80841E28  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80841E2C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80841E30  41 82 00 20 */	beq lbl_80841E50
/* 80841E34  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 80841E38  60 00 00 08 */	ori r0, r0, 8
/* 80841E3C  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 80841E40  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80841E44  60 00 00 01 */	ori r0, r0, 1
/* 80841E48  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80841E4C  48 00 00 18 */	b lbl_80841E64
lbl_80841E50:
/* 80841E50  88 1B 16 B4 */	lbz r0, 0x16b4(r27)
/* 80841E54  28 00 00 00 */	cmplwi r0, 0
/* 80841E58  40 82 00 0C */	bne lbl_80841E64
/* 80841E5C  7F 63 DB 78 */	mr r3, r27
/* 80841E60  4B FF 97 19 */	bl acceptPlayerRide__9daHorse_cFv
lbl_80841E64:
/* 80841E64  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 80841E68  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80841E6C  41 82 00 74 */	beq lbl_80841EE0
/* 80841E70  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 80841E74  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80841E78  90 1B 17 44 */	stw r0, 0x1744(r27)
/* 80841E7C  7F 63 DB 78 */	mr r3, r27
/* 80841E80  4B FF E9 81 */	bl checkServiceWaitAnime__9daHorse_cFv
/* 80841E84  2C 03 00 00 */	cmpwi r3, 0
/* 80841E88  41 82 00 30 */	beq lbl_80841EB8
/* 80841E8C  A0 1B 16 C4 */	lhz r0, 0x16c4(r27)
/* 80841E90  28 00 00 1C */	cmplwi r0, 0x1c
/* 80841E94  41 82 00 24 */	beq lbl_80841EB8
/* 80841E98  28 00 00 20 */	cmplwi r0, 0x20
/* 80841E9C  41 82 00 1C */	beq lbl_80841EB8
/* 80841EA0  28 00 00 1D */	cmplwi r0, 0x1d
/* 80841EA4  40 82 00 3C */	bne lbl_80841EE0
/* 80841EA8  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 80841EAC  C0 1D 01 50 */	lfs f0, 0x150(r29)
/* 80841EB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80841EB4  40 81 00 2C */	ble lbl_80841EE0
lbl_80841EB8:
/* 80841EB8  7F 63 DB 78 */	mr r3, r27
/* 80841EBC  38 80 00 1E */	li r4, 0x1e
/* 80841EC0  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 80841EC4  C0 5D 01 50 */	lfs f2, 0x150(r29)
/* 80841EC8  38 A0 FF FF */	li r5, -1
/* 80841ECC  C0 7D 01 44 */	lfs f3, 0x144(r29)
/* 80841ED0  38 C0 00 00 */	li r6, 0
/* 80841ED4  4B FF 83 39 */	bl setSingleAnime__9daHorse_cFUsffsfi
/* 80841ED8  38 00 00 00 */	li r0, 0
/* 80841EDC  B0 1B 16 EE */	sth r0, 0x16ee(r27)
lbl_80841EE0:
/* 80841EE0  38 60 00 01 */	li r3, 1
lbl_80841EE4:
/* 80841EE4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80841EE8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80841EEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80841EF0  4B B2 03 31 */	bl _restgpr_27
/* 80841EF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80841EF8  7C 08 03 A6 */	mtlr r0
/* 80841EFC  38 21 00 40 */	addi r1, r1, 0x40
/* 80841F00  4E 80 00 20 */	blr 
