lbl_80D02E7C:
/* 80D02E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D02E80  7C 08 02 A6 */	mflr r0
/* 80D02E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02E88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D02E8C  7C 7F 1B 78 */	mr r31, r3
/* 80D02E90  88 83 05 C9 */	lbz r4, 0x5c9(r3)
/* 80D02E94  28 04 00 FF */	cmplwi r4, 0xff
/* 80D02E98  41 82 00 64 */	beq lbl_80D02EFC
/* 80D02E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D02EA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D02EA4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D02EA8  7C 05 07 74 */	extsb r5, r0
/* 80D02EAC  4B 33 24 B4 */	b isSwitch__10dSv_info_cCFii
/* 80D02EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80D02EB4  41 82 00 48 */	beq lbl_80D02EFC
/* 80D02EB8  38 00 00 00 */	li r0, 0
/* 80D02EBC  98 1F 07 79 */	stb r0, 0x779(r31)
/* 80D02EC0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D02EC4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D02EC8  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D02ECC  41 82 00 18 */	beq lbl_80D02EE4
/* 80D02ED0  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80D02ED4  38 A0 00 FF */	li r5, 0xff
/* 80D02ED8  38 C0 00 01 */	li r6, 1
/* 80D02EDC  4B 34 5A 64 */	b orderEvent__17dEvLib_callback_cFiii
/* 80D02EE0  48 00 00 94 */	b lbl_80D02F74
lbl_80D02EE4:
/* 80D02EE4  7F E3 FB 78 */	mr r3, r31
/* 80D02EE8  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80D02EEC  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80D02EF0  7D 89 03 A6 */	mtctr r12
/* 80D02EF4  4E 80 04 21 */	bctrl 
/* 80D02EF8  48 00 00 7C */	b lbl_80D02F74
lbl_80D02EFC:
/* 80D02EFC  38 7F 06 08 */	addi r3, r31, 0x608
/* 80D02F00  4B 38 15 60 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80D02F04  28 03 00 00 */	cmplwi r3, 0
/* 80D02F08  41 82 00 6C */	beq lbl_80D02F74
/* 80D02F0C  38 7F 06 08 */	addi r3, r31, 0x608
/* 80D02F10  4B 38 16 38 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80D02F14  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80D02F18  28 00 00 20 */	cmplwi r0, 0x20
/* 80D02F1C  40 82 00 44 */	bne lbl_80D02F60
/* 80D02F20  38 00 00 00 */	li r0, 0
/* 80D02F24  98 1F 07 79 */	stb r0, 0x779(r31)
/* 80D02F28  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D02F2C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D02F30  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D02F34  41 82 00 18 */	beq lbl_80D02F4C
/* 80D02F38  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80D02F3C  38 A0 00 FF */	li r5, 0xff
/* 80D02F40  38 C0 00 01 */	li r6, 1
/* 80D02F44  4B 34 59 FC */	b orderEvent__17dEvLib_callback_cFiii
/* 80D02F48  48 00 00 18 */	b lbl_80D02F60
lbl_80D02F4C:
/* 80D02F4C  7F E3 FB 78 */	mr r3, r31
/* 80D02F50  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80D02F54  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80D02F58  7D 89 03 A6 */	mtctr r12
/* 80D02F5C  4E 80 04 21 */	bctrl 
lbl_80D02F60:
/* 80D02F60  38 7F 06 08 */	addi r3, r31, 0x608
/* 80D02F64  81 9F 06 44 */	lwz r12, 0x644(r31)
/* 80D02F68  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D02F6C  7D 89 03 A6 */	mtctr r12
/* 80D02F70  4E 80 04 21 */	bctrl 
lbl_80D02F74:
/* 80D02F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D02F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D02F7C  7C 08 03 A6 */	mtlr r0
/* 80D02F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02F84  4E 80 00 20 */	blr 
