lbl_805FAFF0:
/* 805FAFF0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 805FAFF4  7C 08 02 A6 */	mflr r0
/* 805FAFF8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805FAFFC  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 805FB000  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 805FB004  7C 7E 1B 78 */	mr r30, r3
/* 805FB008  7C 9F 23 78 */	mr r31, r4
/* 805FB00C  38 61 00 44 */	addi r3, r1, 0x44
/* 805FB010  4B A7 CC 58 */	b __ct__11dBgS_LinChkFv
/* 805FB014  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 805FB018  7C BE 02 14 */	add r5, r30, r0
/* 805FB01C  C0 05 1E 5C */	lfs f0, 0x1e5c(r5)
/* 805FB020  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805FB024  C0 05 1E 60 */	lfs f0, 0x1e60(r5)
/* 805FB028  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805FB02C  C0 05 1E 64 */	lfs f0, 0x1e64(r5)
/* 805FB030  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805FB034  38 61 00 20 */	addi r3, r1, 0x20
/* 805FB038  3B E5 1E 5C */	addi r31, r5, 0x1e5c
/* 805FB03C  7F E4 FB 78 */	mr r4, r31
/* 805FB040  38 A5 1E 98 */	addi r5, r5, 0x1e98
/* 805FB044  4B C6 BA F0 */	b __mi__4cXyzCFRC3Vec
/* 805FB048  38 61 00 14 */	addi r3, r1, 0x14
/* 805FB04C  38 81 00 20 */	addi r4, r1, 0x20
/* 805FB050  3C A0 80 60 */	lis r5, lit_4460@ha
/* 805FB054  C0 25 26 E8 */	lfs f1, lit_4460@l(r5)
/* 805FB058  4B C6 BB 2C */	b __ml__4cXyzCFf
/* 805FB05C  38 61 00 08 */	addi r3, r1, 8
/* 805FB060  7F E4 FB 78 */	mr r4, r31
/* 805FB064  38 A1 00 14 */	addi r5, r1, 0x14
/* 805FB068  4B C6 BA 7C */	b __pl__4cXyzCFRC3Vec
/* 805FB06C  C0 01 00 08 */	lfs f0, 8(r1)
/* 805FB070  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805FB074  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805FB078  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805FB07C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805FB080  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805FB084  38 61 00 44 */	addi r3, r1, 0x44
/* 805FB088  38 81 00 38 */	addi r4, r1, 0x38
/* 805FB08C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 805FB090  7F C6 F3 78 */	mr r6, r30
/* 805FB094  4B A7 CC D0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805FB098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805FB09C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805FB0A0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805FB0A4  38 81 00 44 */	addi r4, r1, 0x44
/* 805FB0A8  4B A7 93 0C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805FB0AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805FB0B0  41 82 00 18 */	beq lbl_805FB0C8
/* 805FB0B4  38 61 00 44 */	addi r3, r1, 0x44
/* 805FB0B8  38 80 FF FF */	li r4, -1
/* 805FB0BC  4B A7 CC 20 */	b __dt__11dBgS_LinChkFv
/* 805FB0C0  38 60 00 01 */	li r3, 1
/* 805FB0C4  48 00 00 14 */	b lbl_805FB0D8
lbl_805FB0C8:
/* 805FB0C8  38 61 00 44 */	addi r3, r1, 0x44
/* 805FB0CC  38 80 FF FF */	li r4, -1
/* 805FB0D0  4B A7 CC 0C */	b __dt__11dBgS_LinChkFv
/* 805FB0D4  38 60 00 00 */	li r3, 0
lbl_805FB0D8:
/* 805FB0D8  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 805FB0DC  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 805FB0E0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 805FB0E4  7C 08 03 A6 */	mtlr r0
/* 805FB0E8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 805FB0EC  4E 80 00 20 */	blr 
