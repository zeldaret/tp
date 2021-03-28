lbl_8014C030:
/* 8014C030  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8014C034  7C 08 02 A6 */	mflr r0
/* 8014C038  90 01 00 54 */	stw r0, 0x54(r1)
/* 8014C03C  39 61 00 50 */	addi r11, r1, 0x50
/* 8014C040  48 21 61 91 */	bl _savegpr_26
/* 8014C044  7C 7E 1B 78 */	mr r30, r3
/* 8014C048  A8 03 0E 1A */	lha r0, 0xe1a(r3)
/* 8014C04C  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 8014C050  B0 03 0E 18 */	sth r0, 0xe18(r3)
/* 8014C054  A8 03 0E 1A */	lha r0, 0xe1a(r3)
/* 8014C058  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8014C05C  7C 00 1E 70 */	srawi r0, r0, 3
/* 8014C060  54 00 18 38 */	slwi r0, r0, 3
/* 8014C064  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8014C068  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8014C06C  7C 23 04 2E */	lfsx f1, r3, r0
/* 8014C070  C0 02 9A 6C */	lfs f0, lit_7090(r2)
/* 8014C074  EC 00 00 72 */	fmuls f0, f0, f1
/* 8014C078  D0 1E 0E 00 */	stfs f0, 0xe00(r30)
/* 8014C07C  A8 1E 0E 18 */	lha r0, 0xe18(r30)
/* 8014C080  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8014C084  7C 23 04 2E */	lfsx f1, r3, r0
/* 8014C088  C0 02 9A 84 */	lfs f0, lit_7442(r2)
/* 8014C08C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8014C090  D0 1E 0E 04 */	stfs f0, 0xe04(r30)
/* 8014C094  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8014C098  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8014C09C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8014C0A0  C0 3E 0E 00 */	lfs f1, 0xe00(r30)
/* 8014C0A4  FC 00 00 50 */	fneg f0, f0
/* 8014C0A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8014C0AC  D0 1E 0E 08 */	stfs f0, 0xe08(r30)
/* 8014C0B0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8014C0B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8014C0B8  7C 63 02 14 */	add r3, r3, r0
/* 8014C0BC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8014C0C0  C0 1E 0E 00 */	lfs f0, 0xe00(r30)
/* 8014C0C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8014C0C8  D0 1E 0E 00 */	stfs f0, 0xe00(r30)
/* 8014C0CC  A8 7E 0E 1A */	lha r3, 0xe1a(r30)
/* 8014C0D0  38 03 04 00 */	addi r0, r3, 0x400
/* 8014C0D4  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 8014C0D8  C0 5E 0E 0C */	lfs f2, 0xe0c(r30)
/* 8014C0DC  C0 3E 05 38 */	lfs f1, 0x538(r30)
/* 8014C0E0  C0 1E 0E 00 */	lfs f0, 0xe00(r30)
/* 8014C0E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8014C0E8  EC 02 00 2A */	fadds f0, f2, f0
/* 8014C0EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8014C0F0  C0 5E 0E 10 */	lfs f2, 0xe10(r30)
/* 8014C0F4  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 8014C0F8  C0 1E 0E 04 */	lfs f0, 0xe04(r30)
/* 8014C0FC  EC 01 00 2A */	fadds f0, f1, f0
/* 8014C100  EC 02 00 2A */	fadds f0, f2, f0
/* 8014C104  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8014C108  C0 5E 0E 14 */	lfs f2, 0xe14(r30)
/* 8014C10C  C0 3E 05 40 */	lfs f1, 0x540(r30)
/* 8014C110  C0 1E 0E 08 */	lfs f0, 0xe08(r30)
/* 8014C114  EC 01 00 2A */	fadds f0, f1, f0
/* 8014C118  EC 02 00 2A */	fadds f0, f2, f0
/* 8014C11C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8014C120  3B E0 00 00 */	li r31, 0
/* 8014C124  3B A0 00 00 */	li r29, 0
/* 8014C128  3B 80 00 00 */	li r28, 0
/* 8014C12C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014C130  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
lbl_8014C134:
/* 8014C134  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8014C138  38 00 00 FF */	li r0, 0xff
/* 8014C13C  90 01 00 08 */	stw r0, 8(r1)
/* 8014C140  38 80 00 00 */	li r4, 0
/* 8014C144  90 81 00 0C */	stw r4, 0xc(r1)
/* 8014C148  38 00 FF FF */	li r0, -1
/* 8014C14C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8014C150  90 81 00 14 */	stw r4, 0x14(r1)
/* 8014C154  90 81 00 18 */	stw r4, 0x18(r1)
/* 8014C158  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8014C15C  3B 7C 0D A0 */	addi r27, r28, 0xda0
/* 8014C160  7C 9E D8 2E */	lwzx r4, r30, r27
/* 8014C164  38 A0 00 00 */	li r5, 0
/* 8014C168  38 C2 9A 80 */	la r6, id_7388(r2) /* 80453480-_SDA2_BASE_ */
/* 8014C16C  7C C6 EA 2E */	lhzx r6, r6, r29
/* 8014C170  38 E1 00 20 */	addi r7, r1, 0x20
/* 8014C174  39 00 00 00 */	li r8, 0
/* 8014C178  39 3E 0D 78 */	addi r9, r30, 0xd78
/* 8014C17C  39 40 00 00 */	li r10, 0
/* 8014C180  C0 22 99 DC */	lfs f1, lit_4140(r2)
/* 8014C184  4B F0 13 49 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8014C188  7C 7E D9 2E */	stwx r3, r30, r27
/* 8014C18C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8014C190  38 63 02 10 */	addi r3, r3, 0x210
/* 8014C194  7C 9E D8 2E */	lwzx r4, r30, r27
/* 8014C198  4B EF F7 81 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8014C19C  7C 7B 1B 79 */	or. r27, r3, r3
/* 8014C1A0  41 82 00 34 */	beq lbl_8014C1D4
/* 8014C1A4  4B EE 38 B1 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 8014C1A8  30 03 FF FF */	addic r0, r3, -1
/* 8014C1AC  7C 60 01 10 */	subfe r3, r0, r0
/* 8014C1B0  38 00 00 FF */	li r0, 0xff
/* 8014C1B4  7C 00 18 38 */	and r0, r0, r3
/* 8014C1B8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8014C1BC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8014C1C0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8014C1C4  D0 1B 00 A4 */	stfs f0, 0xa4(r27)
/* 8014C1C8  D0 3B 00 A8 */	stfs f1, 0xa8(r27)
/* 8014C1CC  D0 5B 00 AC */	stfs f2, 0xac(r27)
/* 8014C1D0  98 1B 00 BB */	stb r0, 0xbb(r27)
lbl_8014C1D4:
/* 8014C1D4  3B FF 00 01 */	addi r31, r31, 1
/* 8014C1D8  2C 1F 00 02 */	cmpwi r31, 2
/* 8014C1DC  3B BD 00 02 */	addi r29, r29, 2
/* 8014C1E0  3B 9C 00 04 */	addi r28, r28, 4
/* 8014C1E4  41 80 FF 50 */	blt lbl_8014C134
/* 8014C1E8  39 61 00 50 */	addi r11, r1, 0x50
/* 8014C1EC  48 21 60 31 */	bl _restgpr_26
/* 8014C1F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8014C1F4  7C 08 03 A6 */	mtlr r0
/* 8014C1F8  38 21 00 50 */	addi r1, r1, 0x50
/* 8014C1FC  4E 80 00 20 */	blr 
