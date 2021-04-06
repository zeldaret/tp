lbl_80B6FA10:
/* 80B6FA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6FA14  7C 08 02 A6 */	mflr r0
/* 80B6FA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6FA1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6FA20  7C 7F 1B 78 */	mr r31, r3
/* 80B6FA24  2C 04 00 01 */	cmpwi r4, 1
/* 80B6FA28  40 82 00 30 */	bne lbl_80B6FA58
/* 80B6FA2C  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80B6FA30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6FA34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6FA38  4B 49 C9 FD */	bl mDoMtx_YrotM__FPA4_fs
/* 80B6FA3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6FA40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6FA44  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80B6FA48  7C 00 00 D0 */	neg r0, r0
/* 80B6FA4C  7C 04 07 34 */	extsh r4, r0
/* 80B6FA50  4B 49 CA 7D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80B6FA54  48 00 00 34 */	b lbl_80B6FA88
lbl_80B6FA58:
/* 80B6FA58  2C 04 00 03 */	cmpwi r4, 3
/* 80B6FA5C  40 82 00 2C */	bne lbl_80B6FA88
/* 80B6FA60  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80B6FA64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6FA68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6FA6C  4B 49 C9 C9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B6FA70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6FA74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6FA78  A8 1F 0D 08 */	lha r0, 0xd08(r31)
/* 80B6FA7C  7C 00 00 D0 */	neg r0, r0
/* 80B6FA80  7C 04 07 34 */	extsh r4, r0
/* 80B6FA84  4B 49 CA 49 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80B6FA88:
/* 80B6FA88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6FA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6FA90  7C 08 03 A6 */	mtlr r0
/* 80B6FA94  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6FA98  4E 80 00 20 */	blr 
