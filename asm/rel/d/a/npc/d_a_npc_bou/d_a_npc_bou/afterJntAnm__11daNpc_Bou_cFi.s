lbl_8096DD44:
/* 8096DD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096DD48  7C 08 02 A6 */	mflr r0
/* 8096DD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096DD50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096DD54  7C 7F 1B 78 */	mr r31, r3
/* 8096DD58  2C 04 00 01 */	cmpwi r4, 1
/* 8096DD5C  40 82 00 30 */	bne lbl_8096DD8C
/* 8096DD60  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 8096DD64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096DD68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096DD6C  4B 69 E6 C9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8096DD70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096DD74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096DD78  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 8096DD7C  7C 00 00 D0 */	neg r0, r0
/* 8096DD80  7C 04 07 34 */	extsh r4, r0
/* 8096DD84  4B 69 E7 49 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8096DD88  48 00 00 2C */	b lbl_8096DDB4
lbl_8096DD8C:
/* 8096DD8C  2C 04 00 04 */	cmpwi r4, 4
/* 8096DD90  40 82 00 24 */	bne lbl_8096DDB4
/* 8096DD94  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 8096DD98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096DD9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096DDA0  4B 69 E6 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 8096DDA4  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 8096DDA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096DDAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096DDB0  4B 69 E7 1D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8096DDB4:
/* 8096DDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096DDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096DDBC  7C 08 03 A6 */	mtlr r0
/* 8096DDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8096DDC4  4E 80 00 20 */	blr 
