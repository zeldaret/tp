lbl_80709DA8:
/* 80709DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80709DAC  7C 08 02 A6 */	mflr r0
/* 80709DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80709DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80709DB8  7C 7F 1B 78 */	mr r31, r3
/* 80709DBC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80709DC0  4B 90 2F A4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80709DC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80709DC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80709DCC  A8 9F 05 C8 */	lha r4, 0x5c8(r31)
/* 80709DD0  4B 90 26 64 */	b mDoMtx_YrotM__FPA4_fs
/* 80709DD4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80709DD8  4B 90 31 6C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80709DDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80709DE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80709DE4  A8 1F 05 C8 */	lha r0, 0x5c8(r31)
/* 80709DE8  7C 00 00 D0 */	neg r0, r0
/* 80709DEC  7C 04 07 34 */	extsh r4, r0
/* 80709DF0  4B 90 26 44 */	b mDoMtx_YrotM__FPA4_fs
/* 80709DF4  80 7F 06 8C */	lwz r3, 0x68c(r31)
/* 80709DF8  80 83 00 04 */	lwz r4, 4(r3)
/* 80709DFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80709E00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80709E04  38 84 00 24 */	addi r4, r4, 0x24
/* 80709E08  4B C3 C6 A8 */	b PSMTXCopy
/* 80709E0C  80 7F 06 8C */	lwz r3, 0x68c(r31)
/* 80709E10  4B 90 73 DC */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80709E14  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80709E18  2C 00 00 01 */	cmpwi r0, 1
/* 80709E1C  41 82 00 28 */	beq lbl_80709E44
/* 80709E20  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 80709E24  80 83 00 04 */	lwz r4, 4(r3)
/* 80709E28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80709E2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80709E30  38 84 00 24 */	addi r4, r4, 0x24
/* 80709E34  4B C3 C6 7C */	b PSMTXCopy
/* 80709E38  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 80709E3C  4B 90 73 B0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80709E40  48 00 00 18 */	b lbl_80709E58
lbl_80709E44:
/* 80709E44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80709E48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80709E4C  80 9F 06 94 */	lwz r4, 0x694(r31)
/* 80709E50  38 84 00 24 */	addi r4, r4, 0x24
/* 80709E54  4B C3 C6 5C */	b PSMTXCopy
lbl_80709E58:
/* 80709E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80709E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80709E60  7C 08 03 A6 */	mtlr r0
/* 80709E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80709E68  4E 80 00 20 */	blr 
