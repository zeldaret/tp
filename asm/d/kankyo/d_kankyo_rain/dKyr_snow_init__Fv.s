lbl_8005FBDC:
/* 8005FBDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005FBE0  7C 08 02 A6 */	mflr r0
/* 8005FBE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005FBE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8005FBEC  48 30 25 F1 */	bl _savegpr_29
/* 8005FBF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005FBF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005FBF8  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8005FBFC  38 60 6D 94 */	li r3, 0x6d94
/* 8005FC00  38 80 00 20 */	li r4, 0x20
/* 8005FC04  48 26 F0 71 */	bl __nw__FUli
/* 8005FC08  7C 7D 1B 79 */	or. r29, r3, r3
/* 8005FC0C  41 82 00 50 */	beq lbl_8005FC5C
/* 8005FC10  7F A4 EB 78 */	mr r4, r29
/* 8005FC14  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 8005FC18  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 8005FC1C  90 1D 00 00 */	stw r0, 0(r29)
/* 8005FC20  38 00 00 00 */	li r0, 0
/* 8005FC24  90 1D 00 04 */	stw r0, 4(r29)
/* 8005FC28  90 1D 00 08 */	stw r0, 8(r29)
/* 8005FC2C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8005FC30  3C 60 80 3B */	lis r3, __vt__19dKankyo_snow_Packet@ha /* 0x803A9B4C@ha */
/* 8005FC34  38 03 9B 4C */	addi r0, r3, __vt__19dKankyo_snow_Packet@l /* 0x803A9B4C@l */
/* 8005FC38  90 1D 00 00 */	stw r0, 0(r29)
/* 8005FC3C  38 64 00 14 */	addi r3, r4, 0x14
/* 8005FC40  3C 80 80 05 */	lis r4, __ct__8SNOW_EFFFv@ha /* 0x80056D94@ha */
/* 8005FC44  38 84 6D 94 */	addi r4, r4, __ct__8SNOW_EFFFv@l /* 0x80056D94@l */
/* 8005FC48  3C A0 80 05 */	lis r5, __dt__8SNOW_EFFFv@ha /* 0x80056D58@ha */
/* 8005FC4C  38 A5 6D 58 */	addi r5, r5, __dt__8SNOW_EFFFv@l /* 0x80056D58@l */
/* 8005FC50  38 C0 00 38 */	li r6, 0x38
/* 8005FC54  38 E0 01 F4 */	li r7, 0x1f4
/* 8005FC58  48 30 21 09 */	bl __construct_array
lbl_8005FC5C:
/* 8005FC5C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005FC60  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005FC64  93 BF 0E 94 */	stw r29, 0xe94(r31)
/* 8005FC68  28 1D 00 00 */	cmplwi r29, 0
/* 8005FC6C  41 82 00 C4 */	beq lbl_8005FD30
/* 8005FC70  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005FC74  38 63 A5 78 */	addi r3, r3, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005FC78  38 63 00 10 */	addi r3, r3, 0x10
/* 8005FC7C  38 80 00 56 */	li r4, 0x56
/* 8005FC80  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005FC84  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005FC88  3C A5 00 02 */	addis r5, r5, 2
/* 8005FC8C  38 C0 00 80 */	li r6, 0x80
/* 8005FC90  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8005FC94  4B FD C6 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8005FC98  80 9F 0E 94 */	lwz r4, 0xe94(r31)
/* 8005FC9C  90 64 00 10 */	stw r3, 0x10(r4)
/* 8005FCA0  38 60 00 00 */	li r3, 0
/* 8005FCA4  7C 65 1B 78 */	mr r5, r3
/* 8005FCA8  38 00 01 F4 */	li r0, 0x1f4
/* 8005FCAC  7C 09 03 A6 */	mtctr r0
lbl_8005FCB0:
/* 8005FCB0  80 9F 0E 94 */	lwz r4, 0xe94(r31)
/* 8005FCB4  38 03 00 14 */	addi r0, r3, 0x14
/* 8005FCB8  7C A4 01 AE */	stbx r5, r4, r0
/* 8005FCBC  38 63 00 38 */	addi r3, r3, 0x38
/* 8005FCC0  42 00 FF F0 */	bdnz lbl_8005FCB0
/* 8005FCC4  38 00 00 00 */	li r0, 0
/* 8005FCC8  80 7F 0E 94 */	lwz r3, 0xe94(r31)
/* 8005FCCC  B0 03 6D 88 */	sth r0, 0x6d88(r3)
/* 8005FCD0  80 7F 0E 94 */	lwz r3, 0xe94(r31)
/* 8005FCD4  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8005FCD8  D0 03 6D 74 */	stfs f0, 0x6d74(r3)
/* 8005FCDC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8005FCE0  D0 03 6D 78 */	stfs f0, 0x6d78(r3)
/* 8005FCE4  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8005FCE8  D0 03 6D 7C */	stfs f0, 0x6d7c(r3)
/* 8005FCEC  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005FCF0  80 7F 0E 94 */	lwz r3, 0xe94(r31)
/* 8005FCF4  D0 03 6D 80 */	stfs f0, 0x6d80(r3)
/* 8005FCF8  80 7F 0E 94 */	lwz r3, 0xe94(r31)
/* 8005FCFC  D0 03 6D 84 */	stfs f0, 0x6d84(r3)
/* 8005FD00  80 7F 0E 94 */	lwz r3, 0xe94(r31)
/* 8005FD04  B0 03 6D 8A */	sth r0, 0x6d8a(r3)
/* 8005FD08  80 7F 0E 94 */	lwz r3, 0xe94(r31)
/* 8005FD0C  90 03 6D 8C */	stw r0, 0x6d8c(r3)
/* 8005FD10  80 7F 0E 94 */	lwz r3, 0xe94(r31)
/* 8005FD14  98 03 6D 90 */	stb r0, 0x6d90(r3)
/* 8005FD18  80 7F 0E 94 */	lwz r3, 0xe94(r31)
/* 8005FD1C  98 03 6D 91 */	stb r0, 0x6d91(r3)
/* 8005FD20  80 7F 0E 94 */	lwz r3, 0xe94(r31)
/* 8005FD24  98 03 6D 92 */	stb r0, 0x6d92(r3)
/* 8005FD28  80 7F 0E 94 */	lwz r3, 0xe94(r31)
/* 8005FD2C  98 03 6D 93 */	stb r0, 0x6d93(r3)
lbl_8005FD30:
/* 8005FD30  39 61 00 20 */	addi r11, r1, 0x20
/* 8005FD34  48 30 24 F5 */	bl _restgpr_29
/* 8005FD38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005FD3C  7C 08 03 A6 */	mtlr r0
/* 8005FD40  38 21 00 20 */	addi r1, r1, 0x20
/* 8005FD44  4E 80 00 20 */	blr 
