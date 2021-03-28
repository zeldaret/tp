lbl_80059580:
/* 80059580  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80059584  7C 08 02 A6 */	mflr r0
/* 80059588  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005958C  39 61 00 20 */	addi r11, r1, 0x20
/* 80059590  48 30 8C 4D */	bl _savegpr_29
/* 80059594  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059598  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 8005959C  88 1F 0E B4 */	lbz r0, 0xeb4(r31)
/* 800595A0  2C 00 00 01 */	cmpwi r0, 1
/* 800595A4  41 82 01 08 */	beq lbl_800596AC
/* 800595A8  40 80 01 68 */	bge lbl_80059710
/* 800595AC  2C 00 00 00 */	cmpwi r0, 0
/* 800595B0  40 80 00 08 */	bge lbl_800595B8
/* 800595B4  48 00 01 5C */	b lbl_80059710
lbl_800595B8:
/* 800595B8  80 1F 0E B8 */	lwz r0, 0xeb8(r31)
/* 800595BC  2C 00 00 00 */	cmpwi r0, 0
/* 800595C0  41 82 01 50 */	beq lbl_80059710
/* 800595C4  38 60 0B 08 */	li r3, 0xb08
/* 800595C8  38 80 00 20 */	li r4, 0x20
/* 800595CC  48 27 56 A9 */	bl __nw__FUli
/* 800595D0  7C 7D 1B 79 */	or. r29, r3, r3
/* 800595D4  41 82 00 50 */	beq lbl_80059624
/* 800595D8  7F A4 EB 78 */	mr r4, r29
/* 800595DC  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 800595E0  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 800595E4  90 1D 00 00 */	stw r0, 0(r29)
/* 800595E8  38 00 00 00 */	li r0, 0
/* 800595EC  90 1D 00 04 */	stw r0, 4(r29)
/* 800595F0  90 1D 00 08 */	stw r0, 8(r29)
/* 800595F4  90 1D 00 0C */	stw r0, 0xc(r29)
/* 800595F8  3C 60 80 3B */	lis r3, __vt__20dKankyo_cloud_Packet@ha
/* 800595FC  38 03 9B 24 */	addi r0, r3, __vt__20dKankyo_cloud_Packet@l
/* 80059600  90 1D 00 00 */	stw r0, 0(r29)
/* 80059604  38 64 00 18 */	addi r3, r4, 0x18
/* 80059608  3C 80 80 05 */	lis r4, __ct__9CLOUD_EFFFv@ha
/* 8005960C  38 84 6E 74 */	addi r4, r4, __ct__9CLOUD_EFFFv@l
/* 80059610  3C A0 80 05 */	lis r5, __dt__9CLOUD_EFFFv@ha
/* 80059614  38 A5 6E 38 */	addi r5, r5, __dt__9CLOUD_EFFFv@l
/* 80059618  38 C0 00 38 */	li r6, 0x38
/* 8005961C  38 E0 00 32 */	li r7, 0x32
/* 80059620  48 30 87 41 */	bl __construct_array
lbl_80059624:
/* 80059624  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059628  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 8005962C  93 BE 0E C0 */	stw r29, 0xec0(r30)
/* 80059630  28 1D 00 00 */	cmplwi r29, 0
/* 80059634  41 82 00 DC */	beq lbl_80059710
/* 80059638  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 8005963C  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l
/* 80059640  38 63 00 82 */	addi r3, r3, 0x82
/* 80059644  38 80 00 53 */	li r4, 0x53
/* 80059648  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8005964C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80059650  3C A5 00 02 */	addis r5, r5, 2
/* 80059654  38 C0 00 80 */	li r6, 0x80
/* 80059658  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8005965C  4B FE 2C 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80059660  80 9E 0E C0 */	lwz r4, 0xec0(r30)
/* 80059664  90 64 00 10 */	stw r3, 0x10(r4)
/* 80059668  38 60 00 00 */	li r3, 0
/* 8005966C  7C 65 1B 78 */	mr r5, r3
/* 80059670  38 00 00 32 */	li r0, 0x32
/* 80059674  7C 09 03 A6 */	mtctr r0
lbl_80059678:
/* 80059678  80 9E 0E C0 */	lwz r4, 0xec0(r30)
/* 8005967C  38 03 00 18 */	addi r0, r3, 0x18
/* 80059680  7C A4 01 AE */	stbx r5, r4, r0
/* 80059684  38 63 00 38 */	addi r3, r3, 0x38
/* 80059688  42 00 FF F0 */	bdnz lbl_80059678
/* 8005968C  38 00 00 00 */	li r0, 0
/* 80059690  80 7E 0E C0 */	lwz r3, 0xec0(r30)
/* 80059694  90 03 00 14 */	stw r0, 0x14(r3)
/* 80059698  48 00 7D A1 */	bl cloud_shadow_move__Fv
/* 8005969C  88 7F 0E B4 */	lbz r3, 0xeb4(r31)
/* 800596A0  38 03 00 01 */	addi r0, r3, 1
/* 800596A4  98 1F 0E B4 */	stb r0, 0xeb4(r31)
/* 800596A8  48 00 00 68 */	b lbl_80059710
lbl_800596AC:
/* 800596AC  88 1F 0E B5 */	lbz r0, 0xeb5(r31)
/* 800596B0  28 00 00 00 */	cmplwi r0, 0
/* 800596B4  40 82 00 08 */	bne lbl_800596BC
/* 800596B8  48 00 14 39 */	bl dKyw_get_wind_pow__Fv
lbl_800596BC:
/* 800596BC  48 00 7D 7D */	bl cloud_shadow_move__Fv
/* 800596C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800596C4  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 800596C8  80 1E 0E B8 */	lwz r0, 0xeb8(r30)
/* 800596CC  2C 00 00 00 */	cmpwi r0, 0
/* 800596D0  40 82 00 40 */	bne lbl_80059710
/* 800596D4  80 7E 0E C0 */	lwz r3, 0xec0(r30)
/* 800596D8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800596DC  2C 00 00 00 */	cmpwi r0, 0
/* 800596E0  40 82 00 30 */	bne lbl_80059710
/* 800596E4  38 00 00 00 */	li r0, 0
/* 800596E8  98 1F 0E B4 */	stb r0, 0xeb4(r31)
/* 800596EC  28 03 00 00 */	cmplwi r3, 0
/* 800596F0  41 82 00 18 */	beq lbl_80059708
/* 800596F4  38 80 00 01 */	li r4, 1
/* 800596F8  81 83 00 00 */	lwz r12, 0(r3)
/* 800596FC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80059700  7D 89 03 A6 */	mtctr r12
/* 80059704  4E 80 04 21 */	bctrl 
lbl_80059708:
/* 80059708  38 00 00 00 */	li r0, 0
/* 8005970C  90 1E 0E C0 */	stw r0, 0xec0(r30)
lbl_80059710:
/* 80059710  39 61 00 20 */	addi r11, r1, 0x20
/* 80059714  48 30 8B 15 */	bl _restgpr_29
/* 80059718  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005971C  7C 08 03 A6 */	mtlr r0
/* 80059720  38 21 00 20 */	addi r1, r1, 0x20
/* 80059724  4E 80 00 20 */	blr 
