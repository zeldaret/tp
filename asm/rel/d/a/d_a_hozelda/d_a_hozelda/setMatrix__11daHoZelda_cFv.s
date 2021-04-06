lbl_80847F54:
/* 80847F54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80847F58  7C 08 02 A6 */	mflr r0
/* 80847F5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80847F60  39 61 00 20 */	addi r11, r1, 0x20
/* 80847F64  4B B1 A2 79 */	bl _savegpr_29
/* 80847F68  7C 7F 1B 78 */	mr r31, r3
/* 80847F6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80847F70  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80847F74  83 BE 5D B8 */	lwz r29, 0x5db8(r30)
/* 80847F78  28 1D 00 00 */	cmplwi r29, 0
/* 80847F7C  41 82 00 90 */	beq lbl_8084800C
/* 80847F80  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 80847F84  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80847F88  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80847F8C  7D 89 03 A6 */	mtctr r12
/* 80847F90  4E 80 04 21 */	bctrl 
/* 80847F94  28 03 00 00 */	cmplwi r3, 0
/* 80847F98  3C 60 80 85 */	lis r3, localFrontHorseRidePos@ha /* 0x80848EA4@ha */
/* 80847F9C  38 83 8E A4 */	addi r4, r3, localFrontHorseRidePos@l /* 0x80848EA4@l */
/* 80847FA0  41 82 00 0C */	beq lbl_80847FAC
/* 80847FA4  3C 60 80 85 */	lis r3, localHorseRidePos@ha /* 0x80848E98@ha */
/* 80847FA8  38 83 8E 98 */	addi r4, r3, localHorseRidePos@l /* 0x80848E98@l */
lbl_80847FAC:
/* 80847FAC  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80847FB0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80847FB4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80847FB8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80847FBC  4B AF ED B1 */	bl PSMTXMultVec
/* 80847FC0  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80847FC4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80847FC8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80847FCC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80847FD0  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 80847FD4  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80847FD8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80847FDC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80847FE0  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80847FE4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80847FE8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80847FEC  80 63 00 08 */	lwz r3, 8(r3)
/* 80847FF0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80847FF4  60 00 00 01 */	ori r0, r0, 1
/* 80847FF8  90 03 00 0C */	stw r0, 0xc(r3)
/* 80847FFC  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 80848000  80 03 05 78 */	lwz r0, 0x578(r3)
/* 80848004  64 00 40 00 */	oris r0, r0, 0x4000
/* 80848008  90 03 05 78 */	stw r0, 0x578(r3)
lbl_8084800C:
/* 8084800C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80848010  4B 7C 4D 55 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80848014  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80848018  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084801C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80848020  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80848024  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80848028  4B 7C 42 79 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8084802C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80848030  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80848034  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80848038  38 84 00 24 */	addi r4, r4, 0x24
/* 8084803C  4B AF E4 75 */	bl PSMTXCopy
/* 80848040  39 61 00 20 */	addi r11, r1, 0x20
/* 80848044  4B B1 A1 E5 */	bl _restgpr_29
/* 80848048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8084804C  7C 08 03 A6 */	mtlr r0
/* 80848050  38 21 00 20 */	addi r1, r1, 0x20
/* 80848054  4E 80 00 20 */	blr 
