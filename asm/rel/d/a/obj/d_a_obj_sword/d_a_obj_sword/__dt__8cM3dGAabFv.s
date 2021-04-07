lbl_80CFD890:
/* 80CFD890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFD894  7C 08 02 A6 */	mflr r0
/* 80CFD898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFD89C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFD8A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CFD8A4  41 82 00 1C */	beq lbl_80CFD8C0
/* 80CFD8A8  3C A0 80 D0 */	lis r5, __vt__8cM3dGAab@ha /* 0x80CFDFD8@ha */
/* 80CFD8AC  38 05 DF D8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CFDFD8@l */
/* 80CFD8B0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CFD8B4  7C 80 07 35 */	extsh. r0, r4
/* 80CFD8B8  40 81 00 08 */	ble lbl_80CFD8C0
/* 80CFD8BC  4B 5D 14 81 */	bl __dl__FPv
lbl_80CFD8C0:
/* 80CFD8C0  7F E3 FB 78 */	mr r3, r31
/* 80CFD8C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFD8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFD8CC  7C 08 03 A6 */	mtlr r0
/* 80CFD8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFD8D4  4E 80 00 20 */	blr 
