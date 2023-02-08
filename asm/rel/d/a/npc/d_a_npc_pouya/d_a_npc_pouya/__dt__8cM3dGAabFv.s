lbl_80AB128C:
/* 80AB128C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB1290  7C 08 02 A6 */	mflr r0
/* 80AB1294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB1298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB129C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB12A0  41 82 00 1C */	beq lbl_80AB12BC
/* 80AB12A4  3C A0 80 AB */	lis r5, __vt__8cM3dGAab@ha /* 0x80AB2BF0@ha */
/* 80AB12A8  38 05 2B F0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AB2BF0@l */
/* 80AB12AC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AB12B0  7C 80 07 35 */	extsh. r0, r4
/* 80AB12B4  40 81 00 08 */	ble lbl_80AB12BC
/* 80AB12B8  4B 81 DA 85 */	bl __dl__FPv
lbl_80AB12BC:
/* 80AB12BC  7F E3 FB 78 */	mr r3, r31
/* 80AB12C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB12C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB12C8  7C 08 03 A6 */	mtlr r0
/* 80AB12CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB12D0  4E 80 00 20 */	blr 
