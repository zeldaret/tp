lbl_80B5222C:
/* 80B5222C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B52230  7C 08 02 A6 */	mflr r0
/* 80B52234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B52238  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5223C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B52240  41 82 00 1C */	beq lbl_80B5225C
/* 80B52244  3C A0 80 B5 */	lis r5, __vt__19daNpc_Yelia_Param_c@ha /* 0x80B533DC@ha */
/* 80B52248  38 05 33 DC */	addi r0, r5, __vt__19daNpc_Yelia_Param_c@l /* 0x80B533DC@l */
/* 80B5224C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B52250  7C 80 07 35 */	extsh. r0, r4
/* 80B52254  40 81 00 08 */	ble lbl_80B5225C
/* 80B52258  4B 77 CA E5 */	bl __dl__FPv
lbl_80B5225C:
/* 80B5225C  7F E3 FB 78 */	mr r3, r31
/* 80B52260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B52264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B52268  7C 08 03 A6 */	mtlr r0
/* 80B5226C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B52270  4E 80 00 20 */	blr 
