lbl_80691F10:
/* 80691F10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80691F14  7C 08 02 A6 */	mflr r0
/* 80691F18  90 01 00 44 */	stw r0, 0x44(r1)
/* 80691F1C  39 61 00 40 */	addi r11, r1, 0x40
/* 80691F20  4B CD 02 B9 */	bl _savegpr_28
/* 80691F24  7C 7E 1B 78 */	mr r30, r3
/* 80691F28  3C 60 80 69 */	lis r3, lit_3788@ha /* 0x80694690@ha */
/* 80691F2C  3B E3 46 90 */	addi r31, r3, lit_3788@l /* 0x80694690@l */
/* 80691F30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80691F34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80691F38  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80691F3C  AB 9D 04 E6 */	lha r28, 0x4e6(r29)
/* 80691F40  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 80691F44  2C 00 00 01 */	cmpwi r0, 1
/* 80691F48  41 82 00 54 */	beq lbl_80691F9C
/* 80691F4C  40 80 01 E8 */	bge lbl_80692134
/* 80691F50  2C 00 00 00 */	cmpwi r0, 0
/* 80691F54  40 80 00 08 */	bge lbl_80691F5C
/* 80691F58  48 00 01 DC */	b lbl_80692134
lbl_80691F5C:
/* 80691F5C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80691F60  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80691F64  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80691F68  38 00 00 01 */	li r0, 1
/* 80691F6C  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 80691F70  38 00 00 00 */	li r0, 0
/* 80691F74  B0 1E 06 AC */	sth r0, 0x6ac(r30)
/* 80691F78  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80691F7C  4B BD 59 D9 */	bl cM_rndF__Ff
/* 80691F80  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80691F84  EC 00 08 2A */	fadds f0, f0, f1
/* 80691F88  FC 00 00 1E */	fctiwz f0, f0
/* 80691F8C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80691F90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80691F94  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 80691F98  48 00 01 9C */	b lbl_80692134
lbl_80691F9C:
/* 80691F9C  A8 1E 06 AC */	lha r0, 0x6ac(r30)
/* 80691FA0  2C 00 00 00 */	cmpwi r0, 0
/* 80691FA4  40 82 01 54 */	bne lbl_806920F8
/* 80691FA8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80691FAC  4B BD 59 E1 */	bl cM_rndFX__Ff
/* 80691FB0  FC 00 08 1E */	fctiwz f0, f1
/* 80691FB4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80691FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80691FBC  7C 1C 02 14 */	add r0, r28, r0
/* 80691FC0  7C 04 07 34 */	extsh r4, r0
/* 80691FC4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80691FC8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80691FCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80691FD0  4B 97 A4 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 80691FD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80691FD8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80691FDC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80691FE0  4B BD 59 75 */	bl cM_rndF__Ff
/* 80691FE4  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80691FE8  EC 02 08 2A */	fadds f0, f2, f1
/* 80691FEC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80691FF0  FC 20 10 90 */	fmr f1, f2
/* 80691FF4  4B BD 59 61 */	bl cM_rndF__Ff
/* 80691FF8  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80691FFC  EC 00 08 2A */	fadds f0, f0, f1
/* 80692000  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80692004  38 61 00 14 */	addi r3, r1, 0x14
/* 80692008  38 9E 06 78 */	addi r4, r30, 0x678
/* 8069200C  4B BD EE E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80692010  38 7E 06 78 */	addi r3, r30, 0x678
/* 80692014  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80692018  7C 65 1B 78 */	mr r5, r3
/* 8069201C  4B CB 50 75 */	bl PSVECAdd
/* 80692020  38 61 00 08 */	addi r3, r1, 8
/* 80692024  38 9E 06 78 */	addi r4, r30, 0x678
/* 80692028  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8069202C  4B BD 4B 09 */	bl __mi__4cXyzCFRC3Vec
/* 80692030  C0 21 00 08 */	lfs f1, 8(r1)
/* 80692034  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80692038  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8069203C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80692040  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80692044  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80692048  4B BD 56 2D */	bl cM_atan2s__Fff
/* 8069204C  7C 64 1B 78 */	mr r4, r3
/* 80692050  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80692054  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80692058  80 63 00 00 */	lwz r3, 0(r3)
/* 8069205C  4B 97 A3 81 */	bl mDoMtx_YrotS__FPA4_fs
/* 80692060  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80692064  EC 20 00 32 */	fmuls f1, f0, f0
/* 80692068  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8069206C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80692070  EC 41 00 2A */	fadds f2, f1, f0
/* 80692074  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80692078  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8069207C  40 81 00 0C */	ble lbl_80692088
/* 80692080  FC 00 10 34 */	frsqrte f0, f2
/* 80692084  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80692088:
/* 80692088  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8069208C  4B BD 55 E9 */	bl cM_atan2s__Fff
/* 80692090  7C 03 00 D0 */	neg r0, r3
/* 80692094  7C 04 07 34 */	extsh r4, r0
/* 80692098  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069209C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806920A0  80 63 00 00 */	lwz r3, 0(r3)
/* 806920A4  4B 97 A2 F9 */	bl mDoMtx_XrotM__FPA4_fs
/* 806920A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806920AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806920B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806920B4  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x80694968@ha */
/* 806920B8  38 63 49 68 */	addi r3, r3, l_HIO@l /* 0x80694968@l */
/* 806920BC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806920C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806920C4  38 61 00 14 */	addi r3, r1, 0x14
/* 806920C8  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806920CC  4B BD EE 21 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806920D0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806920D4  4B BD 58 81 */	bl cM_rndF__Ff
/* 806920D8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806920DC  EC 00 08 2A */	fadds f0, f0, f1
/* 806920E0  FC 00 00 1E */	fctiwz f0, f0
/* 806920E4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806920E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806920EC  B0 1E 06 AC */	sth r0, 0x6ac(r30)
/* 806920F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806920F4  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_806920F8:
/* 806920F8  A8 1E 06 AE */	lha r0, 0x6ae(r30)
/* 806920FC  2C 00 00 00 */	cmpwi r0, 0
/* 80692100  40 82 00 34 */	bne lbl_80692134
/* 80692104  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80692108  4B BD 58 4D */	bl cM_rndF__Ff
/* 8069210C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80692110  EC 00 08 2A */	fadds f0, f0, f1
/* 80692114  FC 00 00 1E */	fctiwz f0, f0
/* 80692118  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8069211C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80692120  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 80692124  38 00 00 03 */	li r0, 3
/* 80692128  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8069212C  38 00 00 00 */	li r0, 0
/* 80692130  B0 1E 06 74 */	sth r0, 0x674(r30)
lbl_80692134:
/* 80692134  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80692138  FC 00 02 10 */	fabs f0, f0
/* 8069213C  FC 60 00 18 */	frsp f3, f0
/* 80692140  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80692144  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80692148  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8069214C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 80692150  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80692154  4B BD D8 E9 */	bl cLib_addCalc2__FPffff
/* 80692158  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8069215C  FC 00 02 10 */	fabs f0, f0
/* 80692160  FC 60 00 18 */	frsp f3, f0
/* 80692164  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80692168  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 8069216C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80692170  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 80692174  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80692178  4B BD D8 C5 */	bl cLib_addCalc2__FPffff
/* 8069217C  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80692180  FC 00 02 10 */	fabs f0, f0
/* 80692184  FC 60 00 18 */	frsp f3, f0
/* 80692188  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8069218C  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 80692190  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80692194  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 80692198  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8069219C  4B BD D8 A1 */	bl cLib_addCalc2__FPffff
/* 806921A0  38 7E 06 90 */	addi r3, r30, 0x690
/* 806921A4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806921A8  FC 40 08 90 */	fmr f2, f1
/* 806921AC  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 806921B0  4B BD D8 8D */	bl cLib_addCalc2__FPffff
/* 806921B4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806921B8  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 806921BC  38 A0 00 04 */	li r5, 4
/* 806921C0  38 C0 08 00 */	li r6, 0x800
/* 806921C4  4B BD E4 45 */	bl cLib_addCalcAngleS2__FPssss
/* 806921C8  7F C3 F3 78 */	mr r3, r30
/* 806921CC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806921D0  38 80 00 01 */	li r4, 1
/* 806921D4  4B FF F4 09 */	bl pl_check__FP10e_bu_classfs
/* 806921D8  2C 03 00 00 */	cmpwi r3, 0
/* 806921DC  40 82 00 38 */	bne lbl_80692214
/* 806921E0  7F C3 F3 78 */	mr r3, r30
/* 806921E4  4B FF F6 49 */	bl path_check__FP10e_bu_class
/* 806921E8  2C 03 00 00 */	cmpwi r3, 0
/* 806921EC  40 82 00 18 */	bne lbl_80692204
/* 806921F0  38 00 00 05 */	li r0, 5
/* 806921F4  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 806921F8  38 00 00 01 */	li r0, 1
/* 806921FC  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 80692200  48 00 00 14 */	b lbl_80692214
lbl_80692204:
/* 80692204  38 00 00 06 */	li r0, 6
/* 80692208  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8069220C  38 00 00 01 */	li r0, 1
/* 80692210  B0 1E 06 74 */	sth r0, 0x674(r30)
lbl_80692214:
/* 80692214  39 61 00 40 */	addi r11, r1, 0x40
/* 80692218  4B CD 00 0D */	bl _restgpr_28
/* 8069221C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80692220  7C 08 03 A6 */	mtlr r0
/* 80692224  38 21 00 40 */	addi r1, r1, 0x40
/* 80692228  4E 80 00 20 */	blr 
