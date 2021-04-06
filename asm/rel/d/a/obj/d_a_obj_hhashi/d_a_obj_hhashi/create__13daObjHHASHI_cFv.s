lbl_80580EA0:
/* 80580EA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80580EA4  7C 08 02 A6 */	mflr r0
/* 80580EA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80580EAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80580EB0  4B DE 13 2D */	bl _savegpr_29
/* 80580EB4  7C 7F 1B 78 */	mr r31, r3
/* 80580EB8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80580EBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80580EC0  40 82 01 54 */	bne lbl_80581014
/* 80580EC4  7F E0 FB 79 */	or. r0, r31, r31
/* 80580EC8  41 82 01 40 */	beq lbl_80581008
/* 80580ECC  7C 1E 03 78 */	mr r30, r0
/* 80580ED0  4B AF 77 55 */	bl __ct__16dBgS_MoveBgActorFv
/* 80580ED4  3C 60 80 58 */	lis r3, __vt__13daObjHHASHI_c@ha /* 0x80581650@ha */
/* 80580ED8  38 03 16 50 */	addi r0, r3, __vt__13daObjHHASHI_c@l /* 0x80581650@l */
/* 80580EDC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80580EE0  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80580EE4  3C 80 80 58 */	lis r4, __ct__4cXyzFv@ha /* 0x805811C0@ha */
/* 80580EE8  38 84 11 C0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x805811C0@l */
/* 80580EEC  3C A0 80 58 */	lis r5, __dt__4cXyzFv@ha /* 0x8057FD30@ha */
/* 80580EF0  38 A5 FD 30 */	addi r5, r5, __dt__4cXyzFv@l /* 0x8057FD30@l */
/* 80580EF4  38 C0 00 0C */	li r6, 0xc
/* 80580EF8  38 E0 00 32 */	li r7, 0x32
/* 80580EFC  4B DE 0E 65 */	bl __construct_array
/* 80580F00  38 7E 08 08 */	addi r3, r30, 0x808
/* 80580F04  3C 80 80 58 */	lis r4, __ct__4cXyzFv@ha /* 0x805811C0@ha */
/* 80580F08  38 84 11 C0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x805811C0@l */
/* 80580F0C  3C A0 80 58 */	lis r5, __dt__4cXyzFv@ha /* 0x8057FD30@ha */
/* 80580F10  38 A5 FD 30 */	addi r5, r5, __dt__4cXyzFv@l /* 0x8057FD30@l */
/* 80580F14  38 C0 00 0C */	li r6, 0xc
/* 80580F18  38 E0 00 32 */	li r7, 0x32
/* 80580F1C  4B DE 0E 45 */	bl __construct_array
/* 80580F20  38 7E 0A 60 */	addi r3, r30, 0xa60
/* 80580F24  3C 80 80 58 */	lis r4, __ct__4cXyzFv@ha /* 0x805811C0@ha */
/* 80580F28  38 84 11 C0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x805811C0@l */
/* 80580F2C  3C A0 80 58 */	lis r5, __dt__4cXyzFv@ha /* 0x8057FD30@ha */
/* 80580F30  38 A5 FD 30 */	addi r5, r5, __dt__4cXyzFv@l /* 0x8057FD30@l */
/* 80580F34  38 C0 00 0C */	li r6, 0xc
/* 80580F38  38 E0 00 32 */	li r7, 0x32
/* 80580F3C  4B DE 0E 25 */	bl __construct_array
/* 80580F40  38 7E 0C BC */	addi r3, r30, 0xcbc
/* 80580F44  3C 80 80 58 */	lis r4, __ct__5csXyzFv@ha /* 0x805811BC@ha */
/* 80580F48  38 84 11 BC */	addi r4, r4, __ct__5csXyzFv@l /* 0x805811BC@l */
/* 80580F4C  3C A0 80 58 */	lis r5, __dt__5csXyzFv@ha /* 0x8057FD6C@ha */
/* 80580F50  38 A5 FD 6C */	addi r5, r5, __dt__5csXyzFv@l /* 0x8057FD6C@l */
/* 80580F54  38 C0 00 06 */	li r6, 6
/* 80580F58  38 E0 00 32 */	li r7, 0x32
/* 80580F5C  4B DE 0E 05 */	bl __construct_array
/* 80580F60  38 7E 0D E8 */	addi r3, r30, 0xde8
/* 80580F64  3C 80 80 58 */	lis r4, __ct__5csXyzFv@ha /* 0x805811BC@ha */
/* 80580F68  38 84 11 BC */	addi r4, r4, __ct__5csXyzFv@l /* 0x805811BC@l */
/* 80580F6C  3C A0 80 58 */	lis r5, __dt__5csXyzFv@ha /* 0x8057FD6C@ha */
/* 80580F70  38 A5 FD 6C */	addi r5, r5, __dt__5csXyzFv@l /* 0x8057FD6C@l */
/* 80580F74  38 C0 00 06 */	li r6, 6
/* 80580F78  38 E0 00 32 */	li r7, 0x32
/* 80580F7C  4B DE 0D E5 */	bl __construct_array
/* 80580F80  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80580F84  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80580F88  90 1E 10 38 */	stw r0, 0x1038(r30)
/* 80580F8C  38 7E 10 3C */	addi r3, r30, 0x103c
/* 80580F90  4B B0 27 D1 */	bl __ct__10dCcD_GSttsFv
/* 80580F94  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80580F98  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80580F9C  90 7E 10 38 */	stw r3, 0x1038(r30)
/* 80580FA0  38 03 00 20 */	addi r0, r3, 0x20
/* 80580FA4  90 1E 10 3C */	stw r0, 0x103c(r30)
/* 80580FA8  3B BE 10 5C */	addi r29, r30, 0x105c
/* 80580FAC  7F A3 EB 78 */	mr r3, r29
/* 80580FB0  4B B0 2A 79 */	bl __ct__12dCcD_GObjInfFv
/* 80580FB4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80580FB8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80580FBC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80580FC0  3C 60 80 58 */	lis r3, __vt__8cM3dGAab@ha /* 0x80581644@ha */
/* 80580FC4  38 03 16 44 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80581644@l */
/* 80580FC8  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80580FCC  3C 60 80 58 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80581638@ha */
/* 80580FD0  38 03 16 38 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80581638@l */
/* 80580FD4  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80580FD8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80580FDC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80580FE0  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80580FE4  38 03 00 58 */	addi r0, r3, 0x58
/* 80580FE8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80580FEC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80580FF0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80580FF4  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80580FF8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80580FFC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80581000  38 03 00 84 */	addi r0, r3, 0x84
/* 80581004  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80581008:
/* 80581008  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8058100C  60 00 00 08 */	ori r0, r0, 8
/* 80581010  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80581014:
/* 80581014  38 7F 10 18 */	addi r3, r31, 0x1018
/* 80581018  3C 80 80 58 */	lis r4, l_arcName@ha /* 0x805815E4@ha */
/* 8058101C  38 84 15 E4 */	addi r4, r4, l_arcName@l /* 0x805815E4@l */
/* 80581020  80 84 00 00 */	lwz r4, 0(r4)
/* 80581024  4B AA BE 99 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80581028  7C 7D 1B 78 */	mr r29, r3
/* 8058102C  2C 1D 00 04 */	cmpwi r29, 4
/* 80581030  40 82 00 E0 */	bne lbl_80581110
/* 80581034  3C 60 80 58 */	lis r3, lit_4365@ha /* 0x80581594@ha */
/* 80581038  C0 03 15 94 */	lfs f0, lit_4365@l(r3)  /* 0x80581594@l */
/* 8058103C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80581040  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80581044  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80581048  3F C3 00 02 */	addis r30, r3, 2
/* 8058104C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80581050  7F C3 F3 78 */	mr r3, r30
/* 80581054  3C 80 80 58 */	lis r4, l_arcName@ha /* 0x805815E4@ha */
/* 80581058  38 84 15 E4 */	addi r4, r4, l_arcName@l /* 0x805815E4@l */
/* 8058105C  80 84 00 00 */	lwz r4, 0(r4)
/* 80581060  3C A0 80 58 */	lis r5, d_a_obj_hhashi__stringBase0@ha /* 0x805815AC@ha */
/* 80581064  38 A5 15 AC */	addi r5, r5, d_a_obj_hhashi__stringBase0@l /* 0x805815AC@l */
/* 80581068  38 A5 00 27 */	addi r5, r5, 0x27
/* 8058106C  4B AB B6 4D */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80581070  7C 65 1B 78 */	mr r5, r3
/* 80581074  7F E3 FB 78 */	mr r3, r31
/* 80581078  3C 80 80 58 */	lis r4, l_arcName@ha /* 0x805815E4@ha */
/* 8058107C  38 84 15 E4 */	addi r4, r4, l_arcName@l /* 0x805815E4@l */
/* 80581080  80 84 00 00 */	lwz r4, 0(r4)
/* 80581084  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80581088  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 8058108C  38 E0 6D C0 */	li r7, 0x6dc0
/* 80581090  39 00 00 00 */	li r8, 0
/* 80581094  4B AF 77 29 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80581098  7C 7D 1B 78 */	mr r29, r3
/* 8058109C  2C 1D 00 05 */	cmpwi r29, 5
/* 805810A0  40 82 00 08 */	bne lbl_805810A8
/* 805810A4  48 00 00 70 */	b lbl_80581114
lbl_805810A8:
/* 805810A8  7F E3 FB 78 */	mr r3, r31
/* 805810AC  4B FF E9 0D */	bl initCcCylinder__13daObjHHASHI_cFv
/* 805810B0  80 7F 0F 4C */	lwz r3, 0xf4c(r31)
/* 805810B4  38 03 00 24 */	addi r0, r3, 0x24
/* 805810B8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 805810BC  3C 60 80 58 */	lis r3, l_arcName@ha /* 0x805815E4@ha */
/* 805810C0  38 63 15 E4 */	addi r3, r3, l_arcName@l /* 0x805815E4@l */
/* 805810C4  80 63 00 00 */	lwz r3, 0(r3)
/* 805810C8  3C 80 80 58 */	lis r4, d_a_obj_hhashi__stringBase0@ha /* 0x805815AC@ha */
/* 805810CC  38 84 15 AC */	addi r4, r4, d_a_obj_hhashi__stringBase0@l /* 0x805815AC@l */
/* 805810D0  38 84 00 18 */	addi r4, r4, 0x18
/* 805810D4  7F C5 F3 78 */	mr r5, r30
/* 805810D8  38 C0 00 80 */	li r6, 0x80
/* 805810DC  4B AB B2 A1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 805810E0  7C 64 1B 78 */	mr r4, r3
/* 805810E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805810E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805810EC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805810F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805810F4  7C 05 07 74 */	extsb r5, r0
/* 805810F8  38 C0 00 00 */	li r6, 0
/* 805810FC  4B AA B9 F5 */	bl addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80581100  38 00 00 01 */	li r0, 1
/* 80581104  98 1F 11 99 */	stb r0, 0x1199(r31)
/* 80581108  7F E3 FB 78 */	mr r3, r31
/* 8058110C  4B FF FC 79 */	bl daObjHHASHI_Execute__FP13daObjHHASHI_c
lbl_80581110:
/* 80581110  7F A3 EB 78 */	mr r3, r29
lbl_80581114:
/* 80581114  39 61 00 20 */	addi r11, r1, 0x20
/* 80581118  4B DE 11 11 */	bl _restgpr_29
/* 8058111C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80581120  7C 08 03 A6 */	mtlr r0
/* 80581124  38 21 00 20 */	addi r1, r1, 0x20
/* 80581128  4E 80 00 20 */	blr 
