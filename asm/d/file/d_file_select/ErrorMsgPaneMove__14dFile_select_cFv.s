lbl_8018A960:
/* 8018A960  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018A964  7C 08 02 A6 */	mflr r0
/* 8018A968  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018A96C  39 61 00 20 */	addi r11, r1, 0x20
/* 8018A970  48 1D 78 65 */	bl _savegpr_27
/* 8018A974  7C 7E 1B 78 */	mr r30, r3
/* 8018A978  48 00 28 E5 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 8018A97C  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 8018A980  88 1E 02 6E */	lbz r0, 0x26e(r30)
/* 8018A984  2C 00 00 00 */	cmpwi r0, 0
/* 8018A988  41 82 00 48 */	beq lbl_8018A9D0
/* 8018A98C  41 80 00 9C */	blt lbl_8018AA28
/* 8018A990  2C 00 00 03 */	cmpwi r0, 3
/* 8018A994  40 80 00 94 */	bge lbl_8018AA28
/* 8018A998  88 1E 02 65 */	lbz r0, 0x265(r30)
/* 8018A99C  54 00 10 3A */	slwi r0, r0, 2
/* 8018A9A0  7C 7E 02 14 */	add r3, r30, r0
/* 8018A9A4  80 63 01 4C */	lwz r3, 0x14c(r3)
/* 8018A9A8  3C 80 80 43 */	lis r4, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 8018A9AC  38 84 C9 EC */	addi r4, r4, g_fsHIO@l /* 0x8042C9EC@l */
/* 8018A9B0  88 84 00 09 */	lbz r4, 9(r4)
/* 8018A9B4  38 A0 00 FF */	li r5, 0xff
/* 8018A9B8  38 C0 00 00 */	li r6, 0
/* 8018A9BC  38 E0 00 00 */	li r7, 0
/* 8018A9C0  48 0C AE B9 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018A9C4  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 8018A9C8  3B A0 00 01 */	li r29, 1
/* 8018A9CC  48 00 00 5C */	b lbl_8018AA28
lbl_8018A9D0:
/* 8018A9D0  88 1E 02 6D */	lbz r0, 0x26d(r30)
/* 8018A9D4  54 00 10 3A */	slwi r0, r0, 2
/* 8018A9D8  7C 7E 02 14 */	add r3, r30, r0
/* 8018A9DC  80 63 01 58 */	lwz r3, 0x158(r3)
/* 8018A9E0  3C 80 80 43 */	lis r4, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 8018A9E4  3B A4 C9 EC */	addi r29, r4, g_fsHIO@l /* 0x8042C9EC@l */
/* 8018A9E8  88 9D 00 09 */	lbz r4, 9(r29)
/* 8018A9EC  38 A0 00 FF */	li r5, 0xff
/* 8018A9F0  38 C0 00 00 */	li r6, 0
/* 8018A9F4  38 E0 00 00 */	li r7, 0
/* 8018A9F8  48 0C AE 81 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018A9FC  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 8018AA00  88 1E 02 65 */	lbz r0, 0x265(r30)
/* 8018AA04  54 00 10 3A */	slwi r0, r0, 2
/* 8018AA08  7C 7E 02 14 */	add r3, r30, r0
/* 8018AA0C  80 63 01 58 */	lwz r3, 0x158(r3)
/* 8018AA10  88 9D 00 09 */	lbz r4, 9(r29)
/* 8018AA14  38 A0 00 FF */	li r5, 0xff
/* 8018AA18  38 C0 00 00 */	li r6, 0
/* 8018AA1C  38 E0 00 00 */	li r7, 0
/* 8018AA20  48 0C AE 59 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018AA24  54 7D 06 3E */	clrlwi r29, r3, 0x18
lbl_8018AA28:
/* 8018AA28  7F C3 F3 78 */	mr r3, r30
/* 8018AA2C  48 00 29 F1 */	bl modoruTxtDispAnm__14dFile_select_cFv
/* 8018AA30  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 8018AA34  7F C3 F3 78 */	mr r3, r30
/* 8018AA38  48 00 2B 3D */	bl ketteiTxtDispAnm__14dFile_select_cFv
/* 8018AA3C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8018AA40  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8018AA44  88 63 00 3D */	lbz r3, 0x3d(r3)
/* 8018AA48  30 03 FF FF */	addic r0, r3, -1
/* 8018AA4C  7C 00 19 10 */	subfe r0, r0, r3
/* 8018AA50  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8018AA54  2C 1F 00 01 */	cmpwi r31, 1
/* 8018AA58  40 82 00 54 */	bne lbl_8018AAAC
/* 8018AA5C  2C 1C 00 01 */	cmpwi r28, 1
/* 8018AA60  40 82 00 4C */	bne lbl_8018AAAC
/* 8018AA64  2C 1D 00 01 */	cmpwi r29, 1
/* 8018AA68  40 82 00 44 */	bne lbl_8018AAAC
/* 8018AA6C  2C 1B 00 01 */	cmpwi r27, 1
/* 8018AA70  40 82 00 3C */	bne lbl_8018AAAC
/* 8018AA74  2C 04 00 01 */	cmpwi r4, 1
/* 8018AA78  40 82 00 34 */	bne lbl_8018AAAC
/* 8018AA7C  2C 00 00 01 */	cmpwi r0, 1
/* 8018AA80  40 82 00 2C */	bne lbl_8018AAAC
/* 8018AA84  38 00 00 00 */	li r0, 0
/* 8018AA88  98 1E 02 08 */	stb r0, 0x208(r30)
/* 8018AA8C  98 1E 02 09 */	stb r0, 0x209(r30)
/* 8018AA90  98 1E 03 B1 */	stb r0, 0x3b1(r30)
/* 8018AA94  3C 60 80 43 */	lis r3, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 8018AA98  38 63 C9 EC */	addi r3, r3, g_fsHIO@l /* 0x8042C9EC@l */
/* 8018AA9C  88 03 00 0A */	lbz r0, 0xa(r3)
/* 8018AAA0  B0 1E 03 AC */	sth r0, 0x3ac(r30)
/* 8018AAA4  38 00 00 2B */	li r0, 0x2b
/* 8018AAA8  98 1E 02 6F */	stb r0, 0x26f(r30)
lbl_8018AAAC:
/* 8018AAAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8018AAB0  48 1D 77 71 */	bl _restgpr_27
/* 8018AAB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018AAB8  7C 08 03 A6 */	mtlr r0
/* 8018AABC  38 21 00 20 */	addi r1, r1, 0x20
/* 8018AAC0  4E 80 00 20 */	blr 
