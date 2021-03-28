lbl_80BF7174:
/* 80BF7174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF7178  7C 08 02 A6 */	mflr r0
/* 80BF717C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF7180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF7184  7C 7F 1B 78 */	mr r31, r3
/* 80BF7188  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BF718C  3C 80 80 C0 */	lis r4, l_arcName@ha
/* 80BF7190  38 84 90 88 */	addi r4, r4, l_arcName@l
/* 80BF7194  80 84 00 00 */	lwz r4, 0(r4)
/* 80BF7198  4B 43 5D 24 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BF719C  2C 03 00 04 */	cmpwi r3, 4
/* 80BF71A0  41 82 00 08 */	beq lbl_80BF71A8
/* 80BF71A4  48 00 00 D0 */	b lbl_80BF7274
lbl_80BF71A8:
/* 80BF71A8  7F E3 FB 78 */	mr r3, r31
/* 80BF71AC  3C 80 80 C0 */	lis r4, l_arcName@ha
/* 80BF71B0  38 84 90 88 */	addi r4, r4, l_arcName@l
/* 80BF71B4  80 84 00 00 */	lwz r4, 0(r4)
/* 80BF71B8  A0 1F 07 66 */	lhz r0, 0x766(r31)
/* 80BF71BC  54 00 D6 BA */	rlwinm r0, r0, 0x1a, 0x1a, 0x1d
/* 80BF71C0  3C A0 80 C0 */	lis r5, l_dzb@ha
/* 80BF71C4  38 A5 8F E8 */	addi r5, r5, l_dzb@l
/* 80BF71C8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80BF71CC  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BF71D0  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BF71D4  38 E0 15 40 */	li r7, 0x1540
/* 80BF71D8  39 00 00 00 */	li r8, 0
/* 80BF71DC  4B 48 15 E0 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BF71E0  2C 03 00 05 */	cmpwi r3, 5
/* 80BF71E4  40 82 00 08 */	bne lbl_80BF71EC
/* 80BF71E8  48 00 00 8C */	b lbl_80BF7274
lbl_80BF71EC:
/* 80BF71EC  88 1F 07 64 */	lbz r0, 0x764(r31)
/* 80BF71F0  28 00 00 00 */	cmplwi r0, 0
/* 80BF71F4  40 82 00 58 */	bne lbl_80BF724C
/* 80BF71F8  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80BF71FC  B0 1F 07 66 */	sth r0, 0x766(r31)
/* 80BF7200  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80BF7204  B0 1F 07 68 */	sth r0, 0x768(r31)
/* 80BF7208  38 00 00 00 */	li r0, 0
/* 80BF720C  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80BF7210  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80BF7214  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80BF7218  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80BF721C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80BF7220  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80BF7224  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80BF7228  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80BF722C  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80BF7230  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80BF7234  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80BF7238  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80BF723C  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80BF7240  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80BF7244  38 00 00 01 */	li r0, 1
/* 80BF7248  98 1F 07 64 */	stb r0, 0x764(r31)
lbl_80BF724C:
/* 80BF724C  7F E3 FB 78 */	mr r3, r31
/* 80BF7250  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80BF7254  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80BF7258  7D 89 03 A6 */	mtctr r12
/* 80BF725C  4E 80 04 21 */	bctrl 
/* 80BF7260  2C 03 00 00 */	cmpwi r3, 0
/* 80BF7264  40 82 00 0C */	bne lbl_80BF7270
/* 80BF7268  38 60 00 05 */	li r3, 5
/* 80BF726C  48 00 00 08 */	b lbl_80BF7274
lbl_80BF7270:
/* 80BF7270  38 60 00 04 */	li r3, 4
lbl_80BF7274:
/* 80BF7274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF7278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF727C  7C 08 03 A6 */	mtlr r0
/* 80BF7280  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF7284  4E 80 00 20 */	blr 
