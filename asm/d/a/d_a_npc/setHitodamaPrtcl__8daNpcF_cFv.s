lbl_80154BD8:
/* 80154BD8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80154BDC  7C 08 02 A6 */	mflr r0
/* 80154BE0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80154BE4  39 61 00 50 */	addi r11, r1, 0x50
/* 80154BE8  48 20 D5 E9 */	bl _savegpr_26
/* 80154BEC  7C 7E 1B 78 */	mr r30, r3
/* 80154BF0  A8 03 09 D2 */	lha r0, 0x9d2(r3)
/* 80154BF4  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 80154BF8  B0 03 09 D0 */	sth r0, 0x9d0(r3)
/* 80154BFC  A8 03 09 D2 */	lha r0, 0x9d2(r3)
/* 80154C00  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80154C04  7C 00 1E 70 */	srawi r0, r0, 3
/* 80154C08  54 00 18 38 */	slwi r0, r0, 3
/* 80154C0C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80154C10  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80154C14  7C 23 04 2E */	lfsx f1, r3, r0
/* 80154C18  C0 02 9A 6C */	lfs f0, lit_7090(r2)
/* 80154C1C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80154C20  D0 1E 09 B8 */	stfs f0, 0x9b8(r30)
/* 80154C24  A8 1E 09 D0 */	lha r0, 0x9d0(r30)
/* 80154C28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80154C2C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80154C30  C0 02 9A 84 */	lfs f0, lit_7442(r2)
/* 80154C34  EC 00 00 72 */	fmuls f0, f0, f1
/* 80154C38  D0 1E 09 BC */	stfs f0, 0x9bc(r30)
/* 80154C3C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80154C40  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80154C44  7C 03 04 2E */	lfsx f0, r3, r0
/* 80154C48  C0 3E 09 B8 */	lfs f1, 0x9b8(r30)
/* 80154C4C  FC 00 00 50 */	fneg f0, f0
/* 80154C50  EC 01 00 32 */	fmuls f0, f1, f0
/* 80154C54  D0 1E 09 C0 */	stfs f0, 0x9c0(r30)
/* 80154C58  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80154C5C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80154C60  7C 63 02 14 */	add r3, r3, r0
/* 80154C64  C0 23 00 04 */	lfs f1, 4(r3)
/* 80154C68  C0 1E 09 B8 */	lfs f0, 0x9b8(r30)
/* 80154C6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80154C70  D0 1E 09 B8 */	stfs f0, 0x9b8(r30)
/* 80154C74  A8 7E 09 D2 */	lha r3, 0x9d2(r30)
/* 80154C78  38 03 04 00 */	addi r0, r3, 0x400
/* 80154C7C  B0 1E 09 D2 */	sth r0, 0x9d2(r30)
/* 80154C80  C0 5E 09 C4 */	lfs f2, 0x9c4(r30)
/* 80154C84  C0 3E 05 38 */	lfs f1, 0x538(r30)
/* 80154C88  C0 1E 09 B8 */	lfs f0, 0x9b8(r30)
/* 80154C8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80154C90  EC 02 00 2A */	fadds f0, f2, f0
/* 80154C94  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80154C98  C0 5E 09 C8 */	lfs f2, 0x9c8(r30)
/* 80154C9C  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80154CA0  C0 1E 09 BC */	lfs f0, 0x9bc(r30)
/* 80154CA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80154CA8  EC 02 00 2A */	fadds f0, f2, f0
/* 80154CAC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80154CB0  C0 5E 09 CC */	lfs f2, 0x9cc(r30)
/* 80154CB4  C0 3E 05 40 */	lfs f1, 0x540(r30)
/* 80154CB8  C0 1E 09 C0 */	lfs f0, 0x9c0(r30)
/* 80154CBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80154CC0  EC 02 00 2A */	fadds f0, f2, f0
/* 80154CC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80154CC8  3B E0 00 00 */	li r31, 0
/* 80154CCC  3B A0 00 00 */	li r29, 0
/* 80154CD0  3B 80 00 00 */	li r28, 0
/* 80154CD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80154CD8  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80154CDC:
/* 80154CDC  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80154CE0  38 00 00 FF */	li r0, 0xff
/* 80154CE4  90 01 00 08 */	stw r0, 8(r1)
/* 80154CE8  38 80 00 00 */	li r4, 0
/* 80154CEC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80154CF0  38 00 FF FF */	li r0, -1
/* 80154CF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80154CF8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80154CFC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80154D00  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80154D04  3B 7C 09 A8 */	addi r27, r28, 0x9a8
/* 80154D08  7C 9E D8 2E */	lwzx r4, r30, r27
/* 80154D0C  38 A0 00 00 */	li r5, 0
/* 80154D10  38 C2 9A B4 */	la r6, id_11798(r2) /* 804534B4-_SDA2_BASE_ */
/* 80154D14  7C C6 EA 2E */	lhzx r6, r6, r29
/* 80154D18  38 E1 00 20 */	addi r7, r1, 0x20
/* 80154D1C  39 00 00 00 */	li r8, 0
/* 80154D20  39 3E 08 F0 */	addi r9, r30, 0x8f0
/* 80154D24  39 40 00 00 */	li r10, 0
/* 80154D28  C0 22 99 DC */	lfs f1, lit_4140(r2)
/* 80154D2C  4B EF 87 A1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80154D30  7C 7E D9 2E */	stwx r3, r30, r27
/* 80154D34  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80154D38  38 63 02 10 */	addi r3, r3, 0x210
/* 80154D3C  7C 9E D8 2E */	lwzx r4, r30, r27
/* 80154D40  4B EF 6B D9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80154D44  7C 7B 1B 79 */	or. r27, r3, r3
/* 80154D48  41 82 00 34 */	beq lbl_80154D7C
/* 80154D4C  4B ED AD 09 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80154D50  30 03 FF FF */	addic r0, r3, -1
/* 80154D54  7C 60 01 10 */	subfe r3, r0, r0
/* 80154D58  38 00 00 FF */	li r0, 0xff
/* 80154D5C  7C 00 18 38 */	and r0, r0, r3
/* 80154D60  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80154D64  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80154D68  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80154D6C  D0 1B 00 A4 */	stfs f0, 0xa4(r27)
/* 80154D70  D0 3B 00 A8 */	stfs f1, 0xa8(r27)
/* 80154D74  D0 5B 00 AC */	stfs f2, 0xac(r27)
/* 80154D78  98 1B 00 BB */	stb r0, 0xbb(r27)
lbl_80154D7C:
/* 80154D7C  3B FF 00 01 */	addi r31, r31, 1
/* 80154D80  2C 1F 00 02 */	cmpwi r31, 2
/* 80154D84  3B BD 00 02 */	addi r29, r29, 2
/* 80154D88  3B 9C 00 04 */	addi r28, r28, 4
/* 80154D8C  41 80 FF 50 */	blt lbl_80154CDC
/* 80154D90  39 61 00 50 */	addi r11, r1, 0x50
/* 80154D94  48 20 D4 89 */	bl _restgpr_26
/* 80154D98  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80154D9C  7C 08 03 A6 */	mtlr r0
/* 80154DA0  38 21 00 50 */	addi r1, r1, 0x50
/* 80154DA4  4E 80 00 20 */	blr 
