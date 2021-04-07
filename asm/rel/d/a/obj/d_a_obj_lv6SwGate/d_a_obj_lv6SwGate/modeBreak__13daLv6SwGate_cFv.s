lbl_80C74E40:
/* 80C74E40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C74E44  7C 08 02 A6 */	mflr r0
/* 80C74E48  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C74E4C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C74E50  4B 6E D3 8D */	bl _savegpr_29
/* 80C74E54  7C 7F 1B 78 */	mr r31, r3
/* 80C74E58  3C 60 80 C7 */	lis r3, lit_3633@ha /* 0x80C75524@ha */
/* 80C74E5C  3B A3 55 24 */	addi r29, r3, lit_3633@l /* 0x80C75524@l */
/* 80C74E60  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 80C74E64  C0 1F 14 C0 */	lfs f0, 0x14c0(r31)
/* 80C74E68  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C74E6C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C74E70  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80C74E74  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C74E78  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C74E7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C74E80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C74E84  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C74E88  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C74E8C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C74E90  4B 39 73 79 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80C74E94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C74E98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C74E9C  38 81 00 28 */	addi r4, r1, 0x28
/* 80C74EA0  7C 85 23 78 */	mr r5, r4
/* 80C74EA4  4B 6D 1E C9 */	bl PSMTXMultVec
/* 80C74EA8  38 61 00 28 */	addi r3, r1, 0x28
/* 80C74EAC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C74EB0  7C 65 1B 78 */	mr r5, r3
/* 80C74EB4  4B 6D 21 DD */	bl PSVECAdd
/* 80C74EB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C74EBC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C74EC0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C74EC4  38 80 00 00 */	li r4, 0
/* 80C74EC8  90 81 00 08 */	stw r4, 8(r1)
/* 80C74ECC  38 00 FF FF */	li r0, -1
/* 80C74ED0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C74ED4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C74ED8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C74EDC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C74EE0  38 80 00 00 */	li r4, 0
/* 80C74EE4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B79@ha */
/* 80C74EE8  38 A5 8B 79 */	addi r5, r5, 0x8B79 /* 0x00008B79@l */
/* 80C74EEC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C74EF0  38 E0 00 00 */	li r7, 0
/* 80C74EF4  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80C74EF8  39 20 00 00 */	li r9, 0
/* 80C74EFC  39 40 00 FF */	li r10, 0xff
/* 80C74F00  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80C74F04  4B 3D 7B 8D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C74F08  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C74F0C  38 80 00 00 */	li r4, 0
/* 80C74F10  90 81 00 08 */	stw r4, 8(r1)
/* 80C74F14  38 00 FF FF */	li r0, -1
/* 80C74F18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C74F1C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C74F20  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C74F24  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C74F28  38 80 00 00 */	li r4, 0
/* 80C74F2C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B7A@ha */
/* 80C74F30  38 A5 8B 7A */	addi r5, r5, 0x8B7A /* 0x00008B7A@l */
/* 80C74F34  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C74F38  38 E0 00 00 */	li r7, 0
/* 80C74F3C  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80C74F40  39 20 00 00 */	li r9, 0
/* 80C74F44  39 40 00 FF */	li r10, 0xff
/* 80C74F48  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80C74F4C  4B 3D 7B 45 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C74F50  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C74F54  38 80 00 00 */	li r4, 0
/* 80C74F58  90 81 00 08 */	stw r4, 8(r1)
/* 80C74F5C  38 00 FF FF */	li r0, -1
/* 80C74F60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C74F64  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C74F68  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C74F6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C74F70  38 80 00 00 */	li r4, 0
/* 80C74F74  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B7B@ha */
/* 80C74F78  38 A5 8B 7B */	addi r5, r5, 0x8B7B /* 0x00008B7B@l */
/* 80C74F7C  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C74F80  38 E0 00 00 */	li r7, 0
/* 80C74F84  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80C74F88  39 20 00 00 */	li r9, 0
/* 80C74F8C  39 40 00 FF */	li r10, 0xff
/* 80C74F90  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80C74F94  4B 3D 7A FD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C74F98  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C74F9C  38 80 00 00 */	li r4, 0
/* 80C74FA0  90 81 00 08 */	stw r4, 8(r1)
/* 80C74FA4  38 00 FF FF */	li r0, -1
/* 80C74FA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C74FAC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C74FB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C74FB4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C74FB8  38 80 00 00 */	li r4, 0
/* 80C74FBC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B7C@ha */
/* 80C74FC0  38 A5 8B 7C */	addi r5, r5, 0x8B7C /* 0x00008B7C@l */
/* 80C74FC4  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C74FC8  38 E0 00 00 */	li r7, 0
/* 80C74FCC  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80C74FD0  39 20 00 00 */	li r9, 0
/* 80C74FD4  39 40 00 FF */	li r10, 0xff
/* 80C74FD8  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80C74FDC  4B 3D 7A B5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C74FE0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C74FE4  38 80 00 00 */	li r4, 0
/* 80C74FE8  90 81 00 08 */	stw r4, 8(r1)
/* 80C74FEC  38 00 FF FF */	li r0, -1
/* 80C74FF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C74FF4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C74FF8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C74FFC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C75000  38 80 00 00 */	li r4, 0
/* 80C75004  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B7D@ha */
/* 80C75008  38 A5 8B 7D */	addi r5, r5, 0x8B7D /* 0x00008B7D@l */
/* 80C7500C  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C75010  38 E0 00 00 */	li r7, 0
/* 80C75014  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80C75018  39 20 00 00 */	li r9, 0
/* 80C7501C  39 40 00 FF */	li r10, 0xff
/* 80C75020  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80C75024  4B 3D 7A 6D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C75028  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 80C7502C  C0 1F 14 C0 */	lfs f0, 0x14c0(r31)
/* 80C75030  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C75034  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C75038  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80C7503C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C75040  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C75044  80 1F 04 E4 */	lwz r0, 0x4e4(r31)
/* 80C75048  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C7504C  A0 DF 04 E8 */	lhz r6, 0x4e8(r31)
/* 80C75050  B0 C1 00 24 */	sth r6, 0x24(r1)
/* 80C75054  A8 61 00 22 */	lha r3, 0x22(r1)
/* 80C75058  3C 63 00 01 */	addis r3, r3, 1
/* 80C7505C  38 03 80 00 */	addi r0, r3, -32768
/* 80C75060  B0 01 00 22 */	sth r0, 0x22(r1)
/* 80C75064  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C75068  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7506C  A8 81 00 20 */	lha r4, 0x20(r1)
/* 80C75070  7C 05 07 34 */	extsh r5, r0
/* 80C75074  7C C6 07 34 */	extsh r6, r6
/* 80C75078  4B 39 71 91 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80C7507C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C75080  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C75084  38 81 00 28 */	addi r4, r1, 0x28
/* 80C75088  7C 85 23 78 */	mr r5, r4
/* 80C7508C  4B 6D 1C E1 */	bl PSMTXMultVec
/* 80C75090  38 61 00 28 */	addi r3, r1, 0x28
/* 80C75094  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C75098  7C 65 1B 78 */	mr r5, r3
/* 80C7509C  4B 6D 1F F5 */	bl PSVECAdd
/* 80C750A0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C750A4  38 80 00 00 */	li r4, 0
/* 80C750A8  90 81 00 08 */	stw r4, 8(r1)
/* 80C750AC  38 00 FF FF */	li r0, -1
/* 80C750B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C750B4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C750B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C750BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C750C0  38 80 00 00 */	li r4, 0
/* 80C750C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B79@ha */
/* 80C750C8  38 A5 8B 79 */	addi r5, r5, 0x8B79 /* 0x00008B79@l */
/* 80C750CC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C750D0  38 E0 00 00 */	li r7, 0
/* 80C750D4  39 01 00 20 */	addi r8, r1, 0x20
/* 80C750D8  39 20 00 00 */	li r9, 0
/* 80C750DC  39 40 00 FF */	li r10, 0xff
/* 80C750E0  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80C750E4  4B 3D 79 AD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C750E8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C750EC  38 80 00 00 */	li r4, 0
/* 80C750F0  90 81 00 08 */	stw r4, 8(r1)
/* 80C750F4  38 00 FF FF */	li r0, -1
/* 80C750F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C750FC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C75100  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C75104  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C75108  38 80 00 00 */	li r4, 0
/* 80C7510C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B7A@ha */
/* 80C75110  38 A5 8B 7A */	addi r5, r5, 0x8B7A /* 0x00008B7A@l */
/* 80C75114  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C75118  38 E0 00 00 */	li r7, 0
/* 80C7511C  39 01 00 20 */	addi r8, r1, 0x20
/* 80C75120  39 20 00 00 */	li r9, 0
/* 80C75124  39 40 00 FF */	li r10, 0xff
/* 80C75128  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80C7512C  4B 3D 79 65 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C75130  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C75134  38 80 00 00 */	li r4, 0
/* 80C75138  90 81 00 08 */	stw r4, 8(r1)
/* 80C7513C  38 00 FF FF */	li r0, -1
/* 80C75140  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C75144  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C75148  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C7514C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C75150  38 80 00 00 */	li r4, 0
/* 80C75154  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B7B@ha */
/* 80C75158  38 A5 8B 7B */	addi r5, r5, 0x8B7B /* 0x00008B7B@l */
/* 80C7515C  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C75160  38 E0 00 00 */	li r7, 0
/* 80C75164  39 01 00 20 */	addi r8, r1, 0x20
/* 80C75168  39 20 00 00 */	li r9, 0
/* 80C7516C  39 40 00 FF */	li r10, 0xff
/* 80C75170  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80C75174  4B 3D 79 1D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C75178  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C7517C  38 80 00 00 */	li r4, 0
/* 80C75180  90 81 00 08 */	stw r4, 8(r1)
/* 80C75184  38 00 FF FF */	li r0, -1
/* 80C75188  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7518C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C75190  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C75194  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C75198  38 80 00 00 */	li r4, 0
/* 80C7519C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B7C@ha */
/* 80C751A0  38 A5 8B 7C */	addi r5, r5, 0x8B7C /* 0x00008B7C@l */
/* 80C751A4  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C751A8  38 E0 00 00 */	li r7, 0
/* 80C751AC  39 01 00 20 */	addi r8, r1, 0x20
/* 80C751B0  39 20 00 00 */	li r9, 0
/* 80C751B4  39 40 00 FF */	li r10, 0xff
/* 80C751B8  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80C751BC  4B 3D 78 D5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C751C0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C751C4  38 80 00 00 */	li r4, 0
/* 80C751C8  90 81 00 08 */	stw r4, 8(r1)
/* 80C751CC  38 00 FF FF */	li r0, -1
/* 80C751D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C751D4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C751D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C751DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C751E0  38 80 00 00 */	li r4, 0
/* 80C751E4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B7D@ha */
/* 80C751E8  38 A5 8B 7D */	addi r5, r5, 0x8B7D /* 0x00008B7D@l */
/* 80C751EC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C751F0  38 E0 00 00 */	li r7, 0
/* 80C751F4  39 01 00 20 */	addi r8, r1, 0x20
/* 80C751F8  39 20 00 00 */	li r9, 0
/* 80C751FC  39 40 00 FF */	li r10, 0xff
/* 80C75200  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80C75204  4B 3D 78 8D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C75208  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C7520C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C75210  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C75214  41 82 00 18 */	beq lbl_80C7522C
/* 80C75218  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7521C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C75220  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C75224  7C 05 07 74 */	extsb r5, r0
/* 80C75228  4B 3B FF D9 */	bl onSwitch__10dSv_info_cFii
lbl_80C7522C:
/* 80C7522C  7F E3 FB 78 */	mr r3, r31
/* 80C75230  4B 3A 4A 4D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C75234  39 61 00 50 */	addi r11, r1, 0x50
/* 80C75238  4B 6E CF F1 */	bl _restgpr_29
/* 80C7523C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C75240  7C 08 03 A6 */	mtlr r0
/* 80C75244  38 21 00 50 */	addi r1, r1, 0x50
/* 80C75248  4E 80 00 20 */	blr 
