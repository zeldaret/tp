lbl_8073BE10:
/* 8073BE10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073BE14  7C 08 02 A6 */	mflr r0
/* 8073BE18  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073BE1C  39 61 00 30 */	addi r11, r1, 0x30
/* 8073BE20  4B C2 63 B9 */	bl _savegpr_28
/* 8073BE24  7C 7E 1B 78 */	mr r30, r3
/* 8073BE28  3C 60 80 74 */	lis r3, lit_3910@ha /* 0x8073CEA8@ha */
/* 8073BE2C  3B E3 CE A8 */	addi r31, r3, lit_3910@l /* 0x8073CEA8@l */
/* 8073BE30  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8073BE34  83 A3 00 04 */	lwz r29, 4(r3)
/* 8073BE38  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8073BE3C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8073BE40  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073BE44  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073BE48  4B C0 A6 69 */	bl PSMTXCopy
/* 8073BE4C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8073BE50  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073BE54  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073BE58  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073BE5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8073BE60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073BE64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073BE68  38 81 00 14 */	addi r4, r1, 0x14
/* 8073BE6C  38 BE 05 38 */	addi r5, r30, 0x538
/* 8073BE70  4B C0 AE FD */	bl PSMTXMultVec
/* 8073BE74  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8073BE78  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8073BE7C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8073BE80  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8073BE84  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8073BE88  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8073BE8C  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 8073BE90  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8073BE94  EC 01 00 2A */	fadds f0, f1, f0
/* 8073BE98  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8073BE9C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8073BEA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8073BEA4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073BEA8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073BEAC  4B C0 A6 05 */	bl PSMTXCopy
/* 8073BEB0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073BEB4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8073BEB8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8073BEBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073BEC0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8073BEC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073BEC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073BECC  38 81 00 14 */	addi r4, r1, 0x14
/* 8073BED0  38 A1 00 08 */	addi r5, r1, 8
/* 8073BED4  4B C0 AE 99 */	bl PSMTXMultVec
/* 8073BED8  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 8073BEDC  38 81 00 08 */	addi r4, r1, 8
/* 8073BEE0  4B B3 37 69 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8073BEE4  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 8073BEE8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8073BEEC  4B B3 38 1D */	bl SetR__8cM3dGSphFf
/* 8073BEF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073BEF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073BEF8  3B 83 23 3C */	addi r28, r3, 0x233c
/* 8073BEFC  7F 83 E3 78 */	mr r3, r28
/* 8073BF00  38 9E 08 EC */	addi r4, r30, 0x8ec
/* 8073BF04  4B B2 8C A5 */	bl Set__4cCcSFP8cCcD_Obj
/* 8073BF08  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8073BF0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8073BF10  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073BF14  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073BF18  4B C0 A5 99 */	bl PSMTXCopy
/* 8073BF1C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8073BF20  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073BF24  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8073BF28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073BF2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073BF30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8073BF34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073BF38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073BF3C  38 81 00 14 */	addi r4, r1, 0x14
/* 8073BF40  38 A1 00 08 */	addi r5, r1, 8
/* 8073BF44  4B C0 AE 29 */	bl PSMTXMultVec
/* 8073BF48  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 8073BF4C  38 81 00 08 */	addi r4, r1, 8
/* 8073BF50  4B B3 36 F9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8073BF54  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 8073BF58  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8073BF5C  4B B3 37 AD */	bl SetR__8cM3dGSphFf
/* 8073BF60  7F 83 E3 78 */	mr r3, r28
/* 8073BF64  38 9E 0A 24 */	addi r4, r30, 0xa24
/* 8073BF68  4B B2 8C 41 */	bl Set__4cCcSFP8cCcD_Obj
/* 8073BF6C  39 61 00 30 */	addi r11, r1, 0x30
/* 8073BF70  4B C2 62 B5 */	bl _restgpr_28
/* 8073BF74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073BF78  7C 08 03 A6 */	mtlr r0
/* 8073BF7C  38 21 00 30 */	addi r1, r1, 0x30
/* 8073BF80  4E 80 00 20 */	blr 
