lbl_805C4E14:
/* 805C4E14  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C4E18  7C 08 02 A6 */	mflr r0
/* 805C4E1C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C4E20  39 61 00 50 */	addi r11, r1, 0x50
/* 805C4E24  4B D9 D3 9C */	b _savegpr_22
/* 805C4E28  7C 7D 1B 78 */	mr r29, r3
/* 805C4E2C  3B C0 00 00 */	li r30, 0
/* 805C4E30  3B 60 00 00 */	li r27, 0
/* 805C4E34  3B 80 00 00 */	li r28, 0
/* 805C4E38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C4E3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C4E40  3B E3 23 3C */	addi r31, r3, 0x233c
/* 805C4E44  3C 60 80 5C */	lis r3, DOWN_CYL_DT@ha
/* 805C4E48  3B 43 70 F8 */	addi r26, r3, DOWN_CYL_DT@l
/* 805C4E4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805C4E50  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l
lbl_805C4E54:
/* 805C4E54  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805C4E58  80 63 00 04 */	lwz r3, 4(r3)
/* 805C4E5C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805C4E60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C4E64  7F 1A E2 14 */	add r24, r26, r28
/* 805C4E68  80 18 00 00 */	lwz r0, 0(r24)
/* 805C4E6C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805C4E70  7C 63 02 14 */	add r3, r3, r0
/* 805C4E74  7F 24 CB 78 */	mr r4, r25
/* 805C4E78  4B D8 16 38 */	b PSMTXCopy
/* 805C4E7C  C0 18 00 04 */	lfs f0, 4(r24)
/* 805C4E80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C4E84  C0 18 00 08 */	lfs f0, 8(r24)
/* 805C4E88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C4E8C  C0 18 00 0C */	lfs f0, 0xc(r24)
/* 805C4E90  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C4E94  7F 23 CB 78 */	mr r3, r25
/* 805C4E98  38 81 00 14 */	addi r4, r1, 0x14
/* 805C4E9C  38 A1 00 08 */	addi r5, r1, 8
/* 805C4EA0  4B D8 1E CC */	b PSMTXMultVec
/* 805C4EA4  7E DD DA 14 */	add r22, r29, r27
/* 805C4EA8  3A F6 22 98 */	addi r23, r22, 0x2298
/* 805C4EAC  7E E3 BB 78 */	mr r3, r23
/* 805C4EB0  38 81 00 08 */	addi r4, r1, 8
/* 805C4EB4  4B CA A3 28 */	b SetC__8cM3dGCylFRC4cXyz
/* 805C4EB8  7E E3 BB 78 */	mr r3, r23
/* 805C4EBC  C0 38 00 10 */	lfs f1, 0x10(r24)
/* 805C4EC0  4B CA A3 38 */	b SetH__8cM3dGCylFf
/* 805C4EC4  7E E3 BB 78 */	mr r3, r23
/* 805C4EC8  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 805C4ECC  4B CA A3 34 */	b SetR__8cM3dGCylFf
/* 805C4ED0  7F E3 FB 78 */	mr r3, r31
/* 805C4ED4  38 96 21 74 */	addi r4, r22, 0x2174
/* 805C4ED8  4B C9 FC D0 */	b Set__4cCcSFP8cCcD_Obj
/* 805C4EDC  3B DE 00 01 */	addi r30, r30, 1
/* 805C4EE0  2C 1E 00 05 */	cmpwi r30, 5
/* 805C4EE4  3B 7B 01 3C */	addi r27, r27, 0x13c
/* 805C4EE8  3B 9C 00 18 */	addi r28, r28, 0x18
/* 805C4EEC  41 80 FF 68 */	blt lbl_805C4E54
/* 805C4EF0  3B C0 00 00 */	li r30, 0
/* 805C4EF4  3B 80 00 00 */	li r28, 0
/* 805C4EF8  3B 60 00 00 */	li r27, 0
/* 805C4EFC  3C 60 80 5C */	lis r3, DOWN_SPH_DT@ha
/* 805C4F00  3B 23 71 70 */	addi r25, r3, DOWN_SPH_DT@l
/* 805C4F04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805C4F08  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_805C4F0C:
/* 805C4F0C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805C4F10  80 63 00 04 */	lwz r3, 4(r3)
/* 805C4F14  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805C4F18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C4F1C  7E D9 DA 14 */	add r22, r25, r27
/* 805C4F20  80 16 00 00 */	lwz r0, 0(r22)
/* 805C4F24  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805C4F28  7C 63 02 14 */	add r3, r3, r0
/* 805C4F2C  7F 44 D3 78 */	mr r4, r26
/* 805C4F30  4B D8 15 80 */	b PSMTXCopy
/* 805C4F34  C0 16 00 04 */	lfs f0, 4(r22)
/* 805C4F38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C4F3C  C0 16 00 08 */	lfs f0, 8(r22)
/* 805C4F40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C4F44  C0 16 00 0C */	lfs f0, 0xc(r22)
/* 805C4F48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C4F4C  7F 43 D3 78 */	mr r3, r26
/* 805C4F50  38 81 00 14 */	addi r4, r1, 0x14
/* 805C4F54  38 A1 00 08 */	addi r5, r1, 8
/* 805C4F58  4B D8 1E 14 */	b PSMTXMultVec
/* 805C4F5C  7F 1D E2 14 */	add r24, r29, r28
/* 805C4F60  3A F8 17 A0 */	addi r23, r24, 0x17a0
/* 805C4F64  7E E3 BB 78 */	mr r3, r23
/* 805C4F68  38 81 00 08 */	addi r4, r1, 8
/* 805C4F6C  4B CA A6 DC */	b SetC__8cM3dGSphFRC4cXyz
/* 805C4F70  7E E3 BB 78 */	mr r3, r23
/* 805C4F74  C0 36 00 10 */	lfs f1, 0x10(r22)
/* 805C4F78  4B CA A7 90 */	b SetR__8cM3dGSphFf
/* 805C4F7C  7F E3 FB 78 */	mr r3, r31
/* 805C4F80  38 98 16 7C */	addi r4, r24, 0x167c
/* 805C4F84  4B C9 FC 24 */	b Set__4cCcSFP8cCcD_Obj
/* 805C4F88  3B DE 00 01 */	addi r30, r30, 1
/* 805C4F8C  2C 1E 00 09 */	cmpwi r30, 9
/* 805C4F90  3B 9C 01 38 */	addi r28, r28, 0x138
/* 805C4F94  3B 7B 00 14 */	addi r27, r27, 0x14
/* 805C4F98  41 80 FF 74 */	blt lbl_805C4F0C
/* 805C4F9C  39 61 00 50 */	addi r11, r1, 0x50
/* 805C4FA0  4B D9 D2 6C */	b _restgpr_22
/* 805C4FA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C4FA8  7C 08 03 A6 */	mtlr r0
/* 805C4FAC  38 21 00 50 */	addi r1, r1, 0x50
/* 805C4FB0  4E 80 00 20 */	blr 
