lbl_80A9CF10:
/* 80A9CF10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9CF14  7C 08 02 A6 */	mflr r0
/* 80A9CF18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9CF1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9CF20  7C 7F 1B 78 */	mr r31, r3
/* 80A9CF24  2C 04 00 01 */	cmpwi r4, 1
/* 80A9CF28  40 82 00 30 */	bne lbl_80A9CF58
/* 80A9CF2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A9CF30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A9CF34  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 80A9CF38  7C 00 00 D0 */	neg r0, r0
/* 80A9CF3C  7C 04 07 34 */	extsh r4, r0
/* 80A9CF40  4B 56 F4 F4 */	b mDoMtx_YrotM__FPA4_fs
/* 80A9CF44  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80A9CF48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A9CF4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A9CF50  4B 56 F5 7C */	b mDoMtx_ZrotM__FPA4_fs
/* 80A9CF54  48 00 00 34 */	b lbl_80A9CF88
lbl_80A9CF58:
/* 80A9CF58  2C 04 00 04 */	cmpwi r4, 4
/* 80A9CF5C  40 82 00 2C */	bne lbl_80A9CF88
/* 80A9CF60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A9CF64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A9CF68  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80A9CF6C  7C 00 00 D0 */	neg r0, r0
/* 80A9CF70  7C 04 07 34 */	extsh r4, r0
/* 80A9CF74  4B 56 F4 C0 */	b mDoMtx_YrotM__FPA4_fs
/* 80A9CF78  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80A9CF7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A9CF80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A9CF84  4B 56 F5 48 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80A9CF88:
/* 80A9CF88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9CF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9CF90  7C 08 03 A6 */	mtlr r0
/* 80A9CF94  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9CF98  4E 80 00 20 */	blr 
