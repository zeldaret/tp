lbl_80AE38F0:
/* 80AE38F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE38F4  7C 08 02 A6 */	mflr r0
/* 80AE38F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE38FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE3900  7C 7F 1B 78 */	mr r31, r3
/* 80AE3904  2C 04 00 01 */	cmpwi r4, 1
/* 80AE3908  40 82 00 30 */	bne lbl_80AE3938
/* 80AE390C  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80AE3910  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AE3914  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AE3918  4B 52 8B 1C */	b mDoMtx_YrotM__FPA4_fs
/* 80AE391C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AE3920  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AE3924  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80AE3928  7C 00 00 D0 */	neg r0, r0
/* 80AE392C  7C 04 07 34 */	extsh r4, r0
/* 80AE3930  4B 52 8B 9C */	b mDoMtx_ZrotM__FPA4_fs
/* 80AE3934  48 00 00 2C */	b lbl_80AE3960
lbl_80AE3938:
/* 80AE3938  2C 04 00 04 */	cmpwi r4, 4
/* 80AE393C  40 82 00 24 */	bne lbl_80AE3960
/* 80AE3940  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80AE3944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AE3948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AE394C  4B 52 8A E8 */	b mDoMtx_YrotM__FPA4_fs
/* 80AE3950  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80AE3954  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AE3958  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AE395C  4B 52 8B 70 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80AE3960:
/* 80AE3960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE3964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE3968  7C 08 03 A6 */	mtlr r0
/* 80AE396C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE3970  4E 80 00 20 */	blr 
