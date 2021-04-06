lbl_8004B688:
/* 8004B688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004B68C  7C 08 02 A6 */	mflr r0
/* 8004B690  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004B694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004B698  7C 7F 1B 78 */	mr r31, r3
/* 8004B69C  38 7F 00 08 */	addi r3, r31, 8
/* 8004B6A0  3C 80 80 05 */	lis r4, __ct__Q313dPa_control_c7level_c9emitter_cFv@ha /* 0x8004FBFC@ha */
/* 8004B6A4  38 84 FB FC */	addi r4, r4, __ct__Q313dPa_control_c7level_c9emitter_cFv@l /* 0x8004FBFC@l */
/* 8004B6A8  38 A0 00 00 */	li r5, 0
/* 8004B6AC  38 C0 00 18 */	li r6, 0x18
/* 8004B6B0  38 E0 00 80 */	li r7, 0x80
/* 8004B6B4  48 31 66 AD */	bl __construct_array
/* 8004B6B8  38 80 00 00 */	li r4, 0
/* 8004B6BC  90 9F 00 00 */	stw r4, 0(r31)
/* 8004B6C0  98 9F 00 04 */	stb r4, 4(r31)
/* 8004B6C4  7C 83 23 78 */	mr r3, r4
/* 8004B6C8  38 00 01 00 */	li r0, 0x100
/* 8004B6CC  7C 09 03 A6 */	mtctr r0
lbl_8004B6D0:
/* 8004B6D0  38 03 0C 08 */	addi r0, r3, 0xc08
/* 8004B6D4  7C 9F 01 2E */	stwx r4, r31, r0
/* 8004B6D8  38 63 00 04 */	addi r3, r3, 4
/* 8004B6DC  42 00 FF F4 */	bdnz lbl_8004B6D0
/* 8004B6E0  7F E3 FB 78 */	mr r3, r31
/* 8004B6E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004B6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004B6EC  7C 08 03 A6 */	mtlr r0
/* 8004B6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8004B6F4  4E 80 00 20 */	blr 
