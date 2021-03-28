lbl_807ABE50:
/* 807ABE50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807ABE54  7C 08 02 A6 */	mflr r0
/* 807ABE58  90 01 00 44 */	stw r0, 0x44(r1)
/* 807ABE5C  39 61 00 40 */	addi r11, r1, 0x40
/* 807ABE60  4B BB 63 7C */	b _savegpr_29
/* 807ABE64  7C 7D 1B 78 */	mr r29, r3
/* 807ABE68  3C 80 80 7B */	lis r4, lit_3909@ha
/* 807ABE6C  3B C4 FD 2C */	addi r30, r4, lit_3909@l
/* 807ABE70  88 03 06 94 */	lbz r0, 0x694(r3)
/* 807ABE74  28 00 00 00 */	cmplwi r0, 0
/* 807ABE78  40 82 00 0C */	bne lbl_807ABE84
/* 807ABE7C  48 00 37 01 */	bl d_execute__8daE_SW_cFv
/* 807ABE80  48 00 02 B0 */	b lbl_807AC130
lbl_807ABE84:
/* 807ABE84  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807ABE88  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 807ABE8C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807ABE90  4B 86 E9 50 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807ABE94  D0 3D 06 C8 */	stfs f1, 0x6c8(r29)
/* 807ABE98  88 1D 06 84 */	lbz r0, 0x684(r29)
/* 807ABE9C  28 00 00 00 */	cmplwi r0, 0
/* 807ABEA0  41 82 00 1C */	beq lbl_807ABEBC
/* 807ABEA4  C0 3D 06 C8 */	lfs f1, 0x6c8(r29)
/* 807ABEA8  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 807ABEAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ABEB0  40 81 00 0C */	ble lbl_807ABEBC
/* 807ABEB4  38 60 00 01 */	li r3, 1
/* 807ABEB8  48 00 02 78 */	b lbl_807AC130
lbl_807ABEBC:
/* 807ABEBC  7F A3 EB 78 */	mr r3, r29
/* 807ABEC0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807ABEC4  4B 86 E8 4C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807ABEC8  B0 7D 06 CC */	sth r3, 0x6cc(r29)
/* 807ABECC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807ABED0  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 807ABED4  4B B9 B4 C8 */	b PSVECSquareDistance
/* 807ABED8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807ABEDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ABEE0  40 81 00 58 */	ble lbl_807ABF38
/* 807ABEE4  FC 00 08 34 */	frsqrte f0, f1
/* 807ABEE8  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807ABEEC  FC 44 00 32 */	fmul f2, f4, f0
/* 807ABEF0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807ABEF4  FC 00 00 32 */	fmul f0, f0, f0
/* 807ABEF8  FC 01 00 32 */	fmul f0, f1, f0
/* 807ABEFC  FC 03 00 28 */	fsub f0, f3, f0
/* 807ABF00  FC 02 00 32 */	fmul f0, f2, f0
/* 807ABF04  FC 44 00 32 */	fmul f2, f4, f0
/* 807ABF08  FC 00 00 32 */	fmul f0, f0, f0
/* 807ABF0C  FC 01 00 32 */	fmul f0, f1, f0
/* 807ABF10  FC 03 00 28 */	fsub f0, f3, f0
/* 807ABF14  FC 02 00 32 */	fmul f0, f2, f0
/* 807ABF18  FC 44 00 32 */	fmul f2, f4, f0
/* 807ABF1C  FC 00 00 32 */	fmul f0, f0, f0
/* 807ABF20  FC 01 00 32 */	fmul f0, f1, f0
/* 807ABF24  FC 03 00 28 */	fsub f0, f3, f0
/* 807ABF28  FC 02 00 32 */	fmul f0, f2, f0
/* 807ABF2C  FC 21 00 32 */	fmul f1, f1, f0
/* 807ABF30  FC 20 08 18 */	frsp f1, f1
/* 807ABF34  48 00 00 88 */	b lbl_807ABFBC
lbl_807ABF38:
/* 807ABF38  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807ABF3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ABF40  40 80 00 10 */	bge lbl_807ABF50
/* 807ABF44  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ABF48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807ABF4C  48 00 00 70 */	b lbl_807ABFBC
lbl_807ABF50:
/* 807ABF50  D0 21 00 08 */	stfs f1, 8(r1)
/* 807ABF54  80 81 00 08 */	lwz r4, 8(r1)
/* 807ABF58  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807ABF5C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807ABF60  7C 03 00 00 */	cmpw r3, r0
/* 807ABF64  41 82 00 14 */	beq lbl_807ABF78
/* 807ABF68  40 80 00 40 */	bge lbl_807ABFA8
/* 807ABF6C  2C 03 00 00 */	cmpwi r3, 0
/* 807ABF70  41 82 00 20 */	beq lbl_807ABF90
/* 807ABF74  48 00 00 34 */	b lbl_807ABFA8
lbl_807ABF78:
/* 807ABF78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ABF7C  41 82 00 0C */	beq lbl_807ABF88
/* 807ABF80  38 00 00 01 */	li r0, 1
/* 807ABF84  48 00 00 28 */	b lbl_807ABFAC
lbl_807ABF88:
/* 807ABF88  38 00 00 02 */	li r0, 2
/* 807ABF8C  48 00 00 20 */	b lbl_807ABFAC
lbl_807ABF90:
/* 807ABF90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ABF94  41 82 00 0C */	beq lbl_807ABFA0
/* 807ABF98  38 00 00 05 */	li r0, 5
/* 807ABF9C  48 00 00 10 */	b lbl_807ABFAC
lbl_807ABFA0:
/* 807ABFA0  38 00 00 03 */	li r0, 3
/* 807ABFA4  48 00 00 08 */	b lbl_807ABFAC
lbl_807ABFA8:
/* 807ABFA8  38 00 00 04 */	li r0, 4
lbl_807ABFAC:
/* 807ABFAC  2C 00 00 01 */	cmpwi r0, 1
/* 807ABFB0  40 82 00 0C */	bne lbl_807ABFBC
/* 807ABFB4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ABFB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807ABFBC:
/* 807ABFBC  D0 3D 06 D0 */	stfs f1, 0x6d0(r29)
/* 807ABFC0  A8 7D 06 EA */	lha r3, 0x6ea(r29)
/* 807ABFC4  2C 03 00 00 */	cmpwi r3, 0
/* 807ABFC8  41 82 00 0C */	beq lbl_807ABFD4
/* 807ABFCC  38 03 FF FF */	addi r0, r3, -1
/* 807ABFD0  B0 1D 06 EA */	sth r0, 0x6ea(r29)
lbl_807ABFD4:
/* 807ABFD4  A8 7D 06 EC */	lha r3, 0x6ec(r29)
/* 807ABFD8  2C 03 00 00 */	cmpwi r3, 0
/* 807ABFDC  41 82 00 0C */	beq lbl_807ABFE8
/* 807ABFE0  38 03 FF FF */	addi r0, r3, -1
/* 807ABFE4  B0 1D 06 EC */	sth r0, 0x6ec(r29)
lbl_807ABFE8:
/* 807ABFE8  A8 7D 06 EE */	lha r3, 0x6ee(r29)
/* 807ABFEC  2C 03 00 00 */	cmpwi r3, 0
/* 807ABFF0  41 82 00 0C */	beq lbl_807ABFFC
/* 807ABFF4  38 03 FF FF */	addi r0, r3, -1
/* 807ABFF8  B0 1D 06 EE */	sth r0, 0x6ee(r29)
lbl_807ABFFC:
/* 807ABFFC  A8 7D 06 F0 */	lha r3, 0x6f0(r29)
/* 807AC000  2C 03 00 00 */	cmpwi r3, 0
/* 807AC004  41 82 00 0C */	beq lbl_807AC010
/* 807AC008  38 03 FF FF */	addi r0, r3, -1
/* 807AC00C  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
lbl_807AC010:
/* 807AC010  A8 7D 06 F2 */	lha r3, 0x6f2(r29)
/* 807AC014  2C 03 00 00 */	cmpwi r3, 0
/* 807AC018  41 82 00 0C */	beq lbl_807AC024
/* 807AC01C  38 03 FF FF */	addi r0, r3, -1
/* 807AC020  B0 1D 06 F2 */	sth r0, 0x6f2(r29)
lbl_807AC024:
/* 807AC024  A8 7D 06 F6 */	lha r3, 0x6f6(r29)
/* 807AC028  2C 03 00 00 */	cmpwi r3, 0
/* 807AC02C  41 82 00 0C */	beq lbl_807AC038
/* 807AC030  38 03 FF FF */	addi r0, r3, -1
/* 807AC034  B0 1D 06 F6 */	sth r0, 0x6f6(r29)
lbl_807AC038:
/* 807AC038  7F A3 EB 78 */	mr r3, r29
/* 807AC03C  4B FF FC ED */	bl checkGroundSand__8daE_SW_cFv
/* 807AC040  7F A3 EB 78 */	mr r3, r29
/* 807AC044  4B FF F6 81 */	bl action__8daE_SW_cFv
/* 807AC048  7F A3 EB 78 */	mr r3, r29
/* 807AC04C  4B FF F8 39 */	bl mtx_set__8daE_SW_cFv
/* 807AC050  7F A3 EB 78 */	mr r3, r29
/* 807AC054  4B FF F8 DD */	bl cc_set__8daE_SW_cFv
/* 807AC058  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 807AC05C  28 00 00 00 */	cmplwi r0, 0
/* 807AC060  41 82 00 CC */	beq lbl_807AC12C
/* 807AC064  88 1D 06 E5 */	lbz r0, 0x6e5(r29)
/* 807AC068  28 00 00 00 */	cmplwi r0, 0
/* 807AC06C  41 82 00 4C */	beq lbl_807AC0B8
/* 807AC070  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807AC074  7F A4 EB 78 */	mr r4, r29
/* 807AC078  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807AC07C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807AC080  7D 89 03 A6 */	mtctr r12
/* 807AC084  4E 80 04 21 */	bctrl 
/* 807AC088  2C 03 00 00 */	cmpwi r3, 0
/* 807AC08C  41 82 00 1C */	beq lbl_807AC0A8
/* 807AC090  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807AC094  7F A4 EB 78 */	mr r4, r29
/* 807AC098  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807AC09C  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 807AC0A0  7D 89 03 A6 */	mtctr r12
/* 807AC0A4  4E 80 04 21 */	bctrl 
lbl_807AC0A8:
/* 807AC0A8  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 807AC0AC  60 00 02 00 */	ori r0, r0, 0x200
/* 807AC0B0  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 807AC0B4  48 00 00 10 */	b lbl_807AC0C4
lbl_807AC0B8:
/* 807AC0B8  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 807AC0BC  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 807AC0C0  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_807AC0C4:
/* 807AC0C4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807AC0C8  80 63 00 04 */	lwz r3, 4(r3)
/* 807AC0CC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807AC0D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807AC0D4  38 63 00 30 */	addi r3, r3, 0x30
/* 807AC0D8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807AC0DC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807AC0E0  4B B9 A3 D0 */	b PSMTXCopy
/* 807AC0E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807AC0E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807AC0EC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807AC0F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807AC0F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807AC0F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807AC0FC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807AC100  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807AC104  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807AC108  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807AC10C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807AC110  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 807AC114  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807AC118  7F A3 EB 78 */	mr r3, r29
/* 807AC11C  38 9D 05 B8 */	addi r4, r29, 0x5b8
/* 807AC120  38 A1 00 18 */	addi r5, r1, 0x18
/* 807AC124  38 C1 00 0C */	addi r6, r1, 0xc
/* 807AC128  48 00 37 DD */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
lbl_807AC12C:
/* 807AC12C  38 60 00 01 */	li r3, 1
lbl_807AC130:
/* 807AC130  39 61 00 40 */	addi r11, r1, 0x40
/* 807AC134  4B BB 60 F4 */	b _restgpr_29
/* 807AC138  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807AC13C  7C 08 03 A6 */	mtlr r0
/* 807AC140  38 21 00 40 */	addi r1, r1, 0x40
/* 807AC144  4E 80 00 20 */	blr 
