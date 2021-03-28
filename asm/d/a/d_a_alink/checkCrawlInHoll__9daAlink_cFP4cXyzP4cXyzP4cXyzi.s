lbl_800F8B00:
/* 800F8B00  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 800F8B04  7C 08 02 A6 */	mflr r0
/* 800F8B08  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 800F8B0C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 800F8B10  48 26 96 C9 */	bl _savegpr_28
/* 800F8B14  7C 7C 1B 78 */	mr r28, r3
/* 800F8B18  7C 9D 23 78 */	mr r29, r4
/* 800F8B1C  7C BE 2B 78 */	mr r30, r5
/* 800F8B20  7C DF 33 78 */	mr r31, r6
/* 800F8B24  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800F8B28  38 63 00 24 */	addi r3, r3, 0x24
/* 800F8B2C  80 9C 2F 50 */	lwz r4, 0x2f50(r28)
/* 800F8B30  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 800F8B34  48 24 E2 39 */	bl PSMTXMultVec
/* 800F8B38  80 7C 06 50 */	lwz r3, 0x650(r28)
/* 800F8B3C  38 63 00 24 */	addi r3, r3, 0x24
/* 800F8B40  80 9C 2F 54 */	lwz r4, 0x2f54(r28)
/* 800F8B44  7F E5 FB 78 */	mr r5, r31
/* 800F8B48  48 24 E2 25 */	bl PSMTXMultVec
/* 800F8B4C  C0 3C 1F DC */	lfs f1, 0x1fdc(r28)
/* 800F8B50  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F8B54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F8B58  4C 41 13 82 */	cror 2, 1, 2
/* 800F8B5C  40 82 00 40 */	bne lbl_800F8B9C
/* 800F8B60  38 61 00 6C */	addi r3, r1, 0x6c
/* 800F8B64  7F A4 EB 78 */	mr r4, r29
/* 800F8B68  7F E5 FB 78 */	mr r5, r31
/* 800F8B6C  48 16 DF C9 */	bl __mi__4cXyzCFRC3Vec
/* 800F8B70  38 61 00 60 */	addi r3, r1, 0x60
/* 800F8B74  38 81 00 6C */	addi r4, r1, 0x6c
/* 800F8B78  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800F8B7C  48 16 E0 09 */	bl __ml__4cXyzCFf
/* 800F8B80  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 800F8B84  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 800F8B88  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 800F8B8C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 800F8B90  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 800F8B94  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 800F8B98  48 00 00 44 */	b lbl_800F8BDC
lbl_800F8B9C:
/* 800F8B9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F8BA0  40 80 00 3C */	bge lbl_800F8BDC
/* 800F8BA4  38 61 00 54 */	addi r3, r1, 0x54
/* 800F8BA8  7F C4 F3 78 */	mr r4, r30
/* 800F8BAC  7F E5 FB 78 */	mr r5, r31
/* 800F8BB0  48 16 DF 85 */	bl __mi__4cXyzCFRC3Vec
/* 800F8BB4  38 61 00 48 */	addi r3, r1, 0x48
/* 800F8BB8  38 81 00 54 */	addi r4, r1, 0x54
/* 800F8BBC  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800F8BC0  48 16 DF C5 */	bl __ml__4cXyzCFf
/* 800F8BC4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 800F8BC8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 800F8BCC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800F8BD0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 800F8BD4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800F8BD8  D0 01 00 80 */	stfs f0, 0x80(r1)
lbl_800F8BDC:
/* 800F8BDC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 800F8BE0  38 81 00 78 */	addi r4, r1, 0x78
/* 800F8BE4  7C 65 1B 78 */	mr r5, r3
/* 800F8BE8  48 24 E4 A9 */	bl PSVECAdd
/* 800F8BEC  7F E3 FB 78 */	mr r3, r31
/* 800F8BF0  38 81 00 78 */	addi r4, r1, 0x78
/* 800F8BF4  7F E5 FB 78 */	mr r5, r31
/* 800F8BF8  48 24 E4 99 */	bl PSVECAdd
/* 800F8BFC  38 61 00 3C */	addi r3, r1, 0x3c
/* 800F8C00  7F E4 FB 78 */	mr r4, r31
/* 800F8C04  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 800F8C08  48 16 DF 7D */	bl __ml__4cXyzCFf
/* 800F8C0C  38 61 00 30 */	addi r3, r1, 0x30
/* 800F8C10  38 81 00 3C */	addi r4, r1, 0x3c
/* 800F8C14  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 800F8C18  48 16 DF 1D */	bl __mi__4cXyzCFRC3Vec
/* 800F8C1C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800F8C20  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 800F8C24  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800F8C28  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 800F8C2C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800F8C30  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 800F8C34  7F 83 E3 78 */	mr r3, r28
/* 800F8C38  7F E4 FB 78 */	mr r4, r31
/* 800F8C3C  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 800F8C40  38 C1 00 90 */	addi r6, r1, 0x90
/* 800F8C44  38 E1 00 84 */	addi r7, r1, 0x84
/* 800F8C48  39 01 00 0A */	addi r8, r1, 0xa
/* 800F8C4C  39 21 00 08 */	addi r9, r1, 8
/* 800F8C50  4B FF FA B1 */	bl checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs
/* 800F8C54  2C 03 00 00 */	cmpwi r3, 0
/* 800F8C58  40 82 00 2C */	bne lbl_800F8C84
/* 800F8C5C  7F 83 E3 78 */	mr r3, r28
/* 800F8C60  7F E4 FB 78 */	mr r4, r31
/* 800F8C64  38 A1 00 9C */	addi r5, r1, 0x9c
/* 800F8C68  38 C1 00 84 */	addi r6, r1, 0x84
/* 800F8C6C  38 E1 00 90 */	addi r7, r1, 0x90
/* 800F8C70  39 01 00 08 */	addi r8, r1, 8
/* 800F8C74  39 21 00 0A */	addi r9, r1, 0xa
/* 800F8C78  4B FF FA 89 */	bl checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs
/* 800F8C7C  2C 03 00 00 */	cmpwi r3, 0
/* 800F8C80  41 82 00 68 */	beq lbl_800F8CE8
lbl_800F8C84:
/* 800F8C84  38 00 00 01 */	li r0, 1
/* 800F8C88  90 1C 31 98 */	stw r0, 0x3198(r28)
/* 800F8C8C  38 61 00 24 */	addi r3, r1, 0x24
/* 800F8C90  38 81 00 90 */	addi r4, r1, 0x90
/* 800F8C94  38 A1 00 84 */	addi r5, r1, 0x84
/* 800F8C98  48 16 DE 4D */	bl __pl__4cXyzCFRC3Vec
/* 800F8C9C  38 61 00 18 */	addi r3, r1, 0x18
/* 800F8CA0  38 81 00 24 */	addi r4, r1, 0x24
/* 800F8CA4  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800F8CA8  48 16 DE DD */	bl __ml__4cXyzCFf
/* 800F8CAC  38 61 00 0C */	addi r3, r1, 0xc
/* 800F8CB0  38 81 00 18 */	addi r4, r1, 0x18
/* 800F8CB4  38 A1 00 78 */	addi r5, r1, 0x78
/* 800F8CB8  48 16 DE 7D */	bl __mi__4cXyzCFRC3Vec
/* 800F8CBC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800F8CC0  D0 1C 37 C8 */	stfs f0, 0x37c8(r28)
/* 800F8CC4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800F8CC8  D0 1C 37 CC */	stfs f0, 0x37cc(r28)
/* 800F8CCC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800F8CD0  D0 1C 37 D0 */	stfs f0, 0x37d0(r28)
/* 800F8CD4  A8 61 00 0A */	lha r3, 0xa(r1)
/* 800F8CD8  38 03 40 00 */	addi r0, r3, 0x4000
/* 800F8CDC  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 800F8CE0  38 60 00 01 */	li r3, 1
/* 800F8CE4  48 00 00 08 */	b lbl_800F8CEC
lbl_800F8CE8:
/* 800F8CE8  38 60 00 00 */	li r3, 0
lbl_800F8CEC:
/* 800F8CEC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 800F8CF0  48 26 95 35 */	bl _restgpr_28
/* 800F8CF4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 800F8CF8  7C 08 03 A6 */	mtlr r0
/* 800F8CFC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 800F8D00  4E 80 00 20 */	blr 
