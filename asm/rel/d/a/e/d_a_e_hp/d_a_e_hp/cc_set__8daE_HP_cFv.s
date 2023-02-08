lbl_806E8DE0:
/* 806E8DE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E8DE4  7C 08 02 A6 */	mflr r0
/* 806E8DE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E8DEC  39 61 00 40 */	addi r11, r1, 0x40
/* 806E8DF0  4B C7 93 E5 */	bl _savegpr_27
/* 806E8DF4  7C 7B 1B 78 */	mr r27, r3
/* 806E8DF8  3C 60 80 6F */	lis r3, lit_3905@ha /* 0x806EA1F4@ha */
/* 806E8DFC  3B C3 A1 F4 */	addi r30, r3, lit_3905@l /* 0x806EA1F4@l */
/* 806E8E00  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 806E8E04  83 A3 00 04 */	lwz r29, 4(r3)
/* 806E8E08  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806E8E0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E8E10  38 63 01 80 */	addi r3, r3, 0x180
/* 806E8E14  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E8E18  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E8E1C  4B C5 D6 95 */	bl PSMTXCopy
/* 806E8E20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E8E24  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E8E28  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806E8E2C  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 806E8E30  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806E8E34  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 806E8E38  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806E8E3C  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 806E8E40  C0 1B 05 38 */	lfs f0, 0x538(r27)
/* 806E8E44  D0 1B 05 50 */	stfs f0, 0x550(r27)
/* 806E8E48  C0 1B 05 3C */	lfs f0, 0x53c(r27)
/* 806E8E4C  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 806E8E50  C0 1B 05 40 */	lfs f0, 0x540(r27)
/* 806E8E54  D0 1B 05 58 */	stfs f0, 0x558(r27)
/* 806E8E58  C0 3B 05 54 */	lfs f1, 0x554(r27)
/* 806E8E5C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 806E8E60  EC 01 00 2A */	fadds f0, f1, f0
/* 806E8E64  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 806E8E68  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806E8E6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E8E70  7F E4 FB 78 */	mr r4, r31
/* 806E8E74  4B C5 D6 3D */	bl PSMTXCopy
/* 806E8E78  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806E8E7C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806E8E80  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 806E8E84  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E8E88  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806E8E8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E8E90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E8E94  38 81 00 14 */	addi r4, r1, 0x14
/* 806E8E98  38 A1 00 08 */	addi r5, r1, 8
/* 806E8E9C  4B C5 DE D1 */	bl PSMTXMultVec
/* 806E8EA0  38 7B 0B 24 */	addi r3, r27, 0xb24
/* 806E8EA4  38 81 00 08 */	addi r4, r1, 8
/* 806E8EA8  4B B8 63 35 */	bl SetC__8cM3dGCylFRC4cXyz
/* 806E8EAC  38 7B 0B 24 */	addi r3, r27, 0xb24
/* 806E8EB0  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 806E8EB4  4B B8 63 45 */	bl SetH__8cM3dGCylFf
/* 806E8EB8  38 7B 0B 24 */	addi r3, r27, 0xb24
/* 806E8EBC  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 806E8EC0  4B B8 63 41 */	bl SetR__8cM3dGCylFf
/* 806E8EC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E8EC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E8ECC  3B 83 23 3C */	addi r28, r3, 0x233c
/* 806E8ED0  7F 83 E3 78 */	mr r3, r28
/* 806E8ED4  38 9B 0A 00 */	addi r4, r27, 0xa00
/* 806E8ED8  4B B7 BC D1 */	bl Set__4cCcSFP8cCcD_Obj
/* 806E8EDC  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806E8EE0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E8EE4  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806E8EE8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E8EEC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E8EF0  4B C5 D5 C1 */	bl PSMTXCopy
/* 806E8EF4  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 806E8EF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806E8EFC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E8F00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E8F04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E8F08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E8F0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E8F10  38 81 00 14 */	addi r4, r1, 0x14
/* 806E8F14  38 A1 00 08 */	addi r5, r1, 8
/* 806E8F18  4B C5 DE 55 */	bl PSMTXMultVec
/* 806E8F1C  38 7B 0C 60 */	addi r3, r27, 0xc60
/* 806E8F20  38 81 00 08 */	addi r4, r1, 8
/* 806E8F24  4B B8 62 B9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 806E8F28  38 7B 0C 60 */	addi r3, r27, 0xc60
/* 806E8F2C  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 806E8F30  4B B8 62 C9 */	bl SetH__8cM3dGCylFf
/* 806E8F34  38 7B 0C 60 */	addi r3, r27, 0xc60
/* 806E8F38  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 806E8F3C  4B B8 62 C5 */	bl SetR__8cM3dGCylFf
/* 806E8F40  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806E8F44  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E8F48  38 63 01 50 */	addi r3, r3, 0x150
/* 806E8F4C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E8F50  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E8F54  4B C5 D5 5D */	bl PSMTXCopy
/* 806E8F58  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806E8F5C  D0 1B 0D E0 */	stfs f0, 0xde0(r27)
/* 806E8F60  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806E8F64  D0 1B 0D E4 */	stfs f0, 0xde4(r27)
/* 806E8F68  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806E8F6C  D0 1B 0D E8 */	stfs f0, 0xde8(r27)
/* 806E8F70  80 1B 07 80 */	lwz r0, 0x780(r27)
/* 806E8F74  2C 00 00 05 */	cmpwi r0, 5
/* 806E8F78  40 82 00 38 */	bne lbl_806E8FB0
/* 806E8F7C  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 806E8F80  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E8F84  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 806E8F88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E8F8C  4C 41 13 82 */	cror 2, 1, 2
/* 806E8F90  40 82 00 20 */	bne lbl_806E8FB0
/* 806E8F94  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 806E8F98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E8F9C  4C 40 13 82 */	cror 2, 0, 2
/* 806E8FA0  40 82 00 10 */	bne lbl_806E8FB0
/* 806E8FA4  7F 83 E3 78 */	mr r3, r28
/* 806E8FA8  38 9B 0B 3C */	addi r4, r27, 0xb3c
/* 806E8FAC  4B B7 BB FD */	bl Set__4cCcSFP8cCcD_Obj
lbl_806E8FB0:
/* 806E8FB0  38 7B 0D 9C */	addi r3, r27, 0xd9c
/* 806E8FB4  38 9B 07 5C */	addi r4, r27, 0x75c
/* 806E8FB8  4B B8 66 91 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806E8FBC  38 7B 0D 9C */	addi r3, r27, 0xd9c
/* 806E8FC0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 806E8FC4  4B B8 67 45 */	bl SetR__8cM3dGSphFf
/* 806E8FC8  7F 83 E3 78 */	mr r3, r28
/* 806E8FCC  38 9B 0C 78 */	addi r4, r27, 0xc78
/* 806E8FD0  4B B7 BB D9 */	bl Set__4cCcSFP8cCcD_Obj
/* 806E8FD4  39 61 00 40 */	addi r11, r1, 0x40
/* 806E8FD8  4B C7 92 49 */	bl _restgpr_27
/* 806E8FDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E8FE0  7C 08 03 A6 */	mtlr r0
/* 806E8FE4  38 21 00 40 */	addi r1, r1, 0x40
/* 806E8FE8  4E 80 00 20 */	blr 
