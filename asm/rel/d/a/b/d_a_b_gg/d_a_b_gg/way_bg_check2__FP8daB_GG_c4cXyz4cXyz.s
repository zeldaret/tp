lbl_805DF010:
/* 805DF010  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805DF014  7C 08 02 A6 */	mflr r0
/* 805DF018  90 01 00 94 */	stw r0, 0x94(r1)
/* 805DF01C  39 61 00 90 */	addi r11, r1, 0x90
/* 805DF020  4B D8 31 BC */	b _savegpr_29
/* 805DF024  7C 7D 1B 78 */	mr r29, r3
/* 805DF028  7C 9E 23 78 */	mr r30, r4
/* 805DF02C  7C BF 2B 78 */	mr r31, r5
/* 805DF030  38 61 00 08 */	addi r3, r1, 8
/* 805DF034  4B A9 8C 34 */	b __ct__11dBgS_LinChkFv
/* 805DF038  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805DF03C  3C 60 80 5F */	lis r3, lit_4250@ha
/* 805DF040  C0 03 D1 C4 */	lfs f0, lit_4250@l(r3)
/* 805DF044  EC 01 00 2A */	fadds f0, f1, f0
/* 805DF048  D0 1E 00 04 */	stfs f0, 4(r30)
/* 805DF04C  38 61 00 08 */	addi r3, r1, 8
/* 805DF050  7F C4 F3 78 */	mr r4, r30
/* 805DF054  7F E5 FB 78 */	mr r5, r31
/* 805DF058  7F A6 EB 78 */	mr r6, r29
/* 805DF05C  4B A9 8D 08 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805DF060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DF064  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DF068  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805DF06C  38 81 00 08 */	addi r4, r1, 8
/* 805DF070  4B A9 53 44 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805DF074  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805DF078  41 82 00 18 */	beq lbl_805DF090
/* 805DF07C  38 61 00 08 */	addi r3, r1, 8
/* 805DF080  38 80 FF FF */	li r4, -1
/* 805DF084  4B A9 8C 58 */	b __dt__11dBgS_LinChkFv
/* 805DF088  38 60 00 01 */	li r3, 1
/* 805DF08C  48 00 00 14 */	b lbl_805DF0A0
lbl_805DF090:
/* 805DF090  38 61 00 08 */	addi r3, r1, 8
/* 805DF094  38 80 FF FF */	li r4, -1
/* 805DF098  4B A9 8C 44 */	b __dt__11dBgS_LinChkFv
/* 805DF09C  38 60 00 00 */	li r3, 0
lbl_805DF0A0:
/* 805DF0A0  39 61 00 90 */	addi r11, r1, 0x90
/* 805DF0A4  4B D8 31 84 */	b _restgpr_29
/* 805DF0A8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805DF0AC  7C 08 03 A6 */	mtlr r0
/* 805DF0B0  38 21 00 90 */	addi r1, r1, 0x90
/* 805DF0B4  4E 80 00 20 */	blr 
