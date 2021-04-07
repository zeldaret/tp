lbl_80CCF358:
/* 80CCF358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCF35C  7C 08 02 A6 */	mflr r0
/* 80CCF360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCF364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCF368  7C 7F 1B 78 */	mr r31, r3
/* 80CCF36C  2C 04 00 01 */	cmpwi r4, 1
/* 80CCF370  40 82 00 30 */	bne lbl_80CCF3A0
/* 80CCF374  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80CCF378  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCF37C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCF380  4B 33 D0 B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CCF384  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCF388  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCF38C  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80CCF390  7C 00 00 D0 */	neg r0, r0
/* 80CCF394  7C 04 07 34 */	extsh r4, r0
/* 80CCF398  4B 33 D1 35 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80CCF39C  48 00 00 34 */	b lbl_80CCF3D0
lbl_80CCF3A0:
/* 80CCF3A0  2C 04 00 03 */	cmpwi r4, 3
/* 80CCF3A4  40 82 00 2C */	bne lbl_80CCF3D0
/* 80CCF3A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCF3AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCF3B0  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80CCF3B4  7C 00 00 D0 */	neg r0, r0
/* 80CCF3B8  7C 04 07 34 */	extsh r4, r0
/* 80CCF3BC  4B 33 D0 79 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CCF3C0  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80CCF3C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CCF3C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CCF3CC  4B 33 D1 01 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80CCF3D0:
/* 80CCF3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCF3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCF3D8  7C 08 03 A6 */	mtlr r0
/* 80CCF3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCF3E0  4E 80 00 20 */	blr 
