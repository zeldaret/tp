lbl_8074A210:
/* 8074A210  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8074A214  7C 08 02 A6 */	mflr r0
/* 8074A218  90 01 00 24 */	stw r0, 0x24(r1)
/* 8074A21C  39 61 00 20 */	addi r11, r1, 0x20
/* 8074A220  4B C1 7F B8 */	b _savegpr_28
/* 8074A224  7C 7E 1B 78 */	mr r30, r3
/* 8074A228  38 7E 0A 18 */	addi r3, r30, 0xa18
/* 8074A22C  4B 93 A2 CC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8074A230  90 7E 0B 54 */	stw r3, 0xb54(r30)
/* 8074A234  38 7E 0B 54 */	addi r3, r30, 0xb54
/* 8074A238  4B 93 D8 20 */	b at_power_check__FP11dCcU_AtInfo
/* 8074A23C  90 7E 0B 58 */	stw r3, 0xb58(r30)
/* 8074A240  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8074A244  28 00 00 00 */	cmplwi r0, 0
/* 8074A248  41 82 01 7C */	beq lbl_8074A3C4
/* 8074A24C  80 7E 0B 54 */	lwz r3, 0xb54(r30)
/* 8074A250  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8074A254  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8074A258  41 82 00 0C */	beq lbl_8074A264
/* 8074A25C  38 00 00 00 */	li r0, 0
/* 8074A260  B0 1E 0B 70 */	sth r0, 0xb70(r30)
lbl_8074A264:
/* 8074A264  A0 1E 0B 70 */	lhz r0, 0xb70(r30)
/* 8074A268  7C 03 07 35 */	extsh. r3, r0
/* 8074A26C  40 81 00 10 */	ble lbl_8074A27C
/* 8074A270  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8074A274  7C 03 00 50 */	subf r0, r3, r0
/* 8074A278  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_8074A27C:
/* 8074A27C  A0 1E 0B 70 */	lhz r0, 0xb70(r30)
/* 8074A280  28 00 00 00 */	cmplwi r0, 0
/* 8074A284  41 82 00 60 */	beq lbl_8074A2E4
/* 8074A288  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8074A28C  3C 60 80 75 */	lis r3, lit_4239@ha
/* 8074A290  C8 23 BF DC */	lfd f1, lit_4239@l(r3)
/* 8074A294  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8074A298  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074A29C  3C 00 43 30 */	lis r0, 0x4330
/* 8074A2A0  90 01 00 08 */	stw r0, 8(r1)
/* 8074A2A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8074A2A8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8074A2AC  3C 60 80 75 */	lis r3, l_HIO@ha
/* 8074A2B0  38 63 C3 94 */	addi r3, r3, l_HIO@l
/* 8074A2B4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8074A2B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074A2BC  4C 40 13 82 */	cror 2, 0, 2
/* 8074A2C0  40 82 00 24 */	bne lbl_8074A2E4
/* 8074A2C4  38 00 00 02 */	li r0, 2
/* 8074A2C8  98 1E 0B 73 */	stb r0, 0xb73(r30)
/* 8074A2CC  3B E0 00 05 */	li r31, 5
/* 8074A2D0  38 00 00 06 */	li r0, 6
/* 8074A2D4  98 1E 06 10 */	stb r0, 0x610(r30)
/* 8074A2D8  38 00 00 00 */	li r0, 0
/* 8074A2DC  98 1E 06 11 */	stb r0, 0x611(r30)
/* 8074A2E0  48 00 00 08 */	b lbl_8074A2E8
lbl_8074A2E4:
/* 8074A2E4  3B E0 00 02 */	li r31, 2
lbl_8074A2E8:
/* 8074A2E8  80 7E 0B 54 */	lwz r3, 0xb54(r30)
/* 8074A2EC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8074A2F0  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 8074A2F4  41 82 00 08 */	beq lbl_8074A2FC
/* 8074A2F8  3B E0 00 00 */	li r31, 0
lbl_8074A2FC:
/* 8074A2FC  88 63 00 74 */	lbz r3, 0x74(r3)
/* 8074A300  3B 80 00 1E */	li r28, 0x1e
/* 8074A304  88 1E 0B 73 */	lbz r0, 0xb73(r30)
/* 8074A308  7C 00 07 74 */	extsb r0, r0
/* 8074A30C  2C 00 00 01 */	cmpwi r0, 1
/* 8074A310  40 82 00 0C */	bne lbl_8074A31C
/* 8074A314  3B 80 00 1F */	li r28, 0x1f
/* 8074A318  48 00 00 10 */	b lbl_8074A328
lbl_8074A31C:
/* 8074A31C  2C 00 00 02 */	cmpwi r0, 2
/* 8074A320  40 82 00 08 */	bne lbl_8074A328
/* 8074A324  3B 80 00 20 */	li r28, 0x20
lbl_8074A328:
/* 8074A328  80 1E 0B 5C */	lwz r0, 0xb5c(r30)
/* 8074A32C  28 00 00 00 */	cmplwi r0, 0
/* 8074A330  41 82 00 5C */	beq lbl_8074A38C
/* 8074A334  83 BE 0B 6C */	lwz r29, 0xb6c(r30)
/* 8074A338  28 1D 00 00 */	cmplwi r29, 0
/* 8074A33C  41 82 00 2C */	beq lbl_8074A368
/* 8074A340  38 80 00 00 */	li r4, 0
/* 8074A344  4B 93 A2 6C */	b getHitSeID__12dCcD_GObjInfFUci
/* 8074A348  7C 64 1B 78 */	mr r4, r3
/* 8074A34C  80 7E 0B 5C */	lwz r3, 0xb5c(r30)
/* 8074A350  7F A5 EB 78 */	mr r5, r29
/* 8074A354  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A358  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8074A35C  7D 89 03 A6 */	mtctr r12
/* 8074A360  4E 80 04 21 */	bctrl 
/* 8074A364  48 00 00 28 */	b lbl_8074A38C
lbl_8074A368:
/* 8074A368  38 80 00 00 */	li r4, 0
/* 8074A36C  4B 93 A2 44 */	b getHitSeID__12dCcD_GObjInfFUci
/* 8074A370  7C 64 1B 78 */	mr r4, r3
/* 8074A374  80 7E 0B 5C */	lwz r3, 0xb5c(r30)
/* 8074A378  7F 85 E3 78 */	mr r5, r28
/* 8074A37C  81 83 00 00 */	lwz r12, 0(r3)
/* 8074A380  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8074A384  7D 89 03 A6 */	mtctr r12
/* 8074A388  4E 80 04 21 */	bctrl 
lbl_8074A38C:
/* 8074A38C  88 1E 0B 74 */	lbz r0, 0xb74(r30)
/* 8074A390  28 00 00 01 */	cmplwi r0, 1
/* 8074A394  41 82 00 14 */	beq lbl_8074A3A8
/* 8074A398  80 7E 0B 54 */	lwz r3, 0xb54(r30)
/* 8074A39C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8074A3A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8074A3A4  41 82 00 20 */	beq lbl_8074A3C4
lbl_8074A3A8:
/* 8074A3A8  80 7E 0B 54 */	lwz r3, 0xb54(r30)
/* 8074A3AC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8074A3B0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8074A3B4  41 82 00 08 */	beq lbl_8074A3BC
/* 8074A3B8  3B E0 00 04 */	li r31, 4
lbl_8074A3BC:
/* 8074A3BC  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 8074A3C0  9B E3 11 25 */	stb r31, struct_80451124+0x1@l(r3)
lbl_8074A3C4:
/* 8074A3C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8074A3C8  4B C1 7E 5C */	b _restgpr_28
/* 8074A3CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8074A3D0  7C 08 03 A6 */	mtlr r0
/* 8074A3D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8074A3D8  4E 80 00 20 */	blr 
