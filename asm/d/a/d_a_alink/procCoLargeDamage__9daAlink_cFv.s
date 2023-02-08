lbl_800D9E88:
/* 800D9E88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D9E8C  7C 08 02 A6 */	mflr r0
/* 800D9E90  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D9E94  39 61 00 30 */	addi r11, r1, 0x30
/* 800D9E98  48 28 83 45 */	bl _savegpr_29
/* 800D9E9C  7C 7F 1B 78 */	mr r31, r3
/* 800D9EA0  80 63 32 CC */	lwz r3, 0x32cc(r3)
/* 800D9EA4  28 03 00 00 */	cmplwi r3, 0
/* 800D9EA8  41 82 00 10 */	beq lbl_800D9EB8
/* 800D9EAC  38 03 FF FF */	addi r0, r3, -1
/* 800D9EB0  90 1F 32 CC */	stw r0, 0x32cc(r31)
/* 800D9EB4  48 00 00 10 */	b lbl_800D9EC4
lbl_800D9EB8:
/* 800D9EB8  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D9EBC  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800D9EC0  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800D9EC4:
/* 800D9EC4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D9EC8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9ECC  40 82 00 18 */	bne lbl_800D9EE4
/* 800D9ED0  7F E3 FB 78 */	mr r3, r31
/* 800D9ED4  38 80 01 25 */	li r4, 0x125
/* 800D9ED8  4B FD 26 81 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800D9EDC  2C 03 00 00 */	cmpwi r3, 0
/* 800D9EE0  40 82 00 28 */	bne lbl_800D9F08
lbl_800D9EE4:
/* 800D9EE4  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800D9EE8  2C 00 00 00 */	cmpwi r0, 0
/* 800D9EEC  41 82 00 0C */	beq lbl_800D9EF8
/* 800D9EF0  38 7F 30 80 */	addi r3, r31, 0x3080
/* 800D9EF4  48 00 00 08 */	b lbl_800D9EFC
lbl_800D9EF8:
/* 800D9EF8  38 7F 30 82 */	addi r3, r31, 0x3082
lbl_800D9EFC:
/* 800D9EFC  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 800D9F00  A8 BF 30 10 */	lha r5, 0x3010(r31)
/* 800D9F04  48 19 6C 8D */	bl cLib_chaseAngleS__FPsss
lbl_800D9F08:
/* 800D9F08  38 7F 33 98 */	addi r3, r31, 0x3398
/* 800D9F0C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D9F10  C0 5F 34 7C */	lfs f2, 0x347c(r31)
/* 800D9F14  48 19 68 2D */	bl cLib_chaseF__FPfff
/* 800D9F18  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800D9F1C  2C 00 00 00 */	cmpwi r0, 0
/* 800D9F20  40 82 00 14 */	bne lbl_800D9F34
/* 800D9F24  38 00 00 01 */	li r0, 1
/* 800D9F28  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800D9F2C  38 60 00 01 */	li r3, 1
/* 800D9F30  48 00 02 38 */	b lbl_800DA168
lbl_800D9F34:
/* 800D9F34  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D9F38  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800D9F3C  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800D9F40  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D9F44  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9F48  40 82 00 0C */	bne lbl_800D9F54
/* 800D9F4C  7F E3 FB 78 */	mr r3, r31
/* 800D9F50  4B FD BC 71 */	bl setFallVoice__9daAlink_cFv
lbl_800D9F54:
/* 800D9F54  80 7F 19 9C */	lwz r3, 0x199c(r31)
/* 800D9F58  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 800D9F5C  40 82 00 10 */	bne lbl_800D9F6C
/* 800D9F60  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 800D9F64  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800D9F68  41 82 00 84 */	beq lbl_800D9FEC
lbl_800D9F6C:
/* 800D9F6C  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800D9F70  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800D9F74  40 82 00 78 */	bne lbl_800D9FEC
/* 800D9F78  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D9F7C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9F80  41 82 00 20 */	beq lbl_800D9FA0
/* 800D9F84  7F E3 FB 78 */	mr r3, r31
/* 800D9F88  80 9F 31 98 */	lwz r4, 0x3198(r31)
/* 800D9F8C  A8 BF 30 0A */	lha r5, 0x300a(r31)
/* 800D9F90  A8 DF 30 80 */	lha r6, 0x3080(r31)
/* 800D9F94  A8 FF 30 82 */	lha r7, 0x3082(r31)
/* 800D9F98  48 05 C6 8D */	bl procWolfLargeDamageUpInit__9daAlink_cFiiss
/* 800D9F9C  48 00 01 C8 */	b lbl_800DA164
lbl_800D9FA0:
/* 800D9FA0  C0 3F 34 80 */	lfs f1, 0x3480(r31)
/* 800D9FA4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D9FA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D9FAC  7C 00 00 26 */	mfcr r0
/* 800D9FB0  54 1E 17 FE */	rlwinm r30, r0, 2, 0x1f, 0x1f
/* 800D9FB4  7F E3 FB 78 */	mr r3, r31
/* 800D9FB8  80 9F 31 98 */	lwz r4, 0x3198(r31)
/* 800D9FBC  A8 BF 30 0A */	lha r5, 0x300a(r31)
/* 800D9FC0  A8 DF 30 80 */	lha r6, 0x3080(r31)
/* 800D9FC4  A8 FF 30 82 */	lha r7, 0x3082(r31)
/* 800D9FC8  48 00 01 B9 */	bl procLargeDamageUpInit__9daAlink_cFiiss
/* 800D9FCC  2C 1E 00 00 */	cmpwi r30, 0
/* 800D9FD0  41 82 01 94 */	beq lbl_800DA164
/* 800D9FD4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D9FD8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800D9FDC  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800D9FE0  7F E3 FB 78 */	mr r3, r31
/* 800D9FE4  4B FF CF FD */	bl checkCutLandDamage__9daAlink_cFv
/* 800D9FE8  48 00 01 7C */	b lbl_800DA164
lbl_800D9FEC:
/* 800D9FEC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800D9FF0  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800D9FF4  41 82 00 9C */	beq lbl_800DA090
/* 800D9FF8  7F E3 FB 78 */	mr r3, r31
/* 800D9FFC  38 80 01 25 */	li r4, 0x125
/* 800DA000  4B FD 25 59 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800DA004  2C 03 00 00 */	cmpwi r3, 0
/* 800DA008  40 82 01 5C */	bne lbl_800DA164
/* 800DA00C  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 800DA010  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 800DA014  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800DA018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DA01C  40 80 01 48 */	bge lbl_800DA164
/* 800DA020  A8 7F 30 12 */	lha r3, 0x3012(r31)
/* 800DA024  2C 03 00 00 */	cmpwi r3, 0
/* 800DA028  41 82 00 10 */	beq lbl_800DA038
/* 800DA02C  38 03 FF FF */	addi r0, r3, -1
/* 800DA030  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800DA034  48 00 01 30 */	b lbl_800DA164
lbl_800DA038:
/* 800DA038  7F E3 FB 78 */	mr r3, r31
/* 800DA03C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001000C@ha */
/* 800DA040  38 84 00 0C */	addi r4, r4, 0x000C /* 0x0001000C@l */
/* 800DA044  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DA048  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DA04C  7D 89 03 A6 */	mtctr r12
/* 800DA050  4E 80 04 21 */	bctrl 
/* 800DA054  7F E3 FB 78 */	mr r3, r31
/* 800DA058  38 80 01 25 */	li r4, 0x125
/* 800DA05C  3C A0 80 39 */	lis r5, m__20daAlinkHIO_damage_c0@ha /* 0x8038E54C@ha */
/* 800DA060  38 A5 E5 4C */	addi r5, r5, m__20daAlinkHIO_damage_c0@l /* 0x8038E54C@l */
/* 800DA064  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 800DA068  4B FD 2F 49 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 800DA06C  7F E3 FB 78 */	mr r3, r31
/* 800DA070  A8 9F 30 80 */	lha r4, 0x3080(r31)
/* 800DA074  38 A0 00 00 */	li r5, 0
/* 800DA078  A8 DF 30 82 */	lha r6, 0x3082(r31)
/* 800DA07C  4B FD 3A FD */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800DA080  38 00 00 00 */	li r0, 0
/* 800DA084  B0 1F 30 80 */	sth r0, 0x3080(r31)
/* 800DA088  B0 1F 30 82 */	sth r0, 0x3082(r31)
/* 800DA08C  48 00 00 D8 */	b lbl_800DA164
lbl_800DA090:
/* 800DA090  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 800DA094  41 82 00 D0 */	beq lbl_800DA164
/* 800DA098  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800DA09C  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 800DA0A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DA0A4  40 81 00 C0 */	ble lbl_800DA164
/* 800DA0A8  3B DF 18 B0 */	addi r30, r31, 0x18b0
/* 800DA0AC  3B A0 00 00 */	li r29, 0
lbl_800DA0B0:
/* 800DA0B0  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800DA0B4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800DA0B8  41 82 00 9C */	beq lbl_800DA154
/* 800DA0BC  C0 9F 04 D8 */	lfs f4, 0x4d8(r31)
/* 800DA0C0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800DA0C4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 800DA0C8  EC 61 00 2A */	fadds f3, f1, f0
/* 800DA0CC  C0 5F 04 D0 */	lfs f2, 0x4d0(r31)
/* 800DA0D0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800DA0D4  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 800DA0D8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 800DA0DC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800DA0E0  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 800DA0E4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800DA0E8  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800DA0EC  7C 60 22 14 */	add r3, r0, r4
/* 800DA0F0  C0 A3 00 04 */	lfs f5, 4(r3)
/* 800DA0F4  C0 22 92 9C */	lfs f1, lit_5944(r2)
/* 800DA0F8  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 800DA0FC  EC C1 00 2A */	fadds f6, f1, f0
/* 800DA100  EC 05 01 B2 */	fmuls f0, f5, f6
/* 800DA104  EC 24 00 2A */	fadds f1, f4, f0
/* 800DA108  C0 03 00 00 */	lfs f0, 0(r3)
/* 800DA10C  EC 00 01 B2 */	fmuls f0, f0, f6
/* 800DA110  EC 02 00 2A */	fadds f0, f2, f0
/* 800DA114  D0 01 00 08 */	stfs f0, 8(r1)
/* 800DA118  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 800DA11C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800DA120  7F E3 FB 78 */	mr r3, r31
/* 800DA124  38 81 00 14 */	addi r4, r1, 0x14
/* 800DA128  38 A1 00 08 */	addi r5, r1, 8
/* 800DA12C  4B FC 80 6D */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800DA130  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DA134  41 82 00 20 */	beq lbl_800DA154
/* 800DA138  7F E3 FB 78 */	mr r3, r31
/* 800DA13C  80 9F 31 98 */	lwz r4, 0x3198(r31)
/* 800DA140  A8 BF 30 0A */	lha r5, 0x300a(r31)
/* 800DA144  A8 DF 30 80 */	lha r6, 0x3080(r31)
/* 800DA148  A8 FF 30 82 */	lha r7, 0x3082(r31)
/* 800DA14C  48 00 06 E1 */	bl procCoLargeDamageWallInit__9daAlink_cFiiss
/* 800DA150  48 00 00 18 */	b lbl_800DA168
lbl_800DA154:
/* 800DA154  3B BD 00 01 */	addi r29, r29, 1
/* 800DA158  2C 1D 00 03 */	cmpwi r29, 3
/* 800DA15C  3B DE 00 40 */	addi r30, r30, 0x40
/* 800DA160  41 80 FF 50 */	blt lbl_800DA0B0
lbl_800DA164:
/* 800DA164  38 60 00 01 */	li r3, 1
lbl_800DA168:
/* 800DA168  39 61 00 30 */	addi r11, r1, 0x30
/* 800DA16C  48 28 80 BD */	bl _restgpr_29
/* 800DA170  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800DA174  7C 08 03 A6 */	mtlr r0
/* 800DA178  38 21 00 30 */	addi r1, r1, 0x30
/* 800DA17C  4E 80 00 20 */	blr 
