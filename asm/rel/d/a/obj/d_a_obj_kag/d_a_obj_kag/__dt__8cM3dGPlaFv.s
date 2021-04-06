lbl_80C2E9F8:
/* 80C2E9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2E9FC  7C 08 02 A6 */	mflr r0
/* 80C2EA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2EA04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2EA08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C2EA0C  41 82 00 1C */	beq lbl_80C2EA28
/* 80C2EA10  3C A0 80 C3 */	lis r5, __vt__8cM3dGPla@ha /* 0x80C31404@ha */
/* 80C2EA14  38 05 14 04 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80C31404@l */
/* 80C2EA18  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C2EA1C  7C 80 07 35 */	extsh. r0, r4
/* 80C2EA20  40 81 00 08 */	ble lbl_80C2EA28
/* 80C2EA24  4B 6A 03 19 */	bl __dl__FPv
lbl_80C2EA28:
/* 80C2EA28  7F E3 FB 78 */	mr r3, r31
/* 80C2EA2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2EA30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2EA34  7C 08 03 A6 */	mtlr r0
/* 80C2EA38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2EA3C  4E 80 00 20 */	blr 
