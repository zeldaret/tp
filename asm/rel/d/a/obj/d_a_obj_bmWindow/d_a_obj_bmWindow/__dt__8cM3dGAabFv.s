lbl_80BB8834:
/* 80BB8834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB8838  7C 08 02 A6 */	mflr r0
/* 80BB883C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB8840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB8844  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB8848  41 82 00 1C */	beq lbl_80BB8864
/* 80BB884C  3C A0 80 BC */	lis r5, __vt__8cM3dGAab@ha
/* 80BB8850  38 05 99 20 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BB8854  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BB8858  7C 80 07 35 */	extsh. r0, r4
/* 80BB885C  40 81 00 08 */	ble lbl_80BB8864
/* 80BB8860  4B 71 64 DC */	b __dl__FPv
lbl_80BB8864:
/* 80BB8864  7F E3 FB 78 */	mr r3, r31
/* 80BB8868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB886C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB8870  7C 08 03 A6 */	mtlr r0
/* 80BB8874  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB8878  4E 80 00 20 */	blr 
