lbl_807A2A88:
/* 807A2A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A2A8C  7C 08 02 A6 */	mflr r0
/* 807A2A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A2A94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A2A98  93 C1 00 08 */	stw r30, 8(r1)
/* 807A2A9C  7C 7E 1B 79 */	or. r30, r3, r3
/* 807A2AA0  7C 9F 23 78 */	mr r31, r4
/* 807A2AA4  41 82 00 40 */	beq lbl_807A2AE4
/* 807A2AA8  3C 80 80 7A */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x807A6D58@ha */
/* 807A2AAC  38 84 6D 58 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x807A6D58@l */
/* 807A2AB0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807A2AB4  38 04 00 0C */	addi r0, r4, 0xc
/* 807A2AB8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 807A2ABC  38 04 00 18 */	addi r0, r4, 0x18
/* 807A2AC0  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 807A2AC4  38 04 00 24 */	addi r0, r4, 0x24
/* 807A2AC8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 807A2ACC  38 80 00 00 */	li r4, 0
/* 807A2AD0  4B 8D 4B 21 */	bl __dt__11dBgS_GndChkFv
/* 807A2AD4  7F E0 07 35 */	extsh. r0, r31
/* 807A2AD8  40 81 00 0C */	ble lbl_807A2AE4
/* 807A2ADC  7F C3 F3 78 */	mr r3, r30
/* 807A2AE0  4B B2 C2 5D */	bl __dl__FPv
lbl_807A2AE4:
/* 807A2AE4  7F C3 F3 78 */	mr r3, r30
/* 807A2AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A2AEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807A2AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A2AF4  7C 08 03 A6 */	mtlr r0
/* 807A2AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 807A2AFC  4E 80 00 20 */	blr 
