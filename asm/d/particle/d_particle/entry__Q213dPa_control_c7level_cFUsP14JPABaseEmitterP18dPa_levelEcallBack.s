lbl_8004B94C:
/* 8004B94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004B950  7C 08 02 A6 */	mflr r0
/* 8004B954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004B958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004B95C  7C 7F 1B 78 */	mr r31, r3
/* 8004B960  7C 89 23 78 */	mr r9, r4
/* 8004B964  7C A8 2B 78 */	mr r8, r5
/* 8004B968  7C C7 33 78 */	mr r7, r6
/* 8004B96C  38 00 00 80 */	li r0, 0x80
/* 8004B970  7C 09 03 A6 */	mtctr r0
lbl_8004B974:
/* 8004B974  88 9F 00 04 */	lbz r4, 4(r31)
/* 8004B978  1C 64 00 18 */	mulli r3, r4, 0x18
/* 8004B97C  38 03 00 08 */	addi r0, r3, 8
/* 8004B980  7C 1F 00 2E */	lwzx r0, r31, r0
/* 8004B984  28 00 00 00 */	cmplwi r0, 0
/* 8004B988  40 82 00 60 */	bne lbl_8004B9E8
/* 8004B98C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8004B990  34 03 00 01 */	addic. r0, r3, 1
/* 8004B994  90 1F 00 00 */	stw r0, 0(r31)
/* 8004B998  40 82 00 10 */	bne lbl_8004B9A8
/* 8004B99C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8004B9A0  38 03 00 01 */	addi r0, r3, 1
/* 8004B9A4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8004B9A8:
/* 8004B9A8  88 1F 00 04 */	lbz r0, 4(r31)
/* 8004B9AC  1C 60 00 18 */	mulli r3, r0, 0x18
/* 8004B9B0  38 63 00 08 */	addi r3, r3, 8
/* 8004B9B4  7C 7F 1A 14 */	add r3, r31, r3
/* 8004B9B8  80 9F 00 00 */	lwz r4, 0(r31)
/* 8004B9BC  7D 25 4B 78 */	mr r5, r9
/* 8004B9C0  7D 06 43 78 */	mr r6, r8
/* 8004B9C4  4B FF FB 81 */	bl entry__Q313dPa_control_c7level_c9emitter_cFUlUsP14JPABaseEmitterP18dPa_levelEcallBack
/* 8004B9C8  7F E3 FB 78 */	mr r3, r31
/* 8004B9CC  88 1F 00 04 */	lbz r0, 4(r31)
/* 8004B9D0  1C 80 00 18 */	mulli r4, r0, 0x18
/* 8004B9D4  38 84 00 08 */	addi r4, r4, 8
/* 8004B9D8  7C 9F 22 14 */	add r4, r31, r4
/* 8004B9DC  48 00 00 65 */	bl addTable__Q213dPa_control_c7level_cFPQ313dPa_control_c7level_c9emitter_c
/* 8004B9E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8004B9E4  48 00 00 48 */	b lbl_8004BA2C
lbl_8004B9E8:
/* 8004B9E8  38 64 00 01 */	addi r3, r4, 1
/* 8004B9EC  54 60 C8 0C */	slwi r0, r3, 0x19
/* 8004B9F0  54 63 0F FE */	srwi r3, r3, 0x1f
/* 8004B9F4  7C 03 00 50 */	subf r0, r3, r0
/* 8004B9F8  54 00 38 3E */	rotlwi r0, r0, 7
/* 8004B9FC  7C 00 1A 14 */	add r0, r0, r3
/* 8004BA00  98 1F 00 04 */	stb r0, 4(r31)
/* 8004BA04  42 00 FF 70 */	bdnz lbl_8004B974
/* 8004BA08  80 08 00 F4 */	lwz r0, 0xf4(r8)
/* 8004BA0C  60 00 00 01 */	ori r0, r0, 1
/* 8004BA10  90 08 00 F4 */	stw r0, 0xf4(r8)
/* 8004BA14  38 00 00 01 */	li r0, 1
/* 8004BA18  90 08 00 24 */	stw r0, 0x24(r8)
/* 8004BA1C  80 08 00 F4 */	lwz r0, 0xf4(r8)
/* 8004BA20  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8004BA24  90 08 00 F4 */	stw r0, 0xf4(r8)
/* 8004BA28  38 60 00 00 */	li r3, 0
lbl_8004BA2C:
/* 8004BA2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004BA30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004BA34  7C 08 03 A6 */	mtlr r0
/* 8004BA38  38 21 00 10 */	addi r1, r1, 0x10
/* 8004BA3C  4E 80 00 20 */	blr 
