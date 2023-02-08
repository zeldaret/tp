lbl_80671DE4:
/* 80671DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80671DE8  7C 08 02 A6 */	mflr r0
/* 80671DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80671DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80671DF4  7C 7F 1B 78 */	mr r31, r3
/* 80671DF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80671DFC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80671E00  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 80671E04  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80671E08  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80671E0C  41 82 00 0C */	beq lbl_80671E18
/* 80671E10  38 60 00 00 */	li r3, 0
/* 80671E14  48 00 00 48 */	b lbl_80671E5C
lbl_80671E18:
/* 80671E18  38 64 09 58 */	addi r3, r4, 0x958
/* 80671E1C  38 80 00 02 */	li r4, 2
/* 80671E20  4B 9C 2B 15 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80671E24  2C 03 00 00 */	cmpwi r3, 0
/* 80671E28  40 82 00 0C */	bne lbl_80671E34
/* 80671E2C  38 60 00 00 */	li r3, 0
/* 80671E30  48 00 00 2C */	b lbl_80671E5C
lbl_80671E34:
/* 80671E34  7F E3 FB 78 */	mr r3, r31
/* 80671E38  4B FF FF 0D */	bl checkFront__11daBdoorL5_cFv
/* 80671E3C  2C 03 00 00 */	cmpwi r3, 0
/* 80671E40  40 82 00 0C */	bne lbl_80671E4C
/* 80671E44  38 60 00 00 */	li r3, 0
/* 80671E48  48 00 00 14 */	b lbl_80671E5C
lbl_80671E4C:
/* 80671E4C  7F E3 FB 78 */	mr r3, r31
/* 80671E50  4B FF FD C5 */	bl checkArea__11daBdoorL5_cFv
/* 80671E54  30 03 FF FF */	addic r0, r3, -1
/* 80671E58  7C 60 19 10 */	subfe r3, r0, r3
lbl_80671E5C:
/* 80671E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80671E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80671E64  7C 08 03 A6 */	mtlr r0
/* 80671E68  38 21 00 10 */	addi r1, r1, 0x10
/* 80671E6C  4E 80 00 20 */	blr 
