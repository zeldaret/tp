lbl_80056D10:
/* 80056D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056D14  7C 08 02 A6 */	mflr r0
/* 80056D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056D1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80056D20  7C 7F 1B 78 */	mr r31, r3
/* 80056D24  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80056D28  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80056D2C  38 9F 00 10 */	addi r4, r31, 0x10
/* 80056D30  48 00 F3 19 */	bl dKyr_drawSibuki__FPA4_fPPUc
/* 80056D34  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80056D38  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80056D3C  38 9F 00 10 */	addi r4, r31, 0x10
/* 80056D40  48 00 E8 ED */	bl dKyr_drawRain__FPA4_fPPUc
/* 80056D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80056D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056D4C  7C 08 03 A6 */	mtlr r0
/* 80056D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80056D54  4E 80 00 20 */	blr 
