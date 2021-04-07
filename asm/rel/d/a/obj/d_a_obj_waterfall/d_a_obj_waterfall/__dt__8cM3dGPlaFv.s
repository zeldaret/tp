lbl_80D2F93C:
/* 80D2F93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2F940  7C 08 02 A6 */	mflr r0
/* 80D2F944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2F948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2F94C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2F950  41 82 00 1C */	beq lbl_80D2F96C
/* 80D2F954  3C A0 80 D3 */	lis r5, __vt__8cM3dGPla@ha /* 0x80D2FE1C@ha */
/* 80D2F958  38 05 FE 1C */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80D2FE1C@l */
/* 80D2F95C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D2F960  7C 80 07 35 */	extsh. r0, r4
/* 80D2F964  40 81 00 08 */	ble lbl_80D2F96C
/* 80D2F968  4B 59 F3 D5 */	bl __dl__FPv
lbl_80D2F96C:
/* 80D2F96C  7F E3 FB 78 */	mr r3, r31
/* 80D2F970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2F974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2F978  7C 08 03 A6 */	mtlr r0
/* 80D2F97C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2F980  4E 80 00 20 */	blr 
