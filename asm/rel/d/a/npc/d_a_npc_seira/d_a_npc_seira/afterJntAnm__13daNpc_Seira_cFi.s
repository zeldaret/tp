lbl_80ACC618:
/* 80ACC618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACC61C  7C 08 02 A6 */	mflr r0
/* 80ACC620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACC624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACC628  7C 7F 1B 78 */	mr r31, r3
/* 80ACC62C  2C 04 00 01 */	cmpwi r4, 1
/* 80ACC630  40 82 00 30 */	bne lbl_80ACC660
/* 80ACC634  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80ACC638  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80ACC63C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80ACC640  4B 53 FD F4 */	b mDoMtx_YrotM__FPA4_fs
/* 80ACC644  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80ACC648  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80ACC64C  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80ACC650  7C 00 00 D0 */	neg r0, r0
/* 80ACC654  7C 04 07 34 */	extsh r4, r0
/* 80ACC658  4B 53 FE 74 */	b mDoMtx_ZrotM__FPA4_fs
/* 80ACC65C  48 00 00 2C */	b lbl_80ACC688
lbl_80ACC660:
/* 80ACC660  2C 04 00 04 */	cmpwi r4, 4
/* 80ACC664  40 82 00 24 */	bne lbl_80ACC688
/* 80ACC668  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80ACC66C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80ACC670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80ACC674  4B 53 FD C0 */	b mDoMtx_YrotM__FPA4_fs
/* 80ACC678  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80ACC67C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80ACC680  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80ACC684  4B 53 FE 48 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80ACC688:
/* 80ACC688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACC68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACC690  7C 08 03 A6 */	mtlr r0
/* 80ACC694  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACC698  4E 80 00 20 */	blr 
