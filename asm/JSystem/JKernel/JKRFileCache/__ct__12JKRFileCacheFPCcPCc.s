lbl_802D4AB4:
/* 802D4AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D4AB8  7C 08 02 A6 */	mflr r0
/* 802D4ABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D4AC0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D4AC4  48 08 D7 15 */	bl _savegpr_28
/* 802D4AC8  7C 7F 1B 78 */	mr r31, r3
/* 802D4ACC  7C 9C 23 78 */	mr r28, r4
/* 802D4AD0  7C BD 2B 78 */	mr r29, r5
/* 802D4AD4  4B FF F6 1D */	bl __ct__13JKRFileLoaderFv
/* 802D4AD8  3C 60 80 3D */	lis r3, __vt__12JKRFileCache@ha /* 0x803CC238@ha */
/* 802D4ADC  38 03 C2 38 */	addi r0, r3, __vt__12JKRFileCache@l /* 0x803CC238@l */
/* 802D4AE0  90 1F 00 00 */	stw r0, 0(r31)
/* 802D4AE4  38 7F 00 3C */	addi r3, r31, 0x3c
/* 802D4AE8  48 00 74 2D */	bl initiate__10JSUPtrListFv
/* 802D4AEC  7F E3 FB 78 */	mr r3, r31
/* 802D4AF0  4B FF 9D 4D */	bl findFromRoot__7JKRHeapFPv
/* 802D4AF4  90 7F 00 38 */	stw r3, 0x38(r31)
/* 802D4AF8  38 00 00 01 */	li r0, 1
/* 802D4AFC  90 1F 00 34 */	stw r0, 0x34(r31)
/* 802D4B00  3C 60 43 41 */	lis r3, 0x4341 /* 0x43415348@ha */
/* 802D4B04  38 03 53 48 */	addi r0, r3, 0x5348 /* 0x43415348@l */
/* 802D4B08  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 802D4B0C  7F 83 E3 78 */	mr r3, r28
/* 802D4B10  48 09 40 D5 */	bl strlen
/* 802D4B14  7C 7E 1B 78 */	mr r30, r3
/* 802D4B18  38 7E 00 01 */	addi r3, r30, 1
/* 802D4B1C  38 80 00 01 */	li r4, 1
/* 802D4B20  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 802D4B24  4B FF 99 51 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D4B28  90 7F 00 48 */	stw r3, 0x48(r31)
/* 802D4B2C  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D4B30  38 9E 00 02 */	addi r4, r30, 2
/* 802D4B34  38 A0 00 01 */	li r5, 1
/* 802D4B38  4B FF 99 9D */	bl alloc__7JKRHeapFUli
/* 802D4B3C  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 802D4B40  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 802D4B44  7F 84 E3 78 */	mr r4, r28
/* 802D4B48  48 09 3F E5 */	bl strcpy
/* 802D4B4C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802D4B50  7F 84 E3 78 */	mr r4, r28
/* 802D4B54  48 09 3F D9 */	bl strcpy
/* 802D4B58  88 1C 00 01 */	lbz r0, 1(r28)
/* 802D4B5C  7C 00 07 75 */	extsb. r0, r0
/* 802D4B60  41 82 00 88 */	beq lbl_802D4BE8
/* 802D4B64  7F E3 FB 78 */	mr r3, r31
/* 802D4B68  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 802D4B6C  48 00 0A B9 */	bl convStrLower__12JKRFileCacheCFPc
/* 802D4B70  7F E3 FB 78 */	mr r3, r31
/* 802D4B74  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 802D4B78  48 00 0A AD */	bl convStrLower__12JKRFileCacheCFPc
/* 802D4B7C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802D4B80  3C 80 80 3A */	lis r4, JKRFileCache__stringBase0@ha /* 0x8039D158@ha */
/* 802D4B84  38 84 D1 58 */	addi r4, r4, JKRFileCache__stringBase0@l /* 0x8039D158@l */
/* 802D4B88  48 09 3F 35 */	bl strcat
/* 802D4B8C  7F BE EB 78 */	mr r30, r29
/* 802D4B90  28 1D 00 00 */	cmplwi r29, 0
/* 802D4B94  40 82 00 14 */	bne lbl_802D4BA8
/* 802D4B98  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 802D4B9C  38 80 00 2F */	li r4, 0x2f
/* 802D4BA0  48 09 3D 3D */	bl strrchr
/* 802D4BA4  3B C3 00 01 */	addi r30, r3, 1
lbl_802D4BA8:
/* 802D4BA8  7F C3 F3 78 */	mr r3, r30
/* 802D4BAC  48 09 40 39 */	bl strlen
/* 802D4BB0  38 83 00 01 */	addi r4, r3, 1
/* 802D4BB4  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D4BB8  38 A0 00 00 */	li r5, 0
/* 802D4BBC  4B FF 99 19 */	bl alloc__7JKRHeapFUli
/* 802D4BC0  90 7F 00 50 */	stw r3, 0x50(r31)
/* 802D4BC4  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802D4BC8  7F C4 F3 78 */	mr r4, r30
/* 802D4BCC  48 09 3F 61 */	bl strcpy
/* 802D4BD0  7F E3 FB 78 */	mr r3, r31
/* 802D4BD4  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 802D4BD8  48 00 0A 4D */	bl convStrLower__12JKRFileCacheCFPc
/* 802D4BDC  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 802D4BE0  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802D4BE4  48 00 00 58 */	b lbl_802D4C3C
lbl_802D4BE8:
/* 802D4BE8  7F BE EB 78 */	mr r30, r29
/* 802D4BEC  28 1D 00 00 */	cmplwi r29, 0
/* 802D4BF0  40 82 00 10 */	bne lbl_802D4C00
/* 802D4BF4  3C 60 80 3A */	lis r3, JKRFileCache__stringBase0@ha /* 0x8039D158@ha */
/* 802D4BF8  38 63 D1 58 */	addi r3, r3, JKRFileCache__stringBase0@l /* 0x8039D158@l */
/* 802D4BFC  3B C3 00 02 */	addi r30, r3, 2
lbl_802D4C00:
/* 802D4C00  7F C3 F3 78 */	mr r3, r30
/* 802D4C04  48 09 3F E1 */	bl strlen
/* 802D4C08  38 83 00 01 */	addi r4, r3, 1
/* 802D4C0C  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D4C10  38 A0 00 00 */	li r5, 0
/* 802D4C14  4B FF 98 C1 */	bl alloc__7JKRHeapFUli
/* 802D4C18  90 7F 00 50 */	stw r3, 0x50(r31)
/* 802D4C1C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802D4C20  7F C4 F3 78 */	mr r4, r30
/* 802D4C24  48 09 3F 09 */	bl strcpy
/* 802D4C28  7F E3 FB 78 */	mr r3, r31
/* 802D4C2C  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 802D4C30  48 00 09 F5 */	bl convStrLower__12JKRFileCacheCFPc
/* 802D4C34  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 802D4C38  90 1F 00 28 */	stw r0, 0x28(r31)
lbl_802D4C3C:
/* 802D4C3C  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha /* 0x80434354@ha */
/* 802D4C40  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l /* 0x80434354@l */
/* 802D4C44  38 9F 00 18 */	addi r4, r31, 0x18
/* 802D4C48  48 00 73 A9 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 802D4C4C  38 00 00 01 */	li r0, 1
/* 802D4C50  98 1F 00 30 */	stb r0, 0x30(r31)
/* 802D4C54  7F E3 FB 78 */	mr r3, r31
/* 802D4C58  39 61 00 20 */	addi r11, r1, 0x20
/* 802D4C5C  48 08 D5 C9 */	bl _restgpr_28
/* 802D4C60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D4C64  7C 08 03 A6 */	mtlr r0
/* 802D4C68  38 21 00 20 */	addi r1, r1, 0x20
/* 802D4C6C  4E 80 00 20 */	blr 
