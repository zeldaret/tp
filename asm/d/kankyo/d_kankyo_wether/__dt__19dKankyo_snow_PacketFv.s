lbl_80057F9C:
/* 80057F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057FA0  7C 08 02 A6 */	mflr r0
/* 80057FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80057FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80057FAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80057FB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80057FB4  7C 9F 23 78 */	mr r31, r4
/* 80057FB8  41 82 00 4C */	beq lbl_80058004
/* 80057FBC  3C 60 80 3B */	lis r3, __vt__19dKankyo_snow_Packet@ha /* 0x803A9B4C@ha */
/* 80057FC0  38 03 9B 4C */	addi r0, r3, __vt__19dKankyo_snow_Packet@l /* 0x803A9B4C@l */
/* 80057FC4  90 1E 00 00 */	stw r0, 0(r30)
/* 80057FC8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80057FCC  3C 80 80 05 */	lis r4, __dt__8SNOW_EFFFv@ha /* 0x80056D58@ha */
/* 80057FD0  38 84 6D 58 */	addi r4, r4, __dt__8SNOW_EFFFv@l /* 0x80056D58@l */
/* 80057FD4  38 A0 00 38 */	li r5, 0x38
/* 80057FD8  38 C0 01 F4 */	li r6, 0x1f4
/* 80057FDC  48 30 9D 0D */	bl __destroy_arr
/* 80057FE0  28 1E 00 00 */	cmplwi r30, 0
/* 80057FE4  41 82 00 10 */	beq lbl_80057FF4
/* 80057FE8  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80057FEC  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80057FF0  90 1E 00 00 */	stw r0, 0(r30)
lbl_80057FF4:
/* 80057FF4  7F E0 07 35 */	extsh. r0, r31
/* 80057FF8  40 81 00 0C */	ble lbl_80058004
/* 80057FFC  7F C3 F3 78 */	mr r3, r30
/* 80058000  48 27 6D 3D */	bl __dl__FPv
lbl_80058004:
/* 80058004  7F C3 F3 78 */	mr r3, r30
/* 80058008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005800C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80058010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80058014  7C 08 03 A6 */	mtlr r0
/* 80058018  38 21 00 10 */	addi r1, r1, 0x10
/* 8005801C  4E 80 00 20 */	blr 
