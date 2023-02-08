lbl_807F9EF8:
/* 807F9EF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807F9EFC  7C 08 02 A6 */	mflr r0
/* 807F9F00  90 01 00 24 */	stw r0, 0x24(r1)
/* 807F9F04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807F9F08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807F9F0C  7C 7E 1B 78 */	mr r30, r3
/* 807F9F10  3C 80 80 80 */	lis r4, lit_3801@ha /* 0x807FCCB4@ha */
/* 807F9F14  3B E4 CC B4 */	addi r31, r4, lit_3801@l /* 0x807FCCB4@l */
/* 807F9F18  38 00 00 06 */	li r0, 6
/* 807F9F1C  B0 03 06 8E */	sth r0, 0x68e(r3)
/* 807F9F20  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807F9F24  2C 00 00 01 */	cmpwi r0, 1
/* 807F9F28  41 82 00 5C */	beq lbl_807F9F84
/* 807F9F2C  40 80 00 10 */	bge lbl_807F9F3C
/* 807F9F30  2C 00 00 00 */	cmpwi r0, 0
/* 807F9F34  40 80 00 14 */	bge lbl_807F9F48
/* 807F9F38  48 00 01 AC */	b lbl_807FA0E4
lbl_807F9F3C:
/* 807F9F3C  2C 00 00 03 */	cmpwi r0, 3
/* 807F9F40  40 80 01 A4 */	bge lbl_807FA0E4
/* 807F9F44  48 00 01 50 */	b lbl_807FA094
lbl_807F9F48:
/* 807F9F48  38 80 00 05 */	li r4, 5
/* 807F9F4C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807F9F50  38 A0 00 02 */	li r5, 2
/* 807F9F54  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F9F58  4B FF E4 3D */	bl anm_init__FP10e_yg_classifUcf
/* 807F9F5C  38 00 00 01 */	li r0, 1
/* 807F9F60  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807F9F64  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 807F9F68  4B A6 D9 ED */	bl cM_rndF__Ff
/* 807F9F6C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 807F9F70  EC 00 08 2A */	fadds f0, f0, f1
/* 807F9F74  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807F9F78  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807F9F7C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807F9F80  48 00 01 64 */	b lbl_807FA0E4
lbl_807F9F84:
/* 807F9F84  80 1E 07 04 */	lwz r0, 0x704(r30)
/* 807F9F88  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807F9F8C  41 82 00 B0 */	beq lbl_807FA03C
/* 807F9F90  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 807F9F94  2C 00 00 00 */	cmpwi r0, 0
/* 807F9F98  41 81 00 64 */	bgt lbl_807F9FFC
/* 807F9F9C  38 00 00 01 */	li r0, 1
/* 807F9FA0  98 1E 0B A8 */	stb r0, 0xba8(r30)
/* 807F9FA4  38 80 00 06 */	li r4, 6
/* 807F9FA8  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 807F9FAC  38 A0 00 00 */	li r5, 0
/* 807F9FB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F9FB4  4B FF E3 E1 */	bl anm_init__FP10e_yg_classifUcf
/* 807F9FB8  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 807F9FBC  4B A6 D9 99 */	bl cM_rndF__Ff
/* 807F9FC0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807F9FC4  EC 00 08 2A */	fadds f0, f0, f1
/* 807F9FC8  FC 00 00 1E */	fctiwz f0, f0
/* 807F9FCC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F9FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F9FD4  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807F9FD8  38 00 00 02 */	li r0, 2
/* 807F9FDC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807F9FE0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807F9FE4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807F9FE8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807F9FEC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807F9FF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807F9FF4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807F9FF8  48 00 00 14 */	b lbl_807FA00C
lbl_807F9FFC:
/* 807F9FFC  38 00 00 01 */	li r0, 1
/* 807FA000  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807FA004  38 00 00 00 */	li r0, 0
/* 807FA008  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807FA00C:
/* 807FA00C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 807FA010  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 807FA014  90 01 00 08 */	stw r0, 8(r1)
/* 807FA018  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 807FA01C  38 81 00 08 */	addi r4, r1, 8
/* 807FA020  38 A0 00 00 */	li r5, 0
/* 807FA024  38 C0 FF FF */	li r6, -1
/* 807FA028  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 807FA02C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FA030  7D 89 03 A6 */	mtctr r12
/* 807FA034  4E 80 04 21 */	bctrl 
/* 807FA038  48 00 00 AC */	b lbl_807FA0E4
lbl_807FA03C:
/* 807FA03C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807FA040  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FA044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FA048  4C 40 13 82 */	cror 2, 0, 2
/* 807FA04C  40 82 00 98 */	bne lbl_807FA0E4
/* 807FA050  88 1E 08 B0 */	lbz r0, 0x8b0(r30)
/* 807FA054  7C 00 07 75 */	extsb. r0, r0
/* 807FA058  41 82 00 8C */	beq lbl_807FA0E4
/* 807FA05C  38 00 00 01 */	li r0, 1
/* 807FA060  98 1E 0B A8 */	stb r0, 0xba8(r30)
/* 807FA064  38 80 00 07 */	li r4, 7
/* 807FA068  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807FA06C  38 A0 00 00 */	li r5, 0
/* 807FA070  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FA074  4B FF E3 21 */	bl anm_init__FP10e_yg_classifUcf
/* 807FA078  7F C3 F3 78 */	mr r3, r30
/* 807FA07C  4B FF E5 95 */	bl sibuki_set__FP10e_yg_class
/* 807FA080  38 00 00 1E */	li r0, 0x1e
/* 807FA084  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807FA088  38 00 00 02 */	li r0, 2
/* 807FA08C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807FA090  48 00 00 54 */	b lbl_807FA0E4
lbl_807FA094:
/* 807FA094  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807FA098  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FA09C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FA0A0  4C 40 13 82 */	cror 2, 0, 2
/* 807FA0A4  40 82 00 2C */	bne lbl_807FA0D0
/* 807FA0A8  80 1E 07 04 */	lwz r0, 0x704(r30)
/* 807FA0AC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807FA0B0  40 82 00 10 */	bne lbl_807FA0C0
/* 807FA0B4  88 1E 08 B0 */	lbz r0, 0x8b0(r30)
/* 807FA0B8  7C 00 07 75 */	extsb. r0, r0
/* 807FA0BC  41 82 00 14 */	beq lbl_807FA0D0
lbl_807FA0C0:
/* 807FA0C0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807FA0C4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807FA0C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807FA0CC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807FA0D0:
/* 807FA0D0  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 807FA0D4  2C 00 00 00 */	cmpwi r0, 0
/* 807FA0D8  40 82 00 0C */	bne lbl_807FA0E4
/* 807FA0DC  7F C3 F3 78 */	mr r3, r30
/* 807FA0E0  4B FF E6 19 */	bl ms_disappear__FP10e_yg_class
lbl_807FA0E4:
/* 807FA0E4  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 807FA0E8  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807FA0EC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 807FA0F0  4C 40 13 82 */	cror 2, 0, 2
/* 807FA0F4  40 82 00 40 */	bne lbl_807FA134
/* 807FA0F8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 807FA0FC  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FA100  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 807FA104  EC 00 08 28 */	fsubs f0, f0, f1
/* 807FA108  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807FA10C  4C 40 13 82 */	cror 2, 0, 2
/* 807FA110  40 82 00 24 */	bne lbl_807FA134
/* 807FA114  D0 7E 04 FC */	stfs f3, 0x4fc(r30)
/* 807FA118  D0 7E 05 30 */	stfs f3, 0x530(r30)
/* 807FA11C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807FA120  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FA124  EC 20 08 28 */	fsubs f1, f0, f1
/* 807FA128  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FA12C  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 807FA130  4B A7 59 0D */	bl cLib_addCalc2__FPffff
lbl_807FA134:
/* 807FA134  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807FA138  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807FA13C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807FA140  7C 08 03 A6 */	mtlr r0
/* 807FA144  38 21 00 20 */	addi r1, r1, 0x20
/* 807FA148  4E 80 00 20 */	blr 
