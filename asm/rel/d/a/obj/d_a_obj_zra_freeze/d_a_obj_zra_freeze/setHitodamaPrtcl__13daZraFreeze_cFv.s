lbl_80D444C0:
/* 80D444C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D444C4  7C 08 02 A6 */	mflr r0
/* 80D444C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D444CC  39 61 00 50 */	addi r11, r1, 0x50
/* 80D444D0  4B 61 DC F8 */	b _savegpr_24
/* 80D444D4  7C 7D 1B 78 */	mr r29, r3
/* 80D444D8  3C 60 80 D4 */	lis r3, l_DATA@ha
/* 80D444DC  3B E3 4B 48 */	addi r31, r3, l_DATA@l
/* 80D444E0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D444E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D444E8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D444EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D444F0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D444F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D444F8  A8 1D 05 DE */	lha r0, 0x5de(r29)
/* 80D444FC  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 80D44500  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 80D44504  A8 1D 05 DE */	lha r0, 0x5de(r29)
/* 80D44508  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80D4450C  7C 00 1E 70 */	srawi r0, r0, 3
/* 80D44510  54 00 18 38 */	slwi r0, r0, 3
/* 80D44514  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D44518  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80D4451C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80D44520  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80D44524  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D44528  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 80D4452C  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 80D44530  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D44534  7C 23 04 2E */	lfsx f1, r3, r0
/* 80D44538  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D4453C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D44540  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 80D44544  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80D44548  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D4454C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80D44550  C0 3D 05 D0 */	lfs f1, 0x5d0(r29)
/* 80D44554  FC 00 00 50 */	fneg f0, f0
/* 80D44558  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D4455C  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 80D44560  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80D44564  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D44568  7C 63 02 14 */	add r3, r3, r0
/* 80D4456C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80D44570  C0 1D 05 D0 */	lfs f0, 0x5d0(r29)
/* 80D44574  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D44578  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 80D4457C  A8 7D 05 DE */	lha r3, 0x5de(r29)
/* 80D44580  38 03 04 00 */	addi r0, r3, 0x400
/* 80D44584  B0 1D 05 DE */	sth r0, 0x5de(r29)
/* 80D44588  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80D4458C  C0 1D 05 D0 */	lfs f0, 0x5d0(r29)
/* 80D44590  EC 01 00 2A */	fadds f0, f1, f0
/* 80D44594  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D44598  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80D4459C  C0 1D 05 D4 */	lfs f0, 0x5d4(r29)
/* 80D445A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D445A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D445A8  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80D445AC  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 80D445B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D445B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D445B8  3B C0 00 00 */	li r30, 0
/* 80D445BC  3B 80 00 00 */	li r28, 0
/* 80D445C0  3B 60 00 00 */	li r27, 0
/* 80D445C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D445C8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80D445CC  3B 3F 00 18 */	addi r25, r31, 0x18
lbl_80D445D0:
/* 80D445D0  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80D445D4  38 00 00 FF */	li r0, 0xff
/* 80D445D8  90 01 00 08 */	stw r0, 8(r1)
/* 80D445DC  38 80 00 00 */	li r4, 0
/* 80D445E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D445E4  38 00 FF FF */	li r0, -1
/* 80D445E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D445EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D445F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D445F4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D445F8  3B 5B 05 A8 */	addi r26, r27, 0x5a8
/* 80D445FC  7C 9D D0 2E */	lwzx r4, r29, r26
/* 80D44600  38 A0 00 00 */	li r5, 0
/* 80D44604  7C D9 E2 2E */	lhzx r6, r25, r28
/* 80D44608  38 E1 00 20 */	addi r7, r1, 0x20
/* 80D4460C  39 00 00 00 */	li r8, 0
/* 80D44610  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 80D44614  39 40 00 00 */	li r10, 0
/* 80D44618  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80D4461C  4B 30 8E B0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D44620  7C 7D D1 2E */	stwx r3, r29, r26
/* 80D44624  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80D44628  38 63 02 10 */	addi r3, r3, 0x210
/* 80D4462C  7C 9D D0 2E */	lwzx r4, r29, r26
/* 80D44630  4B 30 72 E8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80D44634  7C 7A 1B 79 */	or. r26, r3, r3
/* 80D44638  41 82 00 34 */	beq lbl_80D4466C
/* 80D4463C  4B 2E B4 18 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80D44640  30 03 FF FF */	addic r0, r3, -1
/* 80D44644  7C 60 01 10 */	subfe r3, r0, r0
/* 80D44648  38 00 00 FF */	li r0, 0xff
/* 80D4464C  7C 00 18 38 */	and r0, r0, r3
/* 80D44650  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80D44654  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80D44658  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D4465C  D0 1A 00 A4 */	stfs f0, 0xa4(r26)
/* 80D44660  D0 3A 00 A8 */	stfs f1, 0xa8(r26)
/* 80D44664  D0 5A 00 AC */	stfs f2, 0xac(r26)
/* 80D44668  98 1A 00 BB */	stb r0, 0xbb(r26)
lbl_80D4466C:
/* 80D4466C  3B DE 00 01 */	addi r30, r30, 1
/* 80D44670  2C 1E 00 02 */	cmpwi r30, 2
/* 80D44674  3B 9C 00 02 */	addi r28, r28, 2
/* 80D44678  3B 7B 00 04 */	addi r27, r27, 4
/* 80D4467C  41 80 FF 54 */	blt lbl_80D445D0
/* 80D44680  39 61 00 50 */	addi r11, r1, 0x50
/* 80D44684  4B 61 DB 90 */	b _restgpr_24
/* 80D44688  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D4468C  7C 08 03 A6 */	mtlr r0
/* 80D44690  38 21 00 50 */	addi r1, r1, 0x50
/* 80D44694  4E 80 00 20 */	blr 
