lbl_800F7E48:
/* 800F7E48  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 800F7E4C  7C 08 02 A6 */	mflr r0
/* 800F7E50  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 800F7E54  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 800F7E58  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 800F7E5C  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 800F7E60  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 800F7E64  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 800F7E68  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 800F7E6C  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 800F7E70  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 800F7E74  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 800F7E78  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 800F7E7C  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 800F7E80  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 800F7E84  39 61 00 90 */	addi r11, r1, 0x90
/* 800F7E88  48 26 A3 55 */	bl _savegpr_29
/* 800F7E8C  7C 7F 1B 78 */	mr r31, r3
/* 800F7E90  7C 9D 23 78 */	mr r29, r4
/* 800F7E94  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 800F7E98  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F7E9C  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800F7EA0  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800F7EA4  7F 65 04 2E */	lfsx f27, r5, r0
/* 800F7EA8  38 C5 00 04 */	addi r6, r5, 4
/* 800F7EAC  7F 46 04 2E */	lfsx f26, r6, r0
/* 800F7EB0  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800F7EB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800F7EB8  7F E5 04 2E */	lfsx f31, r5, r0
/* 800F7EBC  7F C6 04 2E */	lfsx f30, r6, r0
/* 800F7EC0  3B C0 00 00 */	li r30, 0
/* 800F7EC4  C0 04 00 00 */	lfs f0, 0(r4)
/* 800F7EC8  C0 22 93 54 */	lfs f1, lit_8248(r2)
/* 800F7ECC  EF 81 06 F2 */	fmuls f28, f1, f27
/* 800F7ED0  EC 00 E0 2A */	fadds f0, f0, f28
/* 800F7ED4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800F7ED8  C0 04 00 04 */	lfs f0, 4(r4)
/* 800F7EDC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 800F7EE0  C0 04 00 08 */	lfs f0, 8(r4)
/* 800F7EE4  EF A1 06 B2 */	fmuls f29, f1, f26
/* 800F7EE8  EC 00 E8 2A */	fadds f0, f0, f29
/* 800F7EEC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 800F7EF0  38 A1 00 70 */	addi r5, r1, 0x70
/* 800F7EF4  4B FA A2 A5 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800F7EF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F7EFC  41 82 00 2C */	beq lbl_800F7F28
/* 800F7F00  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800F7F04  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800F7F08  40 82 00 84 */	bne lbl_800F7F8C
/* 800F7F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F7F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F7F14  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800F7F18  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800F7F1C  4B F7 CE E5 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800F7F20  2C 03 00 06 */	cmpwi r3, 6
/* 800F7F24  40 82 00 68 */	bne lbl_800F7F8C
lbl_800F7F28:
/* 800F7F28  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 800F7F2C  C0 42 95 1C */	lfs f2, lit_20991(r2)
/* 800F7F30  EC 02 06 B2 */	fmuls f0, f2, f26
/* 800F7F34  EC 01 00 2A */	fadds f0, f1, f0
/* 800F7F38  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800F7F3C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800F7F40  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800F7F44  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 800F7F48  EC 02 06 F2 */	fmuls f0, f2, f27
/* 800F7F4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F7F50  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800F7F54  7F E3 FB 78 */	mr r3, r31
/* 800F7F58  38 81 00 70 */	addi r4, r1, 0x70
/* 800F7F5C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 800F7F60  38 C1 00 34 */	addi r6, r1, 0x34
/* 800F7F64  38 E1 00 28 */	addi r7, r1, 0x28
/* 800F7F68  39 01 00 0A */	addi r8, r1, 0xa
/* 800F7F6C  39 21 00 08 */	addi r9, r1, 8
/* 800F7F70  48 00 07 91 */	bl checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs
/* 800F7F74  2C 03 00 00 */	cmpwi r3, 0
/* 800F7F78  41 82 00 0C */	beq lbl_800F7F84
/* 800F7F7C  63 DE 00 01 */	ori r30, r30, 1
/* 800F7F80  48 00 00 0C */	b lbl_800F7F8C
lbl_800F7F84:
/* 800F7F84  38 60 00 00 */	li r3, 0
/* 800F7F88  48 00 01 F0 */	b lbl_800F8178
lbl_800F7F8C:
/* 800F7F8C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 800F7F90  C0 42 95 1C */	lfs f2, lit_20991(r2)
/* 800F7F94  EC 02 07 B2 */	fmuls f0, f2, f30
/* 800F7F98  EC 01 00 2A */	fadds f0, f1, f0
/* 800F7F9C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800F7FA0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 800F7FA4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800F7FA8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 800F7FAC  EC 02 07 F2 */	fmuls f0, f2, f31
/* 800F7FB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F7FB4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800F7FB8  38 61 00 1C */	addi r3, r1, 0x1c
/* 800F7FBC  7F A4 EB 78 */	mr r4, r29
/* 800F7FC0  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 800F7FC4  48 16 EB C1 */	bl __ml__4cXyzCFf
/* 800F7FC8  38 61 00 10 */	addi r3, r1, 0x10
/* 800F7FCC  38 81 00 1C */	addi r4, r1, 0x1c
/* 800F7FD0  38 A1 00 4C */	addi r5, r1, 0x4c
/* 800F7FD4  48 16 EB 61 */	bl __mi__4cXyzCFRC3Vec
/* 800F7FD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800F7FDC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800F7FE0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800F7FE4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800F7FE8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800F7FEC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800F7FF0  7F E3 FB 78 */	mr r3, r31
/* 800F7FF4  7F A4 EB 78 */	mr r4, r29
/* 800F7FF8  38 A1 00 4C */	addi r5, r1, 0x4c
/* 800F7FFC  4B FA A1 9D */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800F8000  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F8004  41 82 00 64 */	beq lbl_800F8068
/* 800F8008  63 DE 00 08 */	ori r30, r30, 8
/* 800F800C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 800F8010  C0 42 93 54 */	lfs f2, lit_8248(r2)
/* 800F8014  EC 02 07 F2 */	fmuls f0, f2, f31
/* 800F8018  EC 01 00 2A */	fadds f0, f1, f0
/* 800F801C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800F8020  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 800F8024  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800F8028  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 800F802C  EC 02 07 B2 */	fmuls f0, f2, f30
/* 800F8030  EC 01 00 2A */	fadds f0, f1, f0
/* 800F8034  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800F8038  7F E3 FB 78 */	mr r3, r31
/* 800F803C  38 81 00 40 */	addi r4, r1, 0x40
/* 800F8040  38 A1 00 58 */	addi r5, r1, 0x58
/* 800F8044  38 C1 00 34 */	addi r6, r1, 0x34
/* 800F8048  38 E1 00 28 */	addi r7, r1, 0x28
/* 800F804C  39 01 00 0A */	addi r8, r1, 0xa
/* 800F8050  39 21 00 08 */	addi r9, r1, 8
/* 800F8054  48 00 06 AD */	bl checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs
/* 800F8058  2C 03 00 00 */	cmpwi r3, 0
/* 800F805C  40 82 00 88 */	bne lbl_800F80E4
/* 800F8060  38 60 00 00 */	li r3, 0
/* 800F8064  48 00 01 14 */	b lbl_800F8178
lbl_800F8068:
/* 800F8068  63 DE 00 04 */	ori r30, r30, 4
/* 800F806C  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 800F8070  C0 42 93 54 */	lfs f2, lit_8248(r2)
/* 800F8074  EC 02 07 F2 */	fmuls f0, f2, f31
/* 800F8078  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F807C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800F8080  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800F8084  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800F8088  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 800F808C  EC 02 07 B2 */	fmuls f0, f2, f30
/* 800F8090  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F8094  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800F8098  7F E3 FB 78 */	mr r3, r31
/* 800F809C  38 81 00 4C */	addi r4, r1, 0x4c
/* 800F80A0  38 A1 00 58 */	addi r5, r1, 0x58
/* 800F80A4  38 C1 00 34 */	addi r6, r1, 0x34
/* 800F80A8  38 E1 00 28 */	addi r7, r1, 0x28
/* 800F80AC  39 01 00 0A */	addi r8, r1, 0xa
/* 800F80B0  39 21 00 08 */	addi r9, r1, 8
/* 800F80B4  48 00 06 4D */	bl checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs
/* 800F80B8  2C 03 00 00 */	cmpwi r3, 0
/* 800F80BC  40 82 00 0C */	bne lbl_800F80C8
/* 800F80C0  38 60 00 00 */	li r3, 0
/* 800F80C4  48 00 00 B4 */	b lbl_800F8178
lbl_800F80C8:
/* 800F80C8  7F E3 FB 78 */	mr r3, r31
/* 800F80CC  7F A4 EB 78 */	mr r4, r29
/* 800F80D0  38 A1 00 40 */	addi r5, r1, 0x40
/* 800F80D4  4B FA A0 C5 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800F80D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F80DC  40 82 00 08 */	bne lbl_800F80E4
/* 800F80E0  63 DE 00 08 */	ori r30, r30, 8
lbl_800F80E4:
/* 800F80E4  C0 62 92 98 */	lfs f3, lit_5943(r2)
/* 800F80E8  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 800F80EC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800F80F0  EC 01 00 2A */	fadds f0, f1, f0
/* 800F80F4  EC 23 00 32 */	fmuls f1, f3, f0
/* 800F80F8  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 800F80FC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800F8100  EC 02 00 2A */	fadds f0, f2, f0
/* 800F8104  EC 43 00 32 */	fmuls f2, f3, f0
/* 800F8108  C0 61 00 70 */	lfs f3, 0x70(r1)
/* 800F810C  C0 81 00 78 */	lfs f4, 0x78(r1)
/* 800F8110  C0 1D 00 00 */	lfs f0, 0(r29)
/* 800F8114  EC A0 E0 28 */	fsubs f5, f0, f28
/* 800F8118  C0 1D 00 08 */	lfs f0, 8(r29)
/* 800F811C  EC C0 E8 28 */	fsubs f6, f0, f29
/* 800F8120  38 61 00 64 */	addi r3, r1, 0x64
/* 800F8124  38 81 00 6C */	addi r4, r1, 0x6c
/* 800F8128  38 A1 00 0C */	addi r5, r1, 0xc
/* 800F812C  48 17 05 01 */	bl cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf
/* 800F8130  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F8134  41 82 00 40 */	beq lbl_800F8174
/* 800F8138  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800F813C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800F8140  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800F8144  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800F8148  41 82 00 18 */	beq lbl_800F8160
/* 800F814C  7F E3 FB 78 */	mr r3, r31
/* 800F8150  7F C4 F3 78 */	mr r4, r30
/* 800F8154  38 A1 00 64 */	addi r5, r1, 0x64
/* 800F8158  48 03 FB 39 */	bl procWolfLieAutoMoveInit__9daAlink_cFiP4cXyz
/* 800F815C  48 00 00 1C */	b lbl_800F8178
lbl_800F8160:
/* 800F8160  7F E3 FB 78 */	mr r3, r31
/* 800F8164  7F C4 F3 78 */	mr r4, r30
/* 800F8168  38 A1 00 64 */	addi r5, r1, 0x64
/* 800F816C  48 00 18 91 */	bl procCrawlAutoMoveInit__9daAlink_cFiP4cXyz
/* 800F8170  48 00 00 08 */	b lbl_800F8178
lbl_800F8174:
/* 800F8174  38 60 00 00 */	li r3, 0
lbl_800F8178:
/* 800F8178  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 800F817C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 800F8180  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 800F8184  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 800F8188  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 800F818C  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 800F8190  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 800F8194  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 800F8198  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 800F819C  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 800F81A0  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 800F81A4  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 800F81A8  39 61 00 90 */	addi r11, r1, 0x90
/* 800F81AC  48 26 A0 7D */	bl _restgpr_29
/* 800F81B0  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 800F81B4  7C 08 03 A6 */	mtlr r0
/* 800F81B8  38 21 00 F0 */	addi r1, r1, 0xf0
/* 800F81BC  4E 80 00 20 */	blr 
