lbl_80058318:
/* 80058318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005831C  7C 08 02 A6 */	mflr r0
/* 80058320  90 01 00 24 */	stw r0, 0x24(r1)
/* 80058324  39 61 00 20 */	addi r11, r1, 0x20
/* 80058328  48 30 9E B1 */	bl _savegpr_28
/* 8005832C  3B 80 00 00 */	li r28, 0
/* 80058330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80058334  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80058338  A0 1D 5D 46 */	lhz r0, 0x5d46(r29)
/* 8005833C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80058340  41 82 05 3C */	beq lbl_8005887C
/* 80058344  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058348  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005834C  88 03 12 D4 */	lbz r0, 0x12d4(r3)
/* 80058350  28 00 00 00 */	cmplwi r0, 0
/* 80058354  40 82 05 28 */	bne lbl_8005887C
/* 80058358  38 7D 4E 20 */	addi r3, r29, 0x4e20
/* 8005835C  81 9D 4E 20 */	lwz r12, 0x4e20(r29)
/* 80058360  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80058364  7D 89 03 A6 */	mtctr r12
/* 80058368  4E 80 04 21 */	bctrl 
/* 8005836C  28 03 00 00 */	cmplwi r3, 0
/* 80058370  41 82 00 30 */	beq lbl_800583A0
/* 80058374  80 03 00 00 */	lwz r0, 0(r3)
/* 80058378  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 8005837C  7C 84 07 74 */	extsb r4, r4
/* 80058380  7C 00 20 00 */	cmpw r0, r4
/* 80058384  40 81 00 1C */	ble lbl_800583A0
/* 80058388  80 63 00 04 */	lwz r3, 4(r3)
/* 8005838C  54 80 10 3A */	slwi r0, r4, 2
/* 80058390  7C 63 00 2E */	lwzx r3, r3, r0
/* 80058394  88 03 00 02 */	lbz r0, 2(r3)
/* 80058398  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
/* 8005839C  7C 1C 03 78 */	mr r28, r0
lbl_800583A0:
/* 800583A0  3B BD 4E 00 */	addi r29, r29, 0x4e00
/* 800583A4  7F A3 EB 78 */	mr r3, r29
/* 800583A8  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 800583AC  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 800583B0  38 84 00 0F */	addi r4, r4, 0xf
/* 800583B4  48 31 05 E1 */	bl strcmp
/* 800583B8  2C 03 00 00 */	cmpwi r3, 0
/* 800583BC  40 82 00 0C */	bne lbl_800583C8
/* 800583C0  3B 80 00 01 */	li r28, 1
/* 800583C4  48 00 00 40 */	b lbl_80058404
lbl_800583C8:
/* 800583C8  7F A3 EB 78 */	mr r3, r29
/* 800583CC  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 800583D0  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 800583D4  38 84 00 17 */	addi r4, r4, 0x17
/* 800583D8  48 31 05 BD */	bl strcmp
/* 800583DC  2C 03 00 00 */	cmpwi r3, 0
/* 800583E0  41 82 00 20 */	beq lbl_80058400
/* 800583E4  7F A3 EB 78 */	mr r3, r29
/* 800583E8  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 800583EC  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 800583F0  38 84 00 1E */	addi r4, r4, 0x1e
/* 800583F4  48 31 05 A1 */	bl strcmp
/* 800583F8  2C 03 00 00 */	cmpwi r3, 0
/* 800583FC  40 82 00 08 */	bne lbl_80058404
lbl_80058400:
/* 80058400  3B 80 00 00 */	li r28, 0
lbl_80058404:
/* 80058404  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058408  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005840C  88 1D 0E 70 */	lbz r0, 0xe70(r29)
/* 80058410  2C 00 00 01 */	cmpwi r0, 1
/* 80058414  41 82 03 F8 */	beq lbl_8005880C
/* 80058418  40 80 04 64 */	bge lbl_8005887C
/* 8005841C  2C 00 00 00 */	cmpwi r0, 0
/* 80058420  40 80 00 08 */	bge lbl_80058428
/* 80058424  48 00 04 58 */	b lbl_8005887C
lbl_80058428:
/* 80058428  2C 1C 00 00 */	cmpwi r28, 0
/* 8005842C  41 82 04 50 */	beq lbl_8005887C
/* 80058430  48 15 41 4D */	bl dKy_darkworld_check__Fv
/* 80058434  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80058438  28 00 00 01 */	cmplwi r0, 1
/* 8005843C  41 82 04 40 */	beq lbl_8005887C
/* 80058440  38 60 00 78 */	li r3, 0x78
/* 80058444  38 80 00 20 */	li r4, 0x20
/* 80058448  48 27 68 2D */	bl __nw__FUli
/* 8005844C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80058450  41 82 00 50 */	beq lbl_800584A0
/* 80058454  7F 84 E3 78 */	mr r4, r28
/* 80058458  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 8005845C  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80058460  90 1C 00 00 */	stw r0, 0(r28)
/* 80058464  38 00 00 00 */	li r0, 0
/* 80058468  90 1C 00 04 */	stw r0, 4(r28)
/* 8005846C  90 1C 00 08 */	stw r0, 8(r28)
/* 80058470  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80058474  3C 60 80 3B */	lis r3, __vt__18dKankyo_sun_Packet@ha /* 0x803A9B88@ha */
/* 80058478  38 03 9B 88 */	addi r0, r3, __vt__18dKankyo_sun_Packet@l /* 0x803A9B88@l */
/* 8005847C  90 1C 00 00 */	stw r0, 0(r28)
/* 80058480  38 64 00 10 */	addi r3, r4, 0x10
/* 80058484  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha /* 0x800125DC@ha */
/* 80058488  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x800125DC@l */
/* 8005848C  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 80058490  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80009184@l */
/* 80058494  38 C0 00 0C */	li r6, 0xc
/* 80058498  38 E0 00 02 */	li r7, 2
/* 8005849C  48 30 98 C5 */	bl __construct_array
lbl_800584A0:
/* 800584A0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800584A4  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 800584A8  93 9E 0E 74 */	stw r28, 0xe74(r30)
/* 800584AC  38 60 00 A0 */	li r3, 0xa0
/* 800584B0  38 80 00 20 */	li r4, 0x20
/* 800584B4  48 27 67 C1 */	bl __nw__FUli
/* 800584B8  7C 7C 1B 79 */	or. r28, r3, r3
/* 800584BC  41 82 00 50 */	beq lbl_8005850C
/* 800584C0  7F 84 E3 78 */	mr r4, r28
/* 800584C4  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 800584C8  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 800584CC  90 1C 00 00 */	stw r0, 0(r28)
/* 800584D0  38 00 00 00 */	li r0, 0
/* 800584D4  90 1C 00 04 */	stw r0, 4(r28)
/* 800584D8  90 1C 00 08 */	stw r0, 8(r28)
/* 800584DC  90 1C 00 0C */	stw r0, 0xc(r28)
/* 800584E0  3C 60 80 3B */	lis r3, __vt__22dKankyo_sunlenz_Packet@ha /* 0x803A9B74@ha */
/* 800584E4  38 03 9B 74 */	addi r0, r3, __vt__22dKankyo_sunlenz_Packet@l /* 0x803A9B74@l */
/* 800584E8  90 1C 00 00 */	stw r0, 0(r28)
/* 800584EC  38 64 00 24 */	addi r3, r4, 0x24
/* 800584F0  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha /* 0x800125DC@ha */
/* 800584F4  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l /* 0x800125DC@l */
/* 800584F8  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800584FC  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80009184@l */
/* 80058500  38 C0 00 0C */	li r6, 0xc
/* 80058504  38 E0 00 08 */	li r7, 8
/* 80058508  48 30 98 59 */	bl __construct_array
lbl_8005850C:
/* 8005850C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058510  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058514  93 9F 0E 78 */	stw r28, 0xe78(r31)
/* 80058518  80 1E 0E 74 */	lwz r0, 0xe74(r30)
/* 8005851C  28 00 00 00 */	cmplwi r0, 0
/* 80058520  41 82 03 5C */	beq lbl_8005887C
/* 80058524  28 1C 00 00 */	cmplwi r28, 0
/* 80058528  41 82 03 54 */	beq lbl_8005887C
/* 8005852C  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058530  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058534  38 63 00 26 */	addi r3, r3, 0x26
/* 80058538  4B FD 6E FD */	bl dComIfG_getStageRes__FPCc
/* 8005853C  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 80058540  90 64 00 2C */	stw r3, 0x2c(r4)
/* 80058544  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058548  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005854C  38 63 00 31 */	addi r3, r3, 0x31
/* 80058550  4B FD 6E E5 */	bl dComIfG_getStageRes__FPCc
/* 80058554  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 80058558  90 64 00 30 */	stw r3, 0x30(r4)
/* 8005855C  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058560  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058564  38 63 00 3E */	addi r3, r3, 0x3e
/* 80058568  4B FD 6E CD */	bl dComIfG_getStageRes__FPCc
/* 8005856C  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 80058570  90 64 00 34 */	stw r3, 0x34(r4)
/* 80058574  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058578  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005857C  38 63 00 4F */	addi r3, r3, 0x4f
/* 80058580  4B FD 6E B5 */	bl dComIfG_getStageRes__FPCc
/* 80058584  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 80058588  90 64 00 38 */	stw r3, 0x38(r4)
/* 8005858C  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058590  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058594  38 63 00 60 */	addi r3, r3, 0x60
/* 80058598  4B FD 6E 9D */	bl dComIfG_getStageRes__FPCc
/* 8005859C  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 800585A0  90 64 00 3C */	stw r3, 0x3c(r4)
/* 800585A4  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 800585A8  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 800585AC  38 63 00 71 */	addi r3, r3, 0x71
/* 800585B0  4B FD 6E 85 */	bl dComIfG_getStageRes__FPCc
/* 800585B4  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 800585B8  90 64 00 40 */	stw r3, 0x40(r4)
/* 800585BC  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 800585C0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 800585C4  28 00 00 00 */	cmplwi r0, 0
/* 800585C8  40 82 00 EC */	bne lbl_800586B4
/* 800585CC  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 800585D0  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 800585D4  38 63 00 82 */	addi r3, r3, 0x82
/* 800585D8  38 80 00 56 */	li r4, 0x56
/* 800585DC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800585E0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800585E4  3F 85 00 02 */	addis r28, r5, 2
/* 800585E8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 800585EC  7F 85 E3 78 */	mr r5, r28
/* 800585F0  38 C0 00 80 */	li r6, 0x80
/* 800585F4  4B FE 3C F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800585F8  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 800585FC  90 64 00 2C */	stw r3, 0x2c(r4)
/* 80058600  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058604  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058608  38 63 00 82 */	addi r3, r3, 0x82
/* 8005860C  38 80 00 56 */	li r4, 0x56
/* 80058610  7F 85 E3 78 */	mr r5, r28
/* 80058614  38 C0 00 80 */	li r6, 0x80
/* 80058618  4B FE 3C D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8005861C  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 80058620  90 64 00 30 */	stw r3, 0x30(r4)
/* 80058624  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058628  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005862C  38 63 00 82 */	addi r3, r3, 0x82
/* 80058630  38 80 00 56 */	li r4, 0x56
/* 80058634  7F 85 E3 78 */	mr r5, r28
/* 80058638  38 C0 00 80 */	li r6, 0x80
/* 8005863C  4B FE 3C B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80058640  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 80058644  90 64 00 34 */	stw r3, 0x34(r4)
/* 80058648  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 8005864C  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058650  38 63 00 82 */	addi r3, r3, 0x82
/* 80058654  38 80 00 56 */	li r4, 0x56
/* 80058658  7F 85 E3 78 */	mr r5, r28
/* 8005865C  38 C0 00 80 */	li r6, 0x80
/* 80058660  4B FE 3C 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80058664  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 80058668  90 64 00 38 */	stw r3, 0x38(r4)
/* 8005866C  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058670  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058674  38 63 00 82 */	addi r3, r3, 0x82
/* 80058678  38 80 00 56 */	li r4, 0x56
/* 8005867C  7F 85 E3 78 */	mr r5, r28
/* 80058680  38 C0 00 80 */	li r6, 0x80
/* 80058684  4B FE 3C 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80058688  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 8005868C  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80058690  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058694  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058698  38 63 00 82 */	addi r3, r3, 0x82
/* 8005869C  38 80 00 56 */	li r4, 0x56
/* 800586A0  7F 85 E3 78 */	mr r5, r28
/* 800586A4  38 C0 00 80 */	li r6, 0x80
/* 800586A8  4B FE 3C 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800586AC  80 9E 0E 74 */	lwz r4, 0xe74(r30)
/* 800586B0  90 64 00 40 */	stw r3, 0x40(r4)
lbl_800586B4:
/* 800586B4  38 00 00 00 */	li r0, 0
/* 800586B8  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 800586BC  98 03 00 28 */	stb r0, 0x28(r3)
/* 800586C0  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 800586C4  98 03 00 29 */	stb r0, 0x29(r3)
/* 800586C8  C0 42 86 E0 */	lfs f2, lit_4378(r2)
/* 800586CC  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 800586D0  D0 43 00 5C */	stfs f2, 0x5c(r3)
/* 800586D4  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 800586D8  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 800586DC  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 800586E0  D0 43 00 64 */	stfs f2, 0x64(r3)
/* 800586E4  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 800586E8  D0 43 00 68 */	stfs f2, 0x68(r3)
/* 800586EC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800586F0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 800586F4  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 800586F8  C0 02 86 E8 */	lfs f0, lit_4610(r2)
/* 800586FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80058700  40 80 00 14 */	bge lbl_80058714
/* 80058704  C0 02 86 E4 */	lfs f0, lit_4379(r2)
/* 80058708  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 8005870C  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 80058710  48 00 00 0C */	b lbl_8005871C
lbl_80058714:
/* 80058714  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 80058718  D0 43 00 6C */	stfs f2, 0x6c(r3)
lbl_8005871C:
/* 8005871C  38 00 00 00 */	li r0, 0
/* 80058720  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 80058724  90 03 00 44 */	stw r0, 0x44(r3)
/* 80058728  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 8005872C  90 03 00 48 */	stw r0, 0x48(r3)
/* 80058730  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 80058734  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80058738  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 8005873C  90 03 00 50 */	stw r0, 0x50(r3)
/* 80058740  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 80058744  90 03 00 54 */	stw r0, 0x54(r3)
/* 80058748  80 7E 0E 74 */	lwz r3, 0xe74(r30)
/* 8005874C  90 03 00 58 */	stw r0, 0x58(r3)
/* 80058750  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058754  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 80058758  38 63 00 82 */	addi r3, r3, 0x82
/* 8005875C  38 80 00 4A */	li r4, 0x4a
/* 80058760  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80058764  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80058768  3F 85 00 02 */	addis r28, r5, 2
/* 8005876C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80058770  7F 85 E3 78 */	mr r5, r28
/* 80058774  38 C0 00 80 */	li r6, 0x80
/* 80058778  4B FE 3B 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8005877C  80 9F 0E 78 */	lwz r4, 0xe78(r31)
/* 80058780  90 64 00 14 */	stw r3, 0x14(r4)
/* 80058784  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 80058788  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005878C  38 63 00 82 */	addi r3, r3, 0x82
/* 80058790  38 80 00 57 */	li r4, 0x57
/* 80058794  7F 85 E3 78 */	mr r5, r28
/* 80058798  38 C0 00 80 */	li r6, 0x80
/* 8005879C  4B FE 3B 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800587A0  80 9F 0E 78 */	lwz r4, 0xe78(r31)
/* 800587A4  90 64 00 1C */	stw r3, 0x1c(r4)
/* 800587A8  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 800587AC  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 800587B0  38 63 00 82 */	addi r3, r3, 0x82
/* 800587B4  38 80 00 5C */	li r4, 0x5c
/* 800587B8  7F 85 E3 78 */	mr r5, r28
/* 800587BC  38 C0 00 80 */	li r6, 0x80
/* 800587C0  4B FE 3B 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800587C4  80 9F 0E 78 */	lwz r4, 0xe78(r31)
/* 800587C8  90 64 00 20 */	stw r3, 0x20(r4)
/* 800587CC  C0 02 86 EC */	lfs f0, lit_4611(r2)
/* 800587D0  80 7F 0E 78 */	lwz r3, 0xe78(r31)
/* 800587D4  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 800587D8  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 800587DC  80 7F 0E 78 */	lwz r3, 0xe78(r31)
/* 800587E0  D0 03 00 90 */	stfs f0, 0x90(r3)
/* 800587E4  80 7F 0E 78 */	lwz r3, 0xe78(r31)
/* 800587E8  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 800587EC  38 00 00 00 */	li r0, 0
/* 800587F0  80 7F 0E 78 */	lwz r3, 0xe78(r31)
/* 800587F4  98 03 00 9E */	stb r0, 0x9e(r3)
/* 800587F8  48 00 37 11 */	bl dKyr_sun_move__Fv
/* 800587FC  48 00 32 4D */	bl dKyr_lenzflare_move__Fv
/* 80058800  38 00 00 01 */	li r0, 1
/* 80058804  98 1D 0E 70 */	stb r0, 0xe70(r29)
/* 80058808  48 00 00 74 */	b lbl_8005887C
lbl_8005880C:
/* 8005880C  2C 1C 00 00 */	cmpwi r28, 0
/* 80058810  40 82 00 64 */	bne lbl_80058874
/* 80058814  38 00 00 00 */	li r0, 0
/* 80058818  98 1D 0E 70 */	stb r0, 0xe70(r29)
/* 8005881C  80 7D 0E 74 */	lwz r3, 0xe74(r29)
/* 80058820  28 03 00 00 */	cmplwi r3, 0
/* 80058824  41 82 00 18 */	beq lbl_8005883C
/* 80058828  38 80 00 01 */	li r4, 1
/* 8005882C  81 83 00 00 */	lwz r12, 0(r3)
/* 80058830  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80058834  7D 89 03 A6 */	mtctr r12
/* 80058838  4E 80 04 21 */	bctrl 
lbl_8005883C:
/* 8005883C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80058840  3B 83 CA 54 */	addi r28, r3, g_env_light@l /* 0x8042CA54@l */
/* 80058844  80 7C 0E 78 */	lwz r3, 0xe78(r28)
/* 80058848  28 03 00 00 */	cmplwi r3, 0
/* 8005884C  41 82 00 18 */	beq lbl_80058864
/* 80058850  38 80 00 01 */	li r4, 1
/* 80058854  81 83 00 00 */	lwz r12, 0(r3)
/* 80058858  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8005885C  7D 89 03 A6 */	mtctr r12
/* 80058860  4E 80 04 21 */	bctrl 
lbl_80058864:
/* 80058864  38 00 00 00 */	li r0, 0
/* 80058868  90 1D 0E 74 */	stw r0, 0xe74(r29)
/* 8005886C  90 1C 0E 78 */	stw r0, 0xe78(r28)
/* 80058870  48 00 00 0C */	b lbl_8005887C
lbl_80058874:
/* 80058874  48 00 36 95 */	bl dKyr_sun_move__Fv
/* 80058878  48 00 31 D1 */	bl dKyr_lenzflare_move__Fv
lbl_8005887C:
/* 8005887C  39 61 00 20 */	addi r11, r1, 0x20
/* 80058880  48 30 99 A5 */	bl _restgpr_28
/* 80058884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80058888  7C 08 03 A6 */	mtlr r0
/* 8005888C  38 21 00 20 */	addi r1, r1, 0x20
/* 80058890  4E 80 00 20 */	blr 
