lbl_807A707C:
/* 807A707C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807A7080  7C 08 02 A6 */	mflr r0
/* 807A7084  90 01 00 24 */	stw r0, 0x24(r1)
/* 807A7088  39 61 00 20 */	addi r11, r1, 0x20
/* 807A708C  4B BB B1 50 */	b _savegpr_29
/* 807A7090  7C 7E 1B 78 */	mr r30, r3
/* 807A7094  3C 80 80 7A */	lis r4, lit_3704@ha
/* 807A7098  3B E4 72 2C */	addi r31, r4, lit_3704@l
/* 807A709C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807A70A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807A70A4  40 82 00 80 */	bne lbl_807A7124
/* 807A70A8  7F C0 F3 79 */	or. r0, r30, r30
/* 807A70AC  41 82 00 6C */	beq lbl_807A7118
/* 807A70B0  7C 1D 03 78 */	mr r29, r0
/* 807A70B4  4B 87 1A B0 */	b __ct__10fopAc_ac_cFv
/* 807A70B8  3C 60 80 7A */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 807A70BC  38 03 72 F4 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 807A70C0  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 807A70C4  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha
/* 807A70C8  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l
/* 807A70CC  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 807A70D0  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 807A70D4  3C 80 80 7A */	lis r4, __ct__4cXyzFv@ha
/* 807A70D8  38 84 72 20 */	addi r4, r4, __ct__4cXyzFv@l
/* 807A70DC  3C A0 80 7A */	lis r5, __dt__4cXyzFv@ha
/* 807A70E0  38 A5 6F 60 */	addi r5, r5, __dt__4cXyzFv@l
/* 807A70E4  38 C0 00 0C */	li r6, 0xc
/* 807A70E8  38 E0 00 40 */	li r7, 0x40
/* 807A70EC  4B BB AC 74 */	b __construct_array
/* 807A70F0  38 7D 08 DC */	addi r3, r29, 0x8dc
/* 807A70F4  3C 80 80 7A */	lis r4, __ct__4cXyzFv@ha
/* 807A70F8  38 84 72 20 */	addi r4, r4, __ct__4cXyzFv@l
/* 807A70FC  3C A0 80 7A */	lis r5, __dt__4cXyzFv@ha
/* 807A7100  38 A5 6F 60 */	addi r5, r5, __dt__4cXyzFv@l
/* 807A7104  38 C0 00 0C */	li r6, 0xc
/* 807A7108  38 E0 00 32 */	li r7, 0x32
/* 807A710C  4B BB AC 54 */	b __construct_array
/* 807A7110  38 7D 0C D4 */	addi r3, r29, 0xcd4
/* 807A7114  4B B1 77 30 */	b __ct__16Z2SoundObjSimpleFv
lbl_807A7118:
/* 807A7118  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 807A711C  60 00 00 08 */	ori r0, r0, 8
/* 807A7120  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_807A7124:
/* 807A7124  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 807A7128  3C 80 80 7A */	lis r4, stringBase0@ha
/* 807A712C  38 84 72 9C */	addi r4, r4, stringBase0@l
/* 807A7130  4B 88 5D 8C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807A7134  7C 7D 1B 78 */	mr r29, r3
/* 807A7138  2C 1D 00 04 */	cmpwi r29, 4
/* 807A713C  40 82 00 C8 */	bne lbl_807A7204
/* 807A7140  7F C3 F3 78 */	mr r3, r30
/* 807A7144  3C 80 80 7A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807A7148  38 84 70 08 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807A714C  38 A0 0F 40 */	li r5, 0xf40
/* 807A7150  4B 87 33 60 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807A7154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A7158  40 82 00 0C */	bne lbl_807A7164
/* 807A715C  38 60 00 05 */	li r3, 5
/* 807A7160  48 00 00 A8 */	b lbl_807A7208
lbl_807A7164:
/* 807A7164  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 807A7168  4B AC 07 EC */	b cM_rndF__Ff
/* 807A716C  FC 00 08 1E */	fctiwz f0, f1
/* 807A7170  D8 01 00 08 */	stfd f0, 8(r1)
/* 807A7174  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807A7178  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 807A717C  38 60 00 00 */	li r3, 0
/* 807A7180  38 00 00 40 */	li r0, 0x40
/* 807A7184  7C 09 03 A6 */	mtctr r0
lbl_807A7188:
/* 807A7188  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807A718C  7C 9E 1A 14 */	add r4, r30, r3
/* 807A7190  D0 04 05 DC */	stfs f0, 0x5dc(r4)
/* 807A7194  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A7198  D0 04 05 E0 */	stfs f0, 0x5e0(r4)
/* 807A719C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807A71A0  D0 04 05 E4 */	stfs f0, 0x5e4(r4)
/* 807A71A4  38 63 00 0C */	addi r3, r3, 0xc
/* 807A71A8  42 00 FF E0 */	bdnz lbl_807A7188
/* 807A71AC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807A71B0  98 1E 0C C4 */	stb r0, 0xcc4(r30)
/* 807A71B4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 807A71B8  4B AC 07 D4 */	b cM_rndFX__Ff
/* 807A71BC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807A71C0  EC 00 08 2A */	fadds f0, f0, f1
/* 807A71C4  FC 00 00 1E */	fctiwz f0, f0
/* 807A71C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 807A71CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807A71D0  98 1E 0C C6 */	stb r0, 0xcc6(r30)
/* 807A71D4  88 1E 0C C4 */	lbz r0, 0xcc4(r30)
/* 807A71D8  28 00 00 00 */	cmplwi r0, 0
/* 807A71DC  40 82 00 20 */	bne lbl_807A71FC
/* 807A71E0  38 7E 0C D4 */	addi r3, r30, 0xcd4
/* 807A71E4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807A71E8  38 A0 00 01 */	li r5, 1
/* 807A71EC  81 9E 0C E4 */	lwz r12, 0xce4(r30)
/* 807A71F0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A71F4  7D 89 03 A6 */	mtctr r12
/* 807A71F8  4E 80 04 21 */	bctrl 
lbl_807A71FC:
/* 807A71FC  7F C3 F3 78 */	mr r3, r30
/* 807A7200  4B FF FD 9D */	bl daE_ST_LINE_Execute__FP15e_st_line_class
lbl_807A7204:
/* 807A7204  7F A3 EB 78 */	mr r3, r29
lbl_807A7208:
/* 807A7208  39 61 00 20 */	addi r11, r1, 0x20
/* 807A720C  4B BB B0 1C */	b _restgpr_29
/* 807A7210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807A7214  7C 08 03 A6 */	mtlr r0
/* 807A7218  38 21 00 20 */	addi r1, r1, 0x20
/* 807A721C  4E 80 00 20 */	blr 
