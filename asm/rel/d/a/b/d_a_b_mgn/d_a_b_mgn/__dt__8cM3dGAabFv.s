lbl_8060F590:
/* 8060F590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060F594  7C 08 02 A6 */	mflr r0
/* 8060F598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060F59C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060F5A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8060F5A4  41 82 00 1C */	beq lbl_8060F5C0
/* 8060F5A8  3C A0 80 61 */	lis r5, __vt__8cM3dGAab@ha /* 0x806103E4@ha */
/* 8060F5AC  38 05 03 E4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806103E4@l */
/* 8060F5B0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8060F5B4  7C 80 07 35 */	extsh. r0, r4
/* 8060F5B8  40 81 00 08 */	ble lbl_8060F5C0
/* 8060F5BC  4B CB F7 81 */	bl __dl__FPv
lbl_8060F5C0:
/* 8060F5C0  7F E3 FB 78 */	mr r3, r31
/* 8060F5C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060F5C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060F5CC  7C 08 03 A6 */	mtlr r0
/* 8060F5D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8060F5D4  4E 80 00 20 */	blr 
