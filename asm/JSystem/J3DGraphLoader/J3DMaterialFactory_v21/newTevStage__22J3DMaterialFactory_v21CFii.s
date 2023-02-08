lbl_80333D08:
/* 80333D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80333D0C  7C 08 02 A6 */	mflr r0
/* 80333D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80333D14  81 04 00 04 */	lwz r8, 4(r4)
/* 80333D18  80 E4 00 08 */	lwz r7, 8(r4)
/* 80333D1C  54 A0 08 3C */	slwi r0, r5, 1
/* 80333D20  7C 07 02 2E */	lhzx r0, r7, r0
/* 80333D24  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80333D28  7C A8 02 14 */	add r5, r8, r0
/* 80333D2C  54 C0 08 3C */	slwi r0, r6, 1
/* 80333D30  7C A5 02 14 */	add r5, r5, r0
/* 80333D34  A0 05 00 D0 */	lhz r0, 0xd0(r5)
/* 80333D38  28 00 FF FF */	cmplwi r0, 0xffff
/* 80333D3C  41 82 00 18 */	beq lbl_80333D54
/* 80333D40  80 84 00 44 */	lwz r4, 0x44(r4)
/* 80333D44  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80333D48  7C 84 02 14 */	add r4, r4, r0
/* 80333D4C  4B D0 6D 81 */	bl __ct__11J3DTevStageFRC15J3DTevStageInfo
/* 80333D50  48 00 00 08 */	b lbl_80333D58
lbl_80333D54:
/* 80333D54  4B CD A4 DD */	bl __ct__11J3DTevStageFv
lbl_80333D58:
/* 80333D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80333D5C  7C 08 03 A6 */	mtlr r0
/* 80333D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80333D64  4E 80 00 20 */	blr 
