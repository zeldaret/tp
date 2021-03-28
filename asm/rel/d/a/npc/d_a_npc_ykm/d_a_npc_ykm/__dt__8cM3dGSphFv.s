lbl_80B5C7E0:
/* 80B5C7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C7E4  7C 08 02 A6 */	mflr r0
/* 80B5C7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C7EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5C7F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5C7F4  41 82 00 1C */	beq lbl_80B5C810
/* 80B5C7F8  3C A0 80 B6 */	lis r5, __vt__8cM3dGSph@ha
/* 80B5C7FC  38 05 EB A8 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80B5C800  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80B5C804  7C 80 07 35 */	extsh. r0, r4
/* 80B5C808  40 81 00 08 */	ble lbl_80B5C810
/* 80B5C80C  4B 77 25 30 */	b __dl__FPv
lbl_80B5C810:
/* 80B5C810  7F E3 FB 78 */	mr r3, r31
/* 80B5C814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5C818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C81C  7C 08 03 A6 */	mtlr r0
/* 80B5C820  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C824  4E 80 00 20 */	blr 
