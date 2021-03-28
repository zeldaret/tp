lbl_80CC8DDC:
/* 80CC8DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC8DE0  7C 08 02 A6 */	mflr r0
/* 80CC8DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC8DE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC8DEC  7C 7F 1B 78 */	mr r31, r3
/* 80CC8DF0  38 60 00 00 */	li r3, 0
/* 80CC8DF4  4B 36 3B 88 */	b getLayerNo__14dComIfG_play_cFi
/* 80CC8DF8  2C 03 00 01 */	cmpwi r3, 1
/* 80CC8DFC  40 82 00 50 */	bne lbl_80CC8E4C
/* 80CC8E00  38 00 00 01 */	li r0, 1
/* 80CC8E04  98 1F 06 17 */	stb r0, 0x617(r31)
/* 80CC8E08  7F E3 FB 78 */	mr r3, r31
/* 80CC8E0C  4B FF E6 FD */	bl setModelMtx__11daSCannon_cFv
/* 80CC8E10  88 1F 06 17 */	lbz r0, 0x617(r31)
/* 80CC8E14  54 00 10 3A */	slwi r0, r0, 2
/* 80CC8E18  7C 7F 02 14 */	add r3, r31, r0
/* 80CC8E1C  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 80CC8E20  38 03 00 24 */	addi r0, r3, 0x24
/* 80CC8E24  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CC8E28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC8E2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC8E30  3B E3 02 B0 */	addi r31, r3, 0x2b0
/* 80CC8E34  7F E3 FB 78 */	mr r3, r31
/* 80CC8E38  38 80 00 35 */	li r4, 0x35
/* 80CC8E3C  4B 36 B9 FC */	b offSwitch__12dSv_memBit_cFi
/* 80CC8E40  7F E3 FB 78 */	mr r3, r31
/* 80CC8E44  38 80 00 36 */	li r4, 0x36
/* 80CC8E48  4B 36 B9 C8 */	b onSwitch__12dSv_memBit_cFi
lbl_80CC8E4C:
/* 80CC8E4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC8E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC8E54  7C 08 03 A6 */	mtlr r0
/* 80CC8E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC8E5C  4E 80 00 20 */	blr 
