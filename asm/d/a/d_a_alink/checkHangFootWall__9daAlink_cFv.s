lbl_800FA5C8:
/* 800FA5C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800FA5CC  7C 08 02 A6 */	mflr r0
/* 800FA5D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800FA5D4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800FA5D8  7C 7F 1B 78 */	mr r31, r3
/* 800FA5DC  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800FA5E0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FA5E4  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FA5E8  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FA5EC  7C C4 04 2E */	lfsx f6, r4, r0
/* 800FA5F0  7C 84 02 14 */	add r4, r4, r0
/* 800FA5F4  C0 E4 00 04 */	lfs f7, 4(r4)
/* 800FA5F8  C0 63 04 D8 */	lfs f3, 0x4d8(r3)
/* 800FA5FC  C0 42 92 E0 */	lfs f2, lit_6845(r2)
/* 800FA600  EC 02 01 F2 */	fmuls f0, f2, f7
/* 800FA604  EC A3 00 28 */	fsubs f5, f3, f0
/* 800FA608  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 800FA60C  C0 02 95 50 */	lfs f0, lit_23595(r2)
/* 800FA610  EC 81 00 28 */	fsubs f4, f1, f0
/* 800FA614  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 800FA618  EC 02 01 B2 */	fmuls f0, f2, f6
/* 800FA61C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FA620  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FA624  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 800FA628  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 800FA62C  EC 43 38 2A */	fadds f2, f3, f7
/* 800FA630  EC 01 30 2A */	fadds f0, f1, f6
/* 800FA634  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FA638  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 800FA63C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800FA640  38 81 00 14 */	addi r4, r1, 0x14
/* 800FA644  38 A1 00 08 */	addi r5, r1, 8
/* 800FA648  4B FA 7B 51 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FA64C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FA650  41 82 00 70 */	beq lbl_800FA6C0
/* 800FA654  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FA658  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FA65C  90 01 00 30 */	stw r0, 0x30(r1)
/* 800FA660  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FA664  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FA668  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800FA66C  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FA670  38 A1 00 20 */	addi r5, r1, 0x20
/* 800FA674  4B F7 A0 D1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800FA678  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FA67C  FC 00 02 10 */	fabs f0, f0
/* 800FA680  FC 20 00 18 */	frsp f1, f0
/* 800FA684  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800FA688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FA68C  4C 40 13 82 */	cror 2, 0, 2
/* 800FA690  40 82 00 24 */	bne lbl_800FA6B4
/* 800FA694  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800FA698  60 00 20 00 */	ori r0, r0, 0x2000
/* 800FA69C  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800FA6A0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FA6A4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FA6A8  90 01 00 30 */	stw r0, 0x30(r1)
/* 800FA6AC  38 60 00 01 */	li r3, 1
/* 800FA6B0  48 00 00 20 */	b lbl_800FA6D0
lbl_800FA6B4:
/* 800FA6B4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800FA6B8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800FA6BC  90 01 00 30 */	stw r0, 0x30(r1)
lbl_800FA6C0:
/* 800FA6C0  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800FA6C4  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800FA6C8  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800FA6CC  38 60 00 00 */	li r3, 0
lbl_800FA6D0:
/* 800FA6D0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800FA6D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800FA6D8  7C 08 03 A6 */	mtlr r0
/* 800FA6DC  38 21 00 40 */	addi r1, r1, 0x40
/* 800FA6E0  4E 80 00 20 */	blr 
