lbl_801AB668:
/* 801AB668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AB66C  7C 08 02 A6 */	mflr r0
/* 801AB670  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AB674  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB678  48 1B 6B 59 */	bl _savegpr_26
/* 801AB67C  7C 7D 1B 79 */	or. r29, r3, r3
/* 801AB680  7C 9E 23 78 */	mr r30, r4
/* 801AB684  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AB688  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 801AB68C  41 82 00 1C */	beq lbl_801AB6A8
/* 801AB690  28 1E 00 00 */	cmplwi r30, 0
/* 801AB694  41 82 00 14 */	beq lbl_801AB6A8
/* 801AB698  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AB69C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AB6A0  37 83 0F 38 */	addic. r28, r3, 0xf38
/* 801AB6A4  40 82 00 0C */	bne lbl_801AB6B0
lbl_801AB6A8:
/* 801AB6A8  38 60 00 FF */	li r3, 0xff
/* 801AB6AC  48 00 01 0C */	b lbl_801AB7B8
lbl_801AB6B0:
/* 801AB6B0  7F 83 E3 78 */	mr r3, r28
/* 801AB6B4  7F A4 EB 78 */	mr r4, r29
/* 801AB6B8  4B EC 97 99 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801AB6BC  7C 7A 1B 78 */	mr r26, r3
/* 801AB6C0  3B 7C 3E C8 */	addi r27, r28, 0x3ec8
/* 801AB6C4  7F 63 DB 78 */	mr r3, r27
/* 801AB6C8  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AB6CC  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AB6D0  38 84 01 7A */	addi r4, r4, 0x17a
/* 801AB6D4  48 1B D2 C1 */	bl strcmp
/* 801AB6D8  2C 03 00 00 */	cmpwi r3, 0
/* 801AB6DC  40 82 00 28 */	bne lbl_801AB704
/* 801AB6E0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AB6E4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801AB6E8  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801AB6EC  28 00 00 04 */	cmplwi r0, 4
/* 801AB6F0  40 82 00 14 */	bne lbl_801AB704
/* 801AB6F4  2C 1A 00 04 */	cmpwi r26, 4
/* 801AB6F8  40 82 00 50 */	bne lbl_801AB748
/* 801AB6FC  3B 40 00 0D */	li r26, 0xd
/* 801AB700  48 00 00 48 */	b lbl_801AB748
lbl_801AB704:
/* 801AB704  7F 63 DB 78 */	mr r3, r27
/* 801AB708  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AB70C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AB710  38 84 02 61 */	addi r4, r4, 0x261
/* 801AB714  48 1B D2 81 */	bl strcmp
/* 801AB718  2C 03 00 00 */	cmpwi r3, 0
/* 801AB71C  40 82 00 2C */	bne lbl_801AB748
/* 801AB720  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AB724  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AB728  38 63 09 58 */	addi r3, r3, 0x958
/* 801AB72C  38 80 00 03 */	li r4, 3
/* 801AB730  4B E8 92 05 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801AB734  2C 03 00 00 */	cmpwi r3, 0
/* 801AB738  41 82 00 10 */	beq lbl_801AB748
/* 801AB73C  2C 1A 00 0B */	cmpwi r26, 0xb
/* 801AB740  40 82 00 08 */	bne lbl_801AB748
/* 801AB744  3B 40 00 07 */	li r26, 7
lbl_801AB748:
/* 801AB748  7F 83 E3 78 */	mr r3, r28
/* 801AB74C  7F A4 EB 78 */	mr r4, r29
/* 801AB750  4B EC 97 51 */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801AB754  80 9F 12 E0 */	lwz r4, 0x12e0(r31)
/* 801AB758  28 04 00 00 */	cmplwi r4, 0
/* 801AB75C  41 82 00 14 */	beq lbl_801AB770
/* 801AB760  57 40 18 38 */	slwi r0, r26, 3
/* 801AB764  7C 00 1A 14 */	add r0, r0, r3
/* 801AB768  7C 64 00 AE */	lbzx r3, r4, r0
/* 801AB76C  48 00 00 0C */	b lbl_801AB778
lbl_801AB770:
/* 801AB770  38 60 00 FF */	li r3, 0xff
/* 801AB774  48 00 00 44 */	b lbl_801AB7B8
lbl_801AB778:
/* 801AB778  28 03 00 64 */	cmplwi r3, 0x64
/* 801AB77C  41 80 00 0C */	blt lbl_801AB788
/* 801AB780  38 60 00 FF */	li r3, 0xff
/* 801AB784  48 00 00 34 */	b lbl_801AB7B8
lbl_801AB788:
/* 801AB788  80 9F 12 F4 */	lwz r4, 0x12f4(r31)
/* 801AB78C  54 65 1D 78 */	rlwinm r5, r3, 3, 0x15, 0x1c
/* 801AB790  7C 04 28 AE */	lbzx r0, r4, r5
/* 801AB794  98 1E 00 00 */	stb r0, 0(r30)
/* 801AB798  80 1F 12 F4 */	lwz r0, 0x12f4(r31)
/* 801AB79C  7C 80 2A 14 */	add r4, r0, r5
/* 801AB7A0  88 04 00 01 */	lbz r0, 1(r4)
/* 801AB7A4  98 1E 00 01 */	stb r0, 1(r30)
/* 801AB7A8  80 1F 12 F4 */	lwz r0, 0x12f4(r31)
/* 801AB7AC  7C 80 2A 14 */	add r4, r0, r5
/* 801AB7B0  88 04 00 02 */	lbz r0, 2(r4)
/* 801AB7B4  98 1E 00 02 */	stb r0, 2(r30)
lbl_801AB7B8:
/* 801AB7B8  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB7BC  48 1B 6A 61 */	bl _restgpr_26
/* 801AB7C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AB7C4  7C 08 03 A6 */	mtlr r0
/* 801AB7C8  38 21 00 20 */	addi r1, r1, 0x20
/* 801AB7CC  4E 80 00 20 */	blr 
