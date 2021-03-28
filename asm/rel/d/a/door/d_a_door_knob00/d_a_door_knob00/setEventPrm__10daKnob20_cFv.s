lbl_8045F29C:
/* 8045F29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045F2A0  7C 08 02 A6 */	mflr r0
/* 8045F2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045F2A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045F2AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8045F2B0  7C 7E 1B 78 */	mr r30, r3
/* 8045F2B4  3C 80 80 46 */	lis r4, lit_3876@ha
/* 8045F2B8  3B E4 06 68 */	addi r31, r4, lit_3876@l
/* 8045F2BC  4B FF F5 C1 */	bl getExitNo__12knob_param_cFP10fopAc_ac_c
/* 8045F2C0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8045F2C4  28 00 00 3E */	cmplwi r0, 0x3e
/* 8045F2C8  40 82 00 28 */	bne lbl_8045F2F0
/* 8045F2CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045F2D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045F2D4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8045F2D8  3C 80 80 46 */	lis r4, struct_804606C4+0x0@ha
/* 8045F2DC  38 84 06 C4 */	addi r4, r4, struct_804606C4+0x0@l
/* 8045F2E0  38 84 00 E1 */	addi r4, r4, 0xe1
/* 8045F2E4  4B F0 96 B0 */	b strcmp
/* 8045F2E8  2C 03 00 00 */	cmpwi r3, 0
/* 8045F2EC  41 82 01 24 */	beq lbl_8045F410
lbl_8045F2F0:
/* 8045F2F0  4B DD 8F 3C */	b getStatus__12dMsgObject_cFv
/* 8045F2F4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8045F2F8  20 60 00 01 */	subfic r3, r0, 1
/* 8045F2FC  30 03 FF FF */	addic r0, r3, -1
/* 8045F300  7C 00 19 10 */	subfe r0, r0, r3
/* 8045F304  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8045F308  41 82 00 1C */	beq lbl_8045F324
/* 8045F30C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045F310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045F314  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8045F318  4B DD 7E CC */	b isPlaceMessage__12dMsgObject_cFv
/* 8045F31C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8045F320  40 82 00 F0 */	bne lbl_8045F410
lbl_8045F324:
/* 8045F324  88 1E 06 0F */	lbz r0, 0x60f(r30)
/* 8045F328  28 00 00 00 */	cmplwi r0, 0
/* 8045F32C  40 82 00 10 */	bne lbl_8045F33C
/* 8045F330  38 00 00 00 */	li r0, 0
/* 8045F334  98 1E 05 B9 */	stb r0, 0x5b9(r30)
/* 8045F338  48 00 00 0C */	b lbl_8045F344
lbl_8045F33C:
/* 8045F33C  38 00 00 01 */	li r0, 1
/* 8045F340  98 1E 05 B9 */	stb r0, 0x5b9(r30)
lbl_8045F344:
/* 8045F344  88 1E 06 0E */	lbz r0, 0x60e(r30)
/* 8045F348  28 00 00 04 */	cmplwi r0, 4
/* 8045F34C  40 82 00 28 */	bne lbl_8045F374
/* 8045F350  88 1E 06 0F */	lbz r0, 0x60f(r30)
/* 8045F354  28 00 00 00 */	cmplwi r0, 0
/* 8045F358  40 82 00 10 */	bne lbl_8045F368
/* 8045F35C  38 00 00 02 */	li r0, 2
/* 8045F360  98 1E 05 B9 */	stb r0, 0x5b9(r30)
/* 8045F364  48 00 00 38 */	b lbl_8045F39C
lbl_8045F368:
/* 8045F368  38 00 00 03 */	li r0, 3
/* 8045F36C  98 1E 05 B9 */	stb r0, 0x5b9(r30)
/* 8045F370  48 00 00 2C */	b lbl_8045F39C
lbl_8045F374:
/* 8045F374  28 00 00 05 */	cmplwi r0, 5
/* 8045F378  40 82 00 24 */	bne lbl_8045F39C
/* 8045F37C  88 1E 06 0F */	lbz r0, 0x60f(r30)
/* 8045F380  28 00 00 00 */	cmplwi r0, 0
/* 8045F384  40 82 00 10 */	bne lbl_8045F394
/* 8045F388  38 00 00 04 */	li r0, 4
/* 8045F38C  98 1E 05 B9 */	stb r0, 0x5b9(r30)
/* 8045F390  48 00 00 0C */	b lbl_8045F39C
lbl_8045F394:
/* 8045F394  38 00 00 05 */	li r0, 5
/* 8045F398  98 1E 05 B9 */	stb r0, 0x5b9(r30)
lbl_8045F39C:
/* 8045F39C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045F3A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045F3A4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8045F3A8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8045F3AC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8045F3B0  40 82 00 60 */	bne lbl_8045F410
/* 8045F3B4  7F C3 F3 78 */	mr r3, r30
/* 8045F3B8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8045F3BC  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 8045F3C0  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8045F3C4  4B FF FC 95 */	bl checkArea__10daKnob20_cFfff
/* 8045F3C8  2C 03 00 00 */	cmpwi r3, 0
/* 8045F3CC  40 82 00 14 */	bne lbl_8045F3E0
/* 8045F3D0  A0 1E 06 0C */	lhz r0, 0x60c(r30)
/* 8045F3D4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8045F3D8  B0 1E 06 0C */	sth r0, 0x60c(r30)
/* 8045F3DC  48 00 00 34 */	b lbl_8045F410
lbl_8045F3E0:
/* 8045F3E0  88 1E 05 B9 */	lbz r0, 0x5b9(r30)
/* 8045F3E4  54 00 08 3C */	slwi r0, r0, 1
/* 8045F3E8  7C 7E 02 14 */	add r3, r30, r0
/* 8045F3EC  A8 03 05 A4 */	lha r0, 0x5a4(r3)
/* 8045F3F0  B0 1E 00 FC */	sth r0, 0xfc(r30)
/* 8045F3F4  88 1E 05 B9 */	lbz r0, 0x5b9(r30)
/* 8045F3F8  7C 7E 02 14 */	add r3, r30, r0
/* 8045F3FC  88 03 05 B2 */	lbz r0, 0x5b2(r3)
/* 8045F400  98 1E 00 FE */	stb r0, 0xfe(r30)
/* 8045F404  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 8045F408  60 00 00 04 */	ori r0, r0, 4
/* 8045F40C  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_8045F410:
/* 8045F410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045F414  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045F418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045F41C  7C 08 03 A6 */	mtlr r0
/* 8045F420  38 21 00 10 */	addi r1, r1, 0x10
/* 8045F424  4E 80 00 20 */	blr 
