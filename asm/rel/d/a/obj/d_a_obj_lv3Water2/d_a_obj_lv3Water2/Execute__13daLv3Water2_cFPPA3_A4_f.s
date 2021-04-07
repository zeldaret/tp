lbl_80C5A844:
/* 80C5A844  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C5A848  7C 08 02 A6 */	mflr r0
/* 80C5A84C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C5A850  39 61 00 30 */	addi r11, r1, 0x30
/* 80C5A854  4B 70 79 89 */	bl _savegpr_29
/* 80C5A858  7C 7F 1B 78 */	mr r31, r3
/* 80C5A85C  7C 9E 23 78 */	mr r30, r4
/* 80C5A860  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80C5A864  4B 3B 2B C5 */	bl play__14mDoExt_baseAnmFv
/* 80C5A868  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80C5A86C  4B 3E E0 01 */	bl eventUpdate__17dEvLib_callback_cFv
/* 80C5A870  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80C5A874  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C5A878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5A87C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5A880  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5A884  7C 05 07 74 */	extsb r5, r0
/* 80C5A888  4B 3D AA D9 */	bl isSwitch__10dSv_info_cCFii
/* 80C5A88C  98 7F 05 E9 */	stb r3, 0x5e9(r31)
/* 80C5A890  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80C5A894  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C5A898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5A89C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5A8A0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5A8A4  7C 05 07 74 */	extsb r5, r0
/* 80C5A8A8  4B 3D AA B9 */	bl isSwitch__10dSv_info_cCFii
/* 80C5A8AC  98 7F 05 EA */	stb r3, 0x5ea(r31)
/* 80C5A8B0  7F E3 FB 78 */	mr r3, r31
/* 80C5A8B4  88 1F 05 DC */	lbz r0, 0x5dc(r31)
/* 80C5A8B8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80C5A8BC  3C 80 80 C6 */	lis r4, l_mode_func@ha /* 0x80C5B3E0@ha */
/* 80C5A8C0  38 04 B3 E0 */	addi r0, r4, l_mode_func@l /* 0x80C5B3E0@l */
/* 80C5A8C4  7D 80 2A 14 */	add r12, r0, r5
/* 80C5A8C8  4B 70 77 BD */	bl __ptmf_scall
/* 80C5A8CC  60 00 00 00 */	nop 
/* 80C5A8D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5A8D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5A8D8  38 80 00 0E */	li r4, 0xe
/* 80C5A8DC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5A8E0  7C 05 07 74 */	extsb r5, r0
/* 80C5A8E4  4B 3D AA 7D */	bl isSwitch__10dSv_info_cCFii
/* 80C5A8E8  2C 03 00 00 */	cmpwi r3, 0
/* 80C5A8EC  41 82 01 6C */	beq lbl_80C5AA58
/* 80C5A8F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5A8F4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5A8F8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C5A8FC  38 00 00 FF */	li r0, 0xff
/* 80C5A900  90 01 00 08 */	stw r0, 8(r1)
/* 80C5A904  38 80 00 00 */	li r4, 0
/* 80C5A908  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C5A90C  38 00 FF FF */	li r0, -1
/* 80C5A910  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5A914  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5A918  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C5A91C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5A920  80 9F 05 F0 */	lwz r4, 0x5f0(r31)
/* 80C5A924  38 A0 00 00 */	li r5, 0
/* 80C5A928  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AAC@ha */
/* 80C5A92C  38 C6 8A AC */	addi r6, r6, 0x8AAC /* 0x00008AAC@l */
/* 80C5A930  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C5A934  39 00 00 00 */	li r8, 0
/* 80C5A938  39 20 00 00 */	li r9, 0
/* 80C5A93C  39 40 00 00 */	li r10, 0
/* 80C5A940  3D 60 80 C6 */	lis r11, lit_3682@ha /* 0x80C5B370@ha */
/* 80C5A944  C0 2B B3 70 */	lfs f1, lit_3682@l(r11)  /* 0x80C5B370@l */
/* 80C5A948  4B 3F 2B 85 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5A94C  90 7F 05 F0 */	stw r3, 0x5f0(r31)
/* 80C5A950  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C5A954  38 00 00 FF */	li r0, 0xff
/* 80C5A958  90 01 00 08 */	stw r0, 8(r1)
/* 80C5A95C  38 80 00 00 */	li r4, 0
/* 80C5A960  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C5A964  38 00 FF FF */	li r0, -1
/* 80C5A968  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5A96C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5A970  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C5A974  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5A978  80 9F 05 F4 */	lwz r4, 0x5f4(r31)
/* 80C5A97C  38 A0 00 00 */	li r5, 0
/* 80C5A980  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AAD@ha */
/* 80C5A984  38 C6 8A AD */	addi r6, r6, 0x8AAD /* 0x00008AAD@l */
/* 80C5A988  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C5A98C  39 00 00 00 */	li r8, 0
/* 80C5A990  39 20 00 00 */	li r9, 0
/* 80C5A994  39 40 00 00 */	li r10, 0
/* 80C5A998  3D 60 80 C6 */	lis r11, lit_3682@ha /* 0x80C5B370@ha */
/* 80C5A99C  C0 2B B3 70 */	lfs f1, lit_3682@l(r11)  /* 0x80C5B370@l */
/* 80C5A9A0  4B 3F 2B 2D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5A9A4  90 7F 05 F4 */	stw r3, 0x5f4(r31)
/* 80C5A9A8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C5A9AC  38 00 00 FF */	li r0, 0xff
/* 80C5A9B0  90 01 00 08 */	stw r0, 8(r1)
/* 80C5A9B4  38 80 00 00 */	li r4, 0
/* 80C5A9B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C5A9BC  38 00 FF FF */	li r0, -1
/* 80C5A9C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5A9C4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5A9C8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C5A9CC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5A9D0  80 9F 05 F8 */	lwz r4, 0x5f8(r31)
/* 80C5A9D4  38 A0 00 00 */	li r5, 0
/* 80C5A9D8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AAE@ha */
/* 80C5A9DC  38 C6 8A AE */	addi r6, r6, 0x8AAE /* 0x00008AAE@l */
/* 80C5A9E0  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C5A9E4  39 00 00 00 */	li r8, 0
/* 80C5A9E8  39 20 00 00 */	li r9, 0
/* 80C5A9EC  39 40 00 00 */	li r10, 0
/* 80C5A9F0  3D 60 80 C6 */	lis r11, lit_3682@ha /* 0x80C5B370@ha */
/* 80C5A9F4  C0 2B B3 70 */	lfs f1, lit_3682@l(r11)  /* 0x80C5B370@l */
/* 80C5A9F8  4B 3F 2A D5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5A9FC  90 7F 05 F8 */	stw r3, 0x5f8(r31)
/* 80C5AA00  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C5AA04  38 00 00 FF */	li r0, 0xff
/* 80C5AA08  90 01 00 08 */	stw r0, 8(r1)
/* 80C5AA0C  38 80 00 00 */	li r4, 0
/* 80C5AA10  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C5AA14  38 00 FF FF */	li r0, -1
/* 80C5AA18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5AA1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5AA20  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C5AA24  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5AA28  80 9F 05 FC */	lwz r4, 0x5fc(r31)
/* 80C5AA2C  38 A0 00 00 */	li r5, 0
/* 80C5AA30  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AAF@ha */
/* 80C5AA34  38 C6 8A AF */	addi r6, r6, 0x8AAF /* 0x00008AAF@l */
/* 80C5AA38  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C5AA3C  39 00 00 00 */	li r8, 0
/* 80C5AA40  39 20 00 00 */	li r9, 0
/* 80C5AA44  39 40 00 00 */	li r10, 0
/* 80C5AA48  3D 60 80 C6 */	lis r11, lit_3682@ha /* 0x80C5B370@ha */
/* 80C5AA4C  C0 2B B3 70 */	lfs f1, lit_3682@l(r11)  /* 0x80C5B370@l */
/* 80C5AA50  4B 3F 2A 7D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5AA54  90 7F 05 FC */	stw r3, 0x5fc(r31)
lbl_80C5AA58:
/* 80C5AA58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5AA5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5AA60  38 80 00 0F */	li r4, 0xf
/* 80C5AA64  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5AA68  7C 05 07 74 */	extsb r5, r0
/* 80C5AA6C  4B 3D A8 F5 */	bl isSwitch__10dSv_info_cCFii
/* 80C5AA70  2C 03 00 00 */	cmpwi r3, 0
/* 80C5AA74  41 82 01 6C */	beq lbl_80C5ABE0
/* 80C5AA78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5AA7C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5AA80  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C5AA84  38 00 00 FF */	li r0, 0xff
/* 80C5AA88  90 01 00 08 */	stw r0, 8(r1)
/* 80C5AA8C  38 80 00 00 */	li r4, 0
/* 80C5AA90  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C5AA94  38 00 FF FF */	li r0, -1
/* 80C5AA98  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5AA9C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5AAA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C5AAA4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5AAA8  80 9F 06 00 */	lwz r4, 0x600(r31)
/* 80C5AAAC  38 A0 00 00 */	li r5, 0
/* 80C5AAB0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AA8@ha */
/* 80C5AAB4  38 C6 8A A8 */	addi r6, r6, 0x8AA8 /* 0x00008AA8@l */
/* 80C5AAB8  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C5AABC  39 00 00 00 */	li r8, 0
/* 80C5AAC0  39 20 00 00 */	li r9, 0
/* 80C5AAC4  39 40 00 00 */	li r10, 0
/* 80C5AAC8  3D 60 80 C6 */	lis r11, lit_3682@ha /* 0x80C5B370@ha */
/* 80C5AACC  C0 2B B3 70 */	lfs f1, lit_3682@l(r11)  /* 0x80C5B370@l */
/* 80C5AAD0  4B 3F 29 FD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5AAD4  90 7F 06 00 */	stw r3, 0x600(r31)
/* 80C5AAD8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C5AADC  38 00 00 FF */	li r0, 0xff
/* 80C5AAE0  90 01 00 08 */	stw r0, 8(r1)
/* 80C5AAE4  38 80 00 00 */	li r4, 0
/* 80C5AAE8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C5AAEC  38 00 FF FF */	li r0, -1
/* 80C5AAF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5AAF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5AAF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C5AAFC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5AB00  80 9F 06 04 */	lwz r4, 0x604(r31)
/* 80C5AB04  38 A0 00 00 */	li r5, 0
/* 80C5AB08  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AA9@ha */
/* 80C5AB0C  38 C6 8A A9 */	addi r6, r6, 0x8AA9 /* 0x00008AA9@l */
/* 80C5AB10  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C5AB14  39 00 00 00 */	li r8, 0
/* 80C5AB18  39 20 00 00 */	li r9, 0
/* 80C5AB1C  39 40 00 00 */	li r10, 0
/* 80C5AB20  3D 60 80 C6 */	lis r11, lit_3682@ha /* 0x80C5B370@ha */
/* 80C5AB24  C0 2B B3 70 */	lfs f1, lit_3682@l(r11)  /* 0x80C5B370@l */
/* 80C5AB28  4B 3F 29 A5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5AB2C  90 7F 06 04 */	stw r3, 0x604(r31)
/* 80C5AB30  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C5AB34  38 00 00 FF */	li r0, 0xff
/* 80C5AB38  90 01 00 08 */	stw r0, 8(r1)
/* 80C5AB3C  38 80 00 00 */	li r4, 0
/* 80C5AB40  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C5AB44  38 00 FF FF */	li r0, -1
/* 80C5AB48  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5AB4C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5AB50  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C5AB54  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5AB58  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C5AB5C  38 A0 00 00 */	li r5, 0
/* 80C5AB60  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AAA@ha */
/* 80C5AB64  38 C6 8A AA */	addi r6, r6, 0x8AAA /* 0x00008AAA@l */
/* 80C5AB68  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C5AB6C  39 00 00 00 */	li r8, 0
/* 80C5AB70  39 20 00 00 */	li r9, 0
/* 80C5AB74  39 40 00 00 */	li r10, 0
/* 80C5AB78  3D 60 80 C6 */	lis r11, lit_3682@ha /* 0x80C5B370@ha */
/* 80C5AB7C  C0 2B B3 70 */	lfs f1, lit_3682@l(r11)  /* 0x80C5B370@l */
/* 80C5AB80  4B 3F 29 4D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5AB84  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C5AB88  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C5AB8C  38 00 00 FF */	li r0, 0xff
/* 80C5AB90  90 01 00 08 */	stw r0, 8(r1)
/* 80C5AB94  38 80 00 00 */	li r4, 0
/* 80C5AB98  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C5AB9C  38 00 FF FF */	li r0, -1
/* 80C5ABA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5ABA4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5ABA8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C5ABAC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5ABB0  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 80C5ABB4  38 A0 00 00 */	li r5, 0
/* 80C5ABB8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AAB@ha */
/* 80C5ABBC  38 C6 8A AB */	addi r6, r6, 0x8AAB /* 0x00008AAB@l */
/* 80C5ABC0  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C5ABC4  39 00 00 00 */	li r8, 0
/* 80C5ABC8  39 20 00 00 */	li r9, 0
/* 80C5ABCC  39 40 00 00 */	li r10, 0
/* 80C5ABD0  3D 60 80 C6 */	lis r11, lit_3682@ha /* 0x80C5B370@ha */
/* 80C5ABD4  C0 2B B3 70 */	lfs f1, lit_3682@l(r11)  /* 0x80C5B370@l */
/* 80C5ABD8  4B 3F 28 F5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5ABDC  90 7F 06 0C */	stw r3, 0x60c(r31)
lbl_80C5ABE0:
/* 80C5ABE0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80C5ABE4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C5ABE8  90 1E 00 00 */	stw r0, 0(r30)
/* 80C5ABEC  7F E3 FB 78 */	mr r3, r31
/* 80C5ABF0  4B FF F8 89 */	bl setBaseMtx__13daLv3Water2_cFv
/* 80C5ABF4  38 60 00 01 */	li r3, 1
/* 80C5ABF8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C5ABFC  4B 70 76 2D */	bl _restgpr_29
/* 80C5AC00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C5AC04  7C 08 03 A6 */	mtlr r0
/* 80C5AC08  38 21 00 30 */	addi r1, r1, 0x30
/* 80C5AC0C  4E 80 00 20 */	blr 
