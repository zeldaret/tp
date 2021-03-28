lbl_80129B44:
/* 80129B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80129B48  7C 08 02 A6 */	mflr r0
/* 80129B4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80129B50  39 61 00 20 */	addi r11, r1, 0x20
/* 80129B54  48 23 86 89 */	bl _savegpr_29
/* 80129B58  7C 7D 1B 78 */	mr r29, r3
/* 80129B5C  7C 9E 23 78 */	mr r30, r4
/* 80129B60  3C 80 80 39 */	lis r4, lit_3757@ha
/* 80129B64  3B E4 D6 58 */	addi r31, r4, lit_3757@l
/* 80129B68  38 80 00 01 */	li r4, 1
/* 80129B6C  4B FE F2 11 */	bl checkDeadAction__9daAlink_cFi
/* 80129B70  2C 03 00 00 */	cmpwi r3, 0
/* 80129B74  41 82 00 0C */	beq lbl_80129B80
/* 80129B78  38 60 00 01 */	li r3, 1
/* 80129B7C  48 00 04 98 */	b lbl_8012A014
lbl_80129B80:
/* 80129B80  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 80129B84  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80129B88  41 82 00 5C */	beq lbl_80129BE4
/* 80129B8C  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80129B90  28 00 00 F1 */	cmplwi r0, 0xf1
/* 80129B94  41 82 00 44 */	beq lbl_80129BD8
/* 80129B98  28 00 00 EE */	cmplwi r0, 0xee
/* 80129B9C  41 82 00 3C */	beq lbl_80129BD8
/* 80129BA0  28 00 00 EF */	cmplwi r0, 0xef
/* 80129BA4  41 82 00 34 */	beq lbl_80129BD8
/* 80129BA8  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 80129BAC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80129BB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129BB4  41 81 00 0C */	bgt lbl_80129BC0
/* 80129BB8  28 00 00 F2 */	cmplwi r0, 0xf2
/* 80129BBC  41 82 00 1C */	beq lbl_80129BD8
lbl_80129BC0:
/* 80129BC0  28 00 01 00 */	cmplwi r0, 0x100
/* 80129BC4  41 82 00 14 */	beq lbl_80129BD8
/* 80129BC8  28 00 01 01 */	cmplwi r0, 0x101
/* 80129BCC  41 82 00 0C */	beq lbl_80129BD8
/* 80129BD0  28 00 00 F6 */	cmplwi r0, 0xf6
/* 80129BD4  40 82 00 10 */	bne lbl_80129BE4
lbl_80129BD8:
/* 80129BD8  7F A3 EB 78 */	mr r3, r29
/* 80129BDC  48 00 34 75 */	bl procWolfMidnaRideShockInit__9daAlink_cFv
/* 80129BE0  48 00 04 34 */	b lbl_8012A014
lbl_80129BE4:
/* 80129BE4  7F A3 EB 78 */	mr r3, r29
/* 80129BE8  4B F8 99 19 */	bl checkAttentionState__9daAlink_cFv
/* 80129BEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80129BF0  41 82 00 18 */	beq lbl_80129C08
/* 80129BF4  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80129BF8  28 00 01 20 */	cmplwi r0, 0x120
/* 80129BFC  41 82 00 54 */	beq lbl_80129C50
/* 80129C00  28 00 01 1F */	cmplwi r0, 0x11f
/* 80129C04  41 82 00 4C */	beq lbl_80129C50
lbl_80129C08:
/* 80129C08  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80129C0C  28 00 01 11 */	cmplwi r0, 0x111
/* 80129C10  41 82 00 0C */	beq lbl_80129C1C
/* 80129C14  2C 1E 00 00 */	cmpwi r30, 0
/* 80129C18  41 82 00 14 */	beq lbl_80129C2C
lbl_80129C1C:
/* 80129C1C  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 80129C20  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80129C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129C28  40 81 00 28 */	ble lbl_80129C50
lbl_80129C2C:
/* 80129C2C  7F A3 EB 78 */	mr r3, r29
/* 80129C30  4B F8 98 D1 */	bl checkAttentionState__9daAlink_cFv
/* 80129C34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80129C38  41 82 00 10 */	beq lbl_80129C48
/* 80129C3C  7F A3 EB 78 */	mr r3, r29
/* 80129C40  4B FF E8 39 */	bl setSpeedAndAngleWolfAtn__9daAlink_cFv
/* 80129C44  48 00 00 0C */	b lbl_80129C50
lbl_80129C48:
/* 80129C48  7F A3 EB 78 */	mr r3, r29
/* 80129C4C  4B FF E3 05 */	bl setSpeedAndAngleWolf__9daAlink_cFv
lbl_80129C50:
/* 80129C50  7F A3 EB 78 */	mr r3, r29
/* 80129C54  4B F8 66 69 */	bl setFrontWallType__9daAlink_cFv
/* 80129C58  7F A3 EB 78 */	mr r3, r29
/* 80129C5C  4B F8 85 91 */	bl checkSlope__9daAlink_cCFv
/* 80129C60  2C 03 00 00 */	cmpwi r3, 0
/* 80129C64  41 82 00 30 */	beq lbl_80129C94
/* 80129C68  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80129C6C  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80129C70  41 82 00 14 */	beq lbl_80129C84
/* 80129C74  38 7F 1D 98 */	addi r3, r31, 0x1d98
/* 80129C78  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 80129C7C  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80129C80  48 00 00 FC */	b lbl_80129D7C
lbl_80129C84:
/* 80129C84  38 7F 1D 98 */	addi r3, r31, 0x1d98
/* 80129C88  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80129C8C  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80129C90  48 00 00 EC */	b lbl_80129D7C
lbl_80129C94:
/* 80129C94  38 60 00 00 */	li r3, 0
/* 80129C98  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 80129C9C  28 00 00 62 */	cmplwi r0, 0x62
/* 80129CA0  41 82 00 10 */	beq lbl_80129CB0
/* 80129CA4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80129CA8  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 80129CAC  40 82 00 08 */	bne lbl_80129CB4
lbl_80129CB0:
/* 80129CB0  38 60 00 01 */	li r3, 1
lbl_80129CB4:
/* 80129CB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80129CB8  41 82 00 10 */	beq lbl_80129CC8
/* 80129CBC  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 80129CC0  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80129CC4  48 00 00 B8 */	b lbl_80129D7C
lbl_80129CC8:
/* 80129CC8  80 1D 27 EC */	lwz r0, 0x27ec(r29)
/* 80129CCC  28 00 00 00 */	cmplwi r0, 0
/* 80129CD0  41 82 00 14 */	beq lbl_80129CE4
/* 80129CD4  38 7F 19 18 */	addi r3, r31, 0x1918
/* 80129CD8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80129CDC  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80129CE0  48 00 00 9C */	b lbl_80129D7C
lbl_80129CE4:
/* 80129CE4  7F A3 EB 78 */	mr r3, r29
/* 80129CE8  4B F8 98 19 */	bl checkAttentionState__9daAlink_cFv
/* 80129CEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80129CF0  41 82 00 14 */	beq lbl_80129D04
/* 80129CF4  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80129CF8  C0 03 00 B4 */	lfs f0, 0xb4(r3)
/* 80129CFC  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80129D00  48 00 00 7C */	b lbl_80129D7C
lbl_80129D04:
/* 80129D04  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80129D08  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80129D0C  41 82 00 50 */	beq lbl_80129D5C
/* 80129D10  7F A3 EB 78 */	mr r3, r29
/* 80129D14  4B FF E2 0D */	bl checkWolfSlowDash__9daAlink_cFv
/* 80129D18  2C 03 00 00 */	cmpwi r3, 0
/* 80129D1C  41 82 00 14 */	beq lbl_80129D30
/* 80129D20  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80129D24  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 80129D28  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80129D2C  48 00 00 50 */	b lbl_80129D7C
lbl_80129D30:
/* 80129D30  88 1D 2F C7 */	lbz r0, 0x2fc7(r29)
/* 80129D34  28 00 00 02 */	cmplwi r0, 2
/* 80129D38  40 82 00 14 */	bne lbl_80129D4C
/* 80129D3C  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80129D40  C0 03 00 F0 */	lfs f0, 0xf0(r3)
/* 80129D44  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80129D48  48 00 00 34 */	b lbl_80129D7C
lbl_80129D4C:
/* 80129D4C  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80129D50  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 80129D54  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80129D58  48 00 00 24 */	b lbl_80129D7C
lbl_80129D5C:
/* 80129D5C  41 82 00 14 */	beq lbl_80129D70
/* 80129D60  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80129D64  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 80129D68  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80129D6C  48 00 00 10 */	b lbl_80129D7C
lbl_80129D70:
/* 80129D70  38 7F 18 D0 */	addi r3, r31, 0x18d0
/* 80129D74  C0 03 00 08 */	lfs f0, 8(r3)
/* 80129D78  D0 1D 05 94 */	stfs f0, 0x594(r29)
lbl_80129D7C:
/* 80129D7C  7F A3 EB 78 */	mr r3, r29
/* 80129D80  4B FF FD 01 */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 80129D84  2C 03 00 00 */	cmpwi r3, 0
/* 80129D88  41 82 00 0C */	beq lbl_80129D94
/* 80129D8C  38 60 00 01 */	li r3, 1
/* 80129D90  48 00 02 84 */	b lbl_8012A014
lbl_80129D94:
/* 80129D94  7F A3 EB 78 */	mr r3, r29
/* 80129D98  38 80 00 00 */	li r4, 0
/* 80129D9C  48 00 D4 61 */	bl checkWolfLieContinue__9daAlink_cFi
/* 80129DA0  2C 03 00 00 */	cmpwi r3, 0
/* 80129DA4  41 82 00 14 */	beq lbl_80129DB8
/* 80129DA8  7F A3 EB 78 */	mr r3, r29
/* 80129DAC  38 80 00 00 */	li r4, 0
/* 80129DB0  48 00 D6 71 */	bl procWolfLieStartInit__9daAlink_cFi
/* 80129DB4  48 00 02 60 */	b lbl_8012A014
lbl_80129DB8:
/* 80129DB8  7F A3 EB 78 */	mr r3, r29
/* 80129DBC  4B F8 FF 71 */	bl checkNextActionFromButton__9daAlink_cFv
/* 80129DC0  2C 03 00 00 */	cmpwi r3, 0
/* 80129DC4  41 82 00 0C */	beq lbl_80129DD0
/* 80129DC8  38 60 00 01 */	li r3, 1
/* 80129DCC  48 00 02 48 */	b lbl_8012A014
lbl_80129DD0:
/* 80129DD0  7F A3 EB 78 */	mr r3, r29
/* 80129DD4  38 9D 08 50 */	addi r4, r29, 0x850
/* 80129DD8  38 BD 09 74 */	addi r5, r29, 0x974
/* 80129DDC  38 C0 00 00 */	li r6, 0
/* 80129DE0  48 00 76 71 */	bl checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi
/* 80129DE4  7C 64 1B 79 */	or. r4, r3, r3
/* 80129DE8  40 82 00 1C */	bne lbl_80129E04
/* 80129DEC  7F A3 EB 78 */	mr r3, r29
/* 80129DF0  38 9D 09 8C */	addi r4, r29, 0x98c
/* 80129DF4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80129DF8  38 C0 00 00 */	li r6, 0
/* 80129DFC  48 00 76 55 */	bl checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi
/* 80129E00  7C 64 1B 78 */	mr r4, r3
lbl_80129E04:
/* 80129E04  28 04 00 00 */	cmplwi r4, 0
/* 80129E08  41 82 00 20 */	beq lbl_80129E28
/* 80129E0C  38 7D 28 0C */	addi r3, r29, 0x280c
/* 80129E10  48 03 4E A9 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 80129E14  7F A3 EB 78 */	mr r3, r29
/* 80129E18  38 80 00 00 */	li r4, 0
/* 80129E1C  38 A0 00 01 */	li r5, 1
/* 80129E20  48 00 7E 55 */	bl procWolfRopeMoveInit__9daAlink_cFii
/* 80129E24  48 00 01 F0 */	b lbl_8012A014
lbl_80129E28:
/* 80129E28  2C 1E 00 00 */	cmpwi r30, 0
/* 80129E2C  41 82 00 1C */	beq lbl_80129E48
/* 80129E30  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 80129E34  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80129E38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129E3C  41 81 00 0C */	bgt lbl_80129E48
/* 80129E40  38 60 00 00 */	li r3, 0
/* 80129E44  48 00 01 D0 */	b lbl_8012A014
lbl_80129E48:
/* 80129E48  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 80129E4C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80129E50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129E54  41 81 00 28 */	bgt lbl_80129E7C
/* 80129E58  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80129E5C  28 00 01 11 */	cmplwi r0, 0x111
/* 80129E60  40 82 00 1C */	bne lbl_80129E7C
/* 80129E64  7F A3 EB 78 */	mr r3, r29
/* 80129E68  48 00 21 41 */	bl checkWolfWaitSlipPolygon__9daAlink_cFv
/* 80129E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80129E70  41 82 00 0C */	beq lbl_80129E7C
/* 80129E74  3B C0 00 00 */	li r30, 0
/* 80129E78  48 00 01 98 */	b lbl_8012A010
lbl_80129E7C:
/* 80129E7C  7F A3 EB 78 */	mr r3, r29
/* 80129E80  4B F8 96 81 */	bl checkAttentionState__9daAlink_cFv
/* 80129E84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80129E88  41 82 00 14 */	beq lbl_80129E9C
/* 80129E8C  7F A3 EB 78 */	mr r3, r29
/* 80129E90  48 00 3D 19 */	bl procWolfAtnActorMoveInit__9daAlink_cFv
/* 80129E94  7C 7E 1B 78 */	mr r30, r3
/* 80129E98  48 00 01 78 */	b lbl_8012A010
lbl_80129E9C:
/* 80129E9C  38 00 00 04 */	li r0, 4
/* 80129EA0  98 1D 2F 98 */	stb r0, 0x2f98(r29)
/* 80129EA4  7F A3 EB 78 */	mr r3, r29
/* 80129EA8  4B F8 9A 5D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 80129EAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80129EB0  41 82 00 B8 */	beq lbl_80129F68
/* 80129EB4  7F A3 EB 78 */	mr r3, r29
/* 80129EB8  4B FE BD 69 */	bl checkEventRun__9daAlink_cCFv
/* 80129EBC  2C 03 00 00 */	cmpwi r3, 0
/* 80129EC0  40 82 00 98 */	bne lbl_80129F58
/* 80129EC4  C0 3D 33 A8 */	lfs f1, 0x33a8(r29)
/* 80129EC8  C0 02 95 DC */	lfs f0, lit_27477(r2)
/* 80129ECC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129ED0  40 81 00 88 */	ble lbl_80129F58
/* 80129ED4  80 7D 31 80 */	lwz r3, 0x3180(r29)
/* 80129ED8  48 23 B1 F9 */	bl abs
/* 80129EDC  2C 03 50 00 */	cmpwi r3, 0x5000
/* 80129EE0  40 80 00 78 */	bge lbl_80129F58
/* 80129EE4  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80129EE8  28 00 00 F1 */	cmplwi r0, 0xf1
/* 80129EEC  41 82 00 0C */	beq lbl_80129EF8
/* 80129EF0  28 00 00 F2 */	cmplwi r0, 0xf2
/* 80129EF4  40 82 00 64 */	bne lbl_80129F58
lbl_80129EF8:
/* 80129EF8  A8 7D 2F E2 */	lha r3, 0x2fe2(r29)
/* 80129EFC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80129F00  48 14 6F 25 */	bl cLib_distanceAngleS__Fss
/* 80129F04  2C 03 70 00 */	cmpwi r3, 0x7000
/* 80129F08  40 81 00 50 */	ble lbl_80129F58
/* 80129F0C  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 80129F10  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80129F14  41 82 00 14 */	beq lbl_80129F28
/* 80129F18  7F A3 EB 78 */	mr r3, r29
/* 80129F1C  38 80 00 00 */	li r4, 0
/* 80129F20  48 00 59 21 */	bl procWolfSlipTurnInit__9daAlink_cFi
/* 80129F24  48 00 00 08 */	b lbl_80129F2C
lbl_80129F28:
/* 80129F28  38 60 00 00 */	li r3, 0
lbl_80129F2C:
/* 80129F2C  7C 7E 1B 78 */	mr r30, r3
/* 80129F30  2C 03 00 00 */	cmpwi r3, 0
/* 80129F34  40 82 00 DC */	bne lbl_8012A010
/* 80129F38  7F A3 EB 78 */	mr r3, r29
/* 80129F3C  4B FE BC E5 */	bl checkEventRun__9daAlink_cCFv
/* 80129F40  2C 03 00 00 */	cmpwi r3, 0
/* 80129F44  40 82 00 CC */	bne lbl_8012A010
/* 80129F48  7F A3 EB 78 */	mr r3, r29
/* 80129F4C  4B F8 B9 A1 */	bl checkWaitAction__9daAlink_cFv
/* 80129F50  7C 7E 1B 78 */	mr r30, r3
/* 80129F54  48 00 00 BC */	b lbl_8012A010
lbl_80129F58:
/* 80129F58  7F A3 EB 78 */	mr r3, r29
/* 80129F5C  4B F8 B9 91 */	bl checkWaitAction__9daAlink_cFv
/* 80129F60  7C 7E 1B 78 */	mr r30, r3
/* 80129F64  48 00 00 AC */	b lbl_8012A010
lbl_80129F68:
/* 80129F68  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 80129F6C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80129F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129F74  40 81 00 90 */	ble lbl_8012A004
/* 80129F78  88 1D 2F A8 */	lbz r0, 0x2fa8(r29)
/* 80129F7C  28 00 00 08 */	cmplwi r0, 8
/* 80129F80  41 82 00 84 */	beq lbl_8012A004
/* 80129F84  80 7D 31 80 */	lwz r3, 0x3180(r29)
/* 80129F88  48 23 B1 49 */	bl abs
/* 80129F8C  2C 03 50 00 */	cmpwi r3, 0x5000
/* 80129F90  40 80 00 74 */	bge lbl_8012A004
/* 80129F94  A8 7D 2F E2 */	lha r3, 0x2fe2(r29)
/* 80129F98  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80129F9C  48 14 6E 89 */	bl cLib_distanceAngleS__Fss
/* 80129FA0  2C 03 70 00 */	cmpwi r3, 0x7000
/* 80129FA4  40 81 00 60 */	ble lbl_8012A004
/* 80129FA8  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80129FAC  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80129FB0  41 82 00 20 */	beq lbl_80129FD0
/* 80129FB4  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80129FB8  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 80129FBC  EC 21 00 24 */	fdivs f1, f1, f0
/* 80129FC0  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80129FC4  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80129FC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129FCC  41 81 00 28 */	bgt lbl_80129FF4
lbl_80129FD0:
/* 80129FD0  28 00 00 00 */	cmplwi r0, 0
/* 80129FD4  40 82 00 30 */	bne lbl_8012A004
/* 80129FD8  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80129FDC  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 80129FE0  EC 21 00 24 */	fdivs f1, f1, f0
/* 80129FE4  38 7F 18 D0 */	addi r3, r31, 0x18d0
/* 80129FE8  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80129FEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129FF0  40 81 00 14 */	ble lbl_8012A004
lbl_80129FF4:
/* 80129FF4  7F A3 EB 78 */	mr r3, r29
/* 80129FF8  48 00 56 3D */	bl procWolfSlipInit__9daAlink_cFv
/* 80129FFC  7C 7E 1B 78 */	mr r30, r3
/* 8012A000  48 00 00 10 */	b lbl_8012A010
lbl_8012A004:
/* 8012A004  7F A3 EB 78 */	mr r3, r29
/* 8012A008  48 00 33 79 */	bl procWolfMoveInit__9daAlink_cFv
/* 8012A00C  7C 7E 1B 78 */	mr r30, r3
lbl_8012A010:
/* 8012A010  7F C3 F3 78 */	mr r3, r30
lbl_8012A014:
/* 8012A014  39 61 00 20 */	addi r11, r1, 0x20
/* 8012A018  48 23 82 11 */	bl _restgpr_29
/* 8012A01C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012A020  7C 08 03 A6 */	mtlr r0
/* 8012A024  38 21 00 20 */	addi r1, r1, 0x20
/* 8012A028  4E 80 00 20 */	blr 
