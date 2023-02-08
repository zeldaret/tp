lbl_8059A888:
/* 8059A888  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059A88C  7C 08 02 A6 */	mflr r0
/* 8059A890  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059A894  39 61 00 20 */	addi r11, r1, 0x20
/* 8059A898  4B DC 79 39 */	bl _savegpr_26
/* 8059A89C  7C 7F 1B 78 */	mr r31, r3
/* 8059A8A0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8059A8A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8059A8A8  40 82 00 FC */	bne lbl_8059A9A4
/* 8059A8AC  7F E0 FB 79 */	or. r0, r31, r31
/* 8059A8B0  41 82 00 E8 */	beq lbl_8059A998
/* 8059A8B4  7C 1E 03 78 */	mr r30, r0
/* 8059A8B8  4B A7 E2 AD */	bl __ct__10fopAc_ac_cFv
/* 8059A8BC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8059A8C0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8059A8C4  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 8059A8C8  38 7E 05 90 */	addi r3, r30, 0x590
/* 8059A8CC  4B AE 8E 95 */	bl __ct__10dCcD_GSttsFv
/* 8059A8D0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8059A8D4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8059A8D8  90 7E 05 8C */	stw r3, 0x58c(r30)
/* 8059A8DC  38 03 00 20 */	addi r0, r3, 0x20
/* 8059A8E0  90 1E 05 90 */	stw r0, 0x590(r30)
/* 8059A8E4  3B 5E 05 B0 */	addi r26, r30, 0x5b0
/* 8059A8E8  7F 43 D3 78 */	mr r3, r26
/* 8059A8EC  4B AE 91 3D */	bl __ct__12dCcD_GObjInfFv
/* 8059A8F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8059A8F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8059A8F8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8059A8FC  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha /* 0x8059B3E8@ha */
/* 8059A900  38 03 B3 E8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8059B3E8@l */
/* 8059A904  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 8059A908  3C 60 80 5A */	lis r3, __vt__8cM3dGCyl@ha /* 0x8059B3DC@ha */
/* 8059A90C  38 03 B3 DC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8059B3DC@l */
/* 8059A910  90 1A 01 38 */	stw r0, 0x138(r26)
/* 8059A914  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8059A918  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8059A91C  90 7A 01 20 */	stw r3, 0x120(r26)
/* 8059A920  3B A3 00 58 */	addi r29, r3, 0x58
/* 8059A924  93 BA 01 38 */	stw r29, 0x138(r26)
/* 8059A928  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8059A92C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8059A930  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 8059A934  3B 83 00 2C */	addi r28, r3, 0x2c
/* 8059A938  93 9A 01 20 */	stw r28, 0x120(r26)
/* 8059A93C  3B 63 00 84 */	addi r27, r3, 0x84
/* 8059A940  93 7A 01 38 */	stw r27, 0x138(r26)
/* 8059A944  3B 5E 06 EC */	addi r26, r30, 0x6ec
/* 8059A948  7F 43 D3 78 */	mr r3, r26
/* 8059A94C  4B AE 90 DD */	bl __ct__12dCcD_GObjInfFv
/* 8059A950  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8059A954  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8059A958  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8059A95C  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha /* 0x8059B3E8@ha */
/* 8059A960  38 03 B3 E8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8059B3E8@l */
/* 8059A964  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 8059A968  3C 60 80 5A */	lis r3, __vt__8cM3dGCyl@ha /* 0x8059B3DC@ha */
/* 8059A96C  38 03 B3 DC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8059B3DC@l */
/* 8059A970  90 1A 01 38 */	stw r0, 0x138(r26)
/* 8059A974  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8059A978  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8059A97C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 8059A980  93 BA 01 38 */	stw r29, 0x138(r26)
/* 8059A984  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8059A988  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8059A98C  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 8059A990  93 9A 01 20 */	stw r28, 0x120(r26)
/* 8059A994  93 7A 01 38 */	stw r27, 0x138(r26)
lbl_8059A998:
/* 8059A998  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8059A99C  60 00 00 08 */	ori r0, r0, 8
/* 8059A9A0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8059A9A4:
/* 8059A9A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8059A9A8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8059A9AC  98 1F 08 3C */	stb r0, 0x83c(r31)
/* 8059A9B0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8059A9B4  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 8059A9B8  28 00 00 0F */	cmplwi r0, 0xf
/* 8059A9BC  41 82 00 0C */	beq lbl_8059A9C8
/* 8059A9C0  28 00 00 00 */	cmplwi r0, 0
/* 8059A9C4  40 82 00 10 */	bne lbl_8059A9D4
lbl_8059A9C8:
/* 8059A9C8  38 00 00 00 */	li r0, 0
/* 8059A9CC  98 1F 08 3E */	stb r0, 0x83e(r31)
/* 8059A9D0  48 00 00 14 */	b lbl_8059A9E4
lbl_8059A9D4:
/* 8059A9D4  28 00 00 01 */	cmplwi r0, 1
/* 8059A9D8  40 82 00 0C */	bne lbl_8059A9E4
/* 8059A9DC  38 00 00 01 */	li r0, 1
/* 8059A9E0  98 1F 08 3E */	stb r0, 0x83e(r31)
lbl_8059A9E4:
/* 8059A9E4  38 7F 05 68 */	addi r3, r31, 0x568
/* 8059A9E8  88 1F 08 3E */	lbz r0, 0x83e(r31)
/* 8059A9EC  54 00 10 3A */	slwi r0, r0, 2
/* 8059A9F0  3C 80 80 5A */	lis r4, l_arcName@ha /* 0x8059B380@ha */
/* 8059A9F4  38 84 B3 80 */	addi r4, r4, l_arcName@l /* 0x8059B380@l */
/* 8059A9F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8059A9FC  4B A9 24 C1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8059AA00  7C 7B 1B 78 */	mr r27, r3
/* 8059AA04  2C 1B 00 04 */	cmpwi r27, 4
/* 8059AA08  40 82 00 50 */	bne lbl_8059AA58
/* 8059AA0C  7F E3 FB 78 */	mr r3, r31
/* 8059AA10  3C 80 80 5A */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x8059A5C8@ha */
/* 8059AA14  38 84 A5 C8 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x8059A5C8@l */
/* 8059AA18  88 1F 08 3E */	lbz r0, 0x83e(r31)
/* 8059AA1C  54 00 10 3A */	slwi r0, r0, 2
/* 8059AA20  3C A0 80 5A */	lis r5, l_heap_size@ha /* 0x8059B2D0@ha */
/* 8059AA24  38 A5 B2 D0 */	addi r5, r5, l_heap_size@l /* 0x8059B2D0@l */
/* 8059AA28  7C A5 00 2E */	lwzx r5, r5, r0
/* 8059AA2C  4B A7 FA 85 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8059AA30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059AA34  40 82 00 0C */	bne lbl_8059AA40
/* 8059AA38  38 60 00 05 */	li r3, 5
/* 8059AA3C  48 00 00 20 */	b lbl_8059AA5C
lbl_8059AA40:
/* 8059AA40  7F E3 FB 78 */	mr r3, r31
/* 8059AA44  4B FF FC 2D */	bl Create__11daObjSwPr_cFv
/* 8059AA48  2C 03 00 00 */	cmpwi r3, 0
/* 8059AA4C  40 82 00 0C */	bne lbl_8059AA58
/* 8059AA50  38 60 00 05 */	li r3, 5
/* 8059AA54  48 00 00 08 */	b lbl_8059AA5C
lbl_8059AA58:
/* 8059AA58  7F 63 DB 78 */	mr r3, r27
lbl_8059AA5C:
/* 8059AA5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8059AA60  4B DC 77 BD */	bl _restgpr_26
/* 8059AA64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059AA68  7C 08 03 A6 */	mtlr r0
/* 8059AA6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8059AA70  4E 80 00 20 */	blr 
