lbl_806B97A4:
/* 806B97A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B97A8  7C 08 02 A6 */	mflr r0
/* 806B97AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B97B0  39 61 00 30 */	addi r11, r1, 0x30
/* 806B97B4  4B CA 8A 24 */	b _savegpr_28
/* 806B97B8  7C 7C 1B 78 */	mr r28, r3
/* 806B97BC  3C 60 80 6C */	lis r3, lit_3826@ha
/* 806B97C0  3B C3 B6 D0 */	addi r30, r3, lit_3826@l
/* 806B97C4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 806B97C8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 806B97CC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806B97D0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 806B97D4  D0 41 00 08 */	stfs f2, 8(r1)
/* 806B97D8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806B97DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B97E0  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 806B97E4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806B97E8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 806B97EC  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 806B97F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806B97F4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806B97F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B97FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B9800  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 806B9804  4B 95 2B D8 */	b mDoMtx_YrotS__FPA4_fs
/* 806B9808  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B980C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B9810  38 81 00 14 */	addi r4, r1, 0x14
/* 806B9814  7C 85 23 78 */	mr r5, r4
/* 806B9818  4B C8 D5 54 */	b PSMTXMultVec
/* 806B981C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B9820  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B9824  38 81 00 08 */	addi r4, r1, 8
/* 806B9828  7C 85 23 78 */	mr r5, r4
/* 806B982C  4B C8 D5 40 */	b PSMTXMultVec
/* 806B9830  38 61 00 14 */	addi r3, r1, 0x14
/* 806B9834  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806B9838  7C 65 1B 78 */	mr r5, r3
/* 806B983C  4B C8 D8 54 */	b PSVECAdd
/* 806B9840  38 7C 09 AC */	addi r3, r28, 0x9ac
/* 806B9844  38 81 00 14 */	addi r4, r1, 0x14
/* 806B9848  4B BB 5E 00 */	b SetC__8cM3dGSphFRC4cXyz
/* 806B984C  38 7C 09 AC */	addi r3, r28, 0x9ac
/* 806B9850  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 806B9854  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806B9858  3B E4 B9 1C */	addi r31, r4, l_HIO@l
/* 806B985C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806B9860  EC 21 00 32 */	fmuls f1, f1, f0
/* 806B9864  4B BB 5E A4 */	b SetR__8cM3dGSphFf
/* 806B9868  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B986C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B9870  3B A3 23 3C */	addi r29, r3, 0x233c
/* 806B9874  7F A3 EB 78 */	mr r3, r29
/* 806B9878  38 9C 08 88 */	addi r4, r28, 0x888
/* 806B987C  4B BA B3 2C */	b Set__4cCcSFP8cCcD_Obj
/* 806B9880  38 7C 0A E4 */	addi r3, r28, 0xae4
/* 806B9884  38 81 00 08 */	addi r4, r1, 8
/* 806B9888  4B BB 5D C0 */	b SetC__8cM3dGSphFRC4cXyz
/* 806B988C  38 7C 0A E4 */	addi r3, r28, 0xae4
/* 806B9890  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 806B9894  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806B9898  EC 21 00 32 */	fmuls f1, f1, f0
/* 806B989C  4B BB 5E 6C */	b SetR__8cM3dGSphFf
/* 806B98A0  7F A3 EB 78 */	mr r3, r29
/* 806B98A4  38 9C 09 C0 */	addi r4, r28, 0x9c0
/* 806B98A8  4B BA B3 00 */	b Set__4cCcSFP8cCcD_Obj
/* 806B98AC  39 61 00 30 */	addi r11, r1, 0x30
/* 806B98B0  4B CA 89 74 */	b _restgpr_28
/* 806B98B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B98B8  7C 08 03 A6 */	mtlr r0
/* 806B98BC  38 21 00 30 */	addi r1, r1, 0x30
/* 806B98C0  4E 80 00 20 */	blr 
