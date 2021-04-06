lbl_80A84B64:
/* 80A84B64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A84B68  7C 08 02 A6 */	mflr r0
/* 80A84B6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A84B70  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80A84B74  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80A84B78  39 61 00 40 */	addi r11, r1, 0x40
/* 80A84B7C  4B 8D D6 61 */	bl _savegpr_29
/* 80A84B80  7C 7D 1B 78 */	mr r29, r3
/* 80A84B84  3C 60 80 A9 */	lis r3, lit_1109@ha /* 0x80A88AF8@ha */
/* 80A84B88  3B C3 8A F8 */	addi r30, r3, lit_1109@l /* 0x80A88AF8@l */
/* 80A84B8C  3C 60 80 A9 */	lis r3, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A84B90  3B E3 84 34 */	addi r31, r3, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A84B94  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80A84B98  7C 00 07 75 */	extsb. r0, r0
/* 80A84B9C  40 82 00 38 */	bne lbl_80A84BD4
/* 80A84BA0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80A84BA4  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80A84BA8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80A84BAC  38 7E 00 60 */	addi r3, r30, 0x60
/* 80A84BB0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A84BB4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A84BB8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A84BBC  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A87BBC@ha */
/* 80A84BC0  38 84 7B BC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A87BBC@l */
/* 80A84BC4  38 BE 00 50 */	addi r5, r30, 0x50
/* 80A84BC8  4B FF F2 51 */	bl __register_global_object
/* 80A84BCC  38 00 00 01 */	li r0, 1
/* 80A84BD0  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80A84BD4:
/* 80A84BD4  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80A84BD8  7F A3 EB 78 */	mr r3, r29
/* 80A84BDC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A84BE0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A84BE4  7D 89 03 A6 */	mtctr r12
/* 80A84BE8  4E 80 04 21 */	bctrl 
/* 80A84BEC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A84BF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80A84BF4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A84BF8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A84BFC  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 80A84C00  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A84C04  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A84C08  4B 8C 18 A9 */	bl PSMTXCopy
/* 80A84C0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A84C10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A84C14  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A84C18  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 80A84C1C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A84C20  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 80A84C24  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A84C28  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 80A84C2C  38 9E 00 60 */	addi r4, r30, 0x60
/* 80A84C30  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A84C34  4B 8C 21 39 */	bl PSMTXMultVec
/* 80A84C38  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A84C3C  38 9E 00 60 */	addi r4, r30, 0x60
/* 80A84C40  D0 04 00 04 */	stfs f0, 4(r4)
/* 80A84C44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A84C48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A84C4C  38 A1 00 08 */	addi r5, r1, 8
/* 80A84C50  4B 8C 21 1D */	bl PSMTXMultVec
/* 80A84C54  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80A84C58  38 81 00 08 */	addi r4, r1, 8
/* 80A84C5C  4B 7E C0 19 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80A84C60  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 80A84C64  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80A84C68  38 81 00 08 */	addi r4, r1, 8
/* 80A84C6C  4B 7E BF 99 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A84C70  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 80A84C74  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A84C78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A84C7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A84C80  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A84C84  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A84C88  4B 58 80 DD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A84C8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A84C90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A84C94  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 80A84C98  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 80A84C9C  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 80A84CA0  4B 58 76 01 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80A84CA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A84CA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A84CAC  38 81 00 14 */	addi r4, r1, 0x14
/* 80A84CB0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80A84CB4  4B 8C 20 B9 */	bl PSMTXMultVec
/* 80A84CB8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80A84CBC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A84CC0  EC 20 F8 2A */	fadds f1, f0, f31
/* 80A84CC4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A84CC8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80A84CCC  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80A84CD0  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 80A84CD4  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 80A84CD8  28 00 00 00 */	cmplwi r0, 0
/* 80A84CDC  40 82 00 9C */	bne lbl_80A84D78
/* 80A84CE0  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80A84CE4  28 00 00 00 */	cmplwi r0, 0
/* 80A84CE8  40 82 00 90 */	bne lbl_80A84D78
/* 80A84CEC  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80A84CF0  28 00 00 00 */	cmplwi r0, 0
/* 80A84CF4  40 82 00 28 */	bne lbl_80A84D1C
/* 80A84CF8  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80A84CFC  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80A84D00  90 1D 0C AC */	stw r0, 0xcac(r29)
/* 80A84D04  38 00 00 1F */	li r0, 0x1f
/* 80A84D08  90 1D 0C 9C */	stw r0, 0xc9c(r29)
/* 80A84D0C  80 1D 0D 20 */	lwz r0, 0xd20(r29)
/* 80A84D10  60 00 00 04 */	ori r0, r0, 4
/* 80A84D14  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 80A84D18  48 00 00 10 */	b lbl_80A84D28
lbl_80A84D1C:
/* 80A84D1C  38 00 00 00 */	li r0, 0
/* 80A84D20  90 1D 0C AC */	stw r0, 0xcac(r29)
/* 80A84D24  90 1D 0C 9C */	stw r0, 0xc9c(r29)
lbl_80A84D28:
/* 80A84D28  38 7D 0D A8 */	addi r3, r29, 0xda8
/* 80A84D2C  38 81 00 20 */	addi r4, r1, 0x20
/* 80A84D30  4B 7E A4 AD */	bl SetC__8cM3dGCylFRC4cXyz
/* 80A84D34  38 7D 0D A8 */	addi r3, r29, 0xda8
/* 80A84D38  38 9F 00 00 */	addi r4, r31, 0
/* 80A84D3C  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80A84D40  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A84D44  EC 21 00 2A */	fadds f1, f1, f0
/* 80A84D48  4B 7E A4 B1 */	bl SetH__8cM3dGCylFf
/* 80A84D4C  38 7D 0D A8 */	addi r3, r29, 0xda8
/* 80A84D50  38 9F 00 00 */	addi r4, r31, 0
/* 80A84D54  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A84D58  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A84D5C  EC 21 00 2A */	fadds f1, f1, f0
/* 80A84D60  4B 7E A4 A1 */	bl SetR__8cM3dGCylFf
/* 80A84D64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A84D68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A84D6C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A84D70  38 9D 0C 84 */	addi r4, r29, 0xc84
/* 80A84D74  4B 7D FE 35 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80A84D78:
/* 80A84D78  38 7D 0C 84 */	addi r3, r29, 0xc84
/* 80A84D7C  81 9D 0C C0 */	lwz r12, 0xcc0(r29)
/* 80A84D80  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A84D84  7D 89 03 A6 */	mtctr r12
/* 80A84D88  4E 80 04 21 */	bctrl 
/* 80A84D8C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80A84D90  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80A84D94  39 61 00 40 */	addi r11, r1, 0x40
/* 80A84D98  4B 8D D4 91 */	bl _restgpr_29
/* 80A84D9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A84DA0  7C 08 03 A6 */	mtlr r0
/* 80A84DA4  38 21 00 50 */	addi r1, r1, 0x50
/* 80A84DA8  4E 80 00 20 */	blr 
