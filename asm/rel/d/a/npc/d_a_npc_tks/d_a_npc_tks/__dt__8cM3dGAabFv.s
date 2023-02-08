lbl_80B1D620:
/* 80B1D620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1D624  7C 08 02 A6 */	mflr r0
/* 80B1D628  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1D62C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1D630  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1D634  41 82 00 1C */	beq lbl_80B1D650
/* 80B1D638  3C A0 80 B2 */	lis r5, __vt__8cM3dGAab@ha /* 0x80B1E524@ha */
/* 80B1D63C  38 05 E5 24 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B1E524@l */
/* 80B1D640  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B1D644  7C 80 07 35 */	extsh. r0, r4
/* 80B1D648  40 81 00 08 */	ble lbl_80B1D650
/* 80B1D64C  4B 7B 16 F1 */	bl __dl__FPv
lbl_80B1D650:
/* 80B1D650  7F E3 FB 78 */	mr r3, r31
/* 80B1D654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1D658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1D65C  7C 08 03 A6 */	mtlr r0
/* 80B1D660  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1D664  4E 80 00 20 */	blr 
