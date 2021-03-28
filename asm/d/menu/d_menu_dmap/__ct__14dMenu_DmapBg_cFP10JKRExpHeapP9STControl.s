lbl_801B7F20:
/* 801B7F20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801B7F24  7C 08 02 A6 */	mflr r0
/* 801B7F28  90 01 00 44 */	stw r0, 0x44(r1)
/* 801B7F2C  39 61 00 40 */	addi r11, r1, 0x40
/* 801B7F30  48 1A A2 AD */	bl _savegpr_29
/* 801B7F34  7C 7F 1B 78 */	mr r31, r3
/* 801B7F38  7C 9D 23 78 */	mr r29, r4
/* 801B7F3C  7C BE 2B 78 */	mr r30, r5
/* 801B7F40  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha
/* 801B7F44  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l
/* 801B7F48  90 1F 00 00 */	stw r0, 0(r31)
/* 801B7F4C  38 7F 00 04 */	addi r3, r31, 4
/* 801B7F50  48 00 A7 C9 */	bl __ct__16dMenuMapCommon_cFv
/* 801B7F54  3C 60 80 3C */	lis r3, __vt__14dMenu_DmapBg_c@ha
/* 801B7F58  38 63 CB 38 */	addi r3, r3, __vt__14dMenu_DmapBg_c@l
/* 801B7F5C  90 7F 00 00 */	stw r3, 0(r31)
/* 801B7F60  38 03 00 0C */	addi r0, r3, 0xc
/* 801B7F64  90 1F 00 04 */	stw r0, 4(r31)
/* 801B7F68  38 7F 0D 34 */	addi r3, r31, 0xd34
/* 801B7F6C  48 09 1F 95 */	bl __ct__10dMsgFlow_cFv
/* 801B7F70  93 BF 0C 98 */	stw r29, 0xc98(r31)
/* 801B7F74  93 DF 0C A0 */	stw r30, 0xca0(r31)
/* 801B7F78  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801B7F7C  D0 3F 0D 94 */	stfs f1, 0xd94(r31)
/* 801B7F80  D0 3F 0D 98 */	stfs f1, 0xd98(r31)
/* 801B7F84  D0 3F 0D 9C */	stfs f1, 0xd9c(r31)
/* 801B7F88  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801B7F8C  D0 1F 0D A8 */	stfs f0, 0xda8(r31)
/* 801B7F90  D0 3F 0D B4 */	stfs f1, 0xdb4(r31)
/* 801B7F94  D0 3F 0D B8 */	stfs f1, 0xdb8(r31)
/* 801B7F98  38 60 00 FF */	li r3, 0xff
/* 801B7F9C  98 7F 0D D3 */	stb r3, 0xdd3(r31)
/* 801B7FA0  38 00 FF 9D */	li r0, -99
/* 801B7FA4  98 1F 0D D4 */	stb r0, 0xdd4(r31)
/* 801B7FA8  98 1F 0D D6 */	stb r0, 0xdd6(r31)
/* 801B7FAC  98 7F 0D D5 */	stb r3, 0xdd5(r31)
/* 801B7FB0  38 00 00 00 */	li r0, 0
/* 801B7FB4  98 1F 0D D7 */	stb r0, 0xdd7(r31)
/* 801B7FB8  38 00 00 01 */	li r0, 1
/* 801B7FBC  98 1F 0D D8 */	stb r0, 0xdd8(r31)
/* 801B7FC0  38 60 00 2C */	li r3, 0x2c
/* 801B7FC4  48 11 6C 89 */	bl __nw__FUl
/* 801B7FC8  7C 60 1B 79 */	or. r0, r3, r3
/* 801B7FCC  41 82 00 0C */	beq lbl_801B7FD8
/* 801B7FD0  48 09 1C 51 */	bl __ct__12dMsgString_cFv
/* 801B7FD4  7C 60 1B 78 */	mr r0, r3
lbl_801B7FD8:
/* 801B7FD8  90 1F 0C C8 */	stw r0, 0xcc8(r31)
/* 801B7FDC  3C 60 00 03 */	lis r3, 0x0003 /* 0x00032000@ha */
/* 801B7FE0  38 63 20 00 */	addi r3, r3, 0x2000 /* 0x00032000@l */
/* 801B7FE4  80 9F 0C 98 */	lwz r4, 0xc98(r31)
/* 801B7FE8  38 A0 00 00 */	li r5, 0
/* 801B7FEC  48 11 6E 41 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 801B7FF0  90 7F 0C 9C */	stw r3, 0xc9c(r31)
/* 801B7FF4  38 00 00 00 */	li r0, 0
/* 801B7FF8  90 1F 0D 18 */	stw r0, 0xd18(r31)
/* 801B7FFC  38 60 00 2C */	li r3, 0x2c
/* 801B8000  48 11 6C 4D */	bl __nw__FUl
/* 801B8004  7C 60 1B 79 */	or. r0, r3, r3
/* 801B8008  41 82 00 10 */	beq lbl_801B8018
/* 801B800C  38 80 00 02 */	li r4, 2
/* 801B8010  48 05 2E 7D */	bl __ct__14dMeterHaihai_cFUc
/* 801B8014  7C 60 1B 78 */	mr r0, r3
lbl_801B8018:
/* 801B8018  90 1F 0D 30 */	stw r0, 0xd30(r31)
/* 801B801C  38 00 00 00 */	li r0, 0
/* 801B8020  98 1F 0D DA */	stb r0, 0xdda(r31)
/* 801B8024  7F E3 FB 78 */	mr r3, r31
/* 801B8028  48 00 11 B5 */	bl baseScreenInit__14dMenu_DmapBg_cFv
/* 801B802C  7F E3 FB 78 */	mr r3, r31
/* 801B8030  48 00 00 E1 */	bl mapScreenInit__14dMenu_DmapBg_cFv
/* 801B8034  38 61 00 10 */	addi r3, r1, 0x10
/* 801B8038  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha
/* 801B803C  38 84 57 60 */	addi r4, r4, d_menu_d_menu_dmap__stringBase0@l
/* 801B8040  48 1B 0A ED */	bl strcpy
/* 801B8044  38 61 00 08 */	addi r3, r1, 8
/* 801B8048  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801B804C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 801B8050  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 801B8054  48 1B 0A D9 */	bl strcpy
/* 801B8058  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801B805C  98 01 00 22 */	stb r0, 0x22(r1)
/* 801B8060  88 01 00 0D */	lbz r0, 0xd(r1)
/* 801B8064  98 01 00 23 */	stb r0, 0x23(r1)
/* 801B8068  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B806C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B8070  3B C3 09 58 */	addi r30, r3, 0x958
/* 801B8074  7F C3 F3 78 */	mr r3, r30
/* 801B8078  38 80 00 00 */	li r4, 0
/* 801B807C  4B E7 C8 B9 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801B8080  2C 03 00 00 */	cmpwi r3, 0
/* 801B8084  40 82 00 18 */	bne lbl_801B809C
/* 801B8088  7F C3 F3 78 */	mr r3, r30
/* 801B808C  38 80 00 01 */	li r4, 1
/* 801B8090  4B E7 C8 A5 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801B8094  2C 03 00 00 */	cmpwi r3, 0
/* 801B8098  41 82 00 20 */	beq lbl_801B80B8
lbl_801B809C:
/* 801B809C  4B E5 6D 95 */	bl mDoExt_getJ2dHeap__Fv
/* 801B80A0  7C 65 1B 78 */	mr r5, r3
/* 801B80A4  38 61 00 10 */	addi r3, r1, 0x10
/* 801B80A8  38 80 00 02 */	li r4, 2
/* 801B80AC  4B E5 DD 69 */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 801B80B0  90 7F 0D 1C */	stw r3, 0xd1c(r31)
/* 801B80B4  48 00 00 0C */	b lbl_801B80C0
lbl_801B80B8:
/* 801B80B8  38 00 00 00 */	li r0, 0
/* 801B80BC  90 1F 0D 1C */	stw r0, 0xd1c(r31)
lbl_801B80C0:
/* 801B80C0  38 00 00 00 */	li r0, 0
/* 801B80C4  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 801B80C8  90 1F 0D 24 */	stw r0, 0xd24(r31)
/* 801B80CC  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801B80D0  D0 1F 0D BC */	stfs f0, 0xdbc(r31)
/* 801B80D4  38 7F 0D 80 */	addi r3, r31, 0xd80
/* 801B80D8  38 80 00 00 */	li r4, 0
/* 801B80DC  38 A0 00 14 */	li r5, 0x14
/* 801B80E0  4B E4 B3 79 */	bl memset
/* 801B80E4  7F E3 FB 78 */	mr r3, r31
/* 801B80E8  48 00 09 25 */	bl buttonIconScreenInit__14dMenu_DmapBg_cFv
/* 801B80EC  38 00 00 00 */	li r0, 0
/* 801B80F0  98 1F 0D D0 */	stb r0, 0xdd0(r31)
/* 801B80F4  7F E3 FB 78 */	mr r3, r31
/* 801B80F8  39 61 00 40 */	addi r11, r1, 0x40
/* 801B80FC  48 1A A1 2D */	bl _restgpr_29
/* 801B8100  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801B8104  7C 08 03 A6 */	mtlr r0
/* 801B8108  38 21 00 40 */	addi r1, r1, 0x40
/* 801B810C  4E 80 00 20 */	blr 
