lbl_8054C584:
/* 8054C584  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054C588  7C 08 02 A6 */	mflr r0
/* 8054C58C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054C590  39 61 00 30 */	addi r11, r1, 0x30
/* 8054C594  4B E1 5C 3D */	bl _savegpr_26
/* 8054C598  7C 7D 1B 78 */	mr r29, r3
/* 8054C59C  3C 60 80 55 */	lis r3, lit_1109@ha /* 0x8054F1A0@ha */
/* 8054C5A0  3B C3 F1 A0 */	addi r30, r3, lit_1109@l /* 0x8054F1A0@l */
/* 8054C5A4  3C 60 80 55 */	lis r3, m__21daNpc_Kakashi_Param_c@ha /* 0x8054EAC4@ha */
/* 8054C5A8  3B E3 EA C4 */	addi r31, r3, m__21daNpc_Kakashi_Param_c@l /* 0x8054EAC4@l */
/* 8054C5AC  88 1D 0E 25 */	lbz r0, 0xe25(r29)
/* 8054C5B0  28 00 00 00 */	cmplwi r0, 0
/* 8054C5B4  40 82 03 30 */	bne lbl_8054C8E4
/* 8054C5B8  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 8054C5BC  7C 00 07 75 */	extsb. r0, r0
/* 8054C5C0  40 82 00 34 */	bne lbl_8054C5F4
/* 8054C5C4  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8054C5C8  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8054C5CC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8054C5D0  38 7E 00 60 */	addi r3, r30, 0x60
/* 8054C5D4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8054C5D8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8054C5DC  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054C5E0  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054C5E4  38 BE 00 50 */	addi r5, r30, 0x50
/* 8054C5E8  4B FF ED 11 */	bl __register_global_object
/* 8054C5EC  38 00 00 01 */	li r0, 1
/* 8054C5F0  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_8054C5F4:
/* 8054C5F4  88 1E 00 78 */	lbz r0, 0x78(r30)
/* 8054C5F8  7C 00 07 75 */	extsb. r0, r0
/* 8054C5FC  40 82 00 34 */	bne lbl_8054C630
/* 8054C600  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8054C604  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 8054C608  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8054C60C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 8054C610  D0 03 00 04 */	stfs f0, 4(r3)
/* 8054C614  D0 03 00 08 */	stfs f0, 8(r3)
/* 8054C618  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054C61C  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054C620  38 BE 00 6C */	addi r5, r30, 0x6c
/* 8054C624  4B FF EC D5 */	bl __register_global_object
/* 8054C628  38 00 00 01 */	li r0, 1
/* 8054C62C  98 1E 00 78 */	stb r0, 0x78(r30)
lbl_8054C630:
/* 8054C630  88 1E 00 94 */	lbz r0, 0x94(r30)
/* 8054C634  7C 00 07 75 */	extsb. r0, r0
/* 8054C638  40 82 00 34 */	bne lbl_8054C66C
/* 8054C63C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8054C640  D0 1E 00 98 */	stfs f0, 0x98(r30)
/* 8054C644  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8054C648  38 7E 00 98 */	addi r3, r30, 0x98
/* 8054C64C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8054C650  D0 03 00 08 */	stfs f0, 8(r3)
/* 8054C654  3C 80 80 55 */	lis r4, __dt__4cXyzFv@ha /* 0x8054DDD0@ha */
/* 8054C658  38 84 DD D0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8054DDD0@l */
/* 8054C65C  38 BE 00 88 */	addi r5, r30, 0x88
/* 8054C660  4B FF EC 99 */	bl __register_global_object
/* 8054C664  38 00 00 01 */	li r0, 1
/* 8054C668  98 1E 00 94 */	stb r0, 0x94(r30)
lbl_8054C66C:
/* 8054C66C  39 40 00 00 */	li r10, 0
/* 8054C670  38 60 00 00 */	li r3, 0
/* 8054C674  7C 68 1B 78 */	mr r8, r3
/* 8054C678  3C 80 00 40 */	lis r4, 0x0040 /* 0x004060A0@ha */
/* 8054C67C  38 E4 60 A0 */	addi r7, r4, 0x60A0 /* 0x004060A0@l */
/* 8054C680  38 C0 00 07 */	li r6, 7
/* 8054C684  7C 65 1B 78 */	mr r5, r3
/* 8054C688  7C 64 1B 78 */	mr r4, r3
/* 8054C68C  38 00 00 03 */	li r0, 3
/* 8054C690  7C 09 03 A6 */	mtctr r0
lbl_8054C694:
/* 8054C694  2C 0A 00 00 */	cmpwi r10, 0
/* 8054C698  40 82 00 18 */	bne lbl_8054C6B0
/* 8054C69C  7D 3D 1A 14 */	add r9, r29, r3
/* 8054C6A0  91 09 0F CC */	stw r8, 0xfcc(r9)
/* 8054C6A4  90 E9 0F C8 */	stw r7, 0xfc8(r9)
/* 8054C6A8  90 C9 0F B8 */	stw r6, 0xfb8(r9)
/* 8054C6AC  48 00 00 10 */	b lbl_8054C6BC
lbl_8054C6B0:
/* 8054C6B0  7D 3D 1A 14 */	add r9, r29, r3
/* 8054C6B4  90 A9 0F C8 */	stw r5, 0xfc8(r9)
/* 8054C6B8  90 89 0F B8 */	stw r4, 0xfb8(r9)
lbl_8054C6BC:
/* 8054C6BC  39 4A 00 01 */	addi r10, r10, 1
/* 8054C6C0  38 63 01 38 */	addi r3, r3, 0x138
/* 8054C6C4  42 00 FF D0 */	bdnz lbl_8054C694
/* 8054C6C8  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8054C6CC  2C 00 00 00 */	cmpwi r0, 0
/* 8054C6D0  41 82 00 64 */	beq lbl_8054C734
/* 8054C6D4  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 8054C6D8  80 63 00 04 */	lwz r3, 4(r3)
/* 8054C6DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8054C6E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8054C6E4  38 63 01 50 */	addi r3, r3, 0x150
/* 8054C6E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C6EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C6F0  4B DF 9D C1 */	bl PSMTXCopy
/* 8054C6F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C6F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C6FC  38 9E 00 98 */	addi r4, r30, 0x98
/* 8054C700  38 A1 00 08 */	addi r5, r1, 8
/* 8054C704  4B DF A6 69 */	bl PSMTXMultVec
/* 8054C708  38 7D 10 C4 */	addi r3, r29, 0x10c4
/* 8054C70C  38 81 00 08 */	addi r4, r1, 8
/* 8054C710  4B D2 2F 39 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8054C714  38 7D 10 C4 */	addi r3, r29, 0x10c4
/* 8054C718  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8054C71C  4B D2 2F ED */	bl SetR__8cM3dGSphFf
/* 8054C720  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054C724  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054C728  38 63 23 3C */	addi r3, r3, 0x233c
/* 8054C72C  38 9D 0F A0 */	addi r4, r29, 0xfa0
/* 8054C730  4B D1 84 79 */	bl Set__4cCcSFP8cCcD_Obj
lbl_8054C734:
/* 8054C734  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 8054C738  80 63 00 04 */	lwz r3, 4(r3)
/* 8054C73C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8054C740  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8054C744  38 63 00 60 */	addi r3, r3, 0x60
/* 8054C748  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C74C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C750  4B DF 9D 61 */	bl PSMTXCopy
/* 8054C754  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C758  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C75C  38 9E 00 60 */	addi r4, r30, 0x60
/* 8054C760  38 A1 00 08 */	addi r5, r1, 8
/* 8054C764  4B DF A6 09 */	bl PSMTXMultVec
/* 8054C768  38 00 00 19 */	li r0, 0x19
/* 8054C76C  90 1D 11 04 */	stw r0, 0x1104(r29)
/* 8054C770  38 7D 11 FC */	addi r3, r29, 0x11fc
/* 8054C774  38 81 00 08 */	addi r4, r1, 8
/* 8054C778  4B D2 2E D1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8054C77C  38 7D 11 FC */	addi r3, r29, 0x11fc
/* 8054C780  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8054C784  4B D2 2F 85 */	bl SetR__8cM3dGSphFf
/* 8054C788  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054C78C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054C790  3B 83 23 3C */	addi r28, r3, 0x233c
/* 8054C794  7F 83 E3 78 */	mr r3, r28
/* 8054C798  38 9D 10 D8 */	addi r4, r29, 0x10d8
/* 8054C79C  4B D1 84 0D */	bl Set__4cCcSFP8cCcD_Obj
/* 8054C7A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054C7A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054C7A8  38 9E 00 7C */	addi r4, r30, 0x7c
/* 8054C7AC  38 A1 00 08 */	addi r5, r1, 8
/* 8054C7B0  4B DF A5 BD */	bl PSMTXMultVec
/* 8054C7B4  38 00 00 19 */	li r0, 0x19
/* 8054C7B8  90 1D 12 3C */	stw r0, 0x123c(r29)
/* 8054C7BC  38 7D 13 34 */	addi r3, r29, 0x1334
/* 8054C7C0  38 81 00 08 */	addi r4, r1, 8
/* 8054C7C4  4B D2 2E 85 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8054C7C8  38 7D 13 34 */	addi r3, r29, 0x1334
/* 8054C7CC  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8054C7D0  4B D2 2F 39 */	bl SetR__8cM3dGSphFf
/* 8054C7D4  7F 83 E3 78 */	mr r3, r28
/* 8054C7D8  38 9D 12 10 */	addi r4, r29, 0x1210
/* 8054C7DC  4B D1 83 CD */	bl Set__4cCcSFP8cCcD_Obj
/* 8054C7E0  3B 40 00 00 */	li r26, 0
/* 8054C7E4  3B C0 00 00 */	li r30, 0
lbl_8054C7E8:
/* 8054C7E8  3B 7E 0F A0 */	addi r27, r30, 0xfa0
/* 8054C7EC  7F 7D DA 14 */	add r27, r29, r27
/* 8054C7F0  7F 63 DB 78 */	mr r3, r27
/* 8054C7F4  81 9B 00 3C */	lwz r12, 0x3c(r27)
/* 8054C7F8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8054C7FC  7D 89 03 A6 */	mtctr r12
/* 8054C800  4E 80 04 21 */	bctrl 
/* 8054C804  7F 63 DB 78 */	mr r3, r27
/* 8054C808  81 9B 00 3C */	lwz r12, 0x3c(r27)
/* 8054C80C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8054C810  7D 89 03 A6 */	mtctr r12
/* 8054C814  4E 80 04 21 */	bctrl 
/* 8054C818  3B 5A 00 01 */	addi r26, r26, 1
/* 8054C81C  2C 1A 00 03 */	cmpwi r26, 3
/* 8054C820  3B DE 01 38 */	addi r30, r30, 0x138
/* 8054C824  41 80 FF C4 */	blt lbl_8054C7E8
/* 8054C828  38 00 00 00 */	li r0, 0
/* 8054C82C  98 1D 13 93 */	stb r0, 0x1393(r29)
/* 8054C830  90 1D 0E 8C */	stw r0, 0xe8c(r29)
/* 8054C834  90 1D 0E 7C */	stw r0, 0xe7c(r29)
/* 8054C838  80 1D 0D BC */	lwz r0, 0xdbc(r29)
/* 8054C83C  2C 00 00 00 */	cmpwi r0, 0
/* 8054C840  40 82 00 50 */	bne lbl_8054C890
/* 8054C844  7F A3 EB 78 */	mr r3, r29
/* 8054C848  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8054C84C  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 8054C850  FC 60 08 90 */	fmr f3, f1
/* 8054C854  C0 9F 00 DC */	lfs f4, 0xdc(r31)
/* 8054C858  C0 BF 00 BC */	lfs f5, 0xbc(r31)
/* 8054C85C  FC C0 20 90 */	fmr f6, f4
/* 8054C860  C0 FF 00 D4 */	lfs f7, 0xd4(r31)
/* 8054C864  38 80 00 00 */	li r4, 0
/* 8054C868  4B BF F9 99 */	bl daNpcT_chkActorInScreen__FP10fopAc_ac_cfffffffi
/* 8054C86C  2C 03 00 00 */	cmpwi r3, 0
/* 8054C870  41 82 00 20 */	beq lbl_8054C890
/* 8054C874  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 8054C878  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 8054C87C  90 1D 0E 8C */	stw r0, 0xe8c(r29)
/* 8054C880  38 00 00 01 */	li r0, 1
/* 8054C884  98 1D 0F 1E */	stb r0, 0xf1e(r29)
/* 8054C888  38 00 00 1F */	li r0, 0x1f
/* 8054C88C  90 1D 0E 7C */	stw r0, 0xe7c(r29)
lbl_8054C890:
/* 8054C890  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8054C894  D0 01 00 08 */	stfs f0, 8(r1)
/* 8054C898  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8054C89C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8054C8A0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8054C8A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8054C8A8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8054C8AC  EC 01 00 2A */	fadds f0, f1, f0
/* 8054C8B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8054C8B4  38 7D 0F 88 */	addi r3, r29, 0xf88
/* 8054C8B8  C0 3D 0D EC */	lfs f1, 0xdec(r29)
/* 8054C8BC  4B D2 29 3D */	bl SetH__8cM3dGCylFf
/* 8054C8C0  38 7D 0F 88 */	addi r3, r29, 0xf88
/* 8054C8C4  C0 3D 0D F0 */	lfs f1, 0xdf0(r29)
/* 8054C8C8  4B D2 29 39 */	bl SetR__8cM3dGCylFf
/* 8054C8CC  38 7D 0F 88 */	addi r3, r29, 0xf88
/* 8054C8D0  38 81 00 08 */	addi r4, r1, 8
/* 8054C8D4  4B D2 29 09 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8054C8D8  7F 83 E3 78 */	mr r3, r28
/* 8054C8DC  38 9D 0E 64 */	addi r4, r29, 0xe64
/* 8054C8E0  4B D1 82 C9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_8054C8E4:
/* 8054C8E4  38 7D 0E 64 */	addi r3, r29, 0xe64
/* 8054C8E8  81 9D 0E A0 */	lwz r12, 0xea0(r29)
/* 8054C8EC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8054C8F0  7D 89 03 A6 */	mtctr r12
/* 8054C8F4  4E 80 04 21 */	bctrl 
/* 8054C8F8  38 7D 0E 64 */	addi r3, r29, 0xe64
/* 8054C8FC  81 9D 0E A0 */	lwz r12, 0xea0(r29)
/* 8054C900  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8054C904  7D 89 03 A6 */	mtctr r12
/* 8054C908  4E 80 04 21 */	bctrl 
/* 8054C90C  39 61 00 30 */	addi r11, r1, 0x30
/* 8054C910  4B E1 59 0D */	bl _restgpr_26
/* 8054C914  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054C918  7C 08 03 A6 */	mtlr r0
/* 8054C91C  38 21 00 30 */	addi r1, r1, 0x30
/* 8054C920  4E 80 00 20 */	blr 
