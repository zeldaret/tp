lbl_80030D38:
/* 80030D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030D3C  7C 08 02 A6 */	mflr r0
/* 80030D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030D48  7C 7F 1B 78 */	mr r31, r3
/* 80030D4C  3C 80 80 3B */	lis r4, __vt__11cBgS_ChkElm@ha /* 0x803AB630@ha */
/* 80030D50  38 04 B6 30 */	addi r0, r4, __vt__11cBgS_ChkElm@l /* 0x803AB630@l */
/* 80030D54  90 03 00 10 */	stw r0, 0x10(r3)
/* 80030D58  48 04 33 9D */	bl Init__11cBgS_ChkElmFv
/* 80030D5C  7F E3 FB 78 */	mr r3, r31
/* 80030D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030D68  7C 08 03 A6 */	mtlr r0
/* 80030D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80030D70  4E 80 00 20 */	blr 
