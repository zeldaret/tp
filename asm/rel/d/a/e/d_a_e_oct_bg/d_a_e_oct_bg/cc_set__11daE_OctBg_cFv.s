lbl_807368C8:
/* 807368C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807368CC  7C 08 02 A6 */	mflr r0
/* 807368D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 807368D4  39 61 00 40 */	addi r11, r1, 0x40
/* 807368D8  4B C2 B8 FC */	b _savegpr_27
/* 807368DC  7C 7C 1B 78 */	mr r28, r3
/* 807368E0  3C 60 80 74 */	lis r3, lit_3768@ha
/* 807368E4  3B C3 9D 60 */	addi r30, r3, lit_3768@l
/* 807368E8  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807368EC  83 A3 00 04 */	lwz r29, 4(r3)
/* 807368F0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807368F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807368F8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807368FC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80736900  4B C0 FB B0 */	b PSMTXCopy
/* 80736904  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80736908  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8073690C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80736910  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha
/* 80736914  3B E3 A1 4C */	addi r31, r3, struct_8073A14C+0x0@l
/* 80736918  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8073691C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80736920  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80736924  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80736928  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8073692C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80736930  38 81 00 14 */	addi r4, r1, 0x14
/* 80736934  38 BC 05 38 */	addi r5, r28, 0x538
/* 80736938  4B C1 04 34 */	b PSMTXMultVec
/* 8073693C  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80736940  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 80736944  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80736948  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8073694C  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 80736950  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 80736954  C0 5C 05 54 */	lfs f2, 0x554(r28)
/* 80736958  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8073695C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80736960  EC 01 00 32 */	fmuls f0, f1, f0
/* 80736964  EC 02 00 2A */	fadds f0, f2, f0
/* 80736968  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8073696C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80736970  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80736974  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80736978  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8073697C  4B C0 FB 34 */	b PSMTXCopy
/* 80736980  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80736984  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80736988  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8073698C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80736990  EC 01 00 32 */	fmuls f0, f1, f0
/* 80736994  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80736998  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8073699C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807369A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807369A4  38 81 00 14 */	addi r4, r1, 0x14
/* 807369A8  38 A1 00 08 */	addi r5, r1, 8
/* 807369AC  4B C1 03 C0 */	b PSMTXMultVec
/* 807369B0  38 7C 09 E4 */	addi r3, r28, 0x9e4
/* 807369B4  38 81 00 08 */	addi r4, r1, 8
/* 807369B8  4B B3 8C 90 */	b SetC__8cM3dGSphFRC4cXyz
/* 807369BC  38 7C 09 E4 */	addi r3, r28, 0x9e4
/* 807369C0  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 807369C4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 807369C8  EC 21 00 32 */	fmuls f1, f1, f0
/* 807369CC  4B B3 8D 3C */	b SetR__8cM3dGSphFf
/* 807369D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807369D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807369D8  3B 63 23 3C */	addi r27, r3, 0x233c
/* 807369DC  7F 63 DB 78 */	mr r3, r27
/* 807369E0  38 9C 08 C0 */	addi r4, r28, 0x8c0
/* 807369E4  4B B2 E1 C4 */	b Set__4cCcSFP8cCcD_Obj
/* 807369E8  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807369EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807369F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807369F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807369F8  4B C0 FA B8 */	b PSMTXCopy
/* 807369FC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80736A00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80736A04  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80736A08  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80736A0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80736A10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80736A14  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80736A18  EC 00 00 72 */	fmuls f0, f0, f1
/* 80736A1C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80736A20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80736A24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80736A28  38 81 00 14 */	addi r4, r1, 0x14
/* 80736A2C  38 A1 00 08 */	addi r5, r1, 8
/* 80736A30  4B C1 03 3C */	b PSMTXMultVec
/* 80736A34  38 7C 0B 1C */	addi r3, r28, 0xb1c
/* 80736A38  38 81 00 08 */	addi r4, r1, 8
/* 80736A3C  4B B3 8C 0C */	b SetC__8cM3dGSphFRC4cXyz
/* 80736A40  38 7C 0B 1C */	addi r3, r28, 0xb1c
/* 80736A44  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80736A48  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80736A4C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80736A50  4B B3 8C B8 */	b SetR__8cM3dGSphFf
/* 80736A54  7F 63 DB 78 */	mr r3, r27
/* 80736A58  38 9C 09 F8 */	addi r4, r28, 0x9f8
/* 80736A5C  4B B2 E1 4C */	b Set__4cCcSFP8cCcD_Obj
/* 80736A60  39 61 00 40 */	addi r11, r1, 0x40
/* 80736A64  4B C2 B7 BC */	b _restgpr_27
/* 80736A68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80736A6C  7C 08 03 A6 */	mtlr r0
/* 80736A70  38 21 00 40 */	addi r1, r1, 0x40
/* 80736A74  4E 80 00 20 */	blr 
