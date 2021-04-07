lbl_80A60CF8:
/* 80A60CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A60CFC  7C 08 02 A6 */	mflr r0
/* 80A60D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A60D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A60D08  7C 7F 1B 78 */	mr r31, r3
/* 80A60D0C  2C 04 00 01 */	cmpwi r4, 1
/* 80A60D10  40 82 00 30 */	bne lbl_80A60D40
/* 80A60D14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A60D18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A60D1C  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 80A60D20  7C 00 00 D0 */	neg r0, r0
/* 80A60D24  7C 04 07 34 */	extsh r4, r0
/* 80A60D28  4B 5A B7 0D */	bl mDoMtx_YrotM__FPA4_fs
/* 80A60D2C  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80A60D30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A60D34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A60D38  4B 5A B7 95 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A60D3C  48 00 00 34 */	b lbl_80A60D70
lbl_80A60D40:
/* 80A60D40  2C 04 00 04 */	cmpwi r4, 4
/* 80A60D44  40 82 00 2C */	bne lbl_80A60D70
/* 80A60D48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A60D4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A60D50  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80A60D54  7C 00 00 D0 */	neg r0, r0
/* 80A60D58  7C 04 07 34 */	extsh r4, r0
/* 80A60D5C  4B 5A B6 D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A60D60  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80A60D64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A60D68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A60D6C  4B 5A B7 61 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80A60D70:
/* 80A60D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A60D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A60D78  7C 08 03 A6 */	mtlr r0
/* 80A60D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A60D80  4E 80 00 20 */	blr 
