lbl_80B7F058:
/* 80B7F058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7F05C  7C 08 02 A6 */	mflr r0
/* 80B7F060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7F068  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7F06C  41 82 00 1C */	beq lbl_80B7F088
/* 80B7F070  3C A0 80 B9 */	lis r5, __vt__16daNpcF_SPCurve_c@ha
/* 80B7F074  38 05 DA 10 */	addi r0, r5, __vt__16daNpcF_SPCurve_c@l
/* 80B7F078  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80B7F07C  7C 80 07 35 */	extsh. r0, r4
/* 80B7F080  40 81 00 08 */	ble lbl_80B7F088
/* 80B7F084  4B 74 FC B8 */	b __dl__FPv
lbl_80B7F088:
/* 80B7F088  7F E3 FB 78 */	mr r3, r31
/* 80B7F08C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7F090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7F094  7C 08 03 A6 */	mtlr r0
/* 80B7F098  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7F09C  4E 80 00 20 */	blr 
