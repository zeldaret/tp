lbl_80A47BA4:
/* 80A47BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A47BA8  7C 08 02 A6 */	mflr r0
/* 80A47BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A47BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A47BB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A47BB8  41 82 00 1C */	beq lbl_80A47BD4
/* 80A47BBC  3C A0 80 A5 */	lis r5, __vt__8cM3dGCyl@ha
/* 80A47BC0  38 05 8D 98 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80A47BC4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A47BC8  7C 80 07 35 */	extsh. r0, r4
/* 80A47BCC  40 81 00 08 */	ble lbl_80A47BD4
/* 80A47BD0  4B 88 71 6C */	b __dl__FPv
lbl_80A47BD4:
/* 80A47BD4  7F E3 FB 78 */	mr r3, r31
/* 80A47BD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A47BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A47BE0  7C 08 03 A6 */	mtlr r0
/* 80A47BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A47BE8  4E 80 00 20 */	blr 
