lbl_8047F6A8:
/* 8047F6A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047F6AC  7C 08 02 A6 */	mflr r0
/* 8047F6B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047F6B4  39 61 00 40 */	addi r11, r1, 0x40
/* 8047F6B8  4B EE 2B 25 */	bl _savegpr_29
/* 8047F6BC  7C 7D 1B 78 */	mr r29, r3
/* 8047F6C0  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha /* 0x80480F28@ha */
/* 8047F6C4  3B C3 0F 28 */	addi r30, r3, M_lin5__Q212daObjMovebox5Bgc_c@l /* 0x80480F28@l */
/* 8047F6C8  A8 7D 08 FA */	lha r3, 0x8fa(r29)
/* 8047F6CC  2C 03 00 00 */	cmpwi r3, 0
/* 8047F6D0  40 81 00 0C */	ble lbl_8047F6DC
/* 8047F6D4  38 03 FF FF */	addi r0, r3, -1
/* 8047F6D8  B0 1D 08 FA */	sth r0, 0x8fa(r29)
lbl_8047F6DC:
/* 8047F6DC  7F A3 EB 78 */	mr r3, r29
/* 8047F6E0  4B FF FC AD */	bl check_to_walk__Q212daObjMovebox5Act_cFv
/* 8047F6E4  7C 7F 1B 78 */	mr r31, r3
/* 8047F6E8  88 1D 09 02 */	lbz r0, 0x902(r29)
/* 8047F6EC  28 00 00 00 */	cmplwi r0, 0
/* 8047F6F0  40 82 00 20 */	bne lbl_8047F710
/* 8047F6F4  80 1D 08 A8 */	lwz r0, 0x8a8(r29)
/* 8047F6F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8047F6FC  41 82 00 14 */	beq lbl_8047F710
/* 8047F700  38 00 00 01 */	li r0, 1
/* 8047F704  98 1D 09 02 */	stb r0, 0x902(r29)
/* 8047F708  7F A3 EB 78 */	mr r3, r29
/* 8047F70C  4B FF F2 21 */	bl path_save__Q212daObjMovebox5Act_cFv
lbl_8047F710:
/* 8047F710  80 1D 08 AC */	lwz r0, 0x8ac(r29)
/* 8047F714  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047F718  38 DE 02 40 */	addi r6, r30, 0x240
/* 8047F71C  7C C6 02 14 */	add r6, r6, r0
/* 8047F720  7F A3 EB 78 */	mr r3, r29
/* 8047F724  38 80 00 00 */	li r4, 0
/* 8047F728  3C A0 80 43 */	lis r5, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8047F72C  38 A5 0C F4 */	addi r5, r5, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8047F730  C0 26 00 18 */	lfs f1, 0x18(r6)
/* 8047F734  C0 46 00 1C */	lfs f2, 0x1c(r6)
/* 8047F738  4B BB 7C 89 */	bl posMoveF_stream__5daObjFP10fopAc_ac_cPC4cXyzPC4cXyzff
/* 8047F73C  38 7D 04 A8 */	addi r3, r29, 0x4a8
/* 8047F740  4B B8 D6 25 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8047F744  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047F748  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047F74C  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 8047F750  4B B8 CC E5 */	bl mDoMtx_YrotM__FPA4_fs
/* 8047F754  80 1D 08 AC */	lwz r0, 0x8ac(r29)
/* 8047F758  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 8047F75C  38 7E 02 40 */	addi r3, r30, 0x240
/* 8047F760  38 04 00 0C */	addi r0, r4, 0xc
/* 8047F764  7C 83 04 2E */	lfsx f4, r3, r0
/* 8047F768  80 1D 08 DC */	lwz r0, 0x8dc(r29)
/* 8047F76C  C8 7E 07 50 */	lfd f3, 0x750(r30)
/* 8047F770  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047F774  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8047F778  3C 60 43 30 */	lis r3, 0x4330
/* 8047F77C  90 61 00 18 */	stw r3, 0x18(r1)
/* 8047F780  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8047F784  EC 00 18 28 */	fsubs f0, f0, f3
/* 8047F788  EC 20 01 32 */	fmuls f1, f0, f4
/* 8047F78C  C0 5E 01 C0 */	lfs f2, 0x1c0(r30)
/* 8047F790  80 1D 08 E0 */	lwz r0, 0x8e0(r29)
/* 8047F794  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047F798  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047F79C  90 61 00 20 */	stw r3, 0x20(r1)
/* 8047F7A0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8047F7A4  EC 00 18 28 */	fsubs f0, f0, f3
/* 8047F7A8  EC 60 01 32 */	fmuls f3, f0, f4
/* 8047F7AC  4B B8 D5 F1 */	bl transM__14mDoMtx_stack_cFfff
/* 8047F7B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047F7B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047F7B8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8047F7BC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8047F7C0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8047F7C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8047F7C8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8047F7CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8047F7D0  D0 3D 04 D0 */	stfs f1, 0x4d0(r29)
/* 8047F7D4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8047F7D8  2C 1F FF FF */	cmpwi r31, -1
/* 8047F7DC  41 82 00 E0 */	beq lbl_8047F8BC
/* 8047F7E0  93 FD 08 E8 */	stw r31, 0x8e8(r29)
/* 8047F7E4  7F A3 EB 78 */	mr r3, r29
/* 8047F7E8  4B FF FD E5 */	bl eff_smoke_slip_start__Q212daObjMovebox5Act_cFv
/* 8047F7EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047F7F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047F7F4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8047F7F8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8047F7FC  60 00 08 00 */	ori r0, r0, 0x800
/* 8047F800  90 03 05 70 */	stw r0, 0x570(r3)
/* 8047F804  7F A3 EB 78 */	mr r3, r29
/* 8047F808  48 00 00 CD */	bl mode_walk_init__Q212daObjMovebox5Act_cFv
/* 8047F80C  80 1D 08 EC */	lwz r0, 0x8ec(r29)
/* 8047F810  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8047F814  41 82 00 58 */	beq lbl_8047F86C
/* 8047F818  80 1D 08 AC */	lwz r0, 0x8ac(r29)
/* 8047F81C  1C 60 00 A0 */	mulli r3, r0, 0xa0
/* 8047F820  38 9E 02 40 */	addi r4, r30, 0x240
/* 8047F824  38 03 00 0A */	addi r0, r3, 0xa
/* 8047F828  7C 04 02 AE */	lhax r0, r4, r0
/* 8047F82C  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 8047F830  C0 5E 07 5C */	lfs f2, 0x75c(r30)
/* 8047F834  80 1D 08 AC */	lwz r0, 0x8ac(r29)
/* 8047F838  1C 60 00 A0 */	mulli r3, r0, 0xa0
/* 8047F83C  38 03 00 0A */	addi r0, r3, 0xa
/* 8047F840  7C 04 02 AE */	lhax r0, r4, r0
/* 8047F844  C8 3E 07 50 */	lfd f1, 0x750(r30)
/* 8047F848  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047F84C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047F850  3C 00 43 30 */	lis r0, 0x4330
/* 8047F854  90 01 00 20 */	stw r0, 0x20(r1)
/* 8047F858  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8047F85C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8047F860  EC 02 00 24 */	fdivs f0, f2, f0
/* 8047F864  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 8047F868  48 00 00 54 */	b lbl_8047F8BC
lbl_8047F86C:
/* 8047F86C  80 1D 08 AC */	lwz r0, 0x8ac(r29)
/* 8047F870  1C 60 00 A0 */	mulli r3, r0, 0xa0
/* 8047F874  38 9E 02 40 */	addi r4, r30, 0x240
/* 8047F878  38 03 00 04 */	addi r0, r3, 4
/* 8047F87C  7C 04 02 AE */	lhax r0, r4, r0
/* 8047F880  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 8047F884  C0 5E 07 5C */	lfs f2, 0x75c(r30)
/* 8047F888  80 1D 08 AC */	lwz r0, 0x8ac(r29)
/* 8047F88C  1C 60 00 A0 */	mulli r3, r0, 0xa0
/* 8047F890  38 03 00 04 */	addi r0, r3, 4
/* 8047F894  7C 04 02 AE */	lhax r0, r4, r0
/* 8047F898  C8 3E 07 50 */	lfd f1, 0x750(r30)
/* 8047F89C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047F8A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047F8A4  3C 00 43 30 */	lis r0, 0x4330
/* 8047F8A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8047F8AC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8047F8B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8047F8B4  EC 02 00 24 */	fdivs f0, f2, f0
/* 8047F8B8  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
lbl_8047F8BC:
/* 8047F8BC  39 61 00 40 */	addi r11, r1, 0x40
/* 8047F8C0  4B EE 29 69 */	bl _restgpr_29
/* 8047F8C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047F8C8  7C 08 03 A6 */	mtlr r0
/* 8047F8CC  38 21 00 40 */	addi r1, r1, 0x40
/* 8047F8D0  4E 80 00 20 */	blr 
