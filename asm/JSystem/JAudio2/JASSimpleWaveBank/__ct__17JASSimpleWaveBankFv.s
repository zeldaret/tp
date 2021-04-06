lbl_80298C94:
/* 80298C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298C98  7C 08 02 A6 */	mflr r0
/* 80298C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298CA4  7C 7F 1B 78 */	mr r31, r3
/* 80298CA8  3C 60 80 3C */	lis r3, __vt__11JASWaveBank@ha /* 0x803C7780@ha */
/* 80298CAC  38 03 77 80 */	addi r0, r3, __vt__11JASWaveBank@l /* 0x803C7780@l */
/* 80298CB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80298CB4  38 7F 00 04 */	addi r3, r31, 4
/* 80298CB8  48 00 14 85 */	bl __ct__10JASWaveArcFv
/* 80298CBC  3C 60 80 3C */	lis r3, __vt__17JASSimpleWaveBank@ha /* 0x803C77AC@ha */
/* 80298CC0  38 63 77 AC */	addi r3, r3, __vt__17JASSimpleWaveBank@l /* 0x803C77AC@l */
/* 80298CC4  90 7F 00 00 */	stw r3, 0(r31)
/* 80298CC8  38 03 00 18 */	addi r0, r3, 0x18
/* 80298CCC  90 1F 00 04 */	stw r0, 4(r31)
/* 80298CD0  38 00 00 00 */	li r0, 0
/* 80298CD4  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80298CD8  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 80298CDC  7F E3 FB 78 */	mr r3, r31
/* 80298CE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298CE8  7C 08 03 A6 */	mtlr r0
/* 80298CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80298CF0  4E 80 00 20 */	blr 
