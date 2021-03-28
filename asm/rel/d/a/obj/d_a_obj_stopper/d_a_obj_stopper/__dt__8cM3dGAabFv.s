lbl_80CED538:
/* 80CED538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED53C  7C 08 02 A6 */	mflr r0
/* 80CED540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CED548  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CED54C  41 82 00 1C */	beq lbl_80CED568
/* 80CED550  3C A0 80 CF */	lis r5, __vt__8cM3dGAab@ha
/* 80CED554  38 05 F1 84 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CED558  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CED55C  7C 80 07 35 */	extsh. r0, r4
/* 80CED560  40 81 00 08 */	ble lbl_80CED568
/* 80CED564  4B 5E 17 D8 */	b __dl__FPv
lbl_80CED568:
/* 80CED568  7F E3 FB 78 */	mr r3, r31
/* 80CED56C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CED570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED574  7C 08 03 A6 */	mtlr r0
/* 80CED578  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED57C  4E 80 00 20 */	blr 
