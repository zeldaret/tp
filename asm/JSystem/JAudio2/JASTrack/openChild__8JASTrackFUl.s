lbl_80291C30:
/* 80291C30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80291C34  7C 08 02 A6 */	mflr r0
/* 80291C38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80291C3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80291C40  48 0D 05 95 */	bl _savegpr_27
/* 80291C44  7C 7E 1B 78 */	mr r30, r3
/* 80291C48  7C 9F 23 78 */	mr r31, r4
/* 80291C4C  54 80 10 3A */	slwi r0, r4, 2
/* 80291C50  7F BE 02 14 */	add r29, r30, r0
/* 80291C54  83 9D 01 30 */	lwz r28, 0x130(r29)
/* 80291C58  28 1C 00 00 */	cmplwi r28, 0
/* 80291C5C  41 82 00 74 */	beq lbl_80291CD0
/* 80291C60  88 1C 02 15 */	lbz r0, 0x215(r28)
/* 80291C64  2C 00 00 01 */	cmpwi r0, 1
/* 80291C68  41 82 00 18 */	beq lbl_80291C80
/* 80291C6C  40 80 00 08 */	bge lbl_80291C74
/* 80291C70  48 00 01 08 */	b lbl_80291D78
lbl_80291C74:
/* 80291C74  2C 00 00 03 */	cmpwi r0, 3
/* 80291C78  40 80 01 00 */	bge lbl_80291D78
/* 80291C7C  48 00 00 1C */	b lbl_80291C98
lbl_80291C80:
/* 80291C80  48 00 11 09 */	bl getRootTrack__8JASTrackFv
/* 80291C84  38 80 00 00 */	li r4, 0
/* 80291C88  C0 22 BB A4 */	lfs f1, lit_679(r2)
/* 80291C8C  48 00 08 F5 */	bl updateSeq__8JASTrackFbf
/* 80291C90  7F 83 E3 78 */	mr r3, r28
/* 80291C94  4B FF FE 35 */	bl close__8JASTrackFv
lbl_80291C98:
/* 80291C98  88 1C 02 16 */	lbz r0, 0x216(r28)
/* 80291C9C  54 1B E7 FE */	rlwinm r27, r0, 0x1c, 0x1f, 0x1f
/* 80291CA0  7F 83 E3 78 */	mr r3, r28
/* 80291CA4  4B FF F9 31 */	bl init__8JASTrackFv
/* 80291CA8  88 1C 02 16 */	lbz r0, 0x216(r28)
/* 80291CAC  53 60 26 F6 */	rlwimi r0, r27, 4, 0x1b, 0x1b
/* 80291CB0  98 1C 02 16 */	stb r0, 0x216(r28)
/* 80291CB4  38 00 00 00 */	li r0, 0
/* 80291CB8  90 1D 01 30 */	stw r0, 0x130(r29)
/* 80291CBC  7F C3 F3 78 */	mr r3, r30
/* 80291CC0  7F E4 FB 78 */	mr r4, r31
/* 80291CC4  7F 85 E3 78 */	mr r5, r28
/* 80291CC8  4B FF FE C5 */	bl connectChild__8JASTrackFUlP8JASTrack
/* 80291CCC  48 00 00 AC */	b lbl_80291D78
lbl_80291CD0:
/* 80291CD0  88 0D 8C B1 */	lbz r0, struct_80451230+0x1(r13)
/* 80291CD4  7C 00 07 75 */	extsb. r0, r0
/* 80291CD8  40 82 00 34 */	bne lbl_80291D0C
/* 80291CDC  3C 60 80 43 */	lis r3, data_80431B04@ha
/* 80291CE0  38 63 1B 04 */	addi r3, r3, data_80431B04@l
/* 80291CE4  4B FF EB 65 */	bl __ct__17JASGenericMemPoolFv
/* 80291CE8  3C 60 80 43 */	lis r3, data_80431B04@ha
/* 80291CEC  38 63 1B 04 */	addi r3, r3, data_80431B04@l
/* 80291CF0  3C 80 80 29 */	lis r4, func_802932E0@ha
/* 80291CF4  38 84 32 E0 */	addi r4, r4, func_802932E0@l
/* 80291CF8  3C A0 80 43 */	lis r5, lit_476@ha
/* 80291CFC  38 A5 1A E8 */	addi r5, r5, lit_476@l
/* 80291D00  48 0C FF 25 */	bl __register_global_object
/* 80291D04  38 00 00 01 */	li r0, 1
/* 80291D08  98 0D 8C B1 */	stb r0, struct_80451230+0x1(r13)
lbl_80291D0C:
/* 80291D0C  48 0A B9 E9 */	bl OSDisableInterrupts
/* 80291D10  90 61 00 08 */	stw r3, 8(r1)
/* 80291D14  3C 60 80 43 */	lis r3, data_80431B04@ha
/* 80291D18  38 63 1B 04 */	addi r3, r3, data_80431B04@l
/* 80291D1C  38 80 02 48 */	li r4, 0x248
/* 80291D20  4B FF EC 29 */	bl alloc__17JASGenericMemPoolFUl
/* 80291D24  7C 7D 1B 78 */	mr r29, r3
/* 80291D28  80 61 00 08 */	lwz r3, 8(r1)
/* 80291D2C  48 0A B9 F1 */	bl OSRestoreInterrupts
/* 80291D30  28 1D 00 00 */	cmplwi r29, 0
/* 80291D34  41 82 00 10 */	beq lbl_80291D44
/* 80291D38  7F A3 EB 78 */	mr r3, r29
/* 80291D3C  4B FF F4 ED */	bl __ct__8JASTrackFv
/* 80291D40  7C 7D 1B 78 */	mr r29, r3
lbl_80291D44:
/* 80291D44  7F BC EB 78 */	mr r28, r29
/* 80291D48  28 1D 00 00 */	cmplwi r29, 0
/* 80291D4C  40 82 00 0C */	bne lbl_80291D58
/* 80291D50  38 60 00 00 */	li r3, 0
/* 80291D54  48 00 00 40 */	b lbl_80291D94
lbl_80291D58:
/* 80291D58  38 60 00 01 */	li r3, 1
/* 80291D5C  88 1D 02 16 */	lbz r0, 0x216(r29)
/* 80291D60  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80291D64  98 1D 02 16 */	stb r0, 0x216(r29)
/* 80291D68  7F C3 F3 78 */	mr r3, r30
/* 80291D6C  7F E4 FB 78 */	mr r4, r31
/* 80291D70  7F A5 EB 78 */	mr r5, r29
/* 80291D74  4B FF FE 19 */	bl connectChild__8JASTrackFUlP8JASTrack
lbl_80291D78:
/* 80291D78  7F 83 E3 78 */	mr r3, r28
/* 80291D7C  80 9E 01 D0 */	lwz r4, 0x1d0(r30)
/* 80291D80  4B FF F6 C5 */	bl setChannelMgrCount__8JASTrackFUl
/* 80291D84  7F 83 E3 78 */	mr r3, r28
/* 80291D88  7F C4 F3 78 */	mr r4, r30
/* 80291D8C  4B FF FB C1 */	bl inherit__8JASTrackFRC8JASTrack
/* 80291D90  7F 83 E3 78 */	mr r3, r28
lbl_80291D94:
/* 80291D94  39 61 00 30 */	addi r11, r1, 0x30
/* 80291D98  48 0D 04 89 */	bl _restgpr_27
/* 80291D9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80291DA0  7C 08 03 A6 */	mtlr r0
/* 80291DA4  38 21 00 30 */	addi r1, r1, 0x30
/* 80291DA8  4E 80 00 20 */	blr 
