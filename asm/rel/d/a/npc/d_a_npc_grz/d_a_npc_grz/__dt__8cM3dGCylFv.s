lbl_809E8830:
/* 809E8830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E8834  7C 08 02 A6 */	mflr r0
/* 809E8838  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E883C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E8840  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E8844  41 82 00 1C */	beq lbl_809E8860
/* 809E8848  3C A0 80 9F */	lis r5, __vt__8cM3dGCyl@ha /* 0x809EFBB8@ha */
/* 809E884C  38 05 FB B8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x809EFBB8@l */
/* 809E8850  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809E8854  7C 80 07 35 */	extsh. r0, r4
/* 809E8858  40 81 00 08 */	ble lbl_809E8860
/* 809E885C  4B 8E 64 E1 */	bl __dl__FPv
lbl_809E8860:
/* 809E8860  7F E3 FB 78 */	mr r3, r31
/* 809E8864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E8868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E886C  7C 08 03 A6 */	mtlr r0
/* 809E8870  38 21 00 10 */	addi r1, r1, 0x10
/* 809E8874  4E 80 00 20 */	blr 
