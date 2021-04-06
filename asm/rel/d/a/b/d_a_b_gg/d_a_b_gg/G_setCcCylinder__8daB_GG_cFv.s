lbl_805DE9B8:
/* 805DE9B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805DE9BC  7C 08 02 A6 */	mflr r0
/* 805DE9C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805DE9C4  39 61 00 30 */	addi r11, r1, 0x30
/* 805DE9C8  4B D8 38 11 */	bl _savegpr_28
/* 805DE9CC  7C 7C 1B 78 */	mr r28, r3
/* 805DE9D0  3C 60 80 5F */	lis r3, lit_3911@ha /* 0x805ED060@ha */
/* 805DE9D4  3B C3 D0 60 */	addi r30, r3, lit_3911@l /* 0x805ED060@l */
/* 805DE9D8  38 7C 07 FC */	addi r3, r28, 0x7fc
/* 805DE9DC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805DE9E0  4B C9 07 FD */	bl SetC__8cM3dGCylFRC4cXyz
/* 805DE9E4  38 7C 07 FC */	addi r3, r28, 0x7fc
/* 805DE9E8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805DE9EC  3C 80 80 5F */	lis r4, l_HIO@ha /* 0x805ED70C@ha */
/* 805DE9F0  3B E4 D7 0C */	addi r31, r4, l_HIO@l /* 0x805ED70C@l */
/* 805DE9F4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805DE9F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 805DE9FC  4B C9 08 05 */	bl SetR__8cM3dGCylFf
/* 805DEA00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DEA04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DEA08  3B A3 23 3C */	addi r29, r3, 0x233c
/* 805DEA0C  7F A3 EB 78 */	mr r3, r29
/* 805DEA10  38 9C 06 D8 */	addi r4, r28, 0x6d8
/* 805DEA14  4B C8 61 95 */	bl Set__4cCcSFP8cCcD_Obj
/* 805DEA18  38 7C 0C E0 */	addi r3, r28, 0xce0
/* 805DEA1C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805DEA20  4B C9 07 BD */	bl SetC__8cM3dGCylFRC4cXyz
/* 805DEA24  38 7C 0C E0 */	addi r3, r28, 0xce0
/* 805DEA28  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805DEA2C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805DEA30  EC 21 00 32 */	fmuls f1, f1, f0
/* 805DEA34  4B C9 07 CD */	bl SetR__8cM3dGCylFf
/* 805DEA38  7F A3 EB 78 */	mr r3, r29
/* 805DEA3C  38 9C 0B BC */	addi r4, r28, 0xbbc
/* 805DEA40  4B C8 61 69 */	bl Set__4cCcSFP8cCcD_Obj
/* 805DEA44  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805DEA48  D0 01 00 08 */	stfs f0, 8(r1)
/* 805DEA4C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DEA50  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805DEA54  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805DEA58  80 7C 0E 30 */	lwz r3, 0xe30(r28)
/* 805DEA5C  80 63 00 04 */	lwz r3, 4(r3)
/* 805DEA60  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805DEA64  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DEA68  38 63 02 10 */	addi r3, r3, 0x210
/* 805DEA6C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DEA70  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DEA74  4B D6 7A 3D */	bl PSMTXCopy
/* 805DEA78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DEA7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DEA80  38 81 00 08 */	addi r4, r1, 8
/* 805DEA84  7C 85 23 78 */	mr r5, r4
/* 805DEA88  4B D6 82 E5 */	bl PSMTXMultVec
/* 805DEA8C  38 7C 0E 1C */	addi r3, r28, 0xe1c
/* 805DEA90  38 81 00 08 */	addi r4, r1, 8
/* 805DEA94  4B C9 0B B5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805DEA98  38 7C 0E 1C */	addi r3, r28, 0xe1c
/* 805DEA9C  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 805DEAA0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805DEAA4  EC 21 00 32 */	fmuls f1, f1, f0
/* 805DEAA8  4B C9 0C 61 */	bl SetR__8cM3dGSphFf
/* 805DEAAC  7F A3 EB 78 */	mr r3, r29
/* 805DEAB0  38 9C 0C F8 */	addi r4, r28, 0xcf8
/* 805DEAB4  4B C8 60 F5 */	bl Set__4cCcSFP8cCcD_Obj
/* 805DEAB8  39 61 00 30 */	addi r11, r1, 0x30
/* 805DEABC  4B D8 37 69 */	bl _restgpr_28
/* 805DEAC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805DEAC4  7C 08 03 A6 */	mtlr r0
/* 805DEAC8  38 21 00 30 */	addi r1, r1, 0x30
/* 805DEACC  4E 80 00 20 */	blr 
