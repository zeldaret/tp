lbl_80CD6DD8:
/* 80CD6DD8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CD6DDC  7C 08 02 A6 */	mflr r0
/* 80CD6DE0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CD6DE4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80CD6DE8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80CD6DEC  7C 7E 1B 78 */	mr r30, r3
/* 80CD6DF0  3C 60 80 CE */	lis r3, l_cyl_src@ha /* 0x80CD8274@ha */
/* 80CD6DF4  3B E3 82 74 */	addi r31, r3, l_cyl_src@l /* 0x80CD8274@l */
/* 80CD6DF8  38 7E 09 52 */	addi r3, r30, 0x952
/* 80CD6DFC  A8 9E 09 54 */	lha r4, 0x954(r30)
/* 80CD6E00  38 A0 00 03 */	li r5, 3
/* 80CD6E04  38 C0 01 F4 */	li r6, 0x1f4
/* 80CD6E08  38 E0 00 64 */	li r7, 0x64
/* 80CD6E0C  4B 59 97 35 */	bl cLib_addCalcAngleS__FPsssss
/* 80CD6E10  A8 9E 09 50 */	lha r4, 0x950(r30)
/* 80CD6E14  2C 04 DC D8 */	cmpwi r4, -9000
/* 80CD6E18  40 81 00 84 */	ble lbl_80CD6E9C
/* 80CD6E1C  A8 7E 09 54 */	lha r3, 0x954(r30)
/* 80CD6E20  7C 60 07 35 */	extsh. r0, r3
/* 80CD6E24  40 81 00 78 */	ble lbl_80CD6E9C
/* 80CD6E28  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80CD6E2C  C8 3F 00 80 */	lfd f1, 0x80(r31)
/* 80CD6E30  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80CD6E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD6E38  3C 60 43 30 */	lis r3, 0x4330
/* 80CD6E3C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80CD6E40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CD6E44  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CD6E48  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CD6E4C  FC 00 02 10 */	fabs f0, f0
/* 80CD6E50  FC 00 00 18 */	frsp f0, f0
/* 80CD6E54  FC 00 00 50 */	fneg f0, f0
/* 80CD6E58  FC 00 00 1E */	fctiwz f0, f0
/* 80CD6E5C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CD6E60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80CD6E64  B0 1E 09 54 */	sth r0, 0x954(r30)
/* 80CD6E68  A8 1E 09 54 */	lha r0, 0x954(r30)
/* 80CD6E6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD6E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD6E74  90 61 00 20 */	stw r3, 0x20(r1)
/* 80CD6E78  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CD6E7C  FC 00 08 28 */	fsub f0, f0, f1
/* 80CD6E80  FC 20 02 10 */	fabs f1, f0
/* 80CD6E84  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 80CD6E88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD6E8C  40 80 00 90 */	bge lbl_80CD6F1C
/* 80CD6E90  38 00 00 00 */	li r0, 0
/* 80CD6E94  B0 1E 09 54 */	sth r0, 0x954(r30)
/* 80CD6E98  48 00 00 84 */	b lbl_80CD6F1C
lbl_80CD6E9C:
/* 80CD6E9C  2C 04 DC D8 */	cmpwi r4, -9000
/* 80CD6EA0  40 80 00 7C */	bge lbl_80CD6F1C
/* 80CD6EA4  A8 7E 09 54 */	lha r3, 0x954(r30)
/* 80CD6EA8  7C 60 07 35 */	extsh. r0, r3
/* 80CD6EAC  40 80 00 70 */	bge lbl_80CD6F1C
/* 80CD6EB0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80CD6EB4  C8 3F 00 80 */	lfd f1, 0x80(r31)
/* 80CD6EB8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80CD6EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD6EC0  3C 60 43 30 */	lis r3, 0x4330
/* 80CD6EC4  90 61 00 20 */	stw r3, 0x20(r1)
/* 80CD6EC8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CD6ECC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CD6ED0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CD6ED4  FC 00 02 10 */	fabs f0, f0
/* 80CD6ED8  FC 00 00 18 */	frsp f0, f0
/* 80CD6EDC  FC 00 00 1E */	fctiwz f0, f0
/* 80CD6EE0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CD6EE4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80CD6EE8  B0 1E 09 54 */	sth r0, 0x954(r30)
/* 80CD6EEC  A8 1E 09 54 */	lha r0, 0x954(r30)
/* 80CD6EF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD6EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD6EF8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80CD6EFC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CD6F00  FC 00 08 28 */	fsub f0, f0, f1
/* 80CD6F04  FC 20 02 10 */	fabs f1, f0
/* 80CD6F08  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 80CD6F0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD6F10  40 80 00 0C */	bge lbl_80CD6F1C
/* 80CD6F14  38 00 00 00 */	li r0, 0
/* 80CD6F18  B0 1E 09 54 */	sth r0, 0x954(r30)
lbl_80CD6F1C:
/* 80CD6F1C  A8 7E 09 50 */	lha r3, 0x950(r30)
/* 80CD6F20  A8 1E 09 52 */	lha r0, 0x952(r30)
/* 80CD6F24  7C 03 02 14 */	add r0, r3, r0
/* 80CD6F28  B0 1E 09 50 */	sth r0, 0x950(r30)
/* 80CD6F2C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CD6F30  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CD6F34  38 A3 00 04 */	addi r5, r3, 4
/* 80CD6F38  80 9E 09 30 */	lwz r4, 0x930(r30)
/* 80CD6F3C  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 80CD6F40  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CD6F44  7C 25 04 2E */	lfsx f1, r5, r0
/* 80CD6F48  A8 1E 09 44 */	lha r0, 0x944(r30)
/* 80CD6F4C  C8 5F 00 80 */	lfd f2, 0x80(r31)
/* 80CD6F50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD6F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD6F58  3C 60 43 30 */	lis r3, 0x4330
/* 80CD6F5C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80CD6F60  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CD6F64  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CD6F68  EC 20 00 72 */	fmuls f1, f0, f1
/* 80CD6F6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CD6F70  90 61 00 18 */	stw r3, 0x18(r1)
/* 80CD6F74  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80CD6F78  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CD6F7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CD6F80  FC 00 00 1E */	fctiwz f0, f0
/* 80CD6F84  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CD6F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD6F8C  B0 01 00 08 */	sth r0, 8(r1)
/* 80CD6F90  38 04 00 08 */	addi r0, r4, 8
/* 80CD6F94  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 80CD6F98  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CD6F9C  7C 25 04 2E */	lfsx f1, r5, r0
/* 80CD6FA0  A8 1E 09 48 */	lha r0, 0x948(r30)
/* 80CD6FA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD6FA8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CD6FAC  90 61 00 28 */	stw r3, 0x28(r1)
/* 80CD6FB0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80CD6FB4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CD6FB8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80CD6FBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CD6FC0  90 61 00 30 */	stw r3, 0x30(r1)
/* 80CD6FC4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80CD6FC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CD6FCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CD6FD0  FC 00 00 1E */	fctiwz f0, f0
/* 80CD6FD4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CD6FD8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CD6FDC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80CD6FE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD6FE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD6FE8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80CD6FEC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CD6FF0  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80CD6FF4  4B 66 F8 F5 */	bl PSMTXTrans
/* 80CD6FF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD6FFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD7000  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80CD7004  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80CD7008  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80CD700C  4B 33 52 95 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80CD7010  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80CD7014  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80CD7018  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80CD701C  40 82 00 34 */	bne lbl_80CD7050
/* 80CD7020  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80CD7024  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80CD7028  4B 33 5D 75 */	bl transM__14mDoMtx_stack_cFfff
/* 80CD702C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD7030  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD7034  A8 9E 09 50 */	lha r4, 0x950(r30)
/* 80CD7038  4B 33 53 FD */	bl mDoMtx_YrotM__FPA4_fs
/* 80CD703C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80CD7040  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80CD7044  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80CD7048  4B 33 5D 55 */	bl transM__14mDoMtx_stack_cFfff
/* 80CD704C  48 00 00 1C */	b lbl_80CD7068
lbl_80CD7050:
/* 80CD7050  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD7054  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD7058  A8 81 00 08 */	lha r4, 8(r1)
/* 80CD705C  38 A0 00 00 */	li r5, 0
/* 80CD7060  A8 C1 00 0C */	lha r6, 0xc(r1)
/* 80CD7064  4B 33 52 3D */	bl mDoMtx_ZXYrotM__FPA4_fsss
lbl_80CD7068:
/* 80CD7068  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD706C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD7070  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80CD7074  38 84 00 24 */	addi r4, r4, 0x24
/* 80CD7078  4B 66 F4 39 */	bl PSMTXCopy
/* 80CD707C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80CD7080  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80CD7084  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CD7088  7C 08 03 A6 */	mtlr r0
/* 80CD708C  38 21 00 50 */	addi r1, r1, 0x50
/* 80CD7090  4E 80 00 20 */	blr 
