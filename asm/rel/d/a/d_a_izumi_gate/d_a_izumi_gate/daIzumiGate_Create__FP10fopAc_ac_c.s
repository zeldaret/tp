lbl_80849184:
/* 80849184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80849188  7C 08 02 A6 */	mflr r0
/* 8084918C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80849190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80849194  7C 7F 1B 78 */	mr r31, r3
/* 80849198  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8084919C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 808491A0  40 82 00 28 */	bne lbl_808491C8
/* 808491A4  28 1F 00 00 */	cmplwi r31, 0
/* 808491A8  41 82 00 14 */	beq lbl_808491BC
/* 808491AC  4B 82 F4 79 */	bl __ct__16dBgS_MoveBgActorFv
/* 808491B0  3C 60 80 85 */	lis r3, __vt__13daIzumiGate_c@ha /* 0x8084948C@ha */
/* 808491B4  38 03 94 8C */	addi r0, r3, __vt__13daIzumiGate_c@l /* 0x8084948C@l */
/* 808491B8  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_808491BC:
/* 808491BC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 808491C0  60 00 00 08 */	ori r0, r0, 8
/* 808491C4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_808491C8:
/* 808491C8  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 808491CC  3C 80 80 85 */	lis r4, l_arcName@ha /* 0x80849438@ha */
/* 808491D0  38 84 94 38 */	addi r4, r4, l_arcName@l /* 0x80849438@l */
/* 808491D4  80 84 00 00 */	lwz r4, 0(r4)
/* 808491D8  4B 7E 3C E5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 808491DC  2C 03 00 04 */	cmpwi r3, 4
/* 808491E0  40 82 00 6C */	bne lbl_8084924C
/* 808491E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808491E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808491EC  3C 63 00 02 */	addis r3, r3, 2
/* 808491F0  3C 80 80 85 */	lis r4, l_arcName@ha /* 0x80849438@ha */
/* 808491F4  38 84 94 38 */	addi r4, r4, l_arcName@l /* 0x80849438@l */
/* 808491F8  80 84 00 00 */	lwz r4, 0(r4)
/* 808491FC  3C A0 80 85 */	lis r5, d_a_izumi_gate__stringBase0@ha /* 0x80849408@ha */
/* 80849200  38 A5 94 08 */	addi r5, r5, d_a_izumi_gate__stringBase0@l /* 0x80849408@l */
/* 80849204  38 A5 00 0A */	addi r5, r5, 0xa
/* 80849208  38 63 C2 F8 */	addi r3, r3, -15624
/* 8084920C  4B 7F 34 AD */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80849210  7C 65 1B 78 */	mr r5, r3
/* 80849214  7F E3 FB 78 */	mr r3, r31
/* 80849218  3C 80 80 85 */	lis r4, l_arcName@ha /* 0x80849438@ha */
/* 8084921C  38 84 94 38 */	addi r4, r4, l_arcName@l /* 0x80849438@l */
/* 80849220  80 84 00 00 */	lwz r4, 0(r4)
/* 80849224  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80849228  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 8084922C  38 E0 40 00 */	li r7, 0x4000
/* 80849230  39 00 00 00 */	li r8, 0
/* 80849234  4B 82 F5 89 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80849238  2C 03 00 05 */	cmpwi r3, 5
/* 8084923C  40 82 00 08 */	bne lbl_80849244
/* 80849240  48 00 00 0C */	b lbl_8084924C
lbl_80849244:
/* 80849244  38 1F 05 6C */	addi r0, r31, 0x56c
/* 80849248  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_8084924C:
/* 8084924C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80849250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80849254  7C 08 03 A6 */	mtlr r0
/* 80849258  38 21 00 10 */	addi r1, r1, 0x10
/* 8084925C  4E 80 00 20 */	blr 
