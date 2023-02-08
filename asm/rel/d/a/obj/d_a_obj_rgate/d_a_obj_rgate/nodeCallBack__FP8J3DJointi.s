lbl_80CB9CE8:
/* 80CB9CE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CB9CEC  7C 08 02 A6 */	mflr r0
/* 80CB9CF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB9CF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CB9CF8  4B 6A 84 E5 */	bl _savegpr_29
/* 80CB9CFC  2C 04 00 00 */	cmpwi r4, 0
/* 80CB9D00  40 82 00 DC */	bne lbl_80CB9DDC
/* 80CB9D04  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 80CB9D08  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CB9D0C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CB9D10  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80CB9D14  83 DF 00 14 */	lwz r30, 0x14(r31)
/* 80CB9D18  2C 04 00 01 */	cmpwi r4, 1
/* 80CB9D1C  40 82 00 60 */	bne lbl_80CB9D7C
/* 80CB9D20  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80CB9D24  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80CB9D28  1F A4 00 30 */	mulli r29, r4, 0x30
/* 80CB9D2C  7C 60 EA 14 */	add r3, r0, r29
/* 80CB9D30  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9D34  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9D38  4B 68 C7 79 */	bl PSMTXCopy
/* 80CB9D3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9D40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9D44  A8 9E 0B 76 */	lha r4, 0xb76(r30)
/* 80CB9D48  4B 35 26 ED */	bl mDoMtx_YrotM__FPA4_fs
/* 80CB9D4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9D50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9D54  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80CB9D58  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80CB9D5C  7C 80 EA 14 */	add r4, r0, r29
/* 80CB9D60  4B 68 C7 51 */	bl PSMTXCopy
/* 80CB9D64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9D68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9D6C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80CB9D70  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80CB9D74  4B 68 C7 3D */	bl PSMTXCopy
/* 80CB9D78  48 00 00 64 */	b lbl_80CB9DDC
lbl_80CB9D7C:
/* 80CB9D7C  2C 04 00 02 */	cmpwi r4, 2
/* 80CB9D80  40 82 00 5C */	bne lbl_80CB9DDC
/* 80CB9D84  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80CB9D88  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80CB9D8C  1F A4 00 30 */	mulli r29, r4, 0x30
/* 80CB9D90  7C 60 EA 14 */	add r3, r0, r29
/* 80CB9D94  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9D98  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9D9C  4B 68 C7 15 */	bl PSMTXCopy
/* 80CB9DA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9DA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9DA8  A8 9E 0B 74 */	lha r4, 0xb74(r30)
/* 80CB9DAC  4B 35 26 89 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CB9DB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9DB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9DB8  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80CB9DBC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80CB9DC0  7C 80 EA 14 */	add r4, r0, r29
/* 80CB9DC4  4B 68 C6 ED */	bl PSMTXCopy
/* 80CB9DC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9DCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9DD0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80CB9DD4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80CB9DD8  4B 68 C6 D9 */	bl PSMTXCopy
lbl_80CB9DDC:
/* 80CB9DDC  38 60 00 01 */	li r3, 1
/* 80CB9DE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CB9DE4  4B 6A 84 45 */	bl _restgpr_29
/* 80CB9DE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB9DEC  7C 08 03 A6 */	mtlr r0
/* 80CB9DF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CB9DF4  4E 80 00 20 */	blr 
