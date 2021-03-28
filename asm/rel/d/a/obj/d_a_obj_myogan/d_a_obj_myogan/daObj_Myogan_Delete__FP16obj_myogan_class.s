lbl_80C9EDC0:
/* 80C9EDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9EDC4  7C 08 02 A6 */	mflr r0
/* 80C9EDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9EDCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9EDD0  7C 7F 1B 78 */	mr r31, r3
/* 80C9EDD4  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C9EDD8  3C 80 80 CA */	lis r4, stringBase0@ha
/* 80C9EDDC  38 84 F2 A0 */	addi r4, r4, stringBase0@l
/* 80C9EDE0  4B 38 E2 28 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C9EDE4  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 80C9EDE8  28 00 00 00 */	cmplwi r0, 0
/* 80C9EDEC  41 82 00 10 */	beq lbl_80C9EDFC
/* 80C9EDF0  38 00 00 00 */	li r0, 0
/* 80C9EDF4  3C 60 80 CA */	lis r3, data_80C9F318@ha
/* 80C9EDF8  98 03 F3 18 */	stb r0, data_80C9F318@l(r3)
lbl_80C9EDFC:
/* 80C9EDFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9EE00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9EE04  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9EE08  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 80C9EE0C  4B 3D 54 44 */	b Release__4cBgSFP9dBgW_Base
/* 80C9EE10  38 60 00 01 */	li r3, 1
/* 80C9EE14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9EE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9EE1C  7C 08 03 A6 */	mtlr r0
/* 80C9EE20  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9EE24  4E 80 00 20 */	blr 
