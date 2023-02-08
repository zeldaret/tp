lbl_80B9C7E0:
/* 80B9C7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9C7E4  7C 08 02 A6 */	mflr r0
/* 80B9C7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9C7EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9C7F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9C7F4  41 82 00 1C */	beq lbl_80B9C810
/* 80B9C7F8  3C A0 80 BA */	lis r5, __vt__8cM3dGAab@ha /* 0x80B9CA5C@ha */
/* 80B9C7FC  38 05 CA 5C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B9CA5C@l */
/* 80B9C800  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B9C804  7C 80 07 35 */	extsh. r0, r4
/* 80B9C808  40 81 00 08 */	ble lbl_80B9C810
/* 80B9C80C  4B 73 25 31 */	bl __dl__FPv
lbl_80B9C810:
/* 80B9C810  7F E3 FB 78 */	mr r3, r31
/* 80B9C814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9C818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9C81C  7C 08 03 A6 */	mtlr r0
/* 80B9C820  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9C824  4E 80 00 20 */	blr 
