lbl_801AE000:
/* 801AE000  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801AE004  7C 08 02 A6 */	mflr r0
/* 801AE008  90 01 00 54 */	stw r0, 0x54(r1)
/* 801AE00C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801AE010  7C 7F 1B 78 */	mr r31, r3
/* 801AE014  88 0D 8A F0 */	lbz r0, struct_80451070+0x0(r13)
/* 801AE018  7C 00 07 75 */	extsb. r0, r0
/* 801AE01C  40 82 00 3C */	bne lbl_801AE058
/* 801AE020  C0 02 A4 70 */	lfs f0, lit_3882(r2)
/* 801AE024  3C 60 80 43 */	lis r3, data_8042E808@ha /* 0x8042E808@ha */
/* 801AE028  D4 03 E8 08 */	stfsu f0, data_8042E808@l(r3)  /* 0x8042E808@l */
/* 801AE02C  C0 02 A4 74 */	lfs f0, lit_3883(r2)
/* 801AE030  D0 03 00 04 */	stfs f0, 4(r3)
/* 801AE034  C0 02 A4 78 */	lfs f0, lit_3884(r2)
/* 801AE038  D0 03 00 08 */	stfs f0, 8(r3)
/* 801AE03C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 801AE040  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 801AE044  3C A0 80 43 */	lis r5, lit_3816@ha /* 0x8042E7F0@ha */
/* 801AE048  38 A5 E7 F0 */	addi r5, r5, lit_3816@l /* 0x8042E7F0@l */
/* 801AE04C  48 1B 3B D9 */	bl __register_global_object
/* 801AE050  38 00 00 01 */	li r0, 1
/* 801AE054  98 0D 8A F0 */	stb r0, struct_80451070+0x0(r13)
lbl_801AE058:
/* 801AE058  88 0D 8A F1 */	lbz r0, struct_80451070+0x1(r13)
/* 801AE05C  7C 00 07 75 */	extsb. r0, r0
/* 801AE060  40 82 00 34 */	bne lbl_801AE094
/* 801AE064  C0 02 A4 7C */	lfs f0, lit_3885(r2)
/* 801AE068  3C 60 80 43 */	lis r3, data_8042E814@ha /* 0x8042E814@ha */
/* 801AE06C  D4 03 E8 14 */	stfsu f0, data_8042E814@l(r3)  /* 0x8042E814@l */
/* 801AE070  D0 03 00 04 */	stfs f0, 4(r3)
/* 801AE074  D0 03 00 08 */	stfs f0, 8(r3)
/* 801AE078  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 801AE07C  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 801AE080  3C A0 80 43 */	lis r5, lit_3818@ha /* 0x8042E7FC@ha */
/* 801AE084  38 A5 E7 FC */	addi r5, r5, lit_3818@l /* 0x8042E7FC@l */
/* 801AE088  48 1B 3B 9D */	bl __register_global_object
/* 801AE08C  38 00 00 01 */	li r0, 1
/* 801AE090  98 0D 8A F1 */	stb r0, struct_80451070+0x1(r13)
lbl_801AE094:
/* 801AE094  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801AE098  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801AE09C  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 801AE0A0  C0 5F 01 48 */	lfs f2, 0x148(r31)
/* 801AE0A4  C0 7F 01 4C */	lfs f3, 0x14c(r31)
/* 801AE0A8  48 19 88 41 */	bl PSMTXTrans
/* 801AE0AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801AE0B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801AE0B4  A8 9F 01 68 */	lha r4, 0x168(r31)
/* 801AE0B8  4B E5 E3 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 801AE0BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801AE0C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801AE0C4  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 801AE0C8  FC 00 00 1E */	fctiwz f0, f0
/* 801AE0CC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 801AE0D0  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 801AE0D4  4B E5 E3 F9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 801AE0D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801AE0DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801AE0E0  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 801AE0E4  FC 00 00 1E */	fctiwz f0, f0
/* 801AE0E8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801AE0EC  80 81 00 44 */	lwz r4, 0x44(r1)
/* 801AE0F0  4B E5 E2 AD */	bl mDoMtx_XrotM__FPA4_fs
/* 801AE0F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801AE0F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801AE0FC  38 81 00 08 */	addi r4, r1, 8
/* 801AE100  48 19 83 B1 */	bl PSMTXCopy
/* 801AE104  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 801AE108  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 801AE10C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 801AE110  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 801AE114  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801AE118  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 801AE11C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801AE120  38 61 00 08 */	addi r3, r1, 8
/* 801AE124  80 9F 00 FC */	lwz r4, 0xfc(r31)
/* 801AE128  38 84 00 24 */	addi r4, r4, 0x24
/* 801AE12C  48 19 83 85 */	bl PSMTXCopy
/* 801AE130  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 801AE134  80 83 00 04 */	lwz r4, 4(r3)
/* 801AE138  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 801AE13C  38 7F 01 08 */	addi r3, r31, 0x108
/* 801AE140  38 84 00 58 */	addi r4, r4, 0x58
/* 801AE144  4B E5 F6 65 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 801AE148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AE14C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AE150  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 801AE154  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801AE158  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 801AE15C  90 03 00 48 */	stw r0, 0x48(r3)
/* 801AE160  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 801AE164  90 03 00 4C */	stw r0, 0x4c(r3)
/* 801AE168  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 801AE16C  4B E5 FB 59 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 801AE170  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 801AE174  80 63 00 04 */	lwz r3, 4(r3)
/* 801AE178  38 63 00 58 */	addi r3, r3, 0x58
/* 801AE17C  80 9F 01 1C */	lwz r4, 0x11c(r31)
/* 801AE180  48 18 17 01 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 801AE184  38 60 00 01 */	li r3, 1
/* 801AE188  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801AE18C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801AE190  7C 08 03 A6 */	mtlr r0
/* 801AE194  38 21 00 50 */	addi r1, r1, 0x50
/* 801AE198  4E 80 00 20 */	blr 
