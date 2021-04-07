lbl_80CE5994:
/* 80CE5994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE5998  7C 08 02 A6 */	mflr r0
/* 80CE599C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE59A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE59A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE59A8  41 82 00 1C */	beq lbl_80CE59C4
/* 80CE59AC  3C A0 80 CE */	lis r5, __vt__8cM3dGPla@ha /* 0x80CE6AF8@ha */
/* 80CE59B0  38 05 6A F8 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80CE6AF8@l */
/* 80CE59B4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CE59B8  7C 80 07 35 */	extsh. r0, r4
/* 80CE59BC  40 81 00 08 */	ble lbl_80CE59C4
/* 80CE59C0  4B 5E 93 7D */	bl __dl__FPv
lbl_80CE59C4:
/* 80CE59C4  7F E3 FB 78 */	mr r3, r31
/* 80CE59C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE59CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE59D0  7C 08 03 A6 */	mtlr r0
/* 80CE59D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE59D8  4E 80 00 20 */	blr 
