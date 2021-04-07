lbl_80D1CD78:
/* 80D1CD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1CD7C  7C 08 02 A6 */	mflr r0
/* 80D1CD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1CD84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1CD88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1CD8C  41 82 00 1C */	beq lbl_80D1CDA8
/* 80D1CD90  3C A0 80 D2 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D1D4F4@ha */
/* 80D1CD94  38 05 D4 F4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D1D4F4@l */
/* 80D1CD98  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D1CD9C  7C 80 07 35 */	extsh. r0, r4
/* 80D1CDA0  40 81 00 08 */	ble lbl_80D1CDA8
/* 80D1CDA4  4B 5B 1F 99 */	bl __dl__FPv
lbl_80D1CDA8:
/* 80D1CDA8  7F E3 FB 78 */	mr r3, r31
/* 80D1CDAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1CDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1CDB4  7C 08 03 A6 */	mtlr r0
/* 80D1CDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1CDBC  4E 80 00 20 */	blr 
