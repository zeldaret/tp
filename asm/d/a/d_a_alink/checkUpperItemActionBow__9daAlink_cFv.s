lbl_800DF0BC:
/* 800DF0BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800DF0C0  7C 08 02 A6 */	mflr r0
/* 800DF0C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 800DF0C8  39 61 00 50 */	addi r11, r1, 0x50
/* 800DF0CC  48 28 31 11 */	bl _savegpr_29
/* 800DF0D0  7C 7F 1B 78 */	mr r31, r3
/* 800DF0D4  3B DF 20 48 */	addi r30, r31, 0x2048
/* 800DF0D8  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800DF0DC  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DF0E0  40 82 00 24 */	bne lbl_800DF104
/* 800DF0E4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800DF0E8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800DF0EC  7D 89 03 A6 */	mtctr r12
/* 800DF0F0  4E 80 04 21 */	bctrl 
/* 800DF0F4  3C 80 80 39 */	lis r4, slingLocalPos@ha
/* 800DF0F8  38 84 18 D0 */	addi r4, r4, slingLocalPos@l
/* 800DF0FC  38 BF 37 E0 */	addi r5, r31, 0x37e0
/* 800DF100  48 26 7C 6D */	bl PSMTXMultVec
lbl_800DF104:
/* 800DF104  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800DF108  28 00 00 0A */	cmplwi r0, 0xa
/* 800DF10C  40 82 03 5C */	bne lbl_800DF468
/* 800DF110  83 BF 28 28 */	lwz r29, 0x2828(r31)
/* 800DF114  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DF118  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DF11C  41 82 00 68 */	beq lbl_800DF184
/* 800DF120  A8 7F 30 1C */	lha r3, 0x301c(r31)
/* 800DF124  2C 03 00 00 */	cmpwi r3, 0
/* 800DF128  40 81 00 44 */	ble lbl_800DF16C
/* 800DF12C  38 03 FF FF */	addi r0, r3, -1
/* 800DF130  B0 1F 30 1C */	sth r0, 0x301c(r31)
/* 800DF134  A8 7F 30 1C */	lha r3, 0x301c(r31)
/* 800DF138  A8 1E 00 08 */	lha r0, 8(r30)
/* 800DF13C  7C 03 00 00 */	cmpw r3, r0
/* 800DF140  41 81 00 44 */	bgt lbl_800DF184
/* 800DF144  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 800DF148  C0 22 93 A0 */	lfs f1, lit_9054(r2)
/* 800DF14C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800DF150  40 80 00 34 */	bge lbl_800DF184
/* 800DF154  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800DF158  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800DF15C  40 80 00 28 */	bge lbl_800DF184
/* 800DF160  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DF164  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 800DF168  48 00 00 1C */	b lbl_800DF184
lbl_800DF16C:
/* 800DF16C  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800DF170  60 00 00 10 */	ori r0, r0, 0x10
/* 800DF174  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800DF178  7F E3 FB 78 */	mr r3, r31
/* 800DF17C  38 80 00 00 */	li r4, 0
/* 800DF180  4B FD 80 11 */	bl cancelItemUseQuake__9daAlink_cFi
lbl_800DF184:
/* 800DF184  7F E3 FB 78 */	mr r3, r31
/* 800DF188  4B FD 97 A9 */	bl checkReadyItem__9daAlink_cFv
/* 800DF18C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF190  41 82 05 9C */	beq lbl_800DF72C
/* 800DF194  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 800DF198  2C 00 00 00 */	cmpwi r0, 0
/* 800DF19C  41 82 00 E8 */	beq lbl_800DF284
/* 800DF1A0  7F E3 FB 78 */	mr r3, r31
/* 800DF1A4  38 80 00 0C */	li r4, 0xc
/* 800DF1A8  38 A0 00 02 */	li r5, 2
/* 800DF1AC  3C C0 80 39 */	lis r6, m__17daAlinkHIO_bow_c0@ha
/* 800DF1B0  38 C6 E6 58 */	addi r6, r6, m__17daAlinkHIO_bow_c0@l
/* 800DF1B4  4B FC E5 3D */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800DF1B8  7F E3 FB 78 */	mr r3, r31
/* 800DF1BC  38 80 00 E8 */	li r4, 0xe8
/* 800DF1C0  38 A0 00 01 */	li r5, 1
/* 800DF1C4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800DF1C8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800DF1CC  4B FD 02 E5 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800DF1D0  38 80 00 00 */	li r4, 0
/* 800DF1D4  98 9F 2F 96 */	stb r4, 0x2f96(r31)
/* 800DF1D8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DF1DC  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DF1E0  40 82 00 68 */	bne lbl_800DF248
/* 800DF1E4  3B A0 01 F1 */	li r29, 0x1f1
/* 800DF1E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DF1EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DF1F0  88 03 00 F4 */	lbz r0, 0xf4(r3)
/* 800DF1F4  28 00 00 00 */	cmplwi r0, 0
/* 800DF1F8  41 82 00 68 */	beq lbl_800DF260
/* 800DF1FC  90 81 00 08 */	stw r4, 8(r1)
/* 800DF200  38 60 03 08 */	li r3, 0x308
/* 800DF204  38 80 04 01 */	li r4, 0x401
/* 800DF208  38 BF 37 E0 */	addi r5, r31, 0x37e0
/* 800DF20C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800DF210  7C 06 07 74 */	extsb r6, r0
/* 800DF214  38 E0 00 00 */	li r7, 0
/* 800DF218  39 00 00 00 */	li r8, 0
/* 800DF21C  39 20 FF FF */	li r9, -1
/* 800DF220  39 40 00 00 */	li r10, 0
/* 800DF224  4B F3 AB E1 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800DF228  28 03 00 00 */	cmplwi r3, 0
/* 800DF22C  41 82 00 34 */	beq lbl_800DF260
/* 800DF230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DF234  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800DF238  A8 64 5D F6 */	lha r3, 0x5df6(r4)
/* 800DF23C  38 03 FF FF */	addi r0, r3, -1
/* 800DF240  B0 04 5D F6 */	sth r0, 0x5df6(r4)
/* 800DF244  48 00 00 1C */	b lbl_800DF260
lbl_800DF248:
/* 800DF248  A8 1F 30 1C */	lha r0, 0x301c(r31)
/* 800DF24C  2C 00 00 00 */	cmpwi r0, 0
/* 800DF250  41 82 00 0C */	beq lbl_800DF25C
/* 800DF254  3B A0 00 43 */	li r29, 0x43
/* 800DF258  48 00 00 08 */	b lbl_800DF260
lbl_800DF25C:
/* 800DF25C  3B A0 00 44 */	li r29, 0x44
lbl_800DF260:
/* 800DF260  7F E3 FB 78 */	mr r3, r31
/* 800DF264  7F A4 EB 78 */	mr r4, r29
/* 800DF268  3C A0 80 39 */	lis r5, m__17daAlinkHIO_bow_c0@ha
/* 800DF26C  38 A5 E6 58 */	addi r5, r5, m__17daAlinkHIO_bow_c0@l
/* 800DF270  C0 25 00 08 */	lfs f1, 8(r5)
/* 800DF274  4B FE 0E 11 */	bl changeItemBck__9daAlink_cFUsf
/* 800DF278  38 00 00 00 */	li r0, 0
/* 800DF27C  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 800DF280  48 00 04 AC */	b lbl_800DF72C
lbl_800DF284:
/* 800DF284  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DF288  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DF28C  40 82 00 74 */	bne lbl_800DF300
/* 800DF290  7F E3 FB 78 */	mr r3, r31
/* 800DF294  4B FD 33 71 */	bl itemButton__9daAlink_cFv
/* 800DF298  2C 03 00 00 */	cmpwi r3, 0
/* 800DF29C  40 82 04 90 */	bne lbl_800DF72C
/* 800DF2A0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DF2A4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800DF2A8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DF2AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800DF2B0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800DF2B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DF2B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DF2BC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DF2C0  38 80 00 01 */	li r4, 1
/* 800DF2C4  38 A0 00 01 */	li r5, 1
/* 800DF2C8  38 C1 00 28 */	addi r6, r1, 0x28
/* 800DF2CC  4B F9 07 59 */	bl StartShock__12dVibration_cFii4cXyz
/* 800DF2D0  7F E3 FB 78 */	mr r3, r31
/* 800DF2D4  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200B0@ha */
/* 800DF2D8  38 84 00 B0 */	addi r4, r4, 0x00B0 /* 0x000200B0@l */
/* 800DF2DC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DF2E0  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DF2E4  7D 89 03 A6 */	mtctr r12
/* 800DF2E8  4E 80 04 21 */	bctrl 
/* 800DF2EC  38 00 00 01 */	li r0, 1
/* 800DF2F0  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 800DF2F4  7F E3 FB 78 */	mr r3, r31
/* 800DF2F8  4B FD 09 C5 */	bl resetFacePriAnime__9daAlink_cFv
/* 800DF2FC  48 00 04 30 */	b lbl_800DF72C
lbl_800DF300:
/* 800DF300  7F E3 FB 78 */	mr r3, r31
/* 800DF304  4B FD 33 01 */	bl itemButton__9daAlink_cFv
/* 800DF308  2C 03 00 00 */	cmpwi r3, 0
/* 800DF30C  40 82 01 50 */	bne lbl_800DF45C
/* 800DF310  28 1D 00 00 */	cmplwi r29, 0
/* 800DF314  41 82 01 04 */	beq lbl_800DF418
/* 800DF318  A8 1F 30 1C */	lha r0, 0x301c(r31)
/* 800DF31C  2C 00 00 00 */	cmpwi r0, 0
/* 800DF320  41 82 00 34 */	beq lbl_800DF354
/* 800DF324  38 00 00 01 */	li r0, 1
/* 800DF328  90 1D 00 B0 */	stw r0, 0xb0(r29)
/* 800DF32C  38 80 00 01 */	li r4, 1
/* 800DF330  88 1D 09 3C */	lbz r0, 0x93c(r29)
/* 800DF334  28 00 00 01 */	cmplwi r0, 1
/* 800DF338  40 82 00 10 */	bne lbl_800DF348
/* 800DF33C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000C@ha */
/* 800DF340  3B A3 00 0C */	addi r29, r3, 0x000C /* 0x0008000C@l */
/* 800DF344  48 00 00 3C */	b lbl_800DF380
lbl_800DF348:
/* 800DF348  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080002@ha */
/* 800DF34C  3B A3 00 02 */	addi r29, r3, 0x0002 /* 0x00080002@l */
/* 800DF350  48 00 00 30 */	b lbl_800DF380
lbl_800DF354:
/* 800DF354  38 00 00 02 */	li r0, 2
/* 800DF358  90 1D 00 B0 */	stw r0, 0xb0(r29)
/* 800DF35C  38 80 00 02 */	li r4, 2
/* 800DF360  88 1D 09 3C */	lbz r0, 0x93c(r29)
/* 800DF364  28 00 00 01 */	cmplwi r0, 1
/* 800DF368  40 82 00 10 */	bne lbl_800DF378
/* 800DF36C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000D@ha */
/* 800DF370  3B A3 00 0D */	addi r29, r3, 0x000D /* 0x0008000D@l */
/* 800DF374  48 00 00 0C */	b lbl_800DF380
lbl_800DF378:
/* 800DF378  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080003@ha */
/* 800DF37C  3B A3 00 03 */	addi r29, r3, 0x0003 /* 0x00080003@l */
lbl_800DF380:
/* 800DF380  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DF384  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800DF388  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DF38C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800DF390  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800DF394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DF398  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DF39C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DF3A0  38 A0 00 01 */	li r5, 1
/* 800DF3A4  38 C1 00 1C */	addi r6, r1, 0x1c
/* 800DF3A8  4B F9 06 7D */	bl StartShock__12dVibration_cFii4cXyz
/* 800DF3AC  7F E3 FB 78 */	mr r3, r31
/* 800DF3B0  7F A4 EB 78 */	mr r4, r29
/* 800DF3B4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DF3B8  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DF3BC  7D 89 03 A6 */	mtctr r12
/* 800DF3C0  4E 80 04 21 */	bctrl 
/* 800DF3C4  A8 1F 30 1E */	lha r0, 0x301e(r31)
/* 800DF3C8  2C 00 00 01 */	cmpwi r0, 1
/* 800DF3CC  40 82 00 10 */	bne lbl_800DF3DC
/* 800DF3D0  88 7F 2F 9C */	lbz r3, 0x2f9c(r31)
/* 800DF3D4  38 80 FF FF */	li r4, -1
/* 800DF3D8  4B F4 F4 65 */	bl dComIfGp_addSelectItemNum__Fis
lbl_800DF3DC:
/* 800DF3DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DF3E0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800DF3E4  A8 64 5D F4 */	lha r3, 0x5df4(r4)
/* 800DF3E8  38 03 FF FF */	addi r0, r3, -1
/* 800DF3EC  B0 04 5D F4 */	sth r0, 0x5df4(r4)
/* 800DF3F0  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800DF3F4  48 07 F9 09 */	bl clearData__16daPy_actorKeep_cFv
/* 800DF3F8  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800DF3FC  64 00 20 00 */	oris r0, r0, 0x2000
/* 800DF400  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800DF404  3C 60 80 39 */	lis r3, m__17daAlinkHIO_bow_c0@ha
/* 800DF408  38 63 E6 58 */	addi r3, r3, m__17daAlinkHIO_bow_c0@l
/* 800DF40C  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 800DF410  B0 1F 30 A4 */	sth r0, 0x30a4(r31)
/* 800DF414  48 00 00 20 */	b lbl_800DF434
lbl_800DF418:
/* 800DF418  7F E3 FB 78 */	mr r3, r31
/* 800DF41C  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002003C@ha */
/* 800DF420  38 84 00 3C */	addi r4, r4, 0x003C /* 0x0002003C@l */
/* 800DF424  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DF428  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DF42C  7D 89 03 A6 */	mtctr r12
/* 800DF430  4E 80 04 21 */	bctrl 
lbl_800DF434:
/* 800DF434  38 00 00 01 */	li r0, 1
/* 800DF438  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 800DF43C  7F E3 FB 78 */	mr r3, r31
/* 800DF440  4B FD 08 7D */	bl resetFacePriAnime__9daAlink_cFv
/* 800DF444  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DF448  28 00 00 43 */	cmplwi r0, 0x43
/* 800DF44C  40 82 02 E0 */	bne lbl_800DF72C
/* 800DF450  38 00 00 00 */	li r0, 0
/* 800DF454  B0 1F 30 1E */	sth r0, 0x301e(r31)
/* 800DF458  48 00 02 D4 */	b lbl_800DF72C
lbl_800DF45C:
/* 800DF45C  7F E3 FB 78 */	mr r3, r31
/* 800DF460  4B FF F7 69 */	bl changeArrowType__9daAlink_cFv
/* 800DF464  48 00 02 C8 */	b lbl_800DF72C
lbl_800DF468:
/* 800DF468  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800DF46C  28 00 00 09 */	cmplwi r0, 9
/* 800DF470  40 82 00 A8 */	bne lbl_800DF518
/* 800DF474  7F C3 F3 78 */	mr r3, r30
/* 800DF478  48 07 F0 55 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DF47C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF480  41 82 02 AC */	beq lbl_800DF72C
/* 800DF484  7F E3 FB 78 */	mr r3, r31
/* 800DF488  38 80 00 0A */	li r4, 0xa
/* 800DF48C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DF490  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800DF494  4B FC DF 15 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800DF498  7F E3 FB 78 */	mr r3, r31
/* 800DF49C  38 80 00 09 */	li r4, 9
/* 800DF4A0  4B FD 06 09 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800DF4A4  7F E3 FB 78 */	mr r3, r31
/* 800DF4A8  38 80 00 E6 */	li r4, 0xe6
/* 800DF4AC  38 A0 00 01 */	li r5, 1
/* 800DF4B0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800DF4B4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800DF4B8  4B FC FF F9 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800DF4BC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DF4C0  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DF4C4  41 82 02 68 */	beq lbl_800DF72C
/* 800DF4C8  7F E3 FB 78 */	mr r3, r31
/* 800DF4CC  38 80 00 42 */	li r4, 0x42
/* 800DF4D0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DF4D4  4B FE 0B B1 */	bl changeItemBck__9daAlink_cFUsf
/* 800DF4D8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DF4DC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800DF4E0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DF4E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800DF4E8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800DF4EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DF4F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DF4F4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DF4F8  38 80 00 01 */	li r4, 1
/* 800DF4FC  38 A0 00 01 */	li r5, 1
/* 800DF500  38 C1 00 10 */	addi r6, r1, 0x10
/* 800DF504  4B F9 06 0D */	bl StartQuake__12dVibration_cFii4cXyz
/* 800DF508  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800DF50C  60 00 00 04 */	ori r0, r0, 4
/* 800DF510  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 800DF514  48 00 02 18 */	b lbl_800DF72C
lbl_800DF518:
/* 800DF518  28 00 00 0D */	cmplwi r0, 0xd
/* 800DF51C  40 82 01 2C */	bne lbl_800DF648
/* 800DF520  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 800DF524  2C 00 00 00 */	cmpwi r0, 0
/* 800DF528  40 82 00 10 */	bne lbl_800DF538
/* 800DF52C  A8 1F 30 8E */	lha r0, 0x308e(r31)
/* 800DF530  2C 00 00 00 */	cmpwi r0, 0
/* 800DF534  40 82 00 3C */	bne lbl_800DF570
lbl_800DF538:
/* 800DF538  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 800DF53C  2C 00 00 00 */	cmpwi r0, 0
/* 800DF540  40 82 00 60 */	bne lbl_800DF5A0
/* 800DF544  7F E3 FB 78 */	mr r3, r31
/* 800DF548  4B FD 30 BD */	bl itemButton__9daAlink_cFv
/* 800DF54C  2C 03 00 00 */	cmpwi r3, 0
/* 800DF550  40 82 00 50 */	bne lbl_800DF5A0
/* 800DF554  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 800DF558  2C 00 00 00 */	cmpwi r0, 0
/* 800DF55C  40 82 00 44 */	bne lbl_800DF5A0
/* 800DF560  7F E3 FB 78 */	mr r3, r31
/* 800DF564  4B FF F8 25 */	bl cancelBowMoveRideNotAtn__9daAlink_cFv
/* 800DF568  2C 03 00 00 */	cmpwi r3, 0
/* 800DF56C  41 82 00 34 */	beq lbl_800DF5A0
lbl_800DF570:
/* 800DF570  7F E3 FB 78 */	mr r3, r31
/* 800DF574  38 80 00 02 */	li r4, 2
/* 800DF578  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800DF57C  4B FC E1 A9 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800DF580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DF584  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800DF588  80 64 5F 18 */	lwz r3, 0x5f18(r4)
/* 800DF58C  38 00 EF BF */	li r0, -4161
/* 800DF590  7C 60 00 38 */	and r0, r3, r0
/* 800DF594  90 04 5F 18 */	stw r0, 0x5f18(r4)
/* 800DF598  38 60 00 01 */	li r3, 1
/* 800DF59C  48 00 01 E4 */	b lbl_800DF780
lbl_800DF5A0:
/* 800DF5A0  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 800DF5A4  2C 00 00 00 */	cmpwi r0, 0
/* 800DF5A8  40 82 00 74 */	bne lbl_800DF61C
/* 800DF5AC  7F E3 FB 78 */	mr r3, r31
/* 800DF5B0  4B FD 30 55 */	bl itemButton__9daAlink_cFv
/* 800DF5B4  2C 03 00 00 */	cmpwi r3, 0
/* 800DF5B8  40 82 00 10 */	bne lbl_800DF5C8
/* 800DF5BC  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 800DF5C0  2C 00 00 00 */	cmpwi r0, 0
/* 800DF5C4  41 82 00 58 */	beq lbl_800DF61C
lbl_800DF5C8:
/* 800DF5C8  7F E3 FB 78 */	mr r3, r31
/* 800DF5CC  4B FD 93 65 */	bl checkReadyItem__9daAlink_cFv
/* 800DF5D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF5D4  41 82 00 48 */	beq lbl_800DF61C
/* 800DF5D8  A8 1F 30 A4 */	lha r0, 0x30a4(r31)
/* 800DF5DC  2C 00 00 00 */	cmpwi r0, 0
/* 800DF5E0  41 82 00 10 */	beq lbl_800DF5F0
/* 800DF5E4  A8 1F 30 1E */	lha r0, 0x301e(r31)
/* 800DF5E8  2C 00 00 01 */	cmpwi r0, 1
/* 800DF5EC  41 82 00 30 */	beq lbl_800DF61C
lbl_800DF5F0:
/* 800DF5F0  7F E3 FB 78 */	mr r3, r31
/* 800DF5F4  4B FF F9 C5 */	bl setBowReloadAnime__9daAlink_cFv
/* 800DF5F8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DF5FC  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DF600  40 82 00 10 */	bne lbl_800DF610
/* 800DF604  38 00 00 00 */	li r0, 0
/* 800DF608  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 800DF60C  48 00 00 24 */	b lbl_800DF630
lbl_800DF610:
/* 800DF610  7F E3 FB 78 */	mr r3, r31
/* 800DF614  4B FF F4 29 */	bl makeArrow__9daAlink_cFv
/* 800DF618  48 00 00 18 */	b lbl_800DF630
lbl_800DF61C:
/* 800DF61C  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DF620  28 00 00 5A */	cmplwi r0, 0x5a
/* 800DF624  40 82 00 0C */	bne lbl_800DF630
/* 800DF628  7F E3 FB 78 */	mr r3, r31
/* 800DF62C  4B FF F5 9D */	bl changeArrowType__9daAlink_cFv
lbl_800DF630:
/* 800DF630  A8 7F 30 1A */	lha r3, 0x301a(r31)
/* 800DF634  2C 03 00 00 */	cmpwi r3, 0
/* 800DF638  41 82 00 F4 */	beq lbl_800DF72C
/* 800DF63C  38 03 FF FF */	addi r0, r3, -1
/* 800DF640  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 800DF644  48 00 00 E8 */	b lbl_800DF72C
lbl_800DF648:
/* 800DF648  28 00 00 0C */	cmplwi r0, 0xc
/* 800DF64C  40 82 00 E0 */	bne lbl_800DF72C
/* 800DF650  C0 3F 20 58 */	lfs f1, 0x2058(r31)
/* 800DF654  C0 02 93 44 */	lfs f0, lit_7977(r2)
/* 800DF658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DF65C  4C 41 13 82 */	cror 2, 1, 2
/* 800DF660  40 82 00 10 */	bne lbl_800DF670
/* 800DF664  38 00 00 05 */	li r0, 5
/* 800DF668  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 800DF66C  48 00 00 1C */	b lbl_800DF688
lbl_800DF670:
/* 800DF670  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DF674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DF678  4C 41 13 82 */	cror 2, 1, 2
/* 800DF67C  40 82 00 0C */	bne lbl_800DF688
/* 800DF680  38 00 00 04 */	li r0, 4
/* 800DF684  98 1F 2F 96 */	stb r0, 0x2f96(r31)
lbl_800DF688:
/* 800DF688  38 7F 20 48 */	addi r3, r31, 0x2048
/* 800DF68C  48 07 EE 41 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DF690  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF694  41 82 00 44 */	beq lbl_800DF6D8
/* 800DF698  7F E3 FB 78 */	mr r3, r31
/* 800DF69C  4B FF F6 ED */	bl cancelBowMoveRideNotAtn__9daAlink_cFv
/* 800DF6A0  2C 03 00 00 */	cmpwi r3, 0
/* 800DF6A4  41 82 00 34 */	beq lbl_800DF6D8
/* 800DF6A8  7F E3 FB 78 */	mr r3, r31
/* 800DF6AC  38 80 00 02 */	li r4, 2
/* 800DF6B0  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800DF6B4  4B FC E0 71 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800DF6B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DF6BC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800DF6C0  80 64 5F 18 */	lwz r3, 0x5f18(r4)
/* 800DF6C4  38 00 EF BF */	li r0, -4161
/* 800DF6C8  7C 60 00 38 */	and r0, r3, r0
/* 800DF6CC  90 04 5F 18 */	stw r0, 0x5f18(r4)
/* 800DF6D0  38 60 00 01 */	li r3, 1
/* 800DF6D4  48 00 00 AC */	b lbl_800DF780
lbl_800DF6D8:
/* 800DF6D8  38 7F 20 48 */	addi r3, r31, 0x2048
/* 800DF6DC  48 07 ED F1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DF6E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF6E4  40 82 00 2C */	bne lbl_800DF710
/* 800DF6E8  C0 3F 20 58 */	lfs f1, 0x2058(r31)
/* 800DF6EC  3C 60 80 39 */	lis r3, m__17daAlinkHIO_bow_c0@ha
/* 800DF6F0  38 63 E6 58 */	addi r3, r3, m__17daAlinkHIO_bow_c0@l
/* 800DF6F4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800DF6F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DF6FC  40 81 00 1C */	ble lbl_800DF718
/* 800DF700  7F E3 FB 78 */	mr r3, r31
/* 800DF704  4B FD 2F 01 */	bl itemButton__9daAlink_cFv
/* 800DF708  2C 03 00 00 */	cmpwi r3, 0
/* 800DF70C  41 82 00 0C */	beq lbl_800DF718
lbl_800DF710:
/* 800DF710  7F E3 FB 78 */	mr r3, r31
/* 800DF714  4B FF F7 C9 */	bl setBowReadyAnime__9daAlink_cFv
lbl_800DF718:
/* 800DF718  A8 7F 30 1A */	lha r3, 0x301a(r31)
/* 800DF71C  2C 03 00 00 */	cmpwi r3, 0
/* 800DF720  41 82 00 0C */	beq lbl_800DF72C
/* 800DF724  38 03 FF FF */	addi r0, r3, -1
/* 800DF728  B0 1F 30 1A */	sth r0, 0x301a(r31)
lbl_800DF72C:
/* 800DF72C  A0 7F 1F BC */	lhz r3, 0x1fbc(r31)
/* 800DF730  28 03 00 0D */	cmplwi r3, 0xd
/* 800DF734  41 82 00 1C */	beq lbl_800DF750
/* 800DF738  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DF73C  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DF740  40 82 00 2C */	bne lbl_800DF76C
/* 800DF744  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 800DF748  28 00 00 0A */	cmplwi r0, 0xa
/* 800DF74C  40 82 00 20 */	bne lbl_800DF76C
lbl_800DF750:
/* 800DF750  C0 3F 33 DC */	lfs f1, 0x33dc(r31)
/* 800DF754  3C 60 80 39 */	lis r3, m__17daAlinkHIO_bow_c0@ha
/* 800DF758  38 63 E6 58 */	addi r3, r3, m__17daAlinkHIO_bow_c0@l
/* 800DF75C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800DF760  EC 01 00 2A */	fadds f0, f1, f0
/* 800DF764  D0 1F 33 DC */	stfs f0, 0x33dc(r31)
/* 800DF768  48 00 00 0C */	b lbl_800DF774
lbl_800DF76C:
/* 800DF76C  C0 1F 20 58 */	lfs f0, 0x2058(r31)
/* 800DF770  D0 1F 33 DC */	stfs f0, 0x33dc(r31)
lbl_800DF774:
/* 800DF774  7F E3 FB 78 */	mr r3, r31
/* 800DF778  38 80 00 00 */	li r4, 0
/* 800DF77C  4B FD 7A 71 */	bl cancelUpperItemReadyAnime__9daAlink_cFi
lbl_800DF780:
/* 800DF780  39 61 00 50 */	addi r11, r1, 0x50
/* 800DF784  48 28 2A A5 */	bl _restgpr_29
/* 800DF788  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800DF78C  7C 08 03 A6 */	mtlr r0
/* 800DF790  38 21 00 50 */	addi r1, r1, 0x50
/* 800DF794  4E 80 00 20 */	blr 
