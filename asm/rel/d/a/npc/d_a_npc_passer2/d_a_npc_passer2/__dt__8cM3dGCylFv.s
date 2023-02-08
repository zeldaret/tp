lbl_80AA8840:
/* 80AA8840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8844  7C 08 02 A6 */	mflr r0
/* 80AA8848  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA884C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA8850  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA8854  41 82 00 1C */	beq lbl_80AA8870
/* 80AA8858  3C A0 80 AB */	lis r5, __vt__8cM3dGCyl@ha /* 0x80AA8B38@ha */
/* 80AA885C  38 05 8B 38 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80AA8B38@l */
/* 80AA8860  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AA8864  7C 80 07 35 */	extsh. r0, r4
/* 80AA8868  40 81 00 08 */	ble lbl_80AA8870
/* 80AA886C  4B 82 64 D1 */	bl __dl__FPv
lbl_80AA8870:
/* 80AA8870  7F E3 FB 78 */	mr r3, r31
/* 80AA8874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA8878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA887C  7C 08 03 A6 */	mtlr r0
/* 80AA8880  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8884  4E 80 00 20 */	blr 
