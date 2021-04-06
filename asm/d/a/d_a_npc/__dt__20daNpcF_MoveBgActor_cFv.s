lbl_80155B54:
/* 80155B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155B58  7C 08 02 A6 */	mflr r0
/* 80155B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80155B64  93 C1 00 08 */	stw r30, 8(r1)
/* 80155B68  7C 7E 1B 79 */	or. r30, r3, r3
/* 80155B6C  7C 9F 23 78 */	mr r31, r4
/* 80155B70  41 82 00 28 */	beq lbl_80155B98
/* 80155B74  3C 80 80 3B */	lis r4, __vt__20daNpcF_MoveBgActor_c@ha /* 0x803B3870@ha */
/* 80155B78  38 04 38 70 */	addi r0, r4, __vt__20daNpcF_MoveBgActor_c@l /* 0x803B3870@l */
/* 80155B7C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80155B80  38 80 00 00 */	li r4, 0
/* 80155B84  48 00 00 71 */	bl __dt__8daNpcF_cFv
/* 80155B88  7F E0 07 35 */	extsh. r0, r31
/* 80155B8C  40 81 00 0C */	ble lbl_80155B98
/* 80155B90  7F C3 F3 78 */	mr r3, r30
/* 80155B94  48 17 91 A9 */	bl __dl__FPv
lbl_80155B98:
/* 80155B98  7F C3 F3 78 */	mr r3, r30
/* 80155B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80155BA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80155BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80155BA8  7C 08 03 A6 */	mtlr r0
/* 80155BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80155BB0  4E 80 00 20 */	blr 
