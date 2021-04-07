lbl_801C28D8:
/* 801C28D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801C28DC  7C 08 02 A6 */	mflr r0
/* 801C28E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C28E4  39 61 00 40 */	addi r11, r1, 0x40
/* 801C28E8  48 19 F8 F5 */	bl _savegpr_29
/* 801C28EC  7C 7F 1B 78 */	mr r31, r3
/* 801C28F0  7C 9E 23 78 */	mr r30, r4
/* 801C28F4  7F C3 F3 78 */	mr r3, r30
/* 801C28F8  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C28FC  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2900  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2904  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2908  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C290C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2910  7D 89 03 A6 */	mtctr r12
/* 801C2914  4E 80 04 21 */	bctrl 
/* 801C2918  7C 7D 1B 78 */	mr r29, r3
/* 801C291C  38 60 01 50 */	li r3, 0x150
/* 801C2920  48 10 C3 2D */	bl __nw__FUl
/* 801C2924  7C 60 1B 79 */	or. r0, r3, r3
/* 801C2928  41 82 00 10 */	beq lbl_801C2938
/* 801C292C  7F A4 EB 78 */	mr r4, r29
/* 801C2930  48 13 9D D9 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C2934  7C 60 1B 78 */	mr r0, r3
lbl_801C2938:
/* 801C2938  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801C293C  7F C3 F3 78 */	mr r3, r30
/* 801C2940  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2944  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2948  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C294C  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2950  38 A5 00 21 */	addi r5, r5, 0x21
/* 801C2954  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2958  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C295C  7D 89 03 A6 */	mtctr r12
/* 801C2960  4E 80 04 21 */	bctrl 
/* 801C2964  7C 64 1B 78 */	mr r4, r3
/* 801C2968  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C296C  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C2970  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2974  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C2978  7D 89 03 A6 */	mtctr r12
/* 801C297C  4E 80 04 21 */	bctrl 
/* 801C2980  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C2984  38 80 00 04 */	li r4, 4
/* 801C2988  48 13 4D 71 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C298C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C2990  38 80 00 00 */	li r4, 0
/* 801C2994  38 A0 00 00 */	li r5, 0
/* 801C2998  48 13 4E 39 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C299C  7F C3 F3 78 */	mr r3, r30
/* 801C29A0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C29A4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C29A8  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C29AC  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C29B0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C29B4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C29B8  7D 89 03 A6 */	mtctr r12
/* 801C29BC  4E 80 04 21 */	bctrl 
/* 801C29C0  7C 7D 1B 78 */	mr r29, r3
/* 801C29C4  38 60 01 50 */	li r3, 0x150
/* 801C29C8  48 10 C2 85 */	bl __nw__FUl
/* 801C29CC  7C 60 1B 79 */	or. r0, r3, r3
/* 801C29D0  41 82 00 10 */	beq lbl_801C29E0
/* 801C29D4  7F A4 EB 78 */	mr r4, r29
/* 801C29D8  48 13 9D 31 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C29DC  7C 60 1B 78 */	mr r0, r3
lbl_801C29E0:
/* 801C29E0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801C29E4  7F C3 F3 78 */	mr r3, r30
/* 801C29E8  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C29EC  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C29F0  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C29F4  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C29F8  38 A5 00 21 */	addi r5, r5, 0x21
/* 801C29FC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2A00  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2A04  7D 89 03 A6 */	mtctr r12
/* 801C2A08  4E 80 04 21 */	bctrl 
/* 801C2A0C  7C 64 1B 78 */	mr r4, r3
/* 801C2A10  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801C2A14  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C2A18  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2A1C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C2A20  7D 89 03 A6 */	mtctr r12
/* 801C2A24  4E 80 04 21 */	bctrl 
/* 801C2A28  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801C2A2C  38 80 00 04 */	li r4, 4
/* 801C2A30  48 13 4C C9 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C2A34  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801C2A38  38 80 00 00 */	li r4, 0
/* 801C2A3C  38 A0 00 00 */	li r5, 0
/* 801C2A40  48 13 4D 91 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C2A44  7F C3 F3 78 */	mr r3, r30
/* 801C2A48  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2A4C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2A50  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2A54  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2A58  38 A5 00 40 */	addi r5, r5, 0x40
/* 801C2A5C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2A60  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2A64  7D 89 03 A6 */	mtctr r12
/* 801C2A68  4E 80 04 21 */	bctrl 
/* 801C2A6C  7C 7D 1B 78 */	mr r29, r3
/* 801C2A70  38 60 01 50 */	li r3, 0x150
/* 801C2A74  48 10 C1 D9 */	bl __nw__FUl
/* 801C2A78  7C 60 1B 79 */	or. r0, r3, r3
/* 801C2A7C  41 82 00 10 */	beq lbl_801C2A8C
/* 801C2A80  7F A4 EB 78 */	mr r4, r29
/* 801C2A84  48 13 9C 85 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C2A88  7C 60 1B 78 */	mr r0, r3
lbl_801C2A8C:
/* 801C2A8C  90 1F 00 54 */	stw r0, 0x54(r31)
/* 801C2A90  7F C3 F3 78 */	mr r3, r30
/* 801C2A94  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2A98  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2A9C  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2AA0  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2AA4  38 A5 00 60 */	addi r5, r5, 0x60
/* 801C2AA8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2AAC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2AB0  7D 89 03 A6 */	mtctr r12
/* 801C2AB4  4E 80 04 21 */	bctrl 
/* 801C2AB8  7C 64 1B 78 */	mr r4, r3
/* 801C2ABC  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 801C2AC0  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C2AC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2AC8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C2ACC  7D 89 03 A6 */	mtctr r12
/* 801C2AD0  4E 80 04 21 */	bctrl 
/* 801C2AD4  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 801C2AD8  38 80 00 04 */	li r4, 4
/* 801C2ADC  48 13 4C 1D */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C2AE0  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 801C2AE4  38 80 00 00 */	li r4, 0
/* 801C2AE8  38 A0 00 00 */	li r5, 0
/* 801C2AEC  48 13 4C E5 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C2AF0  7F C3 F3 78 */	mr r3, r30
/* 801C2AF4  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2AF8  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2AFC  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2B00  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2B04  38 A5 00 7D */	addi r5, r5, 0x7d
/* 801C2B08  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2B0C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2B10  7D 89 03 A6 */	mtctr r12
/* 801C2B14  4E 80 04 21 */	bctrl 
/* 801C2B18  7C 7D 1B 78 */	mr r29, r3
/* 801C2B1C  38 60 01 50 */	li r3, 0x150
/* 801C2B20  48 10 C1 2D */	bl __nw__FUl
/* 801C2B24  7C 60 1B 79 */	or. r0, r3, r3
/* 801C2B28  41 82 00 10 */	beq lbl_801C2B38
/* 801C2B2C  7F A4 EB 78 */	mr r4, r29
/* 801C2B30  48 13 9B D9 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C2B34  7C 60 1B 78 */	mr r0, r3
lbl_801C2B38:
/* 801C2B38  90 1F 00 58 */	stw r0, 0x58(r31)
/* 801C2B3C  7F C3 F3 78 */	mr r3, r30
/* 801C2B40  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2B44  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2B48  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2B4C  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2B50  38 A5 00 9F */	addi r5, r5, 0x9f
/* 801C2B54  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2B58  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2B5C  7D 89 03 A6 */	mtctr r12
/* 801C2B60  4E 80 04 21 */	bctrl 
/* 801C2B64  7C 64 1B 78 */	mr r4, r3
/* 801C2B68  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801C2B6C  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C2B70  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2B74  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C2B78  7D 89 03 A6 */	mtctr r12
/* 801C2B7C  4E 80 04 21 */	bctrl 
/* 801C2B80  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801C2B84  38 80 00 04 */	li r4, 4
/* 801C2B88  48 13 4B 71 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C2B8C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801C2B90  38 80 00 00 */	li r4, 0
/* 801C2B94  38 A0 00 00 */	li r5, 0
/* 801C2B98  48 13 4C 39 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C2B9C  7F C3 F3 78 */	mr r3, r30
/* 801C2BA0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2BA4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2BA8  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2BAC  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2BB0  38 A5 00 BF */	addi r5, r5, 0xbf
/* 801C2BB4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2BB8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2BBC  7D 89 03 A6 */	mtctr r12
/* 801C2BC0  4E 80 04 21 */	bctrl 
/* 801C2BC4  7C 7D 1B 78 */	mr r29, r3
/* 801C2BC8  38 60 01 50 */	li r3, 0x150
/* 801C2BCC  48 10 C0 81 */	bl __nw__FUl
/* 801C2BD0  7C 60 1B 79 */	or. r0, r3, r3
/* 801C2BD4  41 82 00 10 */	beq lbl_801C2BE4
/* 801C2BD8  7F A4 EB 78 */	mr r4, r29
/* 801C2BDC  48 13 9B 2D */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C2BE0  7C 60 1B 78 */	mr r0, r3
lbl_801C2BE4:
/* 801C2BE4  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 801C2BE8  7F C3 F3 78 */	mr r3, r30
/* 801C2BEC  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2BF0  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2BF4  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2BF8  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2BFC  38 A5 00 DE */	addi r5, r5, 0xde
/* 801C2C00  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2C04  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2C08  7D 89 03 A6 */	mtctr r12
/* 801C2C0C  4E 80 04 21 */	bctrl 
/* 801C2C10  7C 64 1B 78 */	mr r4, r3
/* 801C2C14  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801C2C18  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C2C1C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2C20  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C2C24  7D 89 03 A6 */	mtctr r12
/* 801C2C28  4E 80 04 21 */	bctrl 
/* 801C2C2C  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801C2C30  38 80 00 04 */	li r4, 4
/* 801C2C34  48 13 4A C5 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C2C38  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801C2C3C  38 80 00 00 */	li r4, 0
/* 801C2C40  38 A0 00 00 */	li r5, 0
/* 801C2C44  48 13 4B 8D */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C2C48  7F C3 F3 78 */	mr r3, r30
/* 801C2C4C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2C50  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2C54  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2C58  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2C5C  38 A5 00 FD */	addi r5, r5, 0xfd
/* 801C2C60  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2C64  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2C68  7D 89 03 A6 */	mtctr r12
/* 801C2C6C  4E 80 04 21 */	bctrl 
/* 801C2C70  7C 7D 1B 78 */	mr r29, r3
/* 801C2C74  38 60 01 50 */	li r3, 0x150
/* 801C2C78  48 10 BF D5 */	bl __nw__FUl
/* 801C2C7C  7C 60 1B 79 */	or. r0, r3, r3
/* 801C2C80  41 82 00 10 */	beq lbl_801C2C90
/* 801C2C84  7F A4 EB 78 */	mr r4, r29
/* 801C2C88  48 13 9A 81 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C2C8C  7C 60 1B 78 */	mr r0, r3
lbl_801C2C90:
/* 801C2C90  90 1F 00 50 */	stw r0, 0x50(r31)
/* 801C2C94  7F C3 F3 78 */	mr r3, r30
/* 801C2C98  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2C9C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2CA0  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2CA4  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2CA8  38 A5 01 1D */	addi r5, r5, 0x11d
/* 801C2CAC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2CB0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2CB4  7D 89 03 A6 */	mtctr r12
/* 801C2CB8  4E 80 04 21 */	bctrl 
/* 801C2CBC  7C 64 1B 78 */	mr r4, r3
/* 801C2CC0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 801C2CC4  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C2CC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2CCC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C2CD0  7D 89 03 A6 */	mtctr r12
/* 801C2CD4  4E 80 04 21 */	bctrl 
/* 801C2CD8  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 801C2CDC  38 80 00 04 */	li r4, 4
/* 801C2CE0  48 13 4A 19 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C2CE4  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 801C2CE8  38 80 00 00 */	li r4, 0
/* 801C2CEC  38 A0 00 00 */	li r5, 0
/* 801C2CF0  48 13 4A E1 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C2CF4  7F C3 F3 78 */	mr r3, r30
/* 801C2CF8  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2CFC  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2D00  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2D04  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2D08  38 A5 01 3B */	addi r5, r5, 0x13b
/* 801C2D0C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2D10  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2D14  7D 89 03 A6 */	mtctr r12
/* 801C2D18  4E 80 04 21 */	bctrl 
/* 801C2D1C  7C 7D 1B 78 */	mr r29, r3
/* 801C2D20  38 60 01 50 */	li r3, 0x150
/* 801C2D24  48 10 BF 29 */	bl __nw__FUl
/* 801C2D28  7C 60 1B 79 */	or. r0, r3, r3
/* 801C2D2C  41 82 00 10 */	beq lbl_801C2D3C
/* 801C2D30  7F A4 EB 78 */	mr r4, r29
/* 801C2D34  48 13 99 D5 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C2D38  7C 60 1B 78 */	mr r0, r3
lbl_801C2D3C:
/* 801C2D3C  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 801C2D40  7F C3 F3 78 */	mr r3, r30
/* 801C2D44  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2D48  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2D4C  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2D50  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2D54  38 A5 01 65 */	addi r5, r5, 0x165
/* 801C2D58  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2D5C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2D60  7D 89 03 A6 */	mtctr r12
/* 801C2D64  4E 80 04 21 */	bctrl 
/* 801C2D68  7C 64 1B 78 */	mr r4, r3
/* 801C2D6C  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 801C2D70  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C2D74  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2D78  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C2D7C  7D 89 03 A6 */	mtctr r12
/* 801C2D80  4E 80 04 21 */	bctrl 
/* 801C2D84  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 801C2D88  38 80 00 04 */	li r4, 4
/* 801C2D8C  48 13 49 6D */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C2D90  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 801C2D94  38 80 00 00 */	li r4, 0
/* 801C2D98  38 A0 00 00 */	li r5, 0
/* 801C2D9C  48 13 4A 35 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C2DA0  7F C3 F3 78 */	mr r3, r30
/* 801C2DA4  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2DA8  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2DAC  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2DB0  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2DB4  38 A5 01 83 */	addi r5, r5, 0x183
/* 801C2DB8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2DBC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2DC0  7D 89 03 A6 */	mtctr r12
/* 801C2DC4  4E 80 04 21 */	bctrl 
/* 801C2DC8  7C 7D 1B 78 */	mr r29, r3
/* 801C2DCC  38 60 01 50 */	li r3, 0x150
/* 801C2DD0  48 10 BE 7D */	bl __nw__FUl
/* 801C2DD4  7C 60 1B 79 */	or. r0, r3, r3
/* 801C2DD8  41 82 00 10 */	beq lbl_801C2DE8
/* 801C2DDC  7F A4 EB 78 */	mr r4, r29
/* 801C2DE0  48 13 99 29 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C2DE4  7C 60 1B 78 */	mr r0, r3
lbl_801C2DE8:
/* 801C2DE8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801C2DEC  7F C3 F3 78 */	mr r3, r30
/* 801C2DF0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2DF4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2DF8  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2DFC  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2E00  38 A5 01 A8 */	addi r5, r5, 0x1a8
/* 801C2E04  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2E08  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2E0C  7D 89 03 A6 */	mtctr r12
/* 801C2E10  4E 80 04 21 */	bctrl 
/* 801C2E14  7C 64 1B 78 */	mr r4, r3
/* 801C2E18  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801C2E1C  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C2E20  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2E24  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C2E28  7D 89 03 A6 */	mtctr r12
/* 801C2E2C  4E 80 04 21 */	bctrl 
/* 801C2E30  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801C2E34  38 80 00 04 */	li r4, 4
/* 801C2E38  48 13 48 C1 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C2E3C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801C2E40  38 80 00 00 */	li r4, 0
/* 801C2E44  38 A0 00 00 */	li r5, 0
/* 801C2E48  48 13 49 89 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C2E4C  7F C3 F3 78 */	mr r3, r30
/* 801C2E50  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2E54  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2E58  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2E5C  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2E60  38 A5 01 83 */	addi r5, r5, 0x183
/* 801C2E64  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2E68  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2E6C  7D 89 03 A6 */	mtctr r12
/* 801C2E70  4E 80 04 21 */	bctrl 
/* 801C2E74  7C 7D 1B 78 */	mr r29, r3
/* 801C2E78  38 60 01 50 */	li r3, 0x150
/* 801C2E7C  48 10 BD D1 */	bl __nw__FUl
/* 801C2E80  7C 60 1B 79 */	or. r0, r3, r3
/* 801C2E84  41 82 00 10 */	beq lbl_801C2E94
/* 801C2E88  7F A4 EB 78 */	mr r4, r29
/* 801C2E8C  48 13 98 7D */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C2E90  7C 60 1B 78 */	mr r0, r3
lbl_801C2E94:
/* 801C2E94  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 801C2E98  7F C3 F3 78 */	mr r3, r30
/* 801C2E9C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2EA0  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2EA4  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2EA8  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2EAC  38 A5 01 B6 */	addi r5, r5, 0x1b6
/* 801C2EB0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2EB4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2EB8  7D 89 03 A6 */	mtctr r12
/* 801C2EBC  4E 80 04 21 */	bctrl 
/* 801C2EC0  7C 64 1B 78 */	mr r4, r3
/* 801C2EC4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801C2EC8  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C2ECC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2ED0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C2ED4  7D 89 03 A6 */	mtctr r12
/* 801C2ED8  4E 80 04 21 */	bctrl 
/* 801C2EDC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801C2EE0  38 80 00 04 */	li r4, 4
/* 801C2EE4  48 13 48 15 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C2EE8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801C2EEC  38 80 00 00 */	li r4, 0
/* 801C2EF0  38 A0 00 00 */	li r5, 0
/* 801C2EF4  48 13 48 DD */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C2EF8  7F C3 F3 78 */	mr r3, r30
/* 801C2EFC  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2F00  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2F04  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2F08  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2F0C  38 A5 01 C4 */	addi r5, r5, 0x1c4
/* 801C2F10  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2F14  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2F18  7D 89 03 A6 */	mtctr r12
/* 801C2F1C  4E 80 04 21 */	bctrl 
/* 801C2F20  7C 7D 1B 78 */	mr r29, r3
/* 801C2F24  38 60 01 50 */	li r3, 0x150
/* 801C2F28  48 10 BD 25 */	bl __nw__FUl
/* 801C2F2C  7C 60 1B 79 */	or. r0, r3, r3
/* 801C2F30  41 82 00 10 */	beq lbl_801C2F40
/* 801C2F34  7F A4 EB 78 */	mr r4, r29
/* 801C2F38  48 13 97 D1 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C2F3C  7C 60 1B 78 */	mr r0, r3
lbl_801C2F40:
/* 801C2F40  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801C2F44  7F C3 F3 78 */	mr r3, r30
/* 801C2F48  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2F4C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2F50  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2F54  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2F58  38 A5 01 F0 */	addi r5, r5, 0x1f0
/* 801C2F5C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2F60  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2F64  7D 89 03 A6 */	mtctr r12
/* 801C2F68  4E 80 04 21 */	bctrl 
/* 801C2F6C  7C 64 1B 78 */	mr r4, r3
/* 801C2F70  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801C2F74  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C2F78  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2F7C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C2F80  7D 89 03 A6 */	mtctr r12
/* 801C2F84  4E 80 04 21 */	bctrl 
/* 801C2F88  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801C2F8C  38 80 00 04 */	li r4, 4
/* 801C2F90  48 13 47 69 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C2F94  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801C2F98  38 80 00 00 */	li r4, 0
/* 801C2F9C  38 A0 00 00 */	li r5, 0
/* 801C2FA0  48 13 48 31 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C2FA4  7F C3 F3 78 */	mr r3, r30
/* 801C2FA8  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2FAC  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2FB0  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C2FB4  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C2FB8  38 A5 01 83 */	addi r5, r5, 0x183
/* 801C2FBC  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C2FC0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2FC4  7D 89 03 A6 */	mtctr r12
/* 801C2FC8  4E 80 04 21 */	bctrl 
/* 801C2FCC  7C 7D 1B 78 */	mr r29, r3
/* 801C2FD0  38 60 01 50 */	li r3, 0x150
/* 801C2FD4  48 10 BC 79 */	bl __nw__FUl
/* 801C2FD8  7C 60 1B 79 */	or. r0, r3, r3
/* 801C2FDC  41 82 00 10 */	beq lbl_801C2FEC
/* 801C2FE0  7F A4 EB 78 */	mr r4, r29
/* 801C2FE4  48 13 97 25 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C2FE8  7C 60 1B 78 */	mr r0, r3
lbl_801C2FEC:
/* 801C2FEC  90 1F 00 34 */	stw r0, 0x34(r31)
/* 801C2FF0  7F C3 F3 78 */	mr r3, r30
/* 801C2FF4  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C2FF8  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C2FFC  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3000  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3004  38 A5 02 01 */	addi r5, r5, 0x201
/* 801C3008  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C300C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3010  7D 89 03 A6 */	mtctr r12
/* 801C3014  4E 80 04 21 */	bctrl 
/* 801C3018  7C 64 1B 78 */	mr r4, r3
/* 801C301C  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801C3020  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C3024  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3028  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C302C  7D 89 03 A6 */	mtctr r12
/* 801C3030  4E 80 04 21 */	bctrl 
/* 801C3034  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801C3038  38 80 00 04 */	li r4, 4
/* 801C303C  48 13 46 BD */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C3040  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801C3044  38 80 00 00 */	li r4, 0
/* 801C3048  38 A0 00 00 */	li r5, 0
/* 801C304C  48 13 47 85 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C3050  7F C3 F3 78 */	mr r3, r30
/* 801C3054  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C3058  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C305C  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3060  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3064  38 A5 02 22 */	addi r5, r5, 0x222
/* 801C3068  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C306C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3070  7D 89 03 A6 */	mtctr r12
/* 801C3074  4E 80 04 21 */	bctrl 
/* 801C3078  7C 7D 1B 78 */	mr r29, r3
/* 801C307C  38 60 01 50 */	li r3, 0x150
/* 801C3080  48 10 BB CD */	bl __nw__FUl
/* 801C3084  7C 60 1B 79 */	or. r0, r3, r3
/* 801C3088  41 82 00 10 */	beq lbl_801C3098
/* 801C308C  7F A4 EB 78 */	mr r4, r29
/* 801C3090  48 13 96 79 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C3094  7C 60 1B 78 */	mr r0, r3
lbl_801C3098:
/* 801C3098  90 1F 00 40 */	stw r0, 0x40(r31)
/* 801C309C  7F C3 F3 78 */	mr r3, r30
/* 801C30A0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C30A4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C30A8  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C30AC  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C30B0  38 A5 02 4C */	addi r5, r5, 0x24c
/* 801C30B4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C30B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C30BC  7D 89 03 A6 */	mtctr r12
/* 801C30C0  4E 80 04 21 */	bctrl 
/* 801C30C4  7C 64 1B 78 */	mr r4, r3
/* 801C30C8  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801C30CC  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C30D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C30D4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C30D8  7D 89 03 A6 */	mtctr r12
/* 801C30DC  4E 80 04 21 */	bctrl 
/* 801C30E0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801C30E4  38 80 00 04 */	li r4, 4
/* 801C30E8  48 13 46 11 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C30EC  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801C30F0  38 80 00 00 */	li r4, 0
/* 801C30F4  38 A0 00 00 */	li r5, 0
/* 801C30F8  48 13 46 D9 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C30FC  7F C3 F3 78 */	mr r3, r30
/* 801C3100  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C3104  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3108  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C310C  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3110  38 A5 02 22 */	addi r5, r5, 0x222
/* 801C3114  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3118  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C311C  7D 89 03 A6 */	mtctr r12
/* 801C3120  4E 80 04 21 */	bctrl 
/* 801C3124  7C 7D 1B 78 */	mr r29, r3
/* 801C3128  38 60 01 50 */	li r3, 0x150
/* 801C312C  48 10 BB 21 */	bl __nw__FUl
/* 801C3130  7C 60 1B 79 */	or. r0, r3, r3
/* 801C3134  41 82 00 10 */	beq lbl_801C3144
/* 801C3138  7F A4 EB 78 */	mr r4, r29
/* 801C313C  48 13 95 CD */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C3140  7C 60 1B 78 */	mr r0, r3
lbl_801C3144:
/* 801C3144  90 1F 00 44 */	stw r0, 0x44(r31)
/* 801C3148  7F C3 F3 78 */	mr r3, r30
/* 801C314C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C3150  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3154  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3158  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C315C  38 A5 02 4C */	addi r5, r5, 0x24c
/* 801C3160  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3164  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3168  7D 89 03 A6 */	mtctr r12
/* 801C316C  4E 80 04 21 */	bctrl 
/* 801C3170  7C 64 1B 78 */	mr r4, r3
/* 801C3174  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801C3178  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C317C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3180  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C3184  7D 89 03 A6 */	mtctr r12
/* 801C3188  4E 80 04 21 */	bctrl 
/* 801C318C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801C3190  38 80 00 04 */	li r4, 4
/* 801C3194  48 13 45 65 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C3198  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801C319C  38 80 00 00 */	li r4, 0
/* 801C31A0  38 A0 00 00 */	li r5, 0
/* 801C31A4  48 13 46 2D */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C31A8  7F C3 F3 78 */	mr r3, r30
/* 801C31AC  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C31B0  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C31B4  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C31B8  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C31BC  38 A5 01 83 */	addi r5, r5, 0x183
/* 801C31C0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C31C4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C31C8  7D 89 03 A6 */	mtctr r12
/* 801C31CC  4E 80 04 21 */	bctrl 
/* 801C31D0  7C 7D 1B 78 */	mr r29, r3
/* 801C31D4  38 60 01 50 */	li r3, 0x150
/* 801C31D8  48 10 BA 75 */	bl __nw__FUl
/* 801C31DC  7C 60 1B 79 */	or. r0, r3, r3
/* 801C31E0  41 82 00 10 */	beq lbl_801C31F0
/* 801C31E4  7F A4 EB 78 */	mr r4, r29
/* 801C31E8  48 13 95 21 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C31EC  7C 60 1B 78 */	mr r0, r3
lbl_801C31F0:
/* 801C31F0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801C31F4  7F C3 F3 78 */	mr r3, r30
/* 801C31F8  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C31FC  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3200  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3204  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3208  38 A5 02 5B */	addi r5, r5, 0x25b
/* 801C320C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3210  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3214  7D 89 03 A6 */	mtctr r12
/* 801C3218  4E 80 04 21 */	bctrl 
/* 801C321C  7C 64 1B 78 */	mr r4, r3
/* 801C3220  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801C3224  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C3228  81 83 00 00 */	lwz r12, 0(r3)
/* 801C322C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C3230  7D 89 03 A6 */	mtctr r12
/* 801C3234  4E 80 04 21 */	bctrl 
/* 801C3238  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801C323C  38 80 00 04 */	li r4, 4
/* 801C3240  48 13 44 B9 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C3244  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801C3248  38 80 00 00 */	li r4, 0
/* 801C324C  38 A0 00 00 */	li r5, 0
/* 801C3250  48 13 45 81 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C3254  7F C3 F3 78 */	mr r3, r30
/* 801C3258  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C325C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3260  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3264  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3268  38 A5 02 92 */	addi r5, r5, 0x292
/* 801C326C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3270  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3274  7D 89 03 A6 */	mtctr r12
/* 801C3278  4E 80 04 21 */	bctrl 
/* 801C327C  7C 7D 1B 78 */	mr r29, r3
/* 801C3280  38 60 01 50 */	li r3, 0x150
/* 801C3284  48 10 B9 C9 */	bl __nw__FUl
/* 801C3288  7C 60 1B 79 */	or. r0, r3, r3
/* 801C328C  41 82 00 10 */	beq lbl_801C329C
/* 801C3290  7F A4 EB 78 */	mr r4, r29
/* 801C3294  48 13 94 75 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C3298  7C 60 1B 78 */	mr r0, r3
lbl_801C329C:
/* 801C329C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 801C32A0  7F C3 F3 78 */	mr r3, r30
/* 801C32A4  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C32A8  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C32AC  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C32B0  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C32B4  38 A5 02 B3 */	addi r5, r5, 0x2b3
/* 801C32B8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C32BC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C32C0  7D 89 03 A6 */	mtctr r12
/* 801C32C4  4E 80 04 21 */	bctrl 
/* 801C32C8  7C 64 1B 78 */	mr r4, r3
/* 801C32CC  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C32D0  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C32D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C32D8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C32DC  7D 89 03 A6 */	mtctr r12
/* 801C32E0  4E 80 04 21 */	bctrl 
/* 801C32E4  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C32E8  38 80 00 04 */	li r4, 4
/* 801C32EC  48 13 44 0D */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C32F0  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C32F4  38 80 00 00 */	li r4, 0
/* 801C32F8  38 A0 00 00 */	li r5, 0
/* 801C32FC  48 13 44 D5 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C3300  7F C3 F3 78 */	mr r3, r30
/* 801C3304  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C3308  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C330C  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3310  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3314  38 A5 02 D2 */	addi r5, r5, 0x2d2
/* 801C3318  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C331C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3320  7D 89 03 A6 */	mtctr r12
/* 801C3324  4E 80 04 21 */	bctrl 
/* 801C3328  7C 7D 1B 78 */	mr r29, r3
/* 801C332C  38 60 01 50 */	li r3, 0x150
/* 801C3330  48 10 B9 1D */	bl __nw__FUl
/* 801C3334  7C 60 1B 79 */	or. r0, r3, r3
/* 801C3338  41 82 00 10 */	beq lbl_801C3348
/* 801C333C  7F A4 EB 78 */	mr r4, r29
/* 801C3340  48 13 93 C9 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C3344  7C 60 1B 78 */	mr r0, r3
lbl_801C3348:
/* 801C3348  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801C334C  7F C3 F3 78 */	mr r3, r30
/* 801C3350  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C3354  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3358  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C335C  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3360  38 A5 02 F5 */	addi r5, r5, 0x2f5
/* 801C3364  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3368  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C336C  7D 89 03 A6 */	mtctr r12
/* 801C3370  4E 80 04 21 */	bctrl 
/* 801C3374  7C 64 1B 78 */	mr r4, r3
/* 801C3378  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801C337C  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C3380  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3384  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C3388  7D 89 03 A6 */	mtctr r12
/* 801C338C  4E 80 04 21 */	bctrl 
/* 801C3390  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801C3394  38 80 00 04 */	li r4, 4
/* 801C3398  48 13 43 61 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C339C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801C33A0  38 80 00 00 */	li r4, 0
/* 801C33A4  38 A0 00 00 */	li r5, 0
/* 801C33A8  48 13 44 29 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C33AC  7F C3 F3 78 */	mr r3, r30
/* 801C33B0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C33B4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C33B8  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C33BC  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C33C0  38 A5 03 16 */	addi r5, r5, 0x316
/* 801C33C4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C33C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C33CC  7D 89 03 A6 */	mtctr r12
/* 801C33D0  4E 80 04 21 */	bctrl 
/* 801C33D4  7C 7D 1B 78 */	mr r29, r3
/* 801C33D8  38 60 01 50 */	li r3, 0x150
/* 801C33DC  48 10 B8 71 */	bl __nw__FUl
/* 801C33E0  7C 60 1B 79 */	or. r0, r3, r3
/* 801C33E4  41 82 00 10 */	beq lbl_801C33F4
/* 801C33E8  7F A4 EB 78 */	mr r4, r29
/* 801C33EC  48 13 93 1D */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C33F0  7C 60 1B 78 */	mr r0, r3
lbl_801C33F4:
/* 801C33F4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801C33F8  7F C3 F3 78 */	mr r3, r30
/* 801C33FC  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C3400  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3404  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3408  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C340C  38 A5 03 16 */	addi r5, r5, 0x316
/* 801C3410  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3414  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3418  7D 89 03 A6 */	mtctr r12
/* 801C341C  4E 80 04 21 */	bctrl 
/* 801C3420  7C 64 1B 78 */	mr r4, r3
/* 801C3424  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C3428  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C342C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3430  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C3434  7D 89 03 A6 */	mtctr r12
/* 801C3438  4E 80 04 21 */	bctrl 
/* 801C343C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C3440  38 80 00 04 */	li r4, 4
/* 801C3444  48 13 42 B5 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C3448  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C344C  38 80 00 00 */	li r4, 0
/* 801C3450  38 A0 00 00 */	li r5, 0
/* 801C3454  48 13 43 7D */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C3458  38 60 00 00 */	li r3, 0
/* 801C345C  98 61 00 18 */	stb r3, 0x18(r1)
/* 801C3460  98 61 00 19 */	stb r3, 0x19(r1)
/* 801C3464  98 61 00 1A */	stb r3, 0x1a(r1)
/* 801C3468  38 00 00 FF */	li r0, 0xff
/* 801C346C  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801C3470  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801C3474  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801C3478  98 61 00 20 */	stb r3, 0x20(r1)
/* 801C347C  98 61 00 21 */	stb r3, 0x21(r1)
/* 801C3480  98 61 00 22 */	stb r3, 0x22(r1)
/* 801C3484  98 61 00 23 */	stb r3, 0x23(r1)
/* 801C3488  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801C348C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C3490  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C3494  38 81 00 24 */	addi r4, r1, 0x24
/* 801C3498  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801C349C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C34A0  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801C34A4  7D 89 03 A6 */	mtctr r12
/* 801C34A8  4E 80 04 21 */	bctrl 
/* 801C34AC  7F C3 F3 78 */	mr r3, r30
/* 801C34B0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C34B4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C34B8  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C34BC  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C34C0  38 A5 03 26 */	addi r5, r5, 0x326
/* 801C34C4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C34C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C34CC  7D 89 03 A6 */	mtctr r12
/* 801C34D0  4E 80 04 21 */	bctrl 
/* 801C34D4  7C 7D 1B 78 */	mr r29, r3
/* 801C34D8  38 60 01 50 */	li r3, 0x150
/* 801C34DC  48 10 B7 71 */	bl __nw__FUl
/* 801C34E0  7C 60 1B 79 */	or. r0, r3, r3
/* 801C34E4  41 82 00 10 */	beq lbl_801C34F4
/* 801C34E8  7F A4 EB 78 */	mr r4, r29
/* 801C34EC  48 13 92 1D */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C34F0  7C 60 1B 78 */	mr r0, r3
lbl_801C34F4:
/* 801C34F4  90 1F 00 60 */	stw r0, 0x60(r31)
/* 801C34F8  7F C3 F3 78 */	mr r3, r30
/* 801C34FC  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C3500  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3504  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3508  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C350C  38 A5 03 26 */	addi r5, r5, 0x326
/* 801C3510  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3514  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3518  7D 89 03 A6 */	mtctr r12
/* 801C351C  4E 80 04 21 */	bctrl 
/* 801C3520  7C 64 1B 78 */	mr r4, r3
/* 801C3524  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801C3528  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C352C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3530  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C3534  7D 89 03 A6 */	mtctr r12
/* 801C3538  4E 80 04 21 */	bctrl 
/* 801C353C  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801C3540  38 80 00 04 */	li r4, 4
/* 801C3544  48 13 41 B5 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C3548  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801C354C  38 80 00 00 */	li r4, 0
/* 801C3550  38 A0 00 00 */	li r5, 0
/* 801C3554  48 13 42 7D */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C3558  38 60 00 FF */	li r3, 0xff
/* 801C355C  98 61 00 08 */	stb r3, 8(r1)
/* 801C3560  98 61 00 09 */	stb r3, 9(r1)
/* 801C3564  38 00 00 E6 */	li r0, 0xe6
/* 801C3568  98 01 00 0A */	stb r0, 0xa(r1)
/* 801C356C  98 61 00 0B */	stb r3, 0xb(r1)
/* 801C3570  80 01 00 08 */	lwz r0, 8(r1)
/* 801C3574  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C3578  38 60 00 00 */	li r3, 0
/* 801C357C  98 61 00 10 */	stb r3, 0x10(r1)
/* 801C3580  38 00 00 F0 */	li r0, 0xf0
/* 801C3584  98 01 00 11 */	stb r0, 0x11(r1)
/* 801C3588  38 00 00 AA */	li r0, 0xaa
/* 801C358C  98 01 00 12 */	stb r0, 0x12(r1)
/* 801C3590  98 61 00 13 */	stb r3, 0x13(r1)
/* 801C3594  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C3598  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C359C  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801C35A0  38 81 00 14 */	addi r4, r1, 0x14
/* 801C35A4  38 A1 00 0C */	addi r5, r1, 0xc
/* 801C35A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C35AC  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801C35B0  7D 89 03 A6 */	mtctr r12
/* 801C35B4  4E 80 04 21 */	bctrl 
/* 801C35B8  7F C3 F3 78 */	mr r3, r30
/* 801C35BC  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C35C0  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C35C4  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C35C8  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C35CC  38 A5 01 83 */	addi r5, r5, 0x183
/* 801C35D0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C35D4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C35D8  7D 89 03 A6 */	mtctr r12
/* 801C35DC  4E 80 04 21 */	bctrl 
/* 801C35E0  7C 7D 1B 78 */	mr r29, r3
/* 801C35E4  38 60 01 50 */	li r3, 0x150
/* 801C35E8  48 10 B6 65 */	bl __nw__FUl
/* 801C35EC  7C 60 1B 79 */	or. r0, r3, r3
/* 801C35F0  41 82 00 10 */	beq lbl_801C3600
/* 801C35F4  7F A4 EB 78 */	mr r4, r29
/* 801C35F8  48 13 91 11 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C35FC  7C 60 1B 78 */	mr r0, r3
lbl_801C3600:
/* 801C3600  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801C3604  7F C3 F3 78 */	mr r3, r30
/* 801C3608  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C360C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3610  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3614  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3618  38 A5 03 4F */	addi r5, r5, 0x34f
/* 801C361C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3620  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3624  7D 89 03 A6 */	mtctr r12
/* 801C3628  4E 80 04 21 */	bctrl 
/* 801C362C  7C 64 1B 78 */	mr r4, r3
/* 801C3630  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801C3634  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C3638  81 83 00 00 */	lwz r12, 0(r3)
/* 801C363C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C3640  7D 89 03 A6 */	mtctr r12
/* 801C3644  4E 80 04 21 */	bctrl 
/* 801C3648  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801C364C  38 80 00 04 */	li r4, 4
/* 801C3650  48 13 40 A9 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C3654  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801C3658  38 80 00 00 */	li r4, 0
/* 801C365C  38 A0 00 00 */	li r5, 0
/* 801C3660  48 13 41 71 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C3664  7F C3 F3 78 */	mr r3, r30
/* 801C3668  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C366C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3670  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3674  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3678  38 A5 01 83 */	addi r5, r5, 0x183
/* 801C367C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3680  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3684  7D 89 03 A6 */	mtctr r12
/* 801C3688  4E 80 04 21 */	bctrl 
/* 801C368C  7C 7D 1B 78 */	mr r29, r3
/* 801C3690  38 60 01 50 */	li r3, 0x150
/* 801C3694  48 10 B5 B9 */	bl __nw__FUl
/* 801C3698  7C 60 1B 79 */	or. r0, r3, r3
/* 801C369C  41 82 00 10 */	beq lbl_801C36AC
/* 801C36A0  7F A4 EB 78 */	mr r4, r29
/* 801C36A4  48 13 90 65 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C36A8  7C 60 1B 78 */	mr r0, r3
lbl_801C36AC:
/* 801C36AC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801C36B0  7F C3 F3 78 */	mr r3, r30
/* 801C36B4  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C36B8  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C36BC  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C36C0  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C36C4  38 A5 03 74 */	addi r5, r5, 0x374
/* 801C36C8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C36CC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C36D0  7D 89 03 A6 */	mtctr r12
/* 801C36D4  4E 80 04 21 */	bctrl 
/* 801C36D8  7C 64 1B 78 */	mr r4, r3
/* 801C36DC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801C36E0  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C36E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C36E8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C36EC  7D 89 03 A6 */	mtctr r12
/* 801C36F0  4E 80 04 21 */	bctrl 
/* 801C36F4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801C36F8  38 80 00 04 */	li r4, 4
/* 801C36FC  48 13 3F FD */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C3700  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801C3704  38 80 00 00 */	li r4, 0
/* 801C3708  38 A0 00 00 */	li r5, 0
/* 801C370C  48 13 40 C5 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C3710  7F C3 F3 78 */	mr r3, r30
/* 801C3714  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C3718  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C371C  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3720  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3724  38 A5 01 83 */	addi r5, r5, 0x183
/* 801C3728  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C372C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3730  7D 89 03 A6 */	mtctr r12
/* 801C3734  4E 80 04 21 */	bctrl 
/* 801C3738  7C 7D 1B 78 */	mr r29, r3
/* 801C373C  38 60 01 50 */	li r3, 0x150
/* 801C3740  48 10 B5 0D */	bl __nw__FUl
/* 801C3744  7C 60 1B 79 */	or. r0, r3, r3
/* 801C3748  41 82 00 10 */	beq lbl_801C3758
/* 801C374C  7F A4 EB 78 */	mr r4, r29
/* 801C3750  48 13 8F B9 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C3754  7C 60 1B 78 */	mr r0, r3
lbl_801C3758:
/* 801C3758  90 1F 00 38 */	stw r0, 0x38(r31)
/* 801C375C  7F C3 F3 78 */	mr r3, r30
/* 801C3760  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C3764  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3768  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C376C  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C3770  38 A5 03 98 */	addi r5, r5, 0x398
/* 801C3774  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3778  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C377C  7D 89 03 A6 */	mtctr r12
/* 801C3780  4E 80 04 21 */	bctrl 
/* 801C3784  7C 64 1B 78 */	mr r4, r3
/* 801C3788  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801C378C  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C3790  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3794  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C3798  7D 89 03 A6 */	mtctr r12
/* 801C379C  4E 80 04 21 */	bctrl 
/* 801C37A0  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801C37A4  38 80 00 04 */	li r4, 4
/* 801C37A8  48 13 3F 51 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C37AC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801C37B0  38 80 00 00 */	li r4, 0
/* 801C37B4  38 A0 00 00 */	li r5, 0
/* 801C37B8  48 13 40 19 */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C37BC  7F C3 F3 78 */	mr r3, r30
/* 801C37C0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C37C4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C37C8  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C37CC  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C37D0  38 A5 03 B2 */	addi r5, r5, 0x3b2
/* 801C37D4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C37D8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C37DC  7D 89 03 A6 */	mtctr r12
/* 801C37E0  4E 80 04 21 */	bctrl 
/* 801C37E4  7C 7D 1B 78 */	mr r29, r3
/* 801C37E8  38 60 01 50 */	li r3, 0x150
/* 801C37EC  48 10 B4 61 */	bl __nw__FUl
/* 801C37F0  7C 60 1B 79 */	or. r0, r3, r3
/* 801C37F4  41 82 00 10 */	beq lbl_801C3804
/* 801C37F8  7F A4 EB 78 */	mr r4, r29
/* 801C37FC  48 13 8F 0D */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801C3800  7C 60 1B 78 */	mr r0, r3
lbl_801C3804:
/* 801C3804  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 801C3808  7F C3 F3 78 */	mr r3, r30
/* 801C380C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801C3810  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801C3814  3C A0 80 39 */	lis r5, d_menu_d_menu_map_common__stringBase0@ha /* 0x803959C0@ha */
/* 801C3818  38 A5 59 C0 */	addi r5, r5, d_menu_d_menu_map_common__stringBase0@l /* 0x803959C0@l */
/* 801C381C  38 A5 03 B2 */	addi r5, r5, 0x3b2
/* 801C3820  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C3824  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C3828  7D 89 03 A6 */	mtctr r12
/* 801C382C  4E 80 04 21 */	bctrl 
/* 801C3830  7C 64 1B 78 */	mr r4, r3
/* 801C3834  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801C3838  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C383C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3840  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C3844  7D 89 03 A6 */	mtctr r12
/* 801C3848  4E 80 04 21 */	bctrl 
/* 801C384C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801C3850  38 80 00 04 */	li r4, 4
/* 801C3854  48 13 3E A5 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801C3858  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801C385C  38 80 00 00 */	li r4, 0
/* 801C3860  38 A0 00 00 */	li r5, 0
/* 801C3864  48 13 3F 6D */	bl setInfluencedAlpha__7J2DPaneFbb
/* 801C3868  38 60 00 B8 */	li r3, 0xb8
/* 801C386C  48 10 B3 E1 */	bl __nw__FUl
/* 801C3870  7C 60 1B 79 */	or. r0, r3, r3
/* 801C3874  41 82 00 18 */	beq lbl_801C388C
/* 801C3878  38 80 00 04 */	li r4, 4
/* 801C387C  C0 22 A6 DC */	lfs f1, lit_3882(r2)
/* 801C3880  38 A0 00 00 */	li r5, 0
/* 801C3884  4B FD 09 9D */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 801C3888  7C 60 1B 78 */	mr r0, r3
lbl_801C388C:
/* 801C388C  90 1F 00 64 */	stw r0, 0x64(r31)
/* 801C3890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801C3894  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801C3898  80 03 5C BC */	lwz r0, 0x5cbc(r3)
/* 801C389C  7C 1E 00 40 */	cmplw r30, r0
/* 801C38A0  40 82 00 2C */	bne lbl_801C38CC
/* 801C38A4  38 60 00 B8 */	li r3, 0xb8
/* 801C38A8  48 10 B3 A5 */	bl __nw__FUl
/* 801C38AC  7C 60 1B 79 */	or. r0, r3, r3
/* 801C38B0  41 82 00 18 */	beq lbl_801C38C8
/* 801C38B4  38 80 00 05 */	li r4, 5
/* 801C38B8  C0 22 A6 DC */	lfs f1, lit_3882(r2)
/* 801C38BC  7F C5 F3 78 */	mr r5, r30
/* 801C38C0  4B FD 09 61 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 801C38C4  7C 60 1B 78 */	mr r0, r3
lbl_801C38C8:
/* 801C38C8  90 1F 00 68 */	stw r0, 0x68(r31)
lbl_801C38CC:
/* 801C38CC  39 61 00 40 */	addi r11, r1, 0x40
/* 801C38D0  48 19 E9 59 */	bl _restgpr_29
/* 801C38D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C38D8  7C 08 03 A6 */	mtlr r0
/* 801C38DC  38 21 00 40 */	addi r1, r1, 0x40
/* 801C38E0  4E 80 00 20 */	blr 
