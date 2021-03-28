lbl_80B4A914:
/* 80B4A914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4A918  7C 08 02 A6 */	mflr r0
/* 80B4A91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4A920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4A924  7C 7F 1B 78 */	mr r31, r3
/* 80B4A928  2C 04 00 02 */	cmpwi r4, 2
/* 80B4A92C  40 82 00 30 */	bne lbl_80B4A95C
/* 80B4A930  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80B4A934  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B4A938  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B4A93C  4B 4C 1A F8 */	b mDoMtx_YrotM__FPA4_fs
/* 80B4A940  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B4A944  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B4A948  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80B4A94C  7C 00 00 D0 */	neg r0, r0
/* 80B4A950  7C 04 07 34 */	extsh r4, r0
/* 80B4A954  4B 4C 1B 78 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B4A958  48 00 00 34 */	b lbl_80B4A98C
lbl_80B4A95C:
/* 80B4A95C  2C 04 00 04 */	cmpwi r4, 4
/* 80B4A960  40 82 00 2C */	bne lbl_80B4A98C
/* 80B4A964  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B4A968  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B4A96C  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80B4A970  7C 00 00 D0 */	neg r0, r0
/* 80B4A974  7C 04 07 34 */	extsh r4, r0
/* 80B4A978  4B 4C 1A BC */	b mDoMtx_YrotM__FPA4_fs
/* 80B4A97C  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80B4A980  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B4A984  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B4A988  4B 4C 1B 44 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B4A98C:
/* 80B4A98C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4A990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4A994  7C 08 03 A6 */	mtlr r0
/* 80B4A998  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4A99C  4E 80 00 20 */	blr 
