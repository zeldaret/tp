lbl_8058E574:
/* 8058E574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E578  7C 08 02 A6 */	mflr r0
/* 8058E57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E584  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058E588  41 82 00 1C */	beq lbl_8058E5A4
/* 8058E58C  3C A0 80 59 */	lis r5, __vt__8cM3dGAab@ha /* 0x8058F274@ha */
/* 8058E590  38 05 F2 74 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8058F274@l */
/* 8058E594  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8058E598  7C 80 07 35 */	extsh. r0, r4
/* 8058E59C  40 81 00 08 */	ble lbl_8058E5A4
/* 8058E5A0  4B D4 07 9D */	bl __dl__FPv
lbl_8058E5A4:
/* 8058E5A4  7F E3 FB 78 */	mr r3, r31
/* 8058E5A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E5B0  7C 08 03 A6 */	mtlr r0
/* 8058E5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E5B8  4E 80 00 20 */	blr 
