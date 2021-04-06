lbl_801FE730:
/* 801FE730  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801FE734  7C 08 02 A6 */	mflr r0
/* 801FE738  90 01 00 44 */	stw r0, 0x44(r1)
/* 801FE73C  39 61 00 40 */	addi r11, r1, 0x40
/* 801FE740  48 16 3A 71 */	bl _savegpr_18
/* 801FE744  3C 80 80 39 */	lis r4, fipaScale@ha /* 0x80397E50@ha */
/* 801FE748  39 04 7E 50 */	addi r8, r4, fipaScale@l /* 0x80397E50@l */
/* 801FE74C  3C 80 80 3C */	lis r4, __vt__23dMeter_drawFishingHIO_c@ha /* 0x803BF16C@ha */
/* 801FE750  38 04 F1 6C */	addi r0, r4, __vt__23dMeter_drawFishingHIO_c@l /* 0x803BF16C@l */
/* 801FE754  90 03 00 00 */	stw r0, 0(r3)
/* 801FE758  38 00 00 0A */	li r0, 0xa
/* 801FE75C  B0 03 02 1C */	sth r0, 0x21c(r3)
/* 801FE760  B0 03 02 1E */	sth r0, 0x21e(r3)
/* 801FE764  3A 40 00 00 */	li r18, 0
/* 801FE768  9A 43 02 50 */	stb r18, 0x250(r3)
/* 801FE76C  38 C0 00 00 */	li r6, 0
/* 801FE770  38 E0 00 00 */	li r7, 0
/* 801FE774  3A 88 00 00 */	addi r20, r8, 0
/* 801FE778  3A A8 00 18 */	addi r21, r8, 0x18
/* 801FE77C  3A C8 00 30 */	addi r22, r8, 0x30
/* 801FE780  3A E8 00 48 */	addi r23, r8, 0x48
/* 801FE784  3B 08 00 60 */	addi r24, r8, 0x60
/* 801FE788  3B 28 00 78 */	addi r25, r8, 0x78
/* 801FE78C  3B 48 00 90 */	addi r26, r8, 0x90
/* 801FE790  3B 68 00 A8 */	addi r27, r8, 0xa8
/* 801FE794  3B 88 00 C0 */	addi r28, r8, 0xc0
/* 801FE798  3B A8 00 D8 */	addi r29, r8, 0xd8
/* 801FE79C  38 88 01 38 */	addi r4, r8, 0x138
/* 801FE7A0  38 A8 01 50 */	addi r5, r8, 0x150
/* 801FE7A4  3B C8 01 20 */	addi r30, r8, 0x120
/* 801FE7A8  3B E8 01 68 */	addi r31, r8, 0x168
/* 801FE7AC  39 88 01 80 */	addi r12, r8, 0x180
/* 801FE7B0  39 68 01 98 */	addi r11, r8, 0x198
/* 801FE7B4  39 48 01 B0 */	addi r10, r8, 0x1b0
/* 801FE7B8  39 28 01 C8 */	addi r9, r8, 0x1c8
/* 801FE7BC  39 08 01 E0 */	addi r8, r8, 0x1e0
/* 801FE7C0  38 00 00 06 */	li r0, 6
/* 801FE7C4  7C 09 03 A6 */	mtctr r0
lbl_801FE7C8:
/* 801FE7C8  3A 60 00 00 */	li r19, 0
/* 801FE7CC  38 12 02 20 */	addi r0, r18, 0x220
/* 801FE7D0  7E 63 03 2E */	sthx r19, r3, r0
/* 801FE7D4  38 06 02 40 */	addi r0, r6, 0x240
/* 801FE7D8  7E 63 01 AE */	stbx r19, r3, r0
/* 801FE7DC  7C 14 3C 2E */	lfsx f0, r20, r7
/* 801FE7E0  7E 63 3A 14 */	add r19, r3, r7
/* 801FE7E4  D0 13 00 08 */	stfs f0, 8(r19)
/* 801FE7E8  7C 15 3C 2E */	lfsx f0, r21, r7
/* 801FE7EC  D0 13 00 20 */	stfs f0, 0x20(r19)
/* 801FE7F0  7C 16 3C 2E */	lfsx f0, r22, r7
/* 801FE7F4  D0 13 00 38 */	stfs f0, 0x38(r19)
/* 801FE7F8  7C 17 3C 2E */	lfsx f0, r23, r7
/* 801FE7FC  D0 13 00 50 */	stfs f0, 0x50(r19)
/* 801FE800  7C 18 3C 2E */	lfsx f0, r24, r7
/* 801FE804  D0 13 00 68 */	stfs f0, 0x68(r19)
/* 801FE808  7C 19 3C 2E */	lfsx f0, r25, r7
/* 801FE80C  D0 13 00 80 */	stfs f0, 0x80(r19)
/* 801FE810  7C 1A 3C 2E */	lfsx f0, r26, r7
/* 801FE814  D0 13 00 98 */	stfs f0, 0x98(r19)
/* 801FE818  7C 1B 3C 2E */	lfsx f0, r27, r7
/* 801FE81C  D0 13 00 B0 */	stfs f0, 0xb0(r19)
/* 801FE820  7C 1C 3C 2E */	lfsx f0, r28, r7
/* 801FE824  D0 13 00 C8 */	stfs f0, 0xc8(r19)
/* 801FE828  7C 1D 3C 2E */	lfsx f0, r29, r7
/* 801FE82C  D0 13 00 E0 */	stfs f0, 0xe0(r19)
/* 801FE830  7C 44 3C 2E */	lfsx f2, r4, r7
/* 801FE834  D0 53 00 F8 */	stfs f2, 0xf8(r19)
/* 801FE838  7C 25 3C 2E */	lfsx f1, r5, r7
/* 801FE83C  D0 33 01 10 */	stfs f1, 0x110(r19)
/* 801FE840  7C 1E 3C 2E */	lfsx f0, r30, r7
/* 801FE844  D0 13 01 28 */	stfs f0, 0x128(r19)
/* 801FE848  D0 53 01 40 */	stfs f2, 0x140(r19)
/* 801FE84C  D0 33 01 58 */	stfs f1, 0x158(r19)
/* 801FE850  7C 1F 3C 2E */	lfsx f0, r31, r7
/* 801FE854  D0 13 01 70 */	stfs f0, 0x170(r19)
/* 801FE858  7C 0C 3C 2E */	lfsx f0, r12, r7
/* 801FE85C  D0 13 01 88 */	stfs f0, 0x188(r19)
/* 801FE860  7C 0B 3C 2E */	lfsx f0, r11, r7
/* 801FE864  D0 13 01 A0 */	stfs f0, 0x1a0(r19)
/* 801FE868  7C 0A 3C 2E */	lfsx f0, r10, r7
/* 801FE86C  D0 13 01 B8 */	stfs f0, 0x1b8(r19)
/* 801FE870  7C 09 3C 2E */	lfsx f0, r9, r7
/* 801FE874  D0 13 01 D0 */	stfs f0, 0x1d0(r19)
/* 801FE878  7C 08 3C 2E */	lfsx f0, r8, r7
/* 801FE87C  D0 13 01 E8 */	stfs f0, 0x1e8(r19)
/* 801FE880  38 C6 00 01 */	addi r6, r6, 1
/* 801FE884  38 E7 00 04 */	addi r7, r7, 4
/* 801FE888  3A 52 00 02 */	addi r18, r18, 2
/* 801FE88C  42 00 FF 3C */	bdnz lbl_801FE7C8
/* 801FE890  C0 22 AB 38 */	lfs f1, lit_3902(r2)
/* 801FE894  D0 23 02 00 */	stfs f1, 0x200(r3)
/* 801FE898  C0 02 AB 3C */	lfs f0, lit_3903(r2)
/* 801FE89C  D0 03 02 08 */	stfs f0, 0x208(r3)
/* 801FE8A0  C0 02 AB 40 */	lfs f0, lit_3904(r2)
/* 801FE8A4  D0 03 02 14 */	stfs f0, 0x214(r3)
/* 801FE8A8  D0 23 02 04 */	stfs f1, 0x204(r3)
/* 801FE8AC  C0 02 AB 44 */	lfs f0, lit_3905(r2)
/* 801FE8B0  D0 03 02 0C */	stfs f0, 0x20c(r3)
/* 801FE8B4  C0 02 AB 48 */	lfs f0, lit_3906(r2)
/* 801FE8B8  D0 03 02 18 */	stfs f0, 0x218(r3)
/* 801FE8BC  C0 02 AB 4C */	lfs f0, lit_3907(r2)
/* 801FE8C0  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 801FE8C4  39 61 00 40 */	addi r11, r1, 0x40
/* 801FE8C8  48 16 39 35 */	bl _restgpr_18
/* 801FE8CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801FE8D0  7C 08 03 A6 */	mtlr r0
/* 801FE8D4  38 21 00 40 */	addi r1, r1, 0x40
/* 801FE8D8  4E 80 00 20 */	blr 
