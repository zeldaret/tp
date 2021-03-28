lbl_802A535C:
/* 802A535C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A5360  7C 08 02 A6 */	mflr r0
/* 802A5364  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A5368  39 61 00 30 */	addi r11, r1, 0x30
/* 802A536C  48 0B CE 69 */	bl _savegpr_27
/* 802A5370  7C 7D 1B 78 */	mr r29, r3
/* 802A5374  7C 9E 23 78 */	mr r30, r4
/* 802A5378  7C BC 2B 78 */	mr r28, r5
/* 802A537C  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802A5380  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A5384  48 02 90 B5 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5388  90 61 00 0C */	stw r3, 0xc(r1)
/* 802A538C  3B E0 00 00 */	li r31, 0
/* 802A5390  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802A5394  41 82 00 EC */	beq lbl_802A5480
/* 802A5398  38 60 00 0C */	li r3, 0xc
/* 802A539C  48 02 98 B1 */	bl __nw__FUl
/* 802A53A0  28 03 00 00 */	cmplwi r3, 0
/* 802A53A4  41 82 00 C8 */	beq lbl_802A546C
/* 802A53A8  7C 7B 1B 78 */	mr r27, r3
/* 802A53AC  3C 80 80 3D */	lis r4, __vt__16JAIStreamDataMgr@ha
/* 802A53B0  38 04 9A 1C */	addi r0, r4, __vt__16JAIStreamDataMgr@l
/* 802A53B4  90 03 00 00 */	stw r0, 0(r3)
/* 802A53B8  3C 60 80 3D */	lis r3, data_803C9B14@ha
/* 802A53BC  38 03 9B 14 */	addi r0, r3, data_803C9B14@l
/* 802A53C0  90 1B 00 00 */	stw r0, 0(r27)
/* 802A53C4  38 61 00 08 */	addi r3, r1, 8
/* 802A53C8  48 00 20 59 */	bl __ct__18JAUStreamFileTableFv
/* 802A53CC  38 61 00 08 */	addi r3, r1, 8
/* 802A53D0  7F C4 F3 78 */	mr r4, r30
/* 802A53D4  48 00 20 59 */	bl init__18JAUStreamFileTableFPCv
/* 802A53D8  80 01 00 08 */	lwz r0, 8(r1)
/* 802A53DC  28 00 00 00 */	cmplwi r0, 0
/* 802A53E0  40 82 00 18 */	bne lbl_802A53F8
/* 802A53E4  38 00 00 00 */	li r0, 0
/* 802A53E8  90 1B 00 04 */	stw r0, 4(r27)
/* 802A53EC  90 1B 00 08 */	stw r0, 8(r27)
/* 802A53F0  7F 63 DB 78 */	mr r3, r27
/* 802A53F4  48 00 00 78 */	b lbl_802A546C
lbl_802A53F8:
/* 802A53F8  38 61 00 08 */	addi r3, r1, 8
/* 802A53FC  48 00 20 7D */	bl getNumFiles__18JAUStreamFileTableCFv
/* 802A5400  90 7B 00 04 */	stw r3, 4(r27)
/* 802A5404  80 1B 00 04 */	lwz r0, 4(r27)
/* 802A5408  54 03 10 3A */	slwi r3, r0, 2
/* 802A540C  48 02 98 B9 */	bl __nwa__FUl
/* 802A5410  90 7B 00 08 */	stw r3, 8(r27)
/* 802A5414  80 1B 00 08 */	lwz r0, 8(r27)
/* 802A5418  28 00 00 00 */	cmplwi r0, 0
/* 802A541C  40 82 00 14 */	bne lbl_802A5430
/* 802A5420  38 00 00 00 */	li r0, 0
/* 802A5424  90 1B 00 04 */	stw r0, 4(r27)
/* 802A5428  7F 63 DB 78 */	mr r3, r27
/* 802A542C  48 00 00 40 */	b lbl_802A546C
lbl_802A5430:
/* 802A5430  3B 80 00 00 */	li r28, 0
/* 802A5434  7F 9E E3 78 */	mr r30, r28
/* 802A5438  48 00 00 24 */	b lbl_802A545C
lbl_802A543C:
/* 802A543C  38 61 00 08 */	addi r3, r1, 8
/* 802A5440  7F 84 E3 78 */	mr r4, r28
/* 802A5444  48 00 20 41 */	bl getFilePath__18JAUStreamFileTableCFi
/* 802A5448  48 0A 30 E1 */	bl DVDConvertPathToEntrynum
/* 802A544C  80 9B 00 08 */	lwz r4, 8(r27)
/* 802A5450  7C 64 F1 2E */	stwx r3, r4, r30
/* 802A5454  3B 9C 00 01 */	addi r28, r28, 1
/* 802A5458  3B DE 00 04 */	addi r30, r30, 4
lbl_802A545C:
/* 802A545C  80 1B 00 04 */	lwz r0, 4(r27)
/* 802A5460  7C 1C 00 40 */	cmplw r28, r0
/* 802A5464  41 80 FF D8 */	blt lbl_802A543C
/* 802A5468  7F 63 DB 78 */	mr r3, r27
lbl_802A546C:
/* 802A546C  80 03 00 04 */	lwz r0, 4(r3)
/* 802A5470  28 00 00 00 */	cmplwi r0, 0
/* 802A5474  41 82 00 5C */	beq lbl_802A54D0
/* 802A5478  7C 7F 1B 78 */	mr r31, r3
/* 802A547C  48 00 00 54 */	b lbl_802A54D0
lbl_802A5480:
/* 802A5480  38 60 00 08 */	li r3, 8
/* 802A5484  48 02 97 C9 */	bl __nw__FUl
/* 802A5488  7C 7C 1B 79 */	or. r28, r3, r3
/* 802A548C  41 82 00 28 */	beq lbl_802A54B4
/* 802A5490  7F 9B E3 78 */	mr r27, r28
/* 802A5494  3C 60 80 3D */	lis r3, __vt__16JAIStreamDataMgr@ha
/* 802A5498  38 03 9A 1C */	addi r0, r3, __vt__16JAIStreamDataMgr@l
/* 802A549C  90 1C 00 00 */	stw r0, 0(r28)
/* 802A54A0  38 7B 00 04 */	addi r3, r27, 4
/* 802A54A4  48 00 1F 7D */	bl __ct__18JAUStreamFileTableFv
/* 802A54A8  3C 60 80 3D */	lis r3, __vt__32JAUStreamDataMgr_StreamFileTable@ha
/* 802A54AC  38 03 9B 50 */	addi r0, r3, __vt__32JAUStreamDataMgr_StreamFileTable@l
/* 802A54B0  90 1B 00 00 */	stw r0, 0(r27)
lbl_802A54B4:
/* 802A54B4  38 7C 00 04 */	addi r3, r28, 4
/* 802A54B8  7F C4 F3 78 */	mr r4, r30
/* 802A54BC  48 00 1F 71 */	bl init__18JAUStreamFileTableFPCv
/* 802A54C0  80 1C 00 04 */	lwz r0, 4(r28)
/* 802A54C4  28 00 00 00 */	cmplwi r0, 0
/* 802A54C8  41 82 00 08 */	beq lbl_802A54D0
/* 802A54CC  7F 9F E3 78 */	mr r31, r28
lbl_802A54D0:
/* 802A54D0  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802A54D4  93 E3 05 28 */	stw r31, 0x528(r3)
/* 802A54D8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A54DC  48 02 8F 5D */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A54E0  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802A54E4  80 63 05 28 */	lwz r3, 0x528(r3)
/* 802A54E8  39 61 00 30 */	addi r11, r1, 0x30
/* 802A54EC  48 0B CD 35 */	bl _restgpr_27
/* 802A54F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A54F4  7C 08 03 A6 */	mtlr r0
/* 802A54F8  38 21 00 30 */	addi r1, r1, 0x30
/* 802A54FC  4E 80 00 20 */	blr 
