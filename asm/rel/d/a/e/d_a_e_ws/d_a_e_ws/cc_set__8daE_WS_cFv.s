lbl_807E5AAC:
/* 807E5AAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807E5AB0  7C 08 02 A6 */	mflr r0
/* 807E5AB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 807E5AB8  39 61 00 40 */	addi r11, r1, 0x40
/* 807E5ABC  4B B7 C7 21 */	bl _savegpr_29
/* 807E5AC0  7C 7E 1B 78 */	mr r30, r3
/* 807E5AC4  3C 60 80 7E */	lis r3, lit_3802@ha /* 0x807E7300@ha */
/* 807E5AC8  3B E3 73 00 */	addi r31, r3, lit_3802@l /* 0x807E7300@l */
/* 807E5ACC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E5AD0  83 A3 00 04 */	lwz r29, 4(r3)
/* 807E5AD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E5AD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E5ADC  A8 9E 06 6A */	lha r4, 0x66a(r30)
/* 807E5AE0  4B 82 68 FD */	bl mDoMtx_YrotS__FPA4_fs
/* 807E5AE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E5AE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E5AEC  A8 9E 06 68 */	lha r4, 0x668(r30)
/* 807E5AF0  4B 82 68 AD */	bl mDoMtx_XrotM__FPA4_fs
/* 807E5AF4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E5AF8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807E5AFC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 807E5B00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807E5B04  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807E5B08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E5B0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E5B10  38 81 00 20 */	addi r4, r1, 0x20
/* 807E5B14  38 A1 00 14 */	addi r5, r1, 0x14
/* 807E5B18  4B B6 12 55 */	bl PSMTXMultVec
/* 807E5B1C  38 61 00 08 */	addi r3, r1, 8
/* 807E5B20  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807E5B24  38 A1 00 14 */	addi r5, r1, 0x14
/* 807E5B28  4B A8 0F BD */	bl __pl__4cXyzCFRC3Vec
/* 807E5B2C  C0 01 00 08 */	lfs f0, 8(r1)
/* 807E5B30  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 807E5B34  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807E5B38  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 807E5B3C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807E5B40  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 807E5B44  C0 5E 05 54 */	lfs f2, 0x554(r30)
/* 807E5B48  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 807E5B4C  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 807E5B50  EC 01 00 32 */	fmuls f0, f1, f0
/* 807E5B54  EC 02 00 2A */	fadds f0, f2, f0
/* 807E5B58  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 807E5B5C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807E5B60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807E5B64  38 63 00 30 */	addi r3, r3, 0x30
/* 807E5B68  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E5B6C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E5B70  4B B6 09 41 */	bl PSMTXCopy
/* 807E5B74  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 807E5B78  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E5B7C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 807E5B80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807E5B84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E5B88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807E5B8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E5B90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E5B94  38 81 00 20 */	addi r4, r1, 0x20
/* 807E5B98  38 BE 05 38 */	addi r5, r30, 0x538
/* 807E5B9C  4B B6 11 D1 */	bl PSMTXMultVec
/* 807E5BA0  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 807E5BA4  38 9E 05 38 */	addi r4, r30, 0x538
/* 807E5BA8  4B A8 9A A1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807E5BAC  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 807E5BB0  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 807E5BB4  4B A8 9B 55 */	bl SetR__8cM3dGSphFf
/* 807E5BB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E5BBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E5BC0  3B A3 23 3C */	addi r29, r3, 0x233c
/* 807E5BC4  7F A3 EB 78 */	mr r3, r29
/* 807E5BC8  38 9E 08 E8 */	addi r4, r30, 0x8e8
/* 807E5BCC  4B A7 EF DD */	bl Set__4cCcSFP8cCcD_Obj
/* 807E5BD0  38 7E 0B 44 */	addi r3, r30, 0xb44
/* 807E5BD4  38 9E 05 38 */	addi r4, r30, 0x538
/* 807E5BD8  4B A8 9A 71 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807E5BDC  38 7E 0B 44 */	addi r3, r30, 0xb44
/* 807E5BE0  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 807E5BE4  4B A8 9B 25 */	bl SetR__8cM3dGSphFf
/* 807E5BE8  7F A3 EB 78 */	mr r3, r29
/* 807E5BEC  38 9E 0A 20 */	addi r4, r30, 0xa20
/* 807E5BF0  4B A7 EF B9 */	bl Set__4cCcSFP8cCcD_Obj
/* 807E5BF4  39 61 00 40 */	addi r11, r1, 0x40
/* 807E5BF8  4B B7 C6 31 */	bl _restgpr_29
/* 807E5BFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807E5C00  7C 08 03 A6 */	mtlr r0
/* 807E5C04  38 21 00 40 */	addi r1, r1, 0x40
/* 807E5C08  4E 80 00 20 */	blr 
