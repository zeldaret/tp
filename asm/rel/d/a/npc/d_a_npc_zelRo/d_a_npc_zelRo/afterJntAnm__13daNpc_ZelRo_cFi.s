lbl_80B72B8C:
/* 80B72B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B72B90  7C 08 02 A6 */	mflr r0
/* 80B72B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B72B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B72B9C  7C 7F 1B 78 */	mr r31, r3
/* 80B72BA0  2C 04 00 01 */	cmpwi r4, 1
/* 80B72BA4  40 82 00 30 */	bne lbl_80B72BD4
/* 80B72BA8  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80B72BAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B72BB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B72BB4  4B 49 98 80 */	b mDoMtx_YrotM__FPA4_fs
/* 80B72BB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B72BBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B72BC0  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80B72BC4  7C 00 00 D0 */	neg r0, r0
/* 80B72BC8  7C 04 07 34 */	extsh r4, r0
/* 80B72BCC  4B 49 99 00 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B72BD0  48 00 00 34 */	b lbl_80B72C04
lbl_80B72BD4:
/* 80B72BD4  2C 04 00 04 */	cmpwi r4, 4
/* 80B72BD8  40 82 00 2C */	bne lbl_80B72C04
/* 80B72BDC  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80B72BE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B72BE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B72BE8  4B 49 98 4C */	b mDoMtx_YrotM__FPA4_fs
/* 80B72BEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B72BF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B72BF4  A8 1F 0D 08 */	lha r0, 0xd08(r31)
/* 80B72BF8  7C 00 00 D0 */	neg r0, r0
/* 80B72BFC  7C 04 07 34 */	extsh r4, r0
/* 80B72C00  4B 49 98 CC */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B72C04:
/* 80B72C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B72C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B72C0C  7C 08 03 A6 */	mtlr r0
/* 80B72C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80B72C14  4E 80 00 20 */	blr 
