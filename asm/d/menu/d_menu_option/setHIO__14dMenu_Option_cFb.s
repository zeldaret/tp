lbl_801E78B8:
/* 801E78B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801E78BC  7C 08 02 A6 */	mflr r0
/* 801E78C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E78C4  39 61 00 40 */	addi r11, r1, 0x40
/* 801E78C8  48 17 A9 0D */	bl _savegpr_27
/* 801E78CC  7C 7E 1B 78 */	mr r30, r3
/* 801E78D0  7C 9F 23 78 */	mr r31, r4
/* 801E78D4  C0 03 03 78 */	lfs f0, 0x378(r3)
/* 801E78D8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E78DC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E78E0  C0 43 06 D0 */	lfs f2, 0x6d0(r3)
/* 801E78E4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801E78E8  40 82 00 14 */	bne lbl_801E78FC
/* 801E78EC  C0 3E 03 7C */	lfs f1, 0x37c(r30)
/* 801E78F0  C0 03 06 D4 */	lfs f0, 0x6d4(r3)
/* 801E78F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801E78F8  41 82 00 58 */	beq lbl_801E7950
lbl_801E78FC:
/* 801E78FC  D0 5E 03 78 */	stfs f2, 0x378(r30)
/* 801E7900  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7904  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7908  C0 03 06 D4 */	lfs f0, 0x6d4(r3)
/* 801E790C  D0 1E 03 7C */	stfs f0, 0x37c(r30)
/* 801E7910  3B 80 00 00 */	li r28, 0
/* 801E7914  3B A0 00 00 */	li r29, 0
lbl_801E7918:
/* 801E7918  38 1D 00 5C */	addi r0, r29, 0x5c
/* 801E791C  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801E7920  C0 3E 03 78 */	lfs f1, 0x378(r30)
/* 801E7924  C0 5E 03 7C */	lfs f2, 0x37c(r30)
/* 801E7928  48 06 CC 89 */	bl paneTrans__8CPaneMgrFff
/* 801E792C  3B 9C 00 01 */	addi r28, r28, 1
/* 801E7930  2C 1C 00 05 */	cmpwi r28, 5
/* 801E7934  3B BD 00 04 */	addi r29, r29, 4
/* 801E7938  41 80 FF E0 */	blt lbl_801E7918
/* 801E793C  7F C3 F3 78 */	mr r3, r30
/* 801E7940  4B FF FD AD */	bl getSelectType__14dMenu_Option_cFv
/* 801E7944  7C 64 1B 78 */	mr r4, r3
/* 801E7948  7F C3 F3 78 */	mr r3, r30
/* 801E794C  4B FF F9 C9 */	bl setCursorPos__14dMenu_Option_cFUc
lbl_801E7950:
/* 801E7950  C0 1E 03 80 */	lfs f0, 0x380(r30)
/* 801E7954  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7958  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E795C  C0 23 06 D8 */	lfs f1, 0x6d8(r3)
/* 801E7960  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801E7964  41 82 00 5C */	beq lbl_801E79C0
/* 801E7968  D0 3E 03 80 */	stfs f1, 0x380(r30)
/* 801E796C  3B 80 00 00 */	li r28, 0
/* 801E7970  3B A0 00 00 */	li r29, 0
lbl_801E7974:
/* 801E7974  C0 1E 03 80 */	lfs f0, 0x380(r30)
/* 801E7978  38 1D 00 5C */	addi r0, r29, 0x5c
/* 801E797C  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801E7980  80 63 00 04 */	lwz r3, 4(r3)
/* 801E7984  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E7988  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E798C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E7990  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E7994  7D 89 03 A6 */	mtctr r12
/* 801E7998  4E 80 04 21 */	bctrl 
/* 801E799C  3B 9C 00 01 */	addi r28, r28, 1
/* 801E79A0  2C 1C 00 05 */	cmpwi r28, 5
/* 801E79A4  3B BD 00 04 */	addi r29, r29, 4
/* 801E79A8  41 80 FF CC */	blt lbl_801E7974
/* 801E79AC  7F C3 F3 78 */	mr r3, r30
/* 801E79B0  4B FF FD 3D */	bl getSelectType__14dMenu_Option_cFv
/* 801E79B4  7C 64 1B 78 */	mr r4, r3
/* 801E79B8  7F C3 F3 78 */	mr r3, r30
/* 801E79BC  4B FF F9 59 */	bl setCursorPos__14dMenu_Option_cFUc
lbl_801E79C0:
/* 801E79C0  88 BE 03 B8 */	lbz r5, 0x3b8(r30)
/* 801E79C4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E79C8  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E79CC  88 04 06 C8 */	lbz r0, 0x6c8(r4)
/* 801E79D0  7C 05 00 40 */	cmplw r5, r0
/* 801E79D4  40 82 00 74 */	bne lbl_801E7A48
/* 801E79D8  88 7E 03 B9 */	lbz r3, 0x3b9(r30)
/* 801E79DC  88 04 06 C9 */	lbz r0, 0x6c9(r4)
/* 801E79E0  7C 03 00 40 */	cmplw r3, r0
/* 801E79E4  40 82 00 64 */	bne lbl_801E7A48
/* 801E79E8  88 7E 03 BA */	lbz r3, 0x3ba(r30)
/* 801E79EC  88 04 06 CA */	lbz r0, 0x6ca(r4)
/* 801E79F0  7C 03 00 40 */	cmplw r3, r0
/* 801E79F4  40 82 00 54 */	bne lbl_801E7A48
/* 801E79F8  88 7E 03 BB */	lbz r3, 0x3bb(r30)
/* 801E79FC  88 04 06 CB */	lbz r0, 0x6cb(r4)
/* 801E7A00  7C 03 00 40 */	cmplw r3, r0
/* 801E7A04  40 82 00 44 */	bne lbl_801E7A48
/* 801E7A08  88 7E 03 BC */	lbz r3, 0x3bc(r30)
/* 801E7A0C  88 04 06 CC */	lbz r0, 0x6cc(r4)
/* 801E7A10  7C 03 00 40 */	cmplw r3, r0
/* 801E7A14  40 82 00 34 */	bne lbl_801E7A48
/* 801E7A18  88 7E 03 BD */	lbz r3, 0x3bd(r30)
/* 801E7A1C  88 04 06 CD */	lbz r0, 0x6cd(r4)
/* 801E7A20  7C 03 00 40 */	cmplw r3, r0
/* 801E7A24  40 82 00 24 */	bne lbl_801E7A48
/* 801E7A28  88 7E 03 BE */	lbz r3, 0x3be(r30)
/* 801E7A2C  88 04 06 CE */	lbz r0, 0x6ce(r4)
/* 801E7A30  7C 03 00 40 */	cmplw r3, r0
/* 801E7A34  40 82 00 14 */	bne lbl_801E7A48
/* 801E7A38  88 7E 03 BF */	lbz r3, 0x3bf(r30)
/* 801E7A3C  88 04 06 CF */	lbz r0, 0x6cf(r4)
/* 801E7A40  7C 03 00 40 */	cmplw r3, r0
/* 801E7A44  41 82 00 74 */	beq lbl_801E7AB8
lbl_801E7A48:
/* 801E7A48  80 04 06 C8 */	lwz r0, 0x6c8(r4)
/* 801E7A4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E7A50  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801E7A54  98 1E 03 B8 */	stb r0, 0x3b8(r30)
/* 801E7A58  88 01 00 0D */	lbz r0, 0xd(r1)
/* 801E7A5C  98 1E 03 B9 */	stb r0, 0x3b9(r30)
/* 801E7A60  88 01 00 0E */	lbz r0, 0xe(r1)
/* 801E7A64  98 1E 03 BA */	stb r0, 0x3ba(r30)
/* 801E7A68  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801E7A6C  98 1E 03 BB */	stb r0, 0x3bb(r30)
/* 801E7A70  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7A74  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7A78  80 03 06 CC */	lwz r0, 0x6cc(r3)
/* 801E7A7C  90 01 00 08 */	stw r0, 8(r1)
/* 801E7A80  88 01 00 08 */	lbz r0, 8(r1)
/* 801E7A84  98 1E 03 BC */	stb r0, 0x3bc(r30)
/* 801E7A88  88 01 00 09 */	lbz r0, 9(r1)
/* 801E7A8C  98 1E 03 BD */	stb r0, 0x3bd(r30)
/* 801E7A90  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801E7A94  98 1E 03 BE */	stb r0, 0x3be(r30)
/* 801E7A98  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801E7A9C  98 1E 03 BF */	stb r0, 0x3bf(r30)
/* 801E7AA0  7F C3 F3 78 */	mr r3, r30
/* 801E7AA4  4B FF FC 49 */	bl getSelectType__14dMenu_Option_cFv
/* 801E7AA8  7C 64 1B 78 */	mr r4, r3
/* 801E7AAC  7F C3 F3 78 */	mr r3, r30
/* 801E7AB0  38 A0 00 00 */	li r5, 0
/* 801E7AB4  4B FF F9 25 */	bl setSelectColor__14dMenu_Option_cFUcb
lbl_801E7AB8:
/* 801E7AB8  3B 60 00 00 */	li r27, 0
/* 801E7ABC  3B A0 00 00 */	li r29, 0
/* 801E7AC0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7AC4  3B 83 EB C8 */	addi r28, r3, g_drawHIO@l /* 0x8042EBC8@l */
lbl_801E7AC8:
/* 801E7AC8  7C 9E EA 14 */	add r4, r30, r29
/* 801E7ACC  C0 04 03 84 */	lfs f0, 0x384(r4)
/* 801E7AD0  7C 7C EA 14 */	add r3, r28, r29
/* 801E7AD4  C0 43 06 DC */	lfs f2, 0x6dc(r3)
/* 801E7AD8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801E7ADC  40 82 00 14 */	bne lbl_801E7AF0
/* 801E7AE0  C0 24 03 9C */	lfs f1, 0x39c(r4)
/* 801E7AE4  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 801E7AE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801E7AEC  41 82 00 20 */	beq lbl_801E7B0C
lbl_801E7AF0:
/* 801E7AF0  D0 44 03 84 */	stfs f2, 0x384(r4)
/* 801E7AF4  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 801E7AF8  D0 04 03 9C */	stfs f0, 0x39c(r4)
/* 801E7AFC  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 801E7B00  C0 24 03 84 */	lfs f1, 0x384(r4)
/* 801E7B04  C0 44 03 9C */	lfs f2, 0x39c(r4)
/* 801E7B08  48 06 CA A9 */	bl paneTrans__8CPaneMgrFff
lbl_801E7B0C:
/* 801E7B0C  3B 7B 00 01 */	addi r27, r27, 1
/* 801E7B10  2C 1B 00 06 */	cmpwi r27, 6
/* 801E7B14  3B BD 00 04 */	addi r29, r29, 4
/* 801E7B18  41 80 FF B0 */	blt lbl_801E7AC8
/* 801E7B1C  38 60 00 00 */	li r3, 0
/* 801E7B20  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7B24  38 A4 EB C8 */	addi r5, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7B28  38 00 00 02 */	li r0, 2
/* 801E7B2C  7C 09 03 A6 */	mtctr r0
lbl_801E7B30:
/* 801E7B30  38 03 03 3C */	addi r0, r3, 0x33c
/* 801E7B34  7C 1E 04 2E */	lfsx f0, r30, r0
/* 801E7B38  7C 85 1A 14 */	add r4, r5, r3
/* 801E7B3C  C0 24 07 0C */	lfs f1, 0x70c(r4)
/* 801E7B40  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801E7B44  41 82 00 08 */	beq lbl_801E7B4C
/* 801E7B48  7C 3E 05 2E */	stfsx f1, r30, r0
lbl_801E7B4C:
/* 801E7B4C  38 63 00 04 */	addi r3, r3, 4
/* 801E7B50  42 00 FF E0 */	bdnz lbl_801E7B30
/* 801E7B54  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7B58  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7B5C  88 03 07 24 */	lbz r0, 0x724(r3)
/* 801E7B60  28 00 00 00 */	cmplwi r0, 0
/* 801E7B64  41 82 00 50 */	beq lbl_801E7BB4
/* 801E7B68  80 9E 00 70 */	lwz r4, 0x70(r30)
/* 801E7B6C  38 61 00 10 */	addi r3, r1, 0x10
/* 801E7B70  80 A4 00 04 */	lwz r5, 4(r4)
/* 801E7B74  38 C0 00 00 */	li r6, 0
/* 801E7B78  38 E0 00 00 */	li r7, 0
/* 801E7B7C  48 06 D3 41 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801E7B80  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801E7B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E7B88  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801E7B8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801E7B90  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801E7B94  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E7B98  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801E7B9C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7BA0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7BA4  C0 03 07 14 */	lfs f0, 0x714(r3)
/* 801E7BA8  EC 01 00 2A */	fadds f0, f1, f0
/* 801E7BAC  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 801E7BB0  D0 03 00 38 */	stfs f0, 0x38(r3)
lbl_801E7BB4:
/* 801E7BB4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7BB8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7BBC  88 03 06 B4 */	lbz r0, 0x6b4(r3)
/* 801E7BC0  28 00 00 00 */	cmplwi r0, 0
/* 801E7BC4  40 82 00 0C */	bne lbl_801E7BD0
/* 801E7BC8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801E7BCC  41 82 01 34 */	beq lbl_801E7D00
lbl_801E7BD0:
/* 801E7BD0  80 7E 02 04 */	lwz r3, 0x204(r30)
/* 801E7BD4  28 03 00 00 */	cmplwi r3, 0
/* 801E7BD8  41 82 00 44 */	beq lbl_801E7C1C
/* 801E7BDC  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7BE0  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7BE4  C0 24 06 60 */	lfs f1, 0x660(r4)
/* 801E7BE8  C0 44 06 64 */	lfs f2, 0x664(r4)
/* 801E7BEC  48 06 C9 C5 */	bl paneTrans__8CPaneMgrFff
/* 801E7BF0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7BF4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7BF8  C0 03 06 68 */	lfs f0, 0x668(r3)
/* 801E7BFC  80 7E 02 04 */	lwz r3, 0x204(r30)
/* 801E7C00  80 63 00 04 */	lwz r3, 4(r3)
/* 801E7C04  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E7C08  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E7C0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E7C10  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E7C14  7D 89 03 A6 */	mtctr r12
/* 801E7C18  4E 80 04 21 */	bctrl 
lbl_801E7C1C:
/* 801E7C1C  80 7E 02 08 */	lwz r3, 0x208(r30)
/* 801E7C20  28 03 00 00 */	cmplwi r3, 0
/* 801E7C24  41 82 00 44 */	beq lbl_801E7C68
/* 801E7C28  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7C2C  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7C30  C0 24 06 6C */	lfs f1, 0x66c(r4)
/* 801E7C34  C0 44 06 70 */	lfs f2, 0x670(r4)
/* 801E7C38  48 06 C9 79 */	bl paneTrans__8CPaneMgrFff
/* 801E7C3C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7C40  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7C44  C0 03 06 74 */	lfs f0, 0x674(r3)
/* 801E7C48  80 7E 02 08 */	lwz r3, 0x208(r30)
/* 801E7C4C  80 63 00 04 */	lwz r3, 4(r3)
/* 801E7C50  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E7C54  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E7C58  81 83 00 00 */	lwz r12, 0(r3)
/* 801E7C5C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E7C60  7D 89 03 A6 */	mtctr r12
/* 801E7C64  4E 80 04 21 */	bctrl 
lbl_801E7C68:
/* 801E7C68  80 7E 02 0C */	lwz r3, 0x20c(r30)
/* 801E7C6C  28 03 00 00 */	cmplwi r3, 0
/* 801E7C70  41 82 00 44 */	beq lbl_801E7CB4
/* 801E7C74  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7C78  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7C7C  C0 24 06 78 */	lfs f1, 0x678(r4)
/* 801E7C80  C0 44 06 7C */	lfs f2, 0x67c(r4)
/* 801E7C84  48 06 C9 2D */	bl paneTrans__8CPaneMgrFff
/* 801E7C88  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7C8C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7C90  C0 03 06 80 */	lfs f0, 0x680(r3)
/* 801E7C94  80 7E 02 0C */	lwz r3, 0x20c(r30)
/* 801E7C98  80 63 00 04 */	lwz r3, 4(r3)
/* 801E7C9C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E7CA0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E7CA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E7CA8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E7CAC  7D 89 03 A6 */	mtctr r12
/* 801E7CB0  4E 80 04 21 */	bctrl 
lbl_801E7CB4:
/* 801E7CB4  80 7E 02 10 */	lwz r3, 0x210(r30)
/* 801E7CB8  28 03 00 00 */	cmplwi r3, 0
/* 801E7CBC  41 82 00 44 */	beq lbl_801E7D00
/* 801E7CC0  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7CC4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7CC8  C0 24 06 84 */	lfs f1, 0x684(r4)
/* 801E7CCC  C0 44 06 88 */	lfs f2, 0x688(r4)
/* 801E7CD0  48 06 C8 E1 */	bl paneTrans__8CPaneMgrFff
/* 801E7CD4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E7CD8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E7CDC  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 801E7CE0  80 7E 02 10 */	lwz r3, 0x210(r30)
/* 801E7CE4  80 63 00 04 */	lwz r3, 4(r3)
/* 801E7CE8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E7CEC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E7CF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E7CF4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E7CF8  7D 89 03 A6 */	mtctr r12
/* 801E7CFC  4E 80 04 21 */	bctrl 
lbl_801E7D00:
/* 801E7D00  39 61 00 40 */	addi r11, r1, 0x40
/* 801E7D04  48 17 A5 1D */	bl _restgpr_27
/* 801E7D08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801E7D0C  7C 08 03 A6 */	mtlr r0
/* 801E7D10  38 21 00 40 */	addi r1, r1, 0x40
/* 801E7D14  4E 80 00 20 */	blr 
