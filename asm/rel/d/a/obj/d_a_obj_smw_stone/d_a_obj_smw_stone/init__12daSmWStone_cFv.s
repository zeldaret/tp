lbl_80CDED30:
/* 80CDED30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDED34  7C 08 02 A6 */	mflr r0
/* 80CDED38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDED3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDED40  7C 7F 1B 78 */	mr r31, r3
/* 80CDED44  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CDED48  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CDED4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDED50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDED54  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CDED58  7C 05 07 74 */	extsb r5, r0
/* 80CDED5C  4B 35 66 05 */	bl isSwitch__10dSv_info_cCFii
/* 80CDED60  2C 03 00 00 */	cmpwi r3, 0
/* 80CDED64  41 82 00 10 */	beq lbl_80CDED74
/* 80CDED68  38 00 00 01 */	li r0, 1
/* 80CDED6C  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80CDED70  48 00 00 0C */	b lbl_80CDED7C
lbl_80CDED74:
/* 80CDED74  38 00 00 00 */	li r0, 0
/* 80CDED78  98 1F 05 C4 */	stb r0, 0x5c4(r31)
lbl_80CDED7C:
/* 80CDED7C  38 00 00 00 */	li r0, 0
/* 80CDED80  98 1F 05 C5 */	stb r0, 0x5c5(r31)
/* 80CDED84  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 80CDED88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDED8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDED90  7C 08 03 A6 */	mtlr r0
/* 80CDED94  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDED98  4E 80 00 20 */	blr 
