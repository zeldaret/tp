lbl_80133054:
/* 80133054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80133058  7C 08 02 A6 */	mflr r0
/* 8013305C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80133060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80133064  93 C1 00 08 */	stw r30, 8(r1)
/* 80133068  7C 7E 1B 78 */	mr r30, r3
/* 8013306C  7C 9F 23 78 */	mr r31, r4
/* 80133070  38 80 01 16 */	li r4, 0x116
/* 80133074  4B F8 EE F9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80133078  2C 1F 00 04 */	cmpwi r31, 4
/* 8013307C  40 82 00 24 */	bne lbl_801330A0
/* 80133080  7F C3 F3 78 */	mr r3, r30
/* 80133084  38 80 00 25 */	li r4, 0x25
/* 80133088  4B FF 65 F1 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8013308C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80133090  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 80133094  38 00 00 01 */	li r0, 1
/* 80133098  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8013309C  48 00 00 34 */	b lbl_801330D0
lbl_801330A0:
/* 801330A0  7F C3 F3 78 */	mr r3, r30
/* 801330A4  38 80 00 26 */	li r4, 0x26
/* 801330A8  4B FF 65 D1 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 801330AC  3C 60 80 42 */	lis r3, l_wolfRopeBaseAnime@ha
/* 801330B0  C4 03 56 34 */	lfsu f0, l_wolfRopeBaseAnime@l(r3)
/* 801330B4  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 801330B8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801330BC  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 801330C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 801330C4  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 801330C8  38 00 00 00 */	li r0, 0
/* 801330CC  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_801330D0:
/* 801330D0  B3 FE 30 10 */	sth r31, 0x3010(r30)
/* 801330D4  7F C3 F3 78 */	mr r3, r30
/* 801330D8  4B FF E9 19 */	bl initWolfRopeShapeAngle__9daAlink_cFv
/* 801330DC  B0 7E 30 0C */	sth r3, 0x300c(r30)
/* 801330E0  7F C3 F3 78 */	mr r3, r30
/* 801330E4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801330E8  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 801330EC  38 80 00 00 */	li r4, 0
/* 801330F0  4B F8 86 81 */	bl setSpecialGravity__9daAlink_cFffi
/* 801330F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801330F8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 801330FC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80133100  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80133104  38 60 00 00 */	li r3, 0
/* 80133108  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 8013310C  28 00 02 DA */	cmplwi r0, 0x2da
/* 80133110  41 82 00 10 */	beq lbl_80133120
/* 80133114  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80133118  28 00 02 DB */	cmplwi r0, 0x2db
/* 8013311C  40 82 00 08 */	bne lbl_80133124
lbl_80133120:
/* 80133120  38 60 00 01 */	li r3, 1
lbl_80133124:
/* 80133124  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80133128  41 82 00 0C */	beq lbl_80133134
/* 8013312C  38 00 E8 00 */	li r0, -6144
/* 80133130  B0 1E 30 A0 */	sth r0, 0x30a0(r30)
lbl_80133134:
/* 80133134  80 7E 28 10 */	lwz r3, 0x2810(r30)
/* 80133138  38 00 00 13 */	li r0, 0x13
/* 8013313C  90 03 07 18 */	stw r0, 0x718(r3)
/* 80133140  38 00 00 1F */	li r0, 0x1f
/* 80133144  90 03 07 1C */	stw r0, 0x71c(r3)
/* 80133148  38 60 00 01 */	li r3, 1
/* 8013314C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80133150  83 C1 00 08 */	lwz r30, 8(r1)
/* 80133154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80133158  7C 08 03 A6 */	mtlr r0
/* 8013315C  38 21 00 10 */	addi r1, r1, 0x10
/* 80133160  4E 80 00 20 */	blr 
