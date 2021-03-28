lbl_809F9FCC:
/* 809F9FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F9FD0  7C 08 02 A6 */	mflr r0
/* 809F9FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F9FDC  7C 7F 1B 78 */	mr r31, r3
/* 809F9FE0  2C 04 00 01 */	cmpwi r4, 1
/* 809F9FE4  40 82 00 30 */	bne lbl_809FA014
/* 809F9FE8  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 809F9FEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F9FF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F9FF4  4B 61 24 40 */	b mDoMtx_YrotM__FPA4_fs
/* 809F9FF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F9FFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FA000  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 809FA004  7C 00 00 D0 */	neg r0, r0
/* 809FA008  7C 04 07 34 */	extsh r4, r0
/* 809FA00C  4B 61 24 C0 */	b mDoMtx_ZrotM__FPA4_fs
/* 809FA010  48 00 00 2C */	b lbl_809FA03C
lbl_809FA014:
/* 809FA014  2C 04 00 04 */	cmpwi r4, 4
/* 809FA018  40 82 00 24 */	bne lbl_809FA03C
/* 809FA01C  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 809FA020  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FA024  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FA028  4B 61 24 0C */	b mDoMtx_YrotM__FPA4_fs
/* 809FA02C  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 809FA030  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FA034  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FA038  4B 61 24 94 */	b mDoMtx_ZrotM__FPA4_fs
lbl_809FA03C:
/* 809FA03C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FA040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FA044  7C 08 03 A6 */	mtlr r0
/* 809FA048  38 21 00 10 */	addi r1, r1, 0x10
/* 809FA04C  4E 80 00 20 */	blr 
