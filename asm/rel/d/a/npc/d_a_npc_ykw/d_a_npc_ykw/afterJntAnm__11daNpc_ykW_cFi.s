lbl_80B601C8:
/* 80B601C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B601CC  7C 08 02 A6 */	mflr r0
/* 80B601D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B601D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B601D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B601DC  7C 7F 1B 78 */	mr r31, r3
/* 80B601E0  7C 9E 23 78 */	mr r30, r4
/* 80B601E4  2C 1E 00 01 */	cmpwi r30, 1
/* 80B601E8  40 82 00 30 */	bne lbl_80B60218
/* 80B601EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B601F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B601F4  A8 1F 0D 12 */	lha r0, 0xd12(r31)
/* 80B601F8  7C 00 00 D0 */	neg r0, r0
/* 80B601FC  7C 04 07 34 */	extsh r4, r0
/* 80B60200  4B 4A C2 34 */	b mDoMtx_YrotM__FPA4_fs
/* 80B60204  A8 9F 0D 0E */	lha r4, 0xd0e(r31)
/* 80B60208  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B6020C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B60210  4B 4A C2 BC */	b mDoMtx_ZrotM__FPA4_fs
/* 80B60214  48 00 00 34 */	b lbl_80B60248
lbl_80B60218:
/* 80B60218  2C 1E 00 05 */	cmpwi r30, 5
/* 80B6021C  40 82 00 2C */	bne lbl_80B60248
/* 80B60220  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B60224  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B60228  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80B6022C  7C 00 00 D0 */	neg r0, r0
/* 80B60230  7C 04 07 34 */	extsh r4, r0
/* 80B60234  4B 4A C2 00 */	b mDoMtx_YrotM__FPA4_fs
/* 80B60238  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80B6023C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B60240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B60244  4B 4A C2 88 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B60248:
/* 80B60248  2C 1E 00 0D */	cmpwi r30, 0xd
/* 80B6024C  40 82 00 14 */	bne lbl_80B60260
/* 80B60250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B60254  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B60258  A8 9F 0D CC */	lha r4, 0xdcc(r31)
/* 80B6025C  4B 4A C2 70 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B60260:
/* 80B60260  2C 1E 00 10 */	cmpwi r30, 0x10
/* 80B60264  40 82 00 14 */	bne lbl_80B60278
/* 80B60268  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B6026C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B60270  A8 9F 0D D0 */	lha r4, 0xdd0(r31)
/* 80B60274  4B 4A C2 58 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B60278:
/* 80B60278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6027C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B60280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B60284  7C 08 03 A6 */	mtlr r0
/* 80B60288  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6028C  4E 80 00 20 */	blr 
