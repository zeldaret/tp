lbl_80963840:
/* 80963840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80963844  7C 08 02 A6 */	mflr r0
/* 80963848  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096384C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80963850  7C 7F 1B 78 */	mr r31, r3
/* 80963854  2C 04 00 01 */	cmpwi r4, 1
/* 80963858  40 82 00 30 */	bne lbl_80963888
/* 8096385C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80963860  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80963864  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 80963868  7C 00 00 D0 */	neg r0, r0
/* 8096386C  7C 04 07 34 */	extsh r4, r0
/* 80963870  4B 6A 8B C5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80963874  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80963878  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8096387C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80963880  4B 6A 8C 4D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80963884  48 00 00 34 */	b lbl_809638B8
lbl_80963888:
/* 80963888  2C 04 00 06 */	cmpwi r4, 6
/* 8096388C  40 82 00 2C */	bne lbl_809638B8
/* 80963890  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80963894  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80963898  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 8096389C  7C 00 00 D0 */	neg r0, r0
/* 809638A0  7C 04 07 34 */	extsh r4, r0
/* 809638A4  4B 6A 8B 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 809638A8  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 809638AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809638B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809638B4  4B 6A 8C 19 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_809638B8:
/* 809638B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809638BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809638C0  7C 08 03 A6 */	mtlr r0
/* 809638C4  38 21 00 10 */	addi r1, r1, 0x10
/* 809638C8  4E 80 00 20 */	blr 
