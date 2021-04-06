lbl_800D7C40:
/* 800D7C40  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 800D7C44  7C 08 02 A6 */	mflr r0
/* 800D7C48  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 800D7C4C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 800D7C50  48 28 A5 75 */	bl _savegpr_23
/* 800D7C54  7C 7F 1B 78 */	mr r31, r3
/* 800D7C58  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800D7C5C  3B A3 D6 58 */	addi r29, r3, lit_3757@l /* 0x8038D658@l */
/* 800D7C60  AB 9F 30 06 */	lha r28, 0x3006(r31)
/* 800D7C64  38 00 00 00 */	li r0, 0
/* 800D7C68  B0 1F 30 06 */	sth r0, 0x3006(r31)
/* 800D7C6C  8B 7F 2F CA */	lbz r27, 0x2fca(r31)
/* 800D7C70  98 1F 2F CA */	stb r0, 0x2fca(r31)
/* 800D7C74  38 7F 20 48 */	addi r3, r31, 0x2048
/* 800D7C78  48 08 68 55 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D7C7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D7C80  41 82 00 88 */	beq lbl_800D7D08
/* 800D7C84  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800D7C88  28 00 00 AD */	cmplwi r0, 0xad
/* 800D7C8C  40 82 00 1C */	bne lbl_800D7CA8
/* 800D7C90  7F E3 FB 78 */	mr r3, r31
/* 800D7C94  38 80 00 02 */	li r4, 2
/* 800D7C98  38 BD 0E F4 */	addi r5, r29, 0xef4
/* 800D7C9C  C0 25 00 20 */	lfs f1, 0x20(r5)
/* 800D7CA0  4B FD 5A 85 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800D7CA4  48 00 00 64 */	b lbl_800D7D08
lbl_800D7CA8:
/* 800D7CA8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800D7CAC  28 00 02 A7 */	cmplwi r0, 0x2a7
/* 800D7CB0  40 82 00 18 */	bne lbl_800D7CC8
/* 800D7CB4  7F E3 FB 78 */	mr r3, r31
/* 800D7CB8  38 80 00 02 */	li r4, 2
/* 800D7CBC  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800D7CC0  4B FD 5A 65 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800D7CC4  48 00 00 44 */	b lbl_800D7D08
lbl_800D7CC8:
/* 800D7CC8  28 00 00 16 */	cmplwi r0, 0x16
/* 800D7CCC  40 82 00 24 */	bne lbl_800D7CF0
/* 800D7CD0  7F E3 FB 78 */	mr r3, r31
/* 800D7CD4  38 80 00 02 */	li r4, 2
/* 800D7CD8  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800D7CDC  4B FD 5A 49 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800D7CE0  7F E3 FB 78 */	mr r3, r31
/* 800D7CE4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800D7CE8  48 00 53 21 */	bl setUpperGuardAnime__9daAlink_cFf
/* 800D7CEC  48 00 00 1C */	b lbl_800D7D08
lbl_800D7CF0:
/* 800D7CF0  28 00 00 BF */	cmplwi r0, 0xbf
/* 800D7CF4  40 82 00 14 */	bne lbl_800D7D08
/* 800D7CF8  7F E3 FB 78 */	mr r3, r31
/* 800D7CFC  38 80 00 02 */	li r4, 2
/* 800D7D00  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800D7D04  4B FD 5A 21 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800D7D08:
/* 800D7D08  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800D7D0C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D7D10  41 82 00 AC */	beq lbl_800D7DBC
/* 800D7D14  38 00 00 00 */	li r0, 0
/* 800D7D18  88 7F 05 6A */	lbz r3, 0x56a(r31)
/* 800D7D1C  28 03 00 00 */	cmplwi r3, 0
/* 800D7D20  41 82 00 10 */	beq lbl_800D7D30
/* 800D7D24  28 03 00 26 */	cmplwi r3, 0x26
/* 800D7D28  40 80 00 08 */	bge lbl_800D7D30
/* 800D7D2C  38 00 00 01 */	li r0, 1
lbl_800D7D30:
/* 800D7D30  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800D7D34  41 82 00 0C */	beq lbl_800D7D40
/* 800D7D38  7F E3 FB 78 */	mr r3, r31
/* 800D7D3C  48 01 2B 95 */	bl cancelSumouMode__9daAlink_cFv
lbl_800D7D40:
/* 800D7D40  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800D7D44  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800D7D48  41 82 00 10 */	beq lbl_800D7D58
/* 800D7D4C  7F E3 FB 78 */	mr r3, r31
/* 800D7D50  48 02 DB 51 */	bl procOctaIealSpitInit__9daAlink_cFv
/* 800D7D54  48 00 11 D0 */	b lbl_800D8F24
lbl_800D7D58:
/* 800D7D58  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800D7D5C  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800D7D60  41 82 00 14 */	beq lbl_800D7D74
/* 800D7D64  7F E3 FB 78 */	mr r3, r31
/* 800D7D68  38 80 00 04 */	li r4, 4
/* 800D7D6C  48 04 87 C9 */	bl commonFallInit__9daAlink_cFi
/* 800D7D70  48 00 11 B4 */	b lbl_800D8F24
lbl_800D7D74:
/* 800D7D74  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800D7D78  28 00 01 38 */	cmplwi r0, 0x138
/* 800D7D7C  40 82 00 1C */	bne lbl_800D7D98
/* 800D7D80  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800D7D84  2C 00 00 00 */	cmpwi r0, 0
/* 800D7D88  40 82 00 10 */	bne lbl_800D7D98
/* 800D7D8C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800D7D90  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 800D7D94  90 1F 05 70 */	stw r0, 0x570(r31)
lbl_800D7D98:
/* 800D7D98  7F E3 FB 78 */	mr r3, r31
/* 800D7D9C  38 80 FF FD */	li r4, -3
/* 800D7DA0  38 A0 00 01 */	li r5, 1
/* 800D7DA4  38 C0 00 00 */	li r6, 0
/* 800D7DA8  38 E0 00 00 */	li r7, 0
/* 800D7DAC  39 00 00 00 */	li r8, 0
/* 800D7DB0  39 20 00 00 */	li r9, 0
/* 800D7DB4  48 00 19 29 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800D7DB8  48 00 11 6C */	b lbl_800D8F24
lbl_800D7DBC:
/* 800D7DBC  7F E3 FB 78 */	mr r3, r31
/* 800D7DC0  48 03 DE 61 */	bl checkEventRun__9daAlink_cCFv
/* 800D7DC4  2C 03 00 00 */	cmpwi r3, 0
/* 800D7DC8  41 82 00 24 */	beq lbl_800D7DEC
/* 800D7DCC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D7DD0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800D7DD4  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800D7DD8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800D7DDC  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 800D7DE0  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800D7DE4  38 60 00 00 */	li r3, 0
/* 800D7DE8  48 00 11 3C */	b lbl_800D8F24
lbl_800D7DEC:
/* 800D7DEC  80 BF 05 74 */	lwz r5, 0x574(r31)
/* 800D7DF0  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 800D7DF4  41 82 00 54 */	beq lbl_800D7E48
/* 800D7DF8  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800D7DFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800D7E00  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800D7E04  7C 80 00 39 */	and. r0, r4, r0
/* 800D7E08  40 82 00 28 */	bne lbl_800D7E30
/* 800D7E0C  54 A0 01 8D */	rlwinm. r0, r5, 0, 6, 6
/* 800D7E10  40 82 00 20 */	bne lbl_800D7E30
/* 800D7E14  7F E3 FB 78 */	mr r3, r31
/* 800D7E18  80 9F 28 F8 */	lwz r4, 0x28f8(r31)
/* 800D7E1C  48 00 38 89 */	bl procDkCaughtInit__9daAlink_cFUi
/* 800D7E20  2C 03 00 00 */	cmpwi r3, 0
/* 800D7E24  41 82 00 0C */	beq lbl_800D7E30
/* 800D7E28  38 60 00 01 */	li r3, 1
/* 800D7E2C  48 00 10 F8 */	b lbl_800D8F24
lbl_800D7E30:
/* 800D7E30  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800D7E34  28 00 00 78 */	cmplwi r0, 0x78
/* 800D7E38  41 82 00 10 */	beq lbl_800D7E48
/* 800D7E3C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D7E40  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800D7E44  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_800D7E48:
/* 800D7E48  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800D7E4C  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 800D7E50  41 82 00 A0 */	beq lbl_800D7EF0
/* 800D7E54  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800D7E58  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800D7E5C  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800D7E60  7C 80 00 39 */	and. r0, r4, r0
/* 800D7E64  40 82 00 74 */	bne lbl_800D7ED8
/* 800D7E68  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D7E6C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D7E70  40 82 00 68 */	bne lbl_800D7ED8
/* 800D7E74  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800D7E78  28 00 02 62 */	cmplwi r0, 0x262
/* 800D7E7C  41 82 00 5C */	beq lbl_800D7ED8
/* 800D7E80  7F E3 FB 78 */	mr r3, r31
/* 800D7E84  38 80 01 14 */	li r4, 0x114
/* 800D7E88  4B FD 45 C9 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800D7E8C  A0 83 00 00 */	lhz r4, 0(r3)
/* 800D7E90  7F E3 FB 78 */	mr r3, r31
/* 800D7E94  4B FD 54 AD */	bl setUpperAnimeBase__9daAlink_cFUs
/* 800D7E98  7F E3 FB 78 */	mr r3, r31
/* 800D7E9C  38 80 01 14 */	li r4, 0x114
/* 800D7EA0  4B FD 7C 75 */	bl setFacePriAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800D7EA4  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 800D7EA8  A8 03 00 14 */	lha r0, 0x14(r3)
/* 800D7EAC  B0 1F 30 F6 */	sth r0, 0x30f6(r31)
/* 800D7EB0  38 00 00 01 */	li r0, 1
/* 800D7EB4  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 800D7EB8  38 00 00 06 */	li r0, 6
/* 800D7EBC  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 800D7EC0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D7EC4  64 00 00 10 */	oris r0, r0, 0x10
/* 800D7EC8  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800D7ECC  7F E3 FB 78 */	mr r3, r31
/* 800D7ED0  4B FE B4 E9 */	bl procWaitInit__9daAlink_cFv
/* 800D7ED4  48 00 10 50 */	b lbl_800D8F24
lbl_800D7ED8:
/* 800D7ED8  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800D7EDC  28 00 02 62 */	cmplwi r0, 0x262
/* 800D7EE0  41 82 00 10 */	beq lbl_800D7EF0
/* 800D7EE4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800D7EE8  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 800D7EEC  90 1F 05 70 */	stw r0, 0x570(r31)
lbl_800D7EF0:
/* 800D7EF0  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 800D7EF4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 800D7EF8  41 82 00 58 */	beq lbl_800D7F50
/* 800D7EFC  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800D7F00  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800D7F04  41 82 00 10 */	beq lbl_800D7F14
/* 800D7F08  7F E3 FB 78 */	mr r3, r31
/* 800D7F0C  48 02 D9 95 */	bl procOctaIealSpitInit__9daAlink_cFv
/* 800D7F10  48 00 10 14 */	b lbl_800D8F24
lbl_800D7F14:
/* 800D7F14  54 60 00 43 */	rlwinm. r0, r3, 0, 1, 1
/* 800D7F18  41 82 00 14 */	beq lbl_800D7F2C
/* 800D7F1C  7F E3 FB 78 */	mr r3, r31
/* 800D7F20  38 80 00 04 */	li r4, 4
/* 800D7F24  48 04 86 11 */	bl commonFallInit__9daAlink_cFi
/* 800D7F28  48 00 0F FC */	b lbl_800D8F24
lbl_800D7F2C:
/* 800D7F2C  7F E3 FB 78 */	mr r3, r31
/* 800D7F30  38 80 FF FD */	li r4, -3
/* 800D7F34  38 A0 00 01 */	li r5, 1
/* 800D7F38  38 C0 00 00 */	li r6, 0
/* 800D7F3C  38 E0 00 00 */	li r7, 0
/* 800D7F40  39 00 00 00 */	li r8, 0
/* 800D7F44  39 20 00 00 */	li r9, 0
/* 800D7F48  48 00 17 95 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800D7F4C  48 00 0F D8 */	b lbl_800D8F24
lbl_800D7F50:
/* 800D7F50  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800D7F54  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800D7F58  41 82 00 10 */	beq lbl_800D7F68
/* 800D7F5C  7F E3 FB 78 */	mr r3, r31
/* 800D7F60  48 00 3E A1 */	bl procCoSandWallHitInit__9daAlink_cFv
/* 800D7F64  48 00 0F C0 */	b lbl_800D8F24
lbl_800D7F68:
/* 800D7F68  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800D7F6C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800D7F70  41 82 00 5C */	beq lbl_800D7FCC
/* 800D7F74  7F E3 FB 78 */	mr r3, r31
/* 800D7F78  38 80 FF FC */	li r4, -4
/* 800D7F7C  38 A0 00 01 */	li r5, 1
/* 800D7F80  38 C0 00 00 */	li r6, 0
/* 800D7F84  38 E0 00 00 */	li r7, 0
/* 800D7F88  48 04 85 79 */	bl commonLargeDamageUpInit__9daAlink_cFiiss
/* 800D7F8C  2C 03 00 00 */	cmpwi r3, 0
/* 800D7F90  41 82 00 34 */	beq lbl_800D7FC4
/* 800D7F94  C0 1F 37 44 */	lfs f0, 0x3744(r31)
/* 800D7F98  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800D7F9C  C0 1F 37 48 */	lfs f0, 0x3748(r31)
/* 800D7FA0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800D7FA4  C0 1F 37 4C */	lfs f0, 0x374c(r31)
/* 800D7FA8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800D7FAC  A8 1F 31 04 */	lha r0, 0x3104(r31)
/* 800D7FB0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800D7FB4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D7FB8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800D7FBC  38 60 00 01 */	li r3, 1
/* 800D7FC0  48 00 0F 64 */	b lbl_800D8F24
lbl_800D7FC4:
/* 800D7FC4  38 60 00 00 */	li r3, 0
/* 800D7FC8  48 00 0F 5C */	b lbl_800D8F24
lbl_800D7FCC:
/* 800D7FCC  A8 1F 05 6C */	lha r0, 0x56c(r31)
/* 800D7FD0  2C 00 00 00 */	cmpwi r0, 0
/* 800D7FD4  41 82 00 10 */	beq lbl_800D7FE4
/* 800D7FD8  7F E3 FB 78 */	mr r3, r31
/* 800D7FDC  48 05 23 55 */	bl checkWolfBarrierHitReverse__9daAlink_cFv
/* 800D7FE0  48 00 0F 44 */	b lbl_800D8F24
lbl_800D7FE4:
/* 800D7FE4  3B 40 00 00 */	li r26, 0
/* 800D7FE8  3A E0 00 00 */	li r23, 0
/* 800D7FEC  3B 20 00 00 */	li r25, 0
/* 800D7FF0  3B 00 00 01 */	li r24, 1
lbl_800D7FF4:
/* 800D7FF4  3B D9 08 50 */	addi r30, r25, 0x850
/* 800D7FF8  7F DF F2 14 */	add r30, r31, r30
/* 800D7FFC  7F C3 F3 78 */	mr r3, r30
/* 800D8000  4B FA C4 61 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 800D8004  28 03 00 00 */	cmplwi r3, 0
/* 800D8008  41 82 00 20 */	beq lbl_800D8028
/* 800D800C  88 1F 2F B8 */	lbz r0, 0x2fb8(r31)
/* 800D8010  28 00 00 00 */	cmplwi r0, 0
/* 800D8014  41 82 00 0C */	beq lbl_800D8020
/* 800D8018  7F 00 B8 31 */	slw. r0, r24, r23
/* 800D801C  40 82 00 0C */	bne lbl_800D8028
lbl_800D8020:
/* 800D8020  7F DA F3 78 */	mr r26, r30
/* 800D8024  48 00 00 14 */	b lbl_800D8038
lbl_800D8028:
/* 800D8028  3A F7 00 01 */	addi r23, r23, 1
/* 800D802C  2C 17 00 03 */	cmpwi r23, 3
/* 800D8030  3B 39 01 3C */	addi r25, r25, 0x13c
/* 800D8034  41 80 FF C0 */	blt lbl_800D7FF4
lbl_800D8038:
/* 800D8038  28 1A 00 00 */	cmplwi r26, 0
/* 800D803C  40 82 00 14 */	bne lbl_800D8050
/* 800D8040  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D8044  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D8048  41 82 00 08 */	beq lbl_800D8050
/* 800D804C  3B 5F 0F B8 */	addi r26, r31, 0xfb8
lbl_800D8050:
/* 800D8050  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800D8054  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 800D8058  41 82 00 1C */	beq lbl_800D8074
/* 800D805C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D8060  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D8064  41 82 00 10 */	beq lbl_800D8074
/* 800D8068  7F E3 FB 78 */	mr r3, r31
/* 800D806C  48 06 5B 01 */	bl procWolfCargoCarryInit__9daAlink_cFv
/* 800D8070  48 00 0E B4 */	b lbl_800D8F24
lbl_800D8074:
/* 800D8074  7F E3 FB 78 */	mr r3, r31
/* 800D8078  4B FF F7 51 */	bl checkMagicArmorNoDamage__9daAlink_cFv
/* 800D807C  7C 7E 1B 78 */	mr r30, r3
/* 800D8080  38 00 00 00 */	li r0, 0
/* 800D8084  90 01 00 08 */	stw r0, 8(r1)
/* 800D8088  9B 7F 2F CA */	stb r27, 0x2fca(r31)
/* 800D808C  7F E3 FB 78 */	mr r3, r31
/* 800D8090  4B FF F7 91 */	bl checkPolyDamage__9daAlink_cFv
/* 800D8094  7C 7B 1B 78 */	mr r27, r3
/* 800D8098  38 80 00 00 */	li r4, 0
/* 800D809C  98 9F 2F CA */	stb r4, 0x2fca(r31)
/* 800D80A0  B3 9F 30 06 */	sth r28, 0x3006(r31)
/* 800D80A4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 800D80A8  41 82 00 2C */	beq lbl_800D80D4
/* 800D80AC  A8 7F 30 06 */	lha r3, 0x3006(r31)
/* 800D80B0  38 03 00 01 */	addi r0, r3, 1
/* 800D80B4  B0 1F 30 06 */	sth r0, 0x3006(r31)
/* 800D80B8  A8 9F 30 06 */	lha r4, 0x3006(r31)
/* 800D80BC  38 7D 0E F4 */	addi r3, r29, 0xef4
/* 800D80C0  A8 03 00 2E */	lha r0, 0x2e(r3)
/* 800D80C4  7C 04 00 00 */	cmpw r4, r0
/* 800D80C8  40 80 00 28 */	bge lbl_800D80F0
/* 800D80CC  3B 60 00 00 */	li r27, 0
/* 800D80D0  48 00 00 20 */	b lbl_800D80F0
lbl_800D80D4:
/* 800D80D4  A8 7F 30 06 */	lha r3, 0x3006(r31)
/* 800D80D8  2C 03 00 03 */	cmpwi r3, 3
/* 800D80DC  40 81 00 10 */	ble lbl_800D80EC
/* 800D80E0  38 03 FF FD */	addi r0, r3, -3
/* 800D80E4  B0 1F 30 06 */	sth r0, 0x3006(r31)
/* 800D80E8  48 00 00 08 */	b lbl_800D80F0
lbl_800D80EC:
/* 800D80EC  B0 9F 30 06 */	sth r4, 0x3006(r31)
lbl_800D80F0:
/* 800D80F0  2C 1B 00 00 */	cmpwi r27, 0
/* 800D80F4  41 82 02 3C */	beq lbl_800D8330
/* 800D80F8  57 7A 07 7E */	clrlwi r26, r27, 0x1d
/* 800D80FC  7F E3 FB 78 */	mr r3, r31
/* 800D8100  38 80 00 01 */	li r4, 1
/* 800D8104  57 7E 06 30 */	rlwinm r30, r27, 0, 0x18, 0x18
/* 800D8108  7F C5 F3 78 */	mr r5, r30
/* 800D810C  38 C0 00 01 */	li r6, 1
/* 800D8110  38 E0 00 00 */	li r7, 0
/* 800D8114  4B FF F1 A9 */	bl setDamagePoint__9daAlink_cFiiii
/* 800D8118  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D811C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D8120  41 82 00 30 */	beq lbl_800D8150
/* 800D8124  38 7D 0E F4 */	addi r3, r29, 0xef4
/* 800D8128  A8 03 00 2C */	lha r0, 0x2c(r3)
/* 800D812C  B0 1F 05 6C */	sth r0, 0x56c(r31)
/* 800D8130  A8 7F 05 6C */	lha r3, 0x56c(r31)
/* 800D8134  54 60 E0 06 */	slwi r0, r3, 0x1c
/* 800D8138  54 63 0F FE */	srwi r3, r3, 0x1f
/* 800D813C  7C 03 00 50 */	subf r0, r3, r0
/* 800D8140  54 00 20 3E */	rotlwi r0, r0, 4
/* 800D8144  7C 00 1A 14 */	add r0, r0, r3
/* 800D8148  20 00 00 20 */	subfic r0, r0, 0x20
/* 800D814C  98 1F 2F B5 */	stb r0, 0x2fb5(r31)
lbl_800D8150:
/* 800D8150  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 800D8154  54 60 01 4B */	rlwinm. r0, r3, 0, 5, 5
/* 800D8158  41 82 00 88 */	beq lbl_800D81E0
/* 800D815C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D8160  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 800D8164  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D8168  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 800D816C  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 800D8170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D8174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D8178  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D817C  38 80 00 02 */	li r4, 2
/* 800D8180  38 A0 00 1F */	li r5, 0x1f
/* 800D8184  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 800D8188  4B F9 78 9D */	bl StartShock__12dVibration_cFii4cXyz
/* 800D818C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D8190  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D8194  41 82 00 10 */	beq lbl_800D81A4
/* 800D8198  7F E3 FB 78 */	mr r3, r31
/* 800D819C  48 05 DE C9 */	bl setWolfHeadDamage__9daAlink_cFv
/* 800D81A0  48 00 0C 74 */	b lbl_800D8E14
lbl_800D81A4:
/* 800D81A4  7F E3 FB 78 */	mr r3, r31
/* 800D81A8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010002@ha */
/* 800D81AC  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00010002@l */
/* 800D81B0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D81B4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D81B8  7D 89 03 A6 */	mtctr r12
/* 800D81BC  4E 80 04 21 */	bctrl 
/* 800D81C0  7F E3 FB 78 */	mr r3, r31
/* 800D81C4  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 800D81C8  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 800D81CC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D81D0  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D81D4  7D 89 03 A6 */	mtctr r12
/* 800D81D8  4E 80 04 21 */	bctrl 
/* 800D81DC  48 00 0C 38 */	b lbl_800D8E14
lbl_800D81E0:
/* 800D81E0  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800D81E4  40 82 00 90 */	bne lbl_800D8274
/* 800D81E8  57 60 06 73 */	rlwinm. r0, r27, 0, 0x19, 0x19
/* 800D81EC  40 82 00 20 */	bne lbl_800D820C
/* 800D81F0  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800D81F4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D81F8  40 82 00 7C */	bne lbl_800D8274
/* 800D81FC  2C 1A 00 03 */	cmpwi r26, 3
/* 800D8200  41 82 00 0C */	beq lbl_800D820C
/* 800D8204  2C 1A 00 04 */	cmpwi r26, 4
/* 800D8208  40 82 00 6C */	bne lbl_800D8274
lbl_800D820C:
/* 800D820C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D8210  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 800D8214  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D8218  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 800D821C  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 800D8220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D8224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D8228  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D822C  38 80 00 02 */	li r4, 2
/* 800D8230  38 A0 00 1F */	li r5, 0x1f
/* 800D8234  38 C1 00 9C */	addi r6, r1, 0x9c
/* 800D8238  4B F9 77 ED */	bl StartShock__12dVibration_cFii4cXyz
/* 800D823C  30 1E FF FF */	addic r0, r30, -1
/* 800D8240  7D 20 F1 10 */	subfe r9, r0, r30
/* 800D8244  2C 1A 00 04 */	cmpwi r26, 4
/* 800D8248  40 82 00 0C */	bne lbl_800D8254
/* 800D824C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D8250  B0 1F 31 1E */	sth r0, 0x311e(r31)
lbl_800D8254:
/* 800D8254  7F E3 FB 78 */	mr r3, r31
/* 800D8258  38 80 FF FB */	li r4, -5
/* 800D825C  38 A0 00 01 */	li r5, 1
/* 800D8260  38 C0 00 00 */	li r6, 0
/* 800D8264  38 E0 00 00 */	li r7, 0
/* 800D8268  39 00 00 00 */	li r8, 0
/* 800D826C  48 00 14 71 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800D8270  48 00 0C B4 */	b lbl_800D8F24
lbl_800D8274:
/* 800D8274  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D8278  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 800D827C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D8280  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 800D8284  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 800D8288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D828C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D8290  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D8294  38 80 00 02 */	li r4, 2
/* 800D8298  38 A0 00 1F */	li r5, 0x1f
/* 800D829C  38 C1 00 90 */	addi r6, r1, 0x90
/* 800D82A0  4B F9 77 85 */	bl StartShock__12dVibration_cFii4cXyz
/* 800D82A4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D82A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D82AC  41 82 00 40 */	beq lbl_800D82EC
/* 800D82B0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D82B4  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800D82B8  41 82 00 10 */	beq lbl_800D82C8
/* 800D82BC  7F E3 FB 78 */	mr r3, r31
/* 800D82C0  48 05 DD A5 */	bl setWolfHeadDamage__9daAlink_cFv
/* 800D82C4  48 00 0B 50 */	b lbl_800D8E14
lbl_800D82C8:
/* 800D82C8  2C 1E 00 00 */	cmpwi r30, 0
/* 800D82CC  41 82 00 14 */	beq lbl_800D82E0
/* 800D82D0  7F E3 FB 78 */	mr r3, r31
/* 800D82D4  38 80 00 00 */	li r4, 0
/* 800D82D8  48 05 DE 15 */	bl procWolfDamageInit__9daAlink_cFP12dCcD_GObjInf
/* 800D82DC  48 00 0C 48 */	b lbl_800D8F24
lbl_800D82E0:
/* 800D82E0  7F E3 FB 78 */	mr r3, r31
/* 800D82E4  48 00 29 A1 */	bl procCoPolyDamageInit__9daAlink_cFv
/* 800D82E8  48 00 0C 3C */	b lbl_800D8F24
lbl_800D82EC:
/* 800D82EC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D82F0  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800D82F4  41 82 00 14 */	beq lbl_800D8308
/* 800D82F8  7F E3 FB 78 */	mr r3, r31
/* 800D82FC  38 80 00 00 */	li r4, 0
/* 800D8300  48 02 CE 9D */	bl procSwimDamageInit__9daAlink_cFP12dCcD_GObjInf
/* 800D8304  48 00 0C 20 */	b lbl_800D8F24
lbl_800D8308:
/* 800D8308  2C 1E 00 00 */	cmpwi r30, 0
/* 800D830C  41 82 00 18 */	beq lbl_800D8324
/* 800D8310  7F E3 FB 78 */	mr r3, r31
/* 800D8314  38 80 00 00 */	li r4, 0
/* 800D8318  38 A0 00 00 */	li r5, 0
/* 800D831C  48 00 0C 21 */	bl procDamageInit__9daAlink_cFP12dCcD_GObjInfi
/* 800D8320  48 00 0C 04 */	b lbl_800D8F24
lbl_800D8324:
/* 800D8324  7F E3 FB 78 */	mr r3, r31
/* 800D8328  48 00 29 5D */	bl procCoPolyDamageInit__9daAlink_cFv
/* 800D832C  48 00 0B F8 */	b lbl_800D8F24
lbl_800D8330:
/* 800D8330  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800D8334  28 03 01 03 */	cmplwi r3, 0x103
/* 800D8338  41 82 00 1C */	beq lbl_800D8354
/* 800D833C  48 08 68 7D */	bl checkHookshotItem__9daPy_py_cFi
/* 800D8340  2C 03 00 00 */	cmpwi r3, 0
/* 800D8344  41 82 01 18 */	beq lbl_800D845C
/* 800D8348  80 1F 12 2C */	lwz r0, 0x122c(r31)
/* 800D834C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D8350  40 82 01 0C */	bne lbl_800D845C
lbl_800D8354:
/* 800D8354  7F E3 FB 78 */	mr r3, r31
/* 800D8358  38 9F 12 2C */	addi r4, r31, 0x122c
/* 800D835C  38 A1 00 08 */	addi r5, r1, 8
/* 800D8360  4B FF F7 39 */	bl checkElecReturnDamage__9daAlink_cFR12dCcD_GObjInfPP10fopAc_ac_c
/* 800D8364  2C 03 00 00 */	cmpwi r3, 0
/* 800D8368  40 82 00 34 */	bne lbl_800D839C
/* 800D836C  7F E3 FB 78 */	mr r3, r31
/* 800D8370  38 9F 13 70 */	addi r4, r31, 0x1370
/* 800D8374  38 A1 00 08 */	addi r5, r1, 8
/* 800D8378  4B FF F7 21 */	bl checkElecReturnDamage__9daAlink_cFR12dCcD_GObjInfPP10fopAc_ac_c
/* 800D837C  2C 03 00 00 */	cmpwi r3, 0
/* 800D8380  40 82 00 1C */	bne lbl_800D839C
/* 800D8384  7F E3 FB 78 */	mr r3, r31
/* 800D8388  38 9F 14 B4 */	addi r4, r31, 0x14b4
/* 800D838C  38 A1 00 08 */	addi r5, r1, 8
/* 800D8390  4B FF F7 09 */	bl checkElecReturnDamage__9daAlink_cFR12dCcD_GObjInfPP10fopAc_ac_c
/* 800D8394  2C 03 00 00 */	cmpwi r3, 0
/* 800D8398  41 82 00 C4 */	beq lbl_800D845C
lbl_800D839C:
/* 800D839C  7F E3 FB 78 */	mr r3, r31
/* 800D83A0  38 80 00 02 */	li r4, 2
/* 800D83A4  4B FF F0 D5 */	bl setDamagePointNormal__9daAlink_cFi
/* 800D83A8  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800D83AC  60 00 00 02 */	ori r0, r0, 2
/* 800D83B0  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800D83B4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D83B8  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 800D83BC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D83C0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 800D83C4  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 800D83C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D83CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D83D0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D83D4  38 80 00 04 */	li r4, 4
/* 800D83D8  38 A0 00 1F */	li r5, 0x1f
/* 800D83DC  38 C1 00 84 */	addi r6, r1, 0x84
/* 800D83E0  4B F9 76 45 */	bl StartShock__12dVibration_cFii4cXyz
/* 800D83E4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D83E8  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 800D83EC  41 82 00 58 */	beq lbl_800D8444
/* 800D83F0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D83F4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D83F8  41 82 00 10 */	beq lbl_800D8408
/* 800D83FC  7F E3 FB 78 */	mr r3, r31
/* 800D8400  48 05 DC 65 */	bl setWolfHeadDamage__9daAlink_cFv
/* 800D8404  48 00 0A 10 */	b lbl_800D8E14
lbl_800D8408:
/* 800D8408  7F E3 FB 78 */	mr r3, r31
/* 800D840C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010002@ha */
/* 800D8410  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00010002@l */
/* 800D8414  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D8418  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D841C  7D 89 03 A6 */	mtctr r12
/* 800D8420  4E 80 04 21 */	bctrl 
/* 800D8424  7F E3 FB 78 */	mr r3, r31
/* 800D8428  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 800D842C  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 800D8430  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D8434  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D8438  7D 89 03 A6 */	mtctr r12
/* 800D843C  4E 80 04 21 */	bctrl 
/* 800D8440  48 00 09 D4 */	b lbl_800D8E14
lbl_800D8444:
/* 800D8444  7F E3 FB 78 */	mr r3, r31
/* 800D8448  80 81 00 08 */	lwz r4, 8(r1)
/* 800D844C  38 A0 00 00 */	li r5, 0
/* 800D8450  38 C0 00 00 */	li r6, 0
/* 800D8454  48 00 2C ED */	bl procCoElecDamageInit__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfi
/* 800D8458  48 00 0A CC */	b lbl_800D8F24
lbl_800D845C:
/* 800D845C  28 1A 00 00 */	cmplwi r26, 0
/* 800D8460  41 82 09 B4 */	beq lbl_800D8E14
/* 800D8464  7F 43 D3 78 */	mr r3, r26
/* 800D8468  4B FA BF F9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 800D846C  28 03 00 00 */	cmplwi r3, 0
/* 800D8470  41 82 09 A4 */	beq lbl_800D8E14
/* 800D8474  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800D8478  28 00 00 1D */	cmplwi r0, 0x1d
/* 800D847C  41 82 09 98 */	beq lbl_800D8E14
/* 800D8480  38 7A 00 9C */	addi r3, r26, 0x9c
/* 800D8484  4B FA B2 05 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800D8488  28 03 00 00 */	cmplwi r3, 0
/* 800D848C  41 82 00 0C */	beq lbl_800D8498
/* 800D8490  AB 63 00 08 */	lha r27, 8(r3)
/* 800D8494  48 00 00 08 */	b lbl_800D849C
lbl_800D8498:
/* 800D8498  3B 60 00 FD */	li r27, 0xfd
lbl_800D849C:
/* 800D849C  7F 43 D3 78 */	mr r3, r26
/* 800D84A0  4B FA C0 A9 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 800D84A4  7C 78 1B 79 */	or. r24, r3, r3
/* 800D84A8  41 82 00 10 */	beq lbl_800D84B8
/* 800D84AC  8B 98 00 77 */	lbz r28, 0x77(r24)
/* 800D84B0  8B 38 00 75 */	lbz r25, 0x75(r24)
/* 800D84B4  48 00 00 0C */	b lbl_800D84C0
lbl_800D84B8:
/* 800D84B8  8B 9F 08 34 */	lbz r28, 0x834(r31)
/* 800D84BC  3B 20 00 00 */	li r25, 0
lbl_800D84C0:
/* 800D84C0  2C 1C 00 08 */	cmpwi r28, 8
/* 800D84C4  40 82 00 14 */	bne lbl_800D84D8
/* 800D84C8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D84CC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D84D0  41 82 00 08 */	beq lbl_800D84D8
/* 800D84D4  3B 80 00 01 */	li r28, 1
lbl_800D84D8:
/* 800D84D8  80 1A 00 A0 */	lwz r0, 0xa0(r26)
/* 800D84DC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800D84E0  41 82 02 A0 */	beq lbl_800D8780
/* 800D84E4  7F E3 FB 78 */	mr r3, r31
/* 800D84E8  7F 44 D3 78 */	mr r4, r26
/* 800D84EC  48 00 4C 29 */	bl setGuardSe__9daAlink_cFP12dCcD_GObjInf
/* 800D84F0  7F E3 FB 78 */	mr r3, r31
/* 800D84F4  7F 84 E3 78 */	mr r4, r28
/* 800D84F8  4B FF F6 F1 */	bl checkHugeAttack__9daAlink_cCFi
/* 800D84FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D8500  41 82 00 38 */	beq lbl_800D8538
/* 800D8504  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D8508  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 800D850C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D8510  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 800D8514  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 800D8518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D851C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D8520  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D8524  38 80 00 05 */	li r4, 5
/* 800D8528  38 A0 00 01 */	li r5, 1
/* 800D852C  38 C1 00 78 */	addi r6, r1, 0x78
/* 800D8530  4B F9 74 F5 */	bl StartShock__12dVibration_cFii4cXyz
/* 800D8534  48 00 00 B8 */	b lbl_800D85EC
lbl_800D8538:
/* 800D8538  7F E3 FB 78 */	mr r3, r31
/* 800D853C  7F 84 E3 78 */	mr r4, r28
/* 800D8540  4B FF F6 D5 */	bl checkLargeAttack__9daAlink_cCFi
/* 800D8544  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D8548  41 82 00 38 */	beq lbl_800D8580
/* 800D854C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D8550  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 800D8554  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D8558  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800D855C  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 800D8560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D8564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D8568  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D856C  38 80 00 04 */	li r4, 4
/* 800D8570  38 A0 00 01 */	li r5, 1
/* 800D8574  38 C1 00 6C */	addi r6, r1, 0x6c
/* 800D8578  4B F9 74 AD */	bl StartShock__12dVibration_cFii4cXyz
/* 800D857C  48 00 00 70 */	b lbl_800D85EC
lbl_800D8580:
/* 800D8580  2C 1C 00 08 */	cmpwi r28, 8
/* 800D8584  40 82 00 38 */	bne lbl_800D85BC
/* 800D8588  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D858C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 800D8590  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D8594  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 800D8598  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 800D859C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D85A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D85A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D85A8  38 80 00 02 */	li r4, 2
/* 800D85AC  38 A0 00 01 */	li r5, 1
/* 800D85B0  38 C1 00 60 */	addi r6, r1, 0x60
/* 800D85B4  4B F9 74 71 */	bl StartShock__12dVibration_cFii4cXyz
/* 800D85B8  48 00 00 34 */	b lbl_800D85EC
lbl_800D85BC:
/* 800D85BC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D85C0  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 800D85C4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D85C8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800D85CC  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 800D85D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D85D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D85D8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D85DC  38 80 00 03 */	li r4, 3
/* 800D85E0  38 A0 00 01 */	li r5, 1
/* 800D85E4  38 C1 00 54 */	addi r6, r1, 0x54
/* 800D85E8  4B F9 74 3D */	bl StartShock__12dVibration_cFii4cXyz
lbl_800D85EC:
/* 800D85EC  2C 1E 00 00 */	cmpwi r30, 0
/* 800D85F0  40 82 00 58 */	bne lbl_800D8648
/* 800D85F4  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 800D85F8  28 00 00 01 */	cmplwi r0, 1
/* 800D85FC  40 82 00 4C */	bne lbl_800D8648
/* 800D8600  48 08 6D C5 */	bl checkWoodShieldEquip__9daPy_py_cFv
/* 800D8604  2C 03 00 00 */	cmpwi r3, 0
/* 800D8608  41 82 00 40 */	beq lbl_800D8648
/* 800D860C  88 1F 2F CB */	lbz r0, 0x2fcb(r31)
/* 800D8610  28 00 00 00 */	cmplwi r0, 0
/* 800D8614  40 82 00 34 */	bne lbl_800D8648
/* 800D8618  80 1F 2E 50 */	lwz r0, 0x2e50(r31)
/* 800D861C  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 800D8620  40 82 00 28 */	bne lbl_800D8648
/* 800D8624  38 00 00 78 */	li r0, 0x78
/* 800D8628  98 1F 2F CB */	stb r0, 0x2fcb(r31)
/* 800D862C  7F E3 FB 78 */	mr r3, r31
/* 800D8630  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020047@ha */
/* 800D8634  38 84 00 47 */	addi r4, r4, 0x0047 /* 0x00020047@l */
/* 800D8638  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D863C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D8640  7D 89 03 A6 */	mtctr r12
/* 800D8644  4E 80 04 21 */	bctrl 
lbl_800D8648:
/* 800D8648  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800D864C  28 00 00 1E */	cmplwi r0, 0x1e
/* 800D8650  40 82 00 18 */	bne lbl_800D8668
/* 800D8654  7F 60 07 34 */	extsh r0, r27
/* 800D8658  2C 00 01 D2 */	cmpwi r0, 0x1d2
/* 800D865C  41 82 07 B8 */	beq lbl_800D8E14
/* 800D8660  2C 00 02 5B */	cmpwi r0, 0x25b
/* 800D8664  41 82 07 B0 */	beq lbl_800D8E14
lbl_800D8668:
/* 800D8668  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D866C  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 800D8670  40 82 07 A4 */	bne lbl_800D8E14
/* 800D8674  38 1C FF F6 */	addi r0, r28, -10
/* 800D8678  28 00 00 01 */	cmplwi r0, 1
/* 800D867C  40 81 00 0C */	ble lbl_800D8688
/* 800D8680  2C 1C 00 09 */	cmpwi r28, 9
/* 800D8684  40 82 00 10 */	bne lbl_800D8694
lbl_800D8688:
/* 800D8688  7F E3 FB 78 */	mr r3, r31
/* 800D868C  48 00 57 CD */	bl procGuardBreakInit__9daAlink_cFv
/* 800D8690  48 00 08 94 */	b lbl_800D8F24
lbl_800D8694:
/* 800D8694  2C 1E 00 00 */	cmpwi r30, 0
/* 800D8698  40 82 07 7C */	bne lbl_800D8E14
/* 800D869C  80 7A 00 9C */	lwz r3, 0x9c(r26)
/* 800D86A0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800D86A4  41 82 00 C0 */	beq lbl_800D8764
/* 800D86A8  7F E3 FB 78 */	mr r3, r31
/* 800D86AC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D86B0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800D86B4  7D 89 03 A6 */	mtctr r12
/* 800D86B8  4E 80 04 21 */	bctrl 
/* 800D86BC  28 03 00 00 */	cmplwi r3, 0
/* 800D86C0  41 82 00 4C */	beq lbl_800D870C
/* 800D86C4  7F E3 FB 78 */	mr r3, r31
/* 800D86C8  7F 84 E3 78 */	mr r4, r28
/* 800D86CC  4B FF F5 49 */	bl checkLargeAttack__9daAlink_cCFi
/* 800D86D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D86D4  40 82 00 18 */	bne lbl_800D86EC
/* 800D86D8  7F E3 FB 78 */	mr r3, r31
/* 800D86DC  7F 84 E3 78 */	mr r4, r28
/* 800D86E0  4B FF F5 09 */	bl checkHugeAttack__9daAlink_cCFi
/* 800D86E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D86E8  41 82 07 2C */	beq lbl_800D8E14
lbl_800D86EC:
/* 800D86EC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800D86F0  74 00 41 80 */	andis. r0, r0, 0x4180
/* 800D86F4  40 82 07 20 */	bne lbl_800D8E14
/* 800D86F8  7F E3 FB 78 */	mr r3, r31
/* 800D86FC  7F 44 D3 78 */	mr r4, r26
/* 800D8700  38 A0 00 00 */	li r5, 0
/* 800D8704  48 01 AD 2D */	bl procHorseHangInit__9daAlink_cFP12dCcD_GObjInfi
/* 800D8708  48 00 08 1C */	b lbl_800D8F24
lbl_800D870C:
/* 800D870C  2C 1C 00 08 */	cmpwi r28, 8
/* 800D8710  41 82 00 18 */	beq lbl_800D8728
/* 800D8714  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800D8718  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800D871C  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800D8720  7C 80 00 39 */	and. r0, r4, r0
/* 800D8724  41 82 00 2C */	beq lbl_800D8750
lbl_800D8728:
/* 800D8728  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D872C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800D8730  40 82 06 E4 */	bne lbl_800D8E14
/* 800D8734  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800D8738  28 00 00 42 */	cmplwi r0, 0x42
/* 800D873C  41 82 06 D8 */	beq lbl_800D8E14
/* 800D8740  7F E3 FB 78 */	mr r3, r31
/* 800D8744  7F 44 D3 78 */	mr r4, r26
/* 800D8748  48 00 4A 8D */	bl setSmallGuard__9daAlink_cFP12dCcD_GObjInf
/* 800D874C  48 00 06 C8 */	b lbl_800D8E14
lbl_800D8750:
/* 800D8750  7F E3 FB 78 */	mr r3, r31
/* 800D8754  7F 84 E3 78 */	mr r4, r28
/* 800D8758  7F 45 D3 78 */	mr r5, r26
/* 800D875C  48 00 4C 89 */	bl procGuardSlipInit__9daAlink_cFiP12dCcD_GObjInf
/* 800D8760  48 00 07 C4 */	b lbl_800D8F24
lbl_800D8764:
/* 800D8764  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 800D8768  41 82 06 AC */	beq lbl_800D8E14
/* 800D876C  7F E3 FB 78 */	mr r3, r31
/* 800D8770  7F 84 E3 78 */	mr r4, r28
/* 800D8774  7F 45 D3 78 */	mr r5, r26
/* 800D8778  48 00 4C 6D */	bl procGuardSlipInit__9daAlink_cFiP12dCcD_GObjInf
/* 800D877C  48 00 07 A8 */	b lbl_800D8F24
lbl_800D8780:
/* 800D8780  8B 7F 08 2A */	lbz r27, 0x82a(r31)
/* 800D8784  7F 43 D3 78 */	mr r3, r26
/* 800D8788  4B FA BC D9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 800D878C  28 03 00 00 */	cmplwi r3, 0
/* 800D8790  41 82 00 30 */	beq lbl_800D87C0
/* 800D8794  28 18 00 00 */	cmplwi r24, 0
/* 800D8798  41 82 00 28 */	beq lbl_800D87C0
/* 800D879C  80 18 00 10 */	lwz r0, 0x10(r24)
/* 800D87A0  28 00 00 20 */	cmplwi r0, 0x20
/* 800D87A4  40 82 00 1C */	bne lbl_800D87C0
/* 800D87A8  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800D87AC  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800D87B0  41 82 00 0C */	beq lbl_800D87BC
/* 800D87B4  3B 60 00 01 */	li r27, 1
/* 800D87B8  48 00 00 08 */	b lbl_800D87C0
lbl_800D87BC:
/* 800D87BC  3B 60 00 02 */	li r27, 2
lbl_800D87C0:
/* 800D87C0  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 800D87C4  28 00 00 05 */	cmplwi r0, 5
/* 800D87C8  40 82 00 38 */	bne lbl_800D8800
/* 800D87CC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D87D0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 800D87D4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D87D8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800D87DC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 800D87E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D87E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D87E8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D87EC  38 80 00 04 */	li r4, 4
/* 800D87F0  38 A0 00 1F */	li r5, 0x1f
/* 800D87F4  38 C1 00 48 */	addi r6, r1, 0x48
/* 800D87F8  4B F9 72 2D */	bl StartShock__12dVibration_cFii4cXyz
/* 800D87FC  48 00 00 C4 */	b lbl_800D88C0
lbl_800D8800:
/* 800D8800  7F E3 FB 78 */	mr r3, r31
/* 800D8804  7F 84 E3 78 */	mr r4, r28
/* 800D8808  4B FF F3 E1 */	bl checkHugeAttack__9daAlink_cCFi
/* 800D880C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D8810  41 82 00 38 */	beq lbl_800D8848
/* 800D8814  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D8818  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 800D881C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D8820  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800D8824  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 800D8828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D882C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D8830  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D8834  38 80 00 08 */	li r4, 8
/* 800D8838  38 A0 00 1F */	li r5, 0x1f
/* 800D883C  38 C1 00 3C */	addi r6, r1, 0x3c
/* 800D8840  4B F9 71 E5 */	bl StartShock__12dVibration_cFii4cXyz
/* 800D8844  48 00 00 7C */	b lbl_800D88C0
lbl_800D8848:
/* 800D8848  7F E3 FB 78 */	mr r3, r31
/* 800D884C  7F 84 E3 78 */	mr r4, r28
/* 800D8850  4B FF F3 C5 */	bl checkLargeAttack__9daAlink_cCFi
/* 800D8854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D8858  41 82 00 38 */	beq lbl_800D8890
/* 800D885C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D8860  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800D8864  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D8868  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800D886C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 800D8870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D8874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D8878  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D887C  38 80 00 04 */	li r4, 4
/* 800D8880  38 A0 00 1F */	li r5, 0x1f
/* 800D8884  38 C1 00 30 */	addi r6, r1, 0x30
/* 800D8888  4B F9 71 9D */	bl StartShock__12dVibration_cFii4cXyz
/* 800D888C  48 00 00 34 */	b lbl_800D88C0
lbl_800D8890:
/* 800D8890  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D8894  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800D8898  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D889C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800D88A0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800D88A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D88A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D88AC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D88B0  38 80 00 02 */	li r4, 2
/* 800D88B4  38 A0 00 1F */	li r5, 0x1f
/* 800D88B8  38 C1 00 24 */	addi r6, r1, 0x24
/* 800D88BC  4B F9 71 69 */	bl StartShock__12dVibration_cFii4cXyz
lbl_800D88C0:
/* 800D88C0  38 A0 00 01 */	li r5, 1
/* 800D88C4  38 19 FF FF */	addi r0, r25, -1
/* 800D88C8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800D88CC  38 60 FF FF */	li r3, -1
/* 800D88D0  7C 00 28 10 */	subfc r0, r0, r5
/* 800D88D4  7C 03 01 90 */	subfze r0, r3
/* 800D88D8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800D88DC  40 82 00 08 */	bne lbl_800D88E4
/* 800D88E0  38 A0 00 00 */	li r5, 0
lbl_800D88E4:
/* 800D88E4  7F E3 FB 78 */	mr r3, r31
/* 800D88E8  7F 64 DB 78 */	mr r4, r27
/* 800D88EC  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 800D88F0  38 C0 00 01 */	li r6, 1
/* 800D88F4  38 E0 00 00 */	li r7, 0
/* 800D88F8  4B FF E9 C5 */	bl setDamagePoint__9daAlink_cFiiii
/* 800D88FC  2C 1E 00 00 */	cmpwi r30, 0
/* 800D8900  41 82 00 28 */	beq lbl_800D8928
/* 800D8904  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 800D8908  28 00 00 05 */	cmplwi r0, 5
/* 800D890C  41 82 00 1C */	beq lbl_800D8928
/* 800D8910  28 00 00 02 */	cmplwi r0, 2
/* 800D8914  41 82 00 14 */	beq lbl_800D8928
/* 800D8918  7F E3 FB 78 */	mr r3, r31
/* 800D891C  7F 44 D3 78 */	mr r4, r26
/* 800D8920  48 00 47 F5 */	bl setGuardSe__9daAlink_cFP12dCcD_GObjInf
/* 800D8924  48 00 00 50 */	b lbl_800D8974
lbl_800D8928:
/* 800D8928  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 800D892C  28 00 00 01 */	cmplwi r0, 1
/* 800D8930  40 82 00 44 */	bne lbl_800D8974
/* 800D8934  7F E3 FB 78 */	mr r3, r31
/* 800D8938  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020047@ha */
/* 800D893C  38 84 00 47 */	addi r4, r4, 0x0047 /* 0x00020047@l */
/* 800D8940  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D8944  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D8948  7D 89 03 A6 */	mtctr r12
/* 800D894C  4E 80 04 21 */	bctrl 
/* 800D8950  2C 1C 00 08 */	cmpwi r28, 8
/* 800D8954  40 82 00 18 */	bne lbl_800D896C
/* 800D8958  7F E3 FB 78 */	mr r3, r31
/* 800D895C  38 9A 00 D4 */	addi r4, r26, 0xd4
/* 800D8960  7F 45 D3 78 */	mr r5, r26
/* 800D8964  48 04 C6 41 */	bl initFirePointDamageEffect__9daAlink_cFPC4cXyzP12dCcD_GObjInf
/* 800D8968  48 00 00 0C */	b lbl_800D8974
lbl_800D896C:
/* 800D896C  7F E3 FB 78 */	mr r3, r31
/* 800D8970  48 04 C5 39 */	bl initFirePointDamageEffectAll__9daAlink_cFv
lbl_800D8974:
/* 800D8974  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800D8978  54 80 01 4B */	rlwinm. r0, r4, 0, 5, 5
/* 800D897C  41 82 00 60 */	beq lbl_800D89DC
/* 800D8980  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D8984  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D8988  41 82 00 10 */	beq lbl_800D8998
/* 800D898C  7F E3 FB 78 */	mr r3, r31
/* 800D8990  48 05 D6 D5 */	bl setWolfHeadDamage__9daAlink_cFv
/* 800D8994  48 00 04 80 */	b lbl_800D8E14
lbl_800D8998:
/* 800D8998  2C 1E 00 00 */	cmpwi r30, 0
/* 800D899C  40 82 04 78 */	bne lbl_800D8E14
/* 800D89A0  7F E3 FB 78 */	mr r3, r31
/* 800D89A4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010002@ha */
/* 800D89A8  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00010002@l */
/* 800D89AC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D89B0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D89B4  7D 89 03 A6 */	mtctr r12
/* 800D89B8  4E 80 04 21 */	bctrl 
/* 800D89BC  7F E3 FB 78 */	mr r3, r31
/* 800D89C0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 800D89C4  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 800D89C8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D89CC  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D89D0  7D 89 03 A6 */	mtctr r12
/* 800D89D4  4E 80 04 21 */	bctrl 
/* 800D89D8  48 00 04 3C */	b lbl_800D8E14
lbl_800D89DC:
/* 800D89DC  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 800D89E0  28 00 00 05 */	cmplwi r0, 5
/* 800D89E4  40 82 00 30 */	bne lbl_800D8A14
/* 800D89E8  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800D89EC  74 00 41 80 */	andis. r0, r0, 0x4180
/* 800D89F0  40 82 00 24 */	bne lbl_800D8A14
/* 800D89F4  38 7A 00 9C */	addi r3, r26, 0x9c
/* 800D89F8  4B FA AC 91 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800D89FC  7C 64 1B 78 */	mr r4, r3
/* 800D8A00  7F E3 FB 78 */	mr r3, r31
/* 800D8A04  7F 45 D3 78 */	mr r5, r26
/* 800D8A08  7F 86 E3 78 */	mr r6, r28
/* 800D8A0C  48 00 27 35 */	bl procCoElecDamageInit__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfi
/* 800D8A10  48 00 05 14 */	b lbl_800D8F24
lbl_800D8A14:
/* 800D8A14  38 00 00 00 */	li r0, 0
/* 800D8A18  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800D8A1C  28 03 00 01 */	cmplwi r3, 1
/* 800D8A20  41 82 00 0C */	beq lbl_800D8A2C
/* 800D8A24  28 03 00 02 */	cmplwi r3, 2
/* 800D8A28  40 82 00 08 */	bne lbl_800D8A30
lbl_800D8A2C:
/* 800D8A2C  38 00 00 01 */	li r0, 1
lbl_800D8A30:
/* 800D8A30  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800D8A34  41 82 01 48 */	beq lbl_800D8B7C
/* 800D8A38  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 800D8A3C  28 00 00 05 */	cmplwi r0, 5
/* 800D8A40  40 82 00 28 */	bne lbl_800D8A68
/* 800D8A44  7F E3 FB 78 */	mr r3, r31
/* 800D8A48  38 80 FF FF */	li r4, -1
/* 800D8A4C  38 A0 00 01 */	li r5, 1
/* 800D8A50  38 C0 00 00 */	li r6, 0
/* 800D8A54  38 E0 00 00 */	li r7, 0
/* 800D8A58  7F 48 D3 78 */	mr r8, r26
/* 800D8A5C  39 20 00 00 */	li r9, 0
/* 800D8A60  48 00 0C 7D */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800D8A64  48 00 04 C0 */	b lbl_800D8F24
lbl_800D8A68:
/* 800D8A68  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800D8A6C  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800D8A70  40 82 00 80 */	bne lbl_800D8AF0
/* 800D8A74  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800D8A78  28 00 00 50 */	cmplwi r0, 0x50
/* 800D8A7C  41 82 00 3C */	beq lbl_800D8AB8
/* 800D8A80  28 00 00 53 */	cmplwi r0, 0x53
/* 800D8A84  41 82 00 34 */	beq lbl_800D8AB8
/* 800D8A88  28 00 00 4F */	cmplwi r0, 0x4f
/* 800D8A8C  41 82 00 2C */	beq lbl_800D8AB8
/* 800D8A90  7F E3 FB 78 */	mr r3, r31
/* 800D8A94  7F 84 E3 78 */	mr r4, r28
/* 800D8A98  4B FF F1 7D */	bl checkLargeAttack__9daAlink_cCFi
/* 800D8A9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D8AA0  40 82 00 18 */	bne lbl_800D8AB8
/* 800D8AA4  7F E3 FB 78 */	mr r3, r31
/* 800D8AA8  7F 84 E3 78 */	mr r4, r28
/* 800D8AAC  4B FF F1 3D */	bl checkHugeAttack__9daAlink_cCFi
/* 800D8AB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D8AB4  41 82 00 3C */	beq lbl_800D8AF0
lbl_800D8AB8:
/* 800D8AB8  48 01 3C F9 */	bl setHorseZeldaDamage__9daAlink_cFv
/* 800D8ABC  7F E3 FB 78 */	mr r3, r31
/* 800D8AC0  38 80 FF FF */	li r4, -1
/* 800D8AC4  38 A0 00 01 */	li r5, 1
/* 800D8AC8  38 C0 00 00 */	li r6, 0
/* 800D8ACC  38 E0 00 00 */	li r7, 0
/* 800D8AD0  7F 48 D3 78 */	mr r8, r26
/* 800D8AD4  39 20 00 00 */	li r9, 0
/* 800D8AD8  48 00 0C 05 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800D8ADC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D8AE0  60 00 20 00 */	ori r0, r0, 0x2000
/* 800D8AE4  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800D8AE8  38 60 00 01 */	li r3, 1
/* 800D8AEC  48 00 04 38 */	b lbl_800D8F24
lbl_800D8AF0:
/* 800D8AF0  2C 1E 00 00 */	cmpwi r30, 0
/* 800D8AF4  40 82 03 20 */	bne lbl_800D8E14
/* 800D8AF8  7F E3 FB 78 */	mr r3, r31
/* 800D8AFC  48 01 42 95 */	bl checkHorseNotDamageReaction__9daAlink_cCFv
/* 800D8B00  2C 03 00 00 */	cmpwi r3, 0
/* 800D8B04  41 82 00 40 */	beq lbl_800D8B44
/* 800D8B08  7F E3 FB 78 */	mr r3, r31
/* 800D8B0C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010002@ha */
/* 800D8B10  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00010002@l */
/* 800D8B14  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D8B18  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D8B1C  7D 89 03 A6 */	mtctr r12
/* 800D8B20  4E 80 04 21 */	bctrl 
/* 800D8B24  7F E3 FB 78 */	mr r3, r31
/* 800D8B28  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 800D8B2C  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 800D8B30  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D8B34  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D8B38  7D 89 03 A6 */	mtctr r12
/* 800D8B3C  4E 80 04 21 */	bctrl 
/* 800D8B40  48 00 02 D4 */	b lbl_800D8E14
lbl_800D8B44:
/* 800D8B44  2C 1C 00 08 */	cmpwi r28, 8
/* 800D8B48  41 82 00 10 */	beq lbl_800D8B58
/* 800D8B4C  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800D8B50  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800D8B54  41 82 00 14 */	beq lbl_800D8B68
lbl_800D8B58:
/* 800D8B58  7F E3 FB 78 */	mr r3, r31
/* 800D8B5C  7F 44 D3 78 */	mr r4, r26
/* 800D8B60  48 01 91 B9 */	bl procHorseDamageInit__9daAlink_cFP12dCcD_GObjInf
/* 800D8B64  48 00 03 C0 */	b lbl_800D8F24
lbl_800D8B68:
/* 800D8B68  7F E3 FB 78 */	mr r3, r31
/* 800D8B6C  7F 44 D3 78 */	mr r4, r26
/* 800D8B70  38 A0 00 01 */	li r5, 1
/* 800D8B74  48 01 A8 BD */	bl procHorseHangInit__9daAlink_cFP12dCcD_GObjInfi
/* 800D8B78  48 00 03 AC */	b lbl_800D8F24
lbl_800D8B7C:
/* 800D8B7C  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 800D8B80  41 82 00 34 */	beq lbl_800D8BB4
/* 800D8B84  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D8B88  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D8B8C  41 82 00 10 */	beq lbl_800D8B9C
/* 800D8B90  7F E3 FB 78 */	mr r3, r31
/* 800D8B94  48 05 D4 D1 */	bl setWolfHeadDamage__9daAlink_cFv
/* 800D8B98  48 00 02 7C */	b lbl_800D8E14
lbl_800D8B9C:
/* 800D8B9C  2C 1E 00 00 */	cmpwi r30, 0
/* 800D8BA0  40 82 02 74 */	bne lbl_800D8E14
/* 800D8BA4  7F E3 FB 78 */	mr r3, r31
/* 800D8BA8  7F 44 D3 78 */	mr r4, r26
/* 800D8BAC  48 02 C5 F1 */	bl procSwimDamageInit__9daAlink_cFP12dCcD_GObjInf
/* 800D8BB0  48 00 03 74 */	b lbl_800D8F24
lbl_800D8BB4:
/* 800D8BB4  2C 1B 00 00 */	cmpwi r27, 0
/* 800D8BB8  40 82 00 4C */	bne lbl_800D8C04
/* 800D8BBC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D8BC0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D8BC4  40 82 00 40 */	bne lbl_800D8C04
/* 800D8BC8  38 1C FF F6 */	addi r0, r28, -10
/* 800D8BCC  28 00 00 01 */	cmplwi r0, 1
/* 800D8BD0  40 81 00 0C */	ble lbl_800D8BDC
/* 800D8BD4  2C 1C 00 09 */	cmpwi r28, 9
/* 800D8BD8  40 82 00 2C */	bne lbl_800D8C04
lbl_800D8BDC:
/* 800D8BDC  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800D8BE0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D8BE4  41 82 00 20 */	beq lbl_800D8C04
/* 800D8BE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800D8BEC  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800D8BF0  7C 80 00 39 */	and. r0, r4, r0
/* 800D8BF4  40 82 00 10 */	bne lbl_800D8C04
/* 800D8BF8  7F E3 FB 78 */	mr r3, r31
/* 800D8BFC  48 00 52 5D */	bl procGuardBreakInit__9daAlink_cFv
/* 800D8C00  48 00 03 24 */	b lbl_800D8F24
lbl_800D8C04:
/* 800D8C04  7F E3 FB 78 */	mr r3, r31
/* 800D8C08  7F 84 E3 78 */	mr r4, r28
/* 800D8C0C  4B FF EF DD */	bl checkHugeAttack__9daAlink_cCFi
/* 800D8C10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D8C14  41 82 00 28 */	beq lbl_800D8C3C
/* 800D8C18  7F E3 FB 78 */	mr r3, r31
/* 800D8C1C  38 80 FF FF */	li r4, -1
/* 800D8C20  38 A0 00 00 */	li r5, 0
/* 800D8C24  38 C0 00 00 */	li r6, 0
/* 800D8C28  38 E0 00 00 */	li r7, 0
/* 800D8C2C  7F 48 D3 78 */	mr r8, r26
/* 800D8C30  39 20 00 00 */	li r9, 0
/* 800D8C34  48 00 0A A9 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800D8C38  48 00 02 EC */	b lbl_800D8F24
lbl_800D8C3C:
/* 800D8C3C  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800D8C40  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800D8C44  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800D8C48  7C 80 00 39 */	and. r0, r4, r0
/* 800D8C4C  40 82 00 18 */	bne lbl_800D8C64
/* 800D8C50  7F E3 FB 78 */	mr r3, r31
/* 800D8C54  7F 84 E3 78 */	mr r4, r28
/* 800D8C58  4B FF EF BD */	bl checkLargeAttack__9daAlink_cCFi
/* 800D8C5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D8C60  41 82 01 0C */	beq lbl_800D8D6C
lbl_800D8C64:
/* 800D8C64  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D8C68  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800D8C6C  41 82 00 78 */	beq lbl_800D8CE4
/* 800D8C70  7F E3 FB 78 */	mr r3, r31
/* 800D8C74  7F 84 E3 78 */	mr r4, r28
/* 800D8C78  4B FF EF 9D */	bl checkLargeAttack__9daAlink_cCFi
/* 800D8C7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D8C80  40 82 00 64 */	bne lbl_800D8CE4
/* 800D8C84  7F E3 FB 78 */	mr r3, r31
/* 800D8C88  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010002@ha */
/* 800D8C8C  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00010002@l */
/* 800D8C90  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D8C94  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D8C98  7D 89 03 A6 */	mtctr r12
/* 800D8C9C  4E 80 04 21 */	bctrl 
/* 800D8CA0  7F E3 FB 78 */	mr r3, r31
/* 800D8CA4  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 800D8CA8  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 800D8CAC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D8CB0  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D8CB4  7D 89 03 A6 */	mtctr r12
/* 800D8CB8  4E 80 04 21 */	bctrl 
/* 800D8CBC  7F E3 FB 78 */	mr r3, r31
/* 800D8CC0  38 80 00 01 */	li r4, 1
/* 800D8CC4  38 BD 0A 10 */	addi r5, r29, 0xa10
/* 800D8CC8  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 800D8CCC  4B FE DD 7D */	bl procFallInit__9daAlink_cFif
/* 800D8CD0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D8CD4  60 00 00 08 */	ori r0, r0, 8
/* 800D8CD8  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800D8CDC  38 60 00 01 */	li r3, 1
/* 800D8CE0  48 00 02 44 */	b lbl_800D8F24
lbl_800D8CE4:
/* 800D8CE4  2C 1C 00 08 */	cmpwi r28, 8
/* 800D8CE8  40 82 00 60 */	bne lbl_800D8D48
/* 800D8CEC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800D8CF0  28 00 01 13 */	cmplwi r0, 0x113
/* 800D8CF4  41 82 00 14 */	beq lbl_800D8D08
/* 800D8CF8  28 00 01 17 */	cmplwi r0, 0x117
/* 800D8CFC  41 82 00 0C */	beq lbl_800D8D08
/* 800D8D00  28 00 01 16 */	cmplwi r0, 0x116
/* 800D8D04  40 82 00 44 */	bne lbl_800D8D48
lbl_800D8D08:
/* 800D8D08  7F E3 FB 78 */	mr r3, r31
/* 800D8D0C  7F 44 D3 78 */	mr r4, r26
/* 800D8D10  4B FF E7 E5 */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 800D8D14  48 18 E4 15 */	bl atan2sX_Z__4cXyzCFv
/* 800D8D18  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D8D1C  7C 00 18 50 */	subf r0, r0, r3
/* 800D8D20  7C 00 07 35 */	extsh. r0, r0
/* 800D8D24  41 80 00 14 */	blt lbl_800D8D38
/* 800D8D28  7F E3 FB 78 */	mr r3, r31
/* 800D8D2C  38 80 00 02 */	li r4, 2
/* 800D8D30  48 05 9A 09 */	bl procWolfRopeHangInit__9daAlink_cFi
/* 800D8D34  48 00 01 F0 */	b lbl_800D8F24
lbl_800D8D38:
/* 800D8D38  7F E3 FB 78 */	mr r3, r31
/* 800D8D3C  38 80 00 03 */	li r4, 3
/* 800D8D40  48 05 99 F9 */	bl procWolfRopeHangInit__9daAlink_cFi
/* 800D8D44  48 00 01 E0 */	b lbl_800D8F24
lbl_800D8D48:
/* 800D8D48  7F E3 FB 78 */	mr r3, r31
/* 800D8D4C  38 80 FF FF */	li r4, -1
/* 800D8D50  38 A0 00 01 */	li r5, 1
/* 800D8D54  38 C0 00 00 */	li r6, 0
/* 800D8D58  38 E0 00 00 */	li r7, 0
/* 800D8D5C  7F 48 D3 78 */	mr r8, r26
/* 800D8D60  39 20 00 00 */	li r9, 0
/* 800D8D64  48 00 09 79 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800D8D68  48 00 01 BC */	b lbl_800D8F24
lbl_800D8D6C:
/* 800D8D6C  2C 1E 00 00 */	cmpwi r30, 0
/* 800D8D70  41 82 00 10 */	beq lbl_800D8D80
/* 800D8D74  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 800D8D78  28 00 00 02 */	cmplwi r0, 2
/* 800D8D7C  40 82 00 98 */	bne lbl_800D8E14
lbl_800D8D80:
/* 800D8D80  7F E3 FB 78 */	mr r3, r31
/* 800D8D84  4B FC EC D9 */	bl checkDashAnime__9daAlink_cCFv
/* 800D8D88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D8D8C  41 82 00 1C */	beq lbl_800D8DA8
/* 800D8D90  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 800D8D94  28 00 00 02 */	cmplwi r0, 2
/* 800D8D98  41 82 00 10 */	beq lbl_800D8DA8
/* 800D8D9C  7F E3 FB 78 */	mr r3, r31
/* 800D8DA0  4B FF E9 25 */	bl setDashDamage__9daAlink_cFv
/* 800D8DA4  48 00 00 70 */	b lbl_800D8E14
lbl_800D8DA8:
/* 800D8DA8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800D8DAC  28 00 00 F2 */	cmplwi r0, 0xf2
/* 800D8DB0  40 82 00 34 */	bne lbl_800D8DE4
/* 800D8DB4  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 800D8DB8  28 00 00 02 */	cmplwi r0, 2
/* 800D8DBC  41 82 00 28 */	beq lbl_800D8DE4
/* 800D8DC0  C0 5F 33 98 */	lfs f2, 0x3398(r31)
/* 800D8DC4  C0 22 93 A8 */	lfs f1, lit_9652(r2)
/* 800D8DC8  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 800D8DCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D8DD0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800D8DD4  40 81 00 10 */	ble lbl_800D8DE4
/* 800D8DD8  7F E3 FB 78 */	mr r3, r31
/* 800D8DDC  48 05 D2 89 */	bl setWolfHeadDamage__9daAlink_cFv
/* 800D8DE0  48 00 00 34 */	b lbl_800D8E14
lbl_800D8DE4:
/* 800D8DE4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D8DE8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D8DEC  41 82 00 14 */	beq lbl_800D8E00
/* 800D8DF0  7F E3 FB 78 */	mr r3, r31
/* 800D8DF4  7F 44 D3 78 */	mr r4, r26
/* 800D8DF8  48 05 D2 F5 */	bl procWolfDamageInit__9daAlink_cFP12dCcD_GObjInf
/* 800D8DFC  48 00 01 28 */	b lbl_800D8F24
lbl_800D8E00:
/* 800D8E00  7F E3 FB 78 */	mr r3, r31
/* 800D8E04  7F 44 D3 78 */	mr r4, r26
/* 800D8E08  38 A0 00 00 */	li r5, 0
/* 800D8E0C  48 00 01 31 */	bl procDamageInit__9daAlink_cFP12dCcD_GObjInfi
/* 800D8E10  48 00 01 14 */	b lbl_800D8F24
lbl_800D8E14:
/* 800D8E14  7F E3 FB 78 */	mr r3, r31
/* 800D8E18  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D8E1C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800D8E20  7D 89 03 A6 */	mtctr r12
/* 800D8E24  4E 80 04 21 */	bctrl 
/* 800D8E28  28 03 00 00 */	cmplwi r3, 0
/* 800D8E2C  41 82 00 C8 */	beq lbl_800D8EF4
/* 800D8E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D8E34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D8E38  80 83 5D B8 */	lwz r4, 0x5db8(r3)
/* 800D8E3C  A8 04 17 08 */	lha r0, 0x1708(r4)
/* 800D8E40  7C 00 07 35 */	extsh. r0, r0
/* 800D8E44  41 82 00 B0 */	beq lbl_800D8EF4
/* 800D8E48  A8 04 17 06 */	lha r0, 0x1706(r4)
/* 800D8E4C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800D8E50  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800D8E54  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800D8E58  41 82 00 50 */	beq lbl_800D8EA8
/* 800D8E5C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D8E60  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800D8E64  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D8E68  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800D8E6C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800D8E70  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D8E74  38 80 00 08 */	li r4, 8
/* 800D8E78  38 A0 00 1F */	li r5, 0x1f
/* 800D8E7C  38 C1 00 18 */	addi r6, r1, 0x18
/* 800D8E80  4B F9 6B A5 */	bl StartShock__12dVibration_cFii4cXyz
/* 800D8E84  7F E3 FB 78 */	mr r3, r31
/* 800D8E88  38 80 FF FF */	li r4, -1
/* 800D8E8C  38 A0 00 00 */	li r5, 0
/* 800D8E90  38 C0 00 00 */	li r6, 0
/* 800D8E94  38 E0 00 00 */	li r7, 0
/* 800D8E98  39 00 00 00 */	li r8, 0
/* 800D8E9C  39 20 00 00 */	li r9, 0
/* 800D8EA0  48 00 08 3D */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800D8EA4  48 00 00 80 */	b lbl_800D8F24
lbl_800D8EA8:
/* 800D8EA8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D8EAC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800D8EB0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D8EB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800D8EB8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800D8EBC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D8EC0  38 80 00 04 */	li r4, 4
/* 800D8EC4  38 A0 00 1F */	li r5, 0x1f
/* 800D8EC8  38 C1 00 0C */	addi r6, r1, 0xc
/* 800D8ECC  4B F9 6B 59 */	bl StartShock__12dVibration_cFii4cXyz
/* 800D8ED0  7F E3 FB 78 */	mr r3, r31
/* 800D8ED4  38 80 FF FF */	li r4, -1
/* 800D8ED8  38 A0 00 01 */	li r5, 1
/* 800D8EDC  38 C0 00 00 */	li r6, 0
/* 800D8EE0  38 E0 00 00 */	li r7, 0
/* 800D8EE4  39 00 00 00 */	li r8, 0
/* 800D8EE8  39 20 00 00 */	li r9, 0
/* 800D8EEC  48 00 07 F1 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800D8EF0  48 00 00 34 */	b lbl_800D8F24
lbl_800D8EF4:
/* 800D8EF4  38 7F 08 14 */	addi r3, r31, 0x814
/* 800D8EF8  81 9F 08 2C */	lwz r12, 0x82c(r31)
/* 800D8EFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800D8F00  7D 89 03 A6 */	mtctr r12
/* 800D8F04  4E 80 04 21 */	bctrl 
/* 800D8F08  38 7F 08 14 */	addi r3, r31, 0x814
/* 800D8F0C  81 9F 08 2C */	lwz r12, 0x82c(r31)
/* 800D8F10  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800D8F14  7D 89 03 A6 */	mtctr r12
/* 800D8F18  4E 80 04 21 */	bctrl 
/* 800D8F1C  7F E3 FB 78 */	mr r3, r31
/* 800D8F20  48 05 14 11 */	bl checkWolfBarrierHitReverse__9daAlink_cFv
lbl_800D8F24:
/* 800D8F24  39 61 00 E0 */	addi r11, r1, 0xe0
/* 800D8F28  48 28 92 E9 */	bl _restgpr_23
/* 800D8F2C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 800D8F30  7C 08 03 A6 */	mtlr r0
/* 800D8F34  38 21 00 E0 */	addi r1, r1, 0xe0
/* 800D8F38  4E 80 00 20 */	blr 
