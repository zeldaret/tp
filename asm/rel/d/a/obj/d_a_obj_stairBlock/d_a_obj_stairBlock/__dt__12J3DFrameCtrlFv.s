lbl_80CE882C:
/* 80CE882C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8830  7C 08 02 A6 */	mflr r0
/* 80CE8834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE8838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE883C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE8840  41 82 00 1C */	beq lbl_80CE885C
/* 80CE8844  3C A0 80 CF */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80CE8848  38 05 8F 68 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80CE884C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE8850  7C 80 07 35 */	extsh. r0, r4
/* 80CE8854  40 81 00 08 */	ble lbl_80CE885C
/* 80CE8858  4B 5E 64 E4 */	b __dl__FPv
lbl_80CE885C:
/* 80CE885C  7F E3 FB 78 */	mr r3, r31
/* 80CE8860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE8864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8868  7C 08 03 A6 */	mtlr r0
/* 80CE886C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8870  4E 80 00 20 */	blr 
