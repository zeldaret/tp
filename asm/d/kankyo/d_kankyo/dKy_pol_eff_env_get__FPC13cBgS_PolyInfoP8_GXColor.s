lbl_801AB7D0:
/* 801AB7D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AB7D4  7C 08 02 A6 */	mflr r0
/* 801AB7D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AB7DC  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB7E0  48 1B 69 F1 */	bl _savegpr_26
/* 801AB7E4  7C 7D 1B 79 */	or. r29, r3, r3
/* 801AB7E8  7C 9E 23 78 */	mr r30, r4
/* 801AB7EC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB7F0  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AB7F4  41 82 00 1C */	beq lbl_801AB810
/* 801AB7F8  28 1E 00 00 */	cmplwi r30, 0
/* 801AB7FC  41 82 00 14 */	beq lbl_801AB810
/* 801AB800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AB804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AB808  37 83 0F 38 */	addic. r28, r3, 0xf38
/* 801AB80C  40 82 00 0C */	bne lbl_801AB818
lbl_801AB810:
/* 801AB810  38 60 00 FF */	li r3, 0xff
/* 801AB814  48 00 01 10 */	b lbl_801AB924
lbl_801AB818:
/* 801AB818  7F 83 E3 78 */	mr r3, r28
/* 801AB81C  7F A4 EB 78 */	mr r4, r29
/* 801AB820  4B EC 96 31 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801AB824  7C 7A 1B 78 */	mr r26, r3
/* 801AB828  3B 7C 3E C8 */	addi r27, r28, 0x3ec8
/* 801AB82C  7F 63 DB 78 */	mr r3, r27
/* 801AB830  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB834  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB838  38 84 01 7A */	addi r4, r4, 0x17a
/* 801AB83C  48 1B D1 59 */	bl strcmp
/* 801AB840  2C 03 00 00 */	cmpwi r3, 0
/* 801AB844  40 82 00 28 */	bne lbl_801AB86C
/* 801AB848  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB84C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AB850  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801AB854  28 00 00 04 */	cmplwi r0, 4
/* 801AB858  40 82 00 14 */	bne lbl_801AB86C
/* 801AB85C  2C 1A 00 04 */	cmpwi r26, 4
/* 801AB860  40 82 00 50 */	bne lbl_801AB8B0
/* 801AB864  3B 40 00 0D */	li r26, 0xd
/* 801AB868  48 00 00 48 */	b lbl_801AB8B0
lbl_801AB86C:
/* 801AB86C  7F 63 DB 78 */	mr r3, r27
/* 801AB870  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB874  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB878  38 84 02 61 */	addi r4, r4, 0x261
/* 801AB87C  48 1B D1 19 */	bl strcmp
/* 801AB880  2C 03 00 00 */	cmpwi r3, 0
/* 801AB884  40 82 00 2C */	bne lbl_801AB8B0
/* 801AB888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AB88C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AB890  38 63 09 58 */	addi r3, r3, 0x958
/* 801AB894  38 80 00 03 */	li r4, 3
/* 801AB898  4B E8 90 9D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801AB89C  2C 03 00 00 */	cmpwi r3, 0
/* 801AB8A0  41 82 00 10 */	beq lbl_801AB8B0
/* 801AB8A4  2C 1A 00 0B */	cmpwi r26, 0xb
/* 801AB8A8  40 82 00 08 */	bne lbl_801AB8B0
/* 801AB8AC  3B 40 00 07 */	li r26, 7
lbl_801AB8B0:
/* 801AB8B0  7F 83 E3 78 */	mr r3, r28
/* 801AB8B4  7F A4 EB 78 */	mr r4, r29
/* 801AB8B8  4B EC 95 E9 */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801AB8BC  80 9F 12 E0 */	lwz r4, 0x12e0(r31)
/* 801AB8C0  28 04 00 00 */	cmplwi r4, 0
/* 801AB8C4  41 82 00 14 */	beq lbl_801AB8D8
/* 801AB8C8  57 40 18 38 */	slwi r0, r26, 3
/* 801AB8CC  7C 00 1A 14 */	add r0, r0, r3
/* 801AB8D0  7C 64 00 AE */	lbzx r3, r4, r0
/* 801AB8D4  48 00 00 0C */	b lbl_801AB8E0
lbl_801AB8D8:
/* 801AB8D8  38 60 00 FF */	li r3, 0xff
/* 801AB8DC  48 00 00 48 */	b lbl_801AB924
lbl_801AB8E0:
/* 801AB8E0  28 03 00 64 */	cmplwi r3, 0x64
/* 801AB8E4  41 80 00 0C */	blt lbl_801AB8F0
/* 801AB8E8  38 60 00 FF */	li r3, 0xff
/* 801AB8EC  48 00 00 38 */	b lbl_801AB924
lbl_801AB8F0:
/* 801AB8F0  80 1F 12 F4 */	lwz r0, 0x12f4(r31)
/* 801AB8F4  54 65 1D 78 */	rlwinm r5, r3, 3, 0x15, 0x1c
/* 801AB8F8  7C 80 2A 14 */	add r4, r0, r5
/* 801AB8FC  88 04 00 03 */	lbz r0, 3(r4)
/* 801AB900  98 1E 00 00 */	stb r0, 0(r30)
/* 801AB904  80 1F 12 F4 */	lwz r0, 0x12f4(r31)
/* 801AB908  7C 80 2A 14 */	add r4, r0, r5
/* 801AB90C  88 04 00 04 */	lbz r0, 4(r4)
/* 801AB910  98 1E 00 01 */	stb r0, 1(r30)
/* 801AB914  80 1F 12 F4 */	lwz r0, 0x12f4(r31)
/* 801AB918  7C 80 2A 14 */	add r4, r0, r5
/* 801AB91C  88 04 00 05 */	lbz r0, 5(r4)
/* 801AB920  98 1E 00 02 */	stb r0, 2(r30)
lbl_801AB924:
/* 801AB924  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB928  48 1B 68 F5 */	bl _restgpr_26
/* 801AB92C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AB930  7C 08 03 A6 */	mtlr r0
/* 801AB934  38 21 00 20 */	addi r1, r1, 0x20
/* 801AB938  4E 80 00 20 */	blr 
