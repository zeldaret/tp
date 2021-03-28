lbl_8005AB64:
/* 8005AB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005AB68  7C 08 02 A6 */	mflr r0
/* 8005AB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005AB70  3C C0 80 43 */	lis r6, g_env_light@ha
/* 8005AB74  38 E6 CA 54 */	addi r7, r6, g_env_light@l
/* 8005AB78  38 C0 00 00 */	li r6, 0
/* 8005AB7C  38 00 00 05 */	li r0, 5
/* 8005AB80  7C 09 03 A6 */	mtctr r0
lbl_8005AB84:
/* 8005AB84  7D 07 32 14 */	add r8, r7, r6
/* 8005AB88  88 08 08 48 */	lbz r0, 0x848(r8)
/* 8005AB8C  28 00 00 00 */	cmplwi r0, 0
/* 8005AB90  40 82 00 88 */	bne lbl_8005AC18
/* 8005AB94  38 00 00 01 */	li r0, 1
/* 8005AB98  98 08 08 48 */	stb r0, 0x848(r8)
/* 8005AB9C  D0 48 08 4C */	stfs f2, 0x84c(r8)
/* 8005ABA0  D0 88 08 50 */	stfs f4, 0x850(r8)
/* 8005ABA4  D0 A8 08 54 */	stfs f5, 0x854(r8)
/* 8005ABA8  38 E8 08 58 */	addi r7, r8, 0x858
/* 8005ABAC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8005ABB0  D0 08 08 58 */	stfs f0, 0x858(r8)
/* 8005ABB4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8005ABB8  D0 08 08 5C */	stfs f0, 0x85c(r8)
/* 8005ABBC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8005ABC0  D0 08 08 60 */	stfs f0, 0x860(r8)
/* 8005ABC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8005ABC8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8005ABCC  38 C3 00 04 */	addi r6, r3, 4
/* 8005ABD0  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 8005ABD4  7C 46 04 2E */	lfsx f2, r6, r0
/* 8005ABD8  54 A4 04 38 */	rlwinm r4, r5, 0, 0x10, 0x1c
/* 8005ABDC  7C 03 24 2E */	lfsx f0, r3, r4
/* 8005ABE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8005ABE4  D0 08 08 64 */	stfs f0, 0x864(r8)
/* 8005ABE8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8005ABEC  D0 08 08 68 */	stfs f0, 0x868(r8)
/* 8005ABF0  7C 06 24 2E */	lfsx f0, r6, r4
/* 8005ABF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8005ABF8  D0 08 08 6C */	stfs f0, 0x86c(r8)
/* 8005ABFC  D0 28 08 70 */	stfs f1, 0x870(r8)
/* 8005AC00  C0 08 08 70 */	lfs f0, 0x870(r8)
/* 8005AC04  D0 08 08 78 */	stfs f0, 0x878(r8)
/* 8005AC08  D0 68 08 74 */	stfs f3, 0x874(r8)
/* 8005AC0C  7C E3 3B 78 */	mr r3, r7
/* 8005AC10  48 00 02 19 */	bl dKyw_pntlight_set__FP14WIND_INFLUENCE
/* 8005AC14  48 00 00 0C */	b lbl_8005AC20
lbl_8005AC18:
/* 8005AC18  38 C6 00 3C */	addi r6, r6, 0x3c
/* 8005AC1C  42 00 FF 68 */	bdnz lbl_8005AB84
lbl_8005AC20:
/* 8005AC20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005AC24  7C 08 03 A6 */	mtlr r0
/* 8005AC28  38 21 00 10 */	addi r1, r1, 0x10
/* 8005AC2C  4E 80 00 20 */	blr 
