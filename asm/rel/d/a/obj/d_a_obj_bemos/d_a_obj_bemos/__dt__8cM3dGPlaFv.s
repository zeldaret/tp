lbl_80BAFF60:
/* 80BAFF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAFF64  7C 08 02 A6 */	mflr r0
/* 80BAFF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAFF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAFF70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAFF74  41 82 00 1C */	beq lbl_80BAFF90
/* 80BAFF78  3C A0 80 BB */	lis r5, __vt__8cM3dGPla@ha
/* 80BAFF7C  38 05 3E 40 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80BAFF80  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BAFF84  7C 80 07 35 */	extsh. r0, r4
/* 80BAFF88  40 81 00 08 */	ble lbl_80BAFF90
/* 80BAFF8C  4B 71 ED B0 */	b __dl__FPv
lbl_80BAFF90:
/* 80BAFF90  7F E3 FB 78 */	mr r3, r31
/* 80BAFF94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAFF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAFF9C  7C 08 03 A6 */	mtlr r0
/* 80BAFFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAFFA4  4E 80 00 20 */	blr 
