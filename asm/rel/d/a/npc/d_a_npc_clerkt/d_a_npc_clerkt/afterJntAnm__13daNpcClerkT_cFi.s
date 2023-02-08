lbl_8099ACF0:
/* 8099ACF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099ACF4  7C 08 02 A6 */	mflr r0
/* 8099ACF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099ACFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099AD00  7C 7F 1B 78 */	mr r31, r3
/* 8099AD04  2C 04 00 0F */	cmpwi r4, 0xf
/* 8099AD08  40 82 00 30 */	bne lbl_8099AD38
/* 8099AD0C  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 8099AD10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099AD14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099AD18  4B 67 17 1D */	bl mDoMtx_YrotM__FPA4_fs
/* 8099AD1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099AD20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099AD24  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 8099AD28  7C 00 00 D0 */	neg r0, r0
/* 8099AD2C  7C 04 07 34 */	extsh r4, r0
/* 8099AD30  4B 67 17 9D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8099AD34  48 00 00 2C */	b lbl_8099AD60
lbl_8099AD38:
/* 8099AD38  2C 04 00 11 */	cmpwi r4, 0x11
/* 8099AD3C  40 82 00 24 */	bne lbl_8099AD60
/* 8099AD40  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 8099AD44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099AD48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099AD4C  4B 67 16 E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8099AD50  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 8099AD54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099AD58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099AD5C  4B 67 17 71 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8099AD60:
/* 8099AD60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099AD64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099AD68  7C 08 03 A6 */	mtlr r0
/* 8099AD6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8099AD70  4E 80 00 20 */	blr 
