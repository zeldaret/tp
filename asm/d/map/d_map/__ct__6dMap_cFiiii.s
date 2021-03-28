lbl_80029874:
/* 80029874  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80029878  7C 08 02 A6 */	mflr r0
/* 8002987C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80029880  39 61 00 20 */	addi r11, r1, 0x20
/* 80029884  48 33 89 51 */	bl _savegpr_27
/* 80029888  7C 7F 1B 78 */	mr r31, r3
/* 8002988C  7C 9B 23 78 */	mr r27, r4
/* 80029890  7C BC 2B 78 */	mr r28, r5
/* 80029894  7C DD 33 78 */	mr r29, r6
/* 80029898  7C FE 3B 78 */	mr r30, r7
/* 8002989C  48 00 15 D1 */	bl __ct__15renderingAmap_cFv
/* 800298A0  3C 60 80 3A */	lis r3, __vt__6dMap_c@ha
/* 800298A4  38 03 70 30 */	addi r0, r3, __vt__6dMap_c@l
/* 800298A8  90 1F 00 00 */	stw r0, 0(r31)
/* 800298AC  38 60 00 00 */	li r3, 0
/* 800298B0  90 7F 00 40 */	stw r3, 0x40(r31)
/* 800298B4  90 7F 00 44 */	stw r3, 0x44(r31)
/* 800298B8  90 7F 00 48 */	stw r3, 0x48(r31)
/* 800298BC  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 800298C0  C0 22 82 E4 */	lfs f1, lit_4321(r2)
/* 800298C4  D0 3F 00 50 */	stfs f1, 0x50(r31)
/* 800298C8  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 800298CC  C0 02 82 E0 */	lfs f0, lit_4284(r2)
/* 800298D0  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 800298D4  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 800298D8  D0 3F 00 60 */	stfs f1, 0x60(r31)
/* 800298DC  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 800298E0  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 800298E4  D0 3F 00 6C */	stfs f1, 0x6c(r31)
/* 800298E8  D0 3F 00 70 */	stfs f1, 0x70(r31)
/* 800298EC  90 7F 00 74 */	stw r3, 0x74(r31)
/* 800298F0  B0 7F 00 78 */	sth r3, 0x78(r31)
/* 800298F4  B0 7F 00 7A */	sth r3, 0x7a(r31)
/* 800298F8  38 00 FF FF */	li r0, -1
/* 800298FC  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 80029900  90 1F 00 80 */	stw r0, 0x80(r31)
/* 80029904  90 1F 00 84 */	stw r0, 0x84(r31)
/* 80029908  90 1F 00 88 */	stw r0, 0x88(r31)
/* 8002990C  98 7F 00 8C */	stb r3, 0x8c(r31)
/* 80029910  98 7F 00 8D */	stb r3, 0x8d(r31)
/* 80029914  98 7F 00 8E */	stb r3, 0x8e(r31)
/* 80029918  98 7F 00 8F */	stb r3, 0x8f(r31)
/* 8002991C  98 7F 00 90 */	stb r3, 0x90(r31)
/* 80029920  38 60 01 BC */	li r3, 0x1bc
/* 80029924  38 80 00 20 */	li r4, 0x20
/* 80029928  48 2A 53 4D */	bl __nw__FUli
/* 8002992C  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80029930  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80029934  90 0D 88 00 */	stw r0, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 80029938  3C 60 80 38 */	lis r3, d_map_d_map__stringBase0@ha
/* 8002993C  38 63 8F 24 */	addi r3, r3, d_map_d_map__stringBase0@l
/* 80029940  38 80 00 45 */	li r4, 0x45
/* 80029944  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80029948  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8002994C  3C A5 00 02 */	addis r5, r5, 2
/* 80029950  38 C0 00 80 */	li r6, 0x80
/* 80029954  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80029958  48 01 29 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8002995C  90 7F 00 40 */	stw r3, 0x40(r31)
/* 80029960  7F E3 FB 78 */	mr r3, r31
/* 80029964  4B FF FE B5 */	bl resCopy__6dMap_cFv
/* 80029968  B3 7F 00 78 */	sth r27, 0x78(r31)
/* 8002996C  B3 9F 00 7A */	sth r28, 0x7a(r31)
/* 80029970  80 6D 88 00 */	lwz r3, m_res__22dMap_HIO_prm_res_dst_s(r13)
/* 80029974  A8 03 01 AE */	lha r0, 0x1ae(r3)
/* 80029978  2C 00 00 00 */	cmpwi r0, 0
/* 8002997C  40 81 00 14 */	ble lbl_80029990
/* 80029980  A8 63 01 B0 */	lha r3, 0x1b0(r3)
/* 80029984  38 00 00 06 */	li r0, 6
/* 80029988  7C 03 03 D6 */	divw r0, r3, r0
/* 8002998C  90 1F 00 74 */	stw r0, 0x74(r31)
lbl_80029990:
/* 80029990  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 80029994  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 80029998  38 A0 00 09 */	li r5, 9
/* 8002999C  38 C0 00 00 */	li r6, 0
/* 800299A0  38 E0 00 00 */	li r7, 0
/* 800299A4  48 33 42 79 */	bl GXGetTexBufferSize
/* 800299A8  38 80 00 20 */	li r4, 0x20
/* 800299AC  48 2A 53 41 */	bl __nwa__FUli
/* 800299B0  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 800299B4  A0 DF 00 7A */	lhz r6, 0x7a(r31)
/* 800299B8  A0 BF 00 78 */	lhz r5, 0x78(r31)
/* 800299BC  7F E3 FB 78 */	mr r3, r31
/* 800299C0  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 800299C4  7C A7 2B 78 */	mr r7, r5
/* 800299C8  7C C8 33 78 */	mr r8, r6
/* 800299CC  48 01 62 FD */	bl init__16renderingDAmap_cFPUcUsUsUsUs
/* 800299D0  38 60 00 20 */	li r3, 0x20
/* 800299D4  38 80 00 20 */	li r4, 0x20
/* 800299D8  48 2A 52 9D */	bl __nw__FUli
/* 800299DC  90 7F 00 48 */	stw r3, 0x48(r31)
/* 800299E0  7F E3 FB 78 */	mr r3, r31
/* 800299E4  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 800299E8  A0 BF 00 78 */	lhz r5, 0x78(r31)
/* 800299EC  A0 DF 00 7A */	lhz r6, 0x7a(r31)
/* 800299F0  80 FF 00 4C */	lwz r7, 0x4c(r31)
/* 800299F4  81 1F 00 44 */	lwz r8, 0x44(r31)
/* 800299F8  39 20 00 33 */	li r9, 0x33
/* 800299FC  48 01 33 3D */	bl makeResTIMG__15dRenderingMap_cCFP7ResTIMGUsUsPUcPUcUs
/* 80029A00  7F E3 FB 78 */	mr r3, r31
/* 80029A04  39 61 00 20 */	addi r11, r1, 0x20
/* 80029A08  48 33 88 19 */	bl _restgpr_27
/* 80029A0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80029A10  7C 08 03 A6 */	mtlr r0
/* 80029A14  38 21 00 20 */	addi r1, r1, 0x20
/* 80029A18  4E 80 00 20 */	blr 
