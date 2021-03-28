lbl_80AC0EA4:
/* 80AC0EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC0EA8  7C 08 02 A6 */	mflr r0
/* 80AC0EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC0EB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC0EB4  7C 7F 1B 78 */	mr r31, r3
/* 80AC0EB8  2C 04 00 01 */	cmpwi r4, 1
/* 80AC0EBC  40 82 00 30 */	bne lbl_80AC0EEC
/* 80AC0EC0  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80AC0EC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AC0EC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AC0ECC  4B 54 B5 68 */	b mDoMtx_YrotM__FPA4_fs
/* 80AC0ED0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AC0ED4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AC0ED8  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80AC0EDC  7C 00 00 D0 */	neg r0, r0
/* 80AC0EE0  7C 04 07 34 */	extsh r4, r0
/* 80AC0EE4  4B 54 B5 E8 */	b mDoMtx_ZrotM__FPA4_fs
/* 80AC0EE8  48 00 00 2C */	b lbl_80AC0F14
lbl_80AC0EEC:
/* 80AC0EEC  2C 04 00 04 */	cmpwi r4, 4
/* 80AC0EF0  40 82 00 24 */	bne lbl_80AC0F14
/* 80AC0EF4  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80AC0EF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AC0EFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AC0F00  4B 54 B5 34 */	b mDoMtx_YrotM__FPA4_fs
/* 80AC0F04  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80AC0F08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AC0F0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AC0F10  4B 54 B5 BC */	b mDoMtx_ZrotM__FPA4_fs
lbl_80AC0F14:
/* 80AC0F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC0F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC0F1C  7C 08 03 A6 */	mtlr r0
/* 80AC0F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0F24  4E 80 00 20 */	blr 
