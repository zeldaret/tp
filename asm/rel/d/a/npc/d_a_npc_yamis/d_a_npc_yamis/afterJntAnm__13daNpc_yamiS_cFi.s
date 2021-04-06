lbl_80B47254:
/* 80B47254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B47258  7C 08 02 A6 */	mflr r0
/* 80B4725C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B47260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B47264  7C 7F 1B 78 */	mr r31, r3
/* 80B47268  2C 04 00 02 */	cmpwi r4, 2
/* 80B4726C  40 82 00 30 */	bne lbl_80B4729C
/* 80B47270  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80B47274  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B47278  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4727C  4B 4C 51 B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B47280  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B47284  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B47288  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80B4728C  7C 00 00 D0 */	neg r0, r0
/* 80B47290  7C 04 07 34 */	extsh r4, r0
/* 80B47294  4B 4C 52 39 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80B47298  48 00 00 34 */	b lbl_80B472CC
lbl_80B4729C:
/* 80B4729C  2C 04 00 04 */	cmpwi r4, 4
/* 80B472A0  40 82 00 2C */	bne lbl_80B472CC
/* 80B472A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B472A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B472AC  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80B472B0  7C 00 00 D0 */	neg r0, r0
/* 80B472B4  7C 04 07 34 */	extsh r4, r0
/* 80B472B8  4B 4C 51 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 80B472BC  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80B472C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B472C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B472C8  4B 4C 52 05 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80B472CC:
/* 80B472CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B472D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B472D4  7C 08 03 A6 */	mtlr r0
/* 80B472D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B472DC  4E 80 00 20 */	blr 
