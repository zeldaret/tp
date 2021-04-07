lbl_80D3509C:
/* 80D3509C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D350A0  7C 08 02 A6 */	mflr r0
/* 80D350A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D350A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D350AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D350B0  41 82 00 1C */	beq lbl_80D350CC
/* 80D350B4  3C A0 80 D3 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D35264@ha */
/* 80D350B8  38 05 52 64 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D35264@l */
/* 80D350BC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D350C0  7C 80 07 35 */	extsh. r0, r4
/* 80D350C4  40 81 00 08 */	ble lbl_80D350CC
/* 80D350C8  4B 59 9C 75 */	bl __dl__FPv
lbl_80D350CC:
/* 80D350CC  7F E3 FB 78 */	mr r3, r31
/* 80D350D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D350D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D350D8  7C 08 03 A6 */	mtlr r0
/* 80D350DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D350E0  4E 80 00 20 */	blr 
