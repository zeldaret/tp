lbl_805A7068:
/* 805A7068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A706C  7C 08 02 A6 */	mflr r0
/* 805A7070  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A7074  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A7078  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A707C  7C 7E 1B 78 */	mr r30, r3
/* 805A7080  3C 60 80 5B */	lis r3, cNullVec__6Z2Calc@ha
/* 805A7084  3B E3 81 FC */	addi r31, r3, cNullVec__6Z2Calc@l
/* 805A7088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A708C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A7090  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A7094  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 805A7098  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 805A709C  7C 05 07 74 */	extsb r5, r0
/* 805A70A0  4B A8 E2 C0 */	b isSwitch__10dSv_info_cCFii
/* 805A70A4  2C 03 00 00 */	cmpwi r3, 0
/* 805A70A8  41 82 00 28 */	beq lbl_805A70D0
/* 805A70AC  38 00 00 03 */	li r0, 3
/* 805A70B0  98 1E 05 94 */	stb r0, 0x594(r30)
/* 805A70B4  3C 60 80 5B */	lis r3, lit_3756@ha
/* 805A70B8  C0 03 81 14 */	lfs f0, lit_3756@l(r3)
/* 805A70BC  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 805A70C0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805A70C4  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 805A70C8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 805A70CC  48 00 00 80 */	b lbl_805A714C
lbl_805A70D0:
/* 805A70D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A70D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A70D8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A70DC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805A70E0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 805A70E4  7C 05 07 74 */	extsb r5, r0
/* 805A70E8  4B A8 E2 78 */	b isSwitch__10dSv_info_cCFii
/* 805A70EC  2C 03 00 00 */	cmpwi r3, 0
/* 805A70F0  41 82 00 3C */	beq lbl_805A712C
/* 805A70F4  7F C3 F3 78 */	mr r3, r30
/* 805A70F8  48 00 09 71 */	bl setParticle__13daTagStatue_cFv
/* 805A70FC  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 805A7100  A8 04 00 08 */	lha r0, 8(r4)
/* 805A7104  3C 60 80 5B */	lis r3, lit_3758@ha
/* 805A7108  C8 23 81 1C */	lfd f1, lit_3758@l(r3)
/* 805A710C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805A7110  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A7114  3C 00 43 30 */	lis r0, 0x4330
/* 805A7118  90 01 00 08 */	stw r0, 8(r1)
/* 805A711C  C8 01 00 08 */	lfd f0, 8(r1)
/* 805A7120  EC 00 08 28 */	fsubs f0, f0, f1
/* 805A7124  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 805A7128  48 00 00 1C */	b lbl_805A7144
lbl_805A712C:
/* 805A712C  3C 60 80 5B */	lis r3, lit_3756@ha
/* 805A7130  C0 03 81 14 */	lfs f0, lit_3756@l(r3)
/* 805A7134  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 805A7138  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805A713C  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 805A7140  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_805A7144:
/* 805A7144  38 00 00 00 */	li r0, 0
/* 805A7148  98 1E 05 94 */	stb r0, 0x594(r30)
lbl_805A714C:
/* 805A714C  88 1E 05 97 */	lbz r0, 0x597(r30)
/* 805A7150  3C 60 80 5B */	lis r3, lit_3759@ha
/* 805A7154  C8 23 81 24 */	lfd f1, lit_3759@l(r3)
/* 805A7158  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A715C  3C 00 43 30 */	lis r0, 0x4330
/* 805A7160  90 01 00 08 */	stw r0, 8(r1)
/* 805A7164  C8 01 00 08 */	lfd f0, 8(r1)
/* 805A7168  EC 00 08 28 */	fsubs f0, f0, f1
/* 805A716C  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 805A7170  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805A7174  7F C3 F3 78 */	mr r3, r30
/* 805A7178  4B FF FE 4D */	bl initBaseMtx__13daTagStatue_cFv
/* 805A717C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 805A7180  38 03 00 24 */	addi r0, r3, 0x24
/* 805A7184  90 1E 05 04 */	stw r0, 0x504(r30)
/* 805A7188  7F C3 F3 78 */	mr r3, r30
/* 805A718C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 805A7190  38 9F 00 5C */	addi r4, r31, 0x5c
/* 805A7194  C0 44 00 04 */	lfs f2, 4(r4)
/* 805A7198  C0 64 00 08 */	lfs f3, 8(r4)
/* 805A719C  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 805A71A0  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 805A71A4  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 805A71A8  4B A7 33 A0 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 805A71AC  88 1E 05 97 */	lbz r0, 0x597(r30)
/* 805A71B0  54 00 10 3A */	slwi r0, r0, 2
/* 805A71B4  38 7F 00 44 */	addi r3, r31, 0x44
/* 805A71B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805A71BC  28 00 00 00 */	cmplwi r0, 0
/* 805A71C0  40 82 00 10 */	bne lbl_805A71D0
/* 805A71C4  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 805A71C8  90 1E 01 00 */	stw r0, 0x100(r30)
/* 805A71CC  48 00 00 08 */	b lbl_805A71D4
lbl_805A71D0:
/* 805A71D0  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_805A71D4:
/* 805A71D4  38 00 00 FF */	li r0, 0xff
/* 805A71D8  98 1E 05 96 */	stb r0, 0x596(r30)
/* 805A71DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A71E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A71E4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 805A71E8  7F C4 F3 78 */	mr r4, r30
/* 805A71EC  88 1E 05 97 */	lbz r0, 0x597(r30)
/* 805A71F0  54 00 10 3A */	slwi r0, r0, 2
/* 805A71F4  38 BF 00 2C */	addi r5, r31, 0x2c
/* 805A71F8  7C A5 00 2E */	lwzx r5, r5, r0
/* 805A71FC  38 C0 00 FF */	li r6, 0xff
/* 805A7200  4B AA 05 58 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 805A7204  B0 7E 05 98 */	sth r3, 0x598(r30)
/* 805A7208  38 00 FF FF */	li r0, -1
/* 805A720C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 805A7210  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 805A7214  38 60 00 01 */	li r3, 1
/* 805A7218  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A721C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A7220  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A7224  7C 08 03 A6 */	mtlr r0
/* 805A7228  38 21 00 20 */	addi r1, r1, 0x20
/* 805A722C  4E 80 00 20 */	blr 
