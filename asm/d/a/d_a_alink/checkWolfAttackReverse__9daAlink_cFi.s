lbl_8012A228:
/* 8012A228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012A22C  7C 08 02 A6 */	mflr r0
/* 8012A230  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012A234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012A238  93 C1 00 08 */	stw r30, 8(r1)
/* 8012A23C  7C 7E 1B 78 */	mr r30, r3
/* 8012A240  7C 9F 23 78 */	mr r31, r4
/* 8012A244  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 8012A248  28 00 01 25 */	cmplwi r0, 0x125
/* 8012A24C  41 82 00 20 */	beq lbl_8012A26C
/* 8012A250  38 9E 10 F0 */	addi r4, r30, 0x10f0
/* 8012A254  4B FA 76 CD */	bl checkAtShieldHit__9daAlink_cFR12dCcD_GObjInf
/* 8012A258  2C 03 00 00 */	cmpwi r3, 0
/* 8012A25C  41 82 00 10 */	beq lbl_8012A26C
/* 8012A260  7F C3 F3 78 */	mr r3, r30
/* 8012A264  48 01 26 65 */	bl procWolfAttackReverseInit__9daAlink_cFv
/* 8012A268  48 00 00 B0 */	b lbl_8012A318
lbl_8012A26C:
/* 8012A26C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8012A270  54 00 06 F9 */	rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 8012A274  41 82 00 10 */	beq lbl_8012A284
/* 8012A278  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 8012A27C  28 00 00 F3 */	cmplwi r0, 0xf3
/* 8012A280  41 82 00 38 */	beq lbl_8012A2B8
lbl_8012A284:
/* 8012A284  2C 1F 00 00 */	cmpwi r31, 0
/* 8012A288  41 82 00 8C */	beq lbl_8012A314
/* 8012A28C  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 8012A290  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8012A294  40 82 00 80 */	bne lbl_8012A314
/* 8012A298  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8012A29C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8012A2A0  41 82 00 74 */	beq lbl_8012A314
/* 8012A2A4  A8 7E 30 92 */	lha r3, 0x3092(r30)
/* 8012A2A8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8012A2AC  48 14 6B 79 */	bl cLib_distanceAngleS__Fss
/* 8012A2B0  2C 03 60 00 */	cmpwi r3, 0x6000
/* 8012A2B4  40 81 00 60 */	ble lbl_8012A314
lbl_8012A2B8:
/* 8012A2B8  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 8012A2BC  28 00 00 F3 */	cmplwi r0, 0xf3
/* 8012A2C0  40 82 00 14 */	bne lbl_8012A2D4
/* 8012A2C4  7F C3 F3 78 */	mr r3, r30
/* 8012A2C8  38 80 00 00 */	li r4, 0
/* 8012A2CC  48 00 35 F5 */	bl procWolfDashReverseInit__9daAlink_cFi
/* 8012A2D0  48 00 00 48 */	b lbl_8012A318
lbl_8012A2D4:
/* 8012A2D4  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 8012A2D8  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8012A2DC  41 82 00 2C */	beq lbl_8012A308
/* 8012A2E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012A2E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012A2E8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8012A2EC  38 80 00 02 */	li r4, 2
/* 8012A2F0  38 A0 00 00 */	li r5, 0
/* 8012A2F4  38 DE 37 8C */	addi r6, r30, 0x378c
/* 8012A2F8  38 FE 31 66 */	addi r7, r30, 0x3166
/* 8012A2FC  39 00 00 00 */	li r8, 0
/* 8012A300  39 20 00 00 */	li r9, 0
/* 8012A304  4B F2 1F 15 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_8012A308:
/* 8012A308  7F C3 F3 78 */	mr r3, r30
/* 8012A30C  48 01 25 BD */	bl procWolfAttackReverseInit__9daAlink_cFv
/* 8012A310  48 00 00 08 */	b lbl_8012A318
lbl_8012A314:
/* 8012A314  38 60 00 00 */	li r3, 0
lbl_8012A318:
/* 8012A318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012A31C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012A320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012A324  7C 08 03 A6 */	mtlr r0
/* 8012A328  38 21 00 10 */	addi r1, r1, 0x10
/* 8012A32C  4E 80 00 20 */	blr 
