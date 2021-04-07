lbl_80463E30:
/* 80463E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80463E34  7C 08 02 A6 */	mflr r0
/* 80463E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80463E3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80463E40  7C 7F 1B 78 */	mr r31, r3
/* 80463E44  88 03 06 8C */	lbz r0, 0x68c(r3)
/* 80463E48  28 00 00 00 */	cmplwi r0, 0
/* 80463E4C  40 82 00 94 */	bne lbl_80463EE0
/* 80463E50  4B BD 63 51 */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80463E54  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80463E58  28 00 00 03 */	cmplwi r0, 3
/* 80463E5C  41 82 00 18 */	beq lbl_80463E74
/* 80463E60  7F E3 FB 78 */	mr r3, r31
/* 80463E64  4B BD 63 3D */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80463E68  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80463E6C  28 00 00 01 */	cmplwi r0, 1
/* 80463E70  40 82 01 04 */	bne lbl_80463F74
lbl_80463E74:
/* 80463E74  7F E3 FB 78 */	mr r3, r31
/* 80463E78  4B BD 63 7D */	bl isMsgDoor__13door_param2_cFP10fopAc_ac_c
/* 80463E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80463E80  40 82 00 F4 */	bne lbl_80463F74
/* 80463E84  7F E3 FB 78 */	mr r3, r31
/* 80463E88  4B BD 63 79 */	bl getEventNo__13door_param2_cFP10fopAc_ac_c
/* 80463E8C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80463E90  28 00 00 FF */	cmplwi r0, 0xff
/* 80463E94  41 82 00 E0 */	beq lbl_80463F74
/* 80463E98  7F E3 FB 78 */	mr r3, r31
/* 80463E9C  4B BD 63 65 */	bl getEventNo__13door_param2_cFP10fopAc_ac_c
/* 80463EA0  88 1F 06 CB */	lbz r0, 0x6cb(r31)
/* 80463EA4  7C 9F 02 14 */	add r4, r31, r0
/* 80463EA8  98 64 06 B8 */	stb r3, 0x6b8(r4)
/* 80463EAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80463EB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80463EB4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80463EB8  7F E4 FB 78 */	mr r4, r31
/* 80463EBC  88 1F 06 CB */	lbz r0, 0x6cb(r31)
/* 80463EC0  7C BF 02 14 */	add r5, r31, r0
/* 80463EC4  88 A5 06 B8 */	lbz r5, 0x6b8(r5)
/* 80463EC8  4B BE 37 D1 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80463ECC  88 1F 06 CB */	lbz r0, 0x6cb(r31)
/* 80463ED0  54 00 08 3C */	slwi r0, r0, 1
/* 80463ED4  7C 9F 02 14 */	add r4, r31, r0
/* 80463ED8  B0 64 06 92 */	sth r3, 0x692(r4)
/* 80463EDC  48 00 00 98 */	b lbl_80463F74
lbl_80463EE0:
/* 80463EE0  28 00 00 01 */	cmplwi r0, 1
/* 80463EE4  40 82 00 90 */	bne lbl_80463F74
/* 80463EE8  4B BD 62 C5 */	bl getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80463EEC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80463EF0  28 00 00 03 */	cmplwi r0, 3
/* 80463EF4  41 82 00 18 */	beq lbl_80463F0C
/* 80463EF8  7F E3 FB 78 */	mr r3, r31
/* 80463EFC  4B BD 62 B1 */	bl getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80463F00  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80463F04  28 00 00 01 */	cmplwi r0, 1
/* 80463F08  40 82 00 6C */	bne lbl_80463F74
lbl_80463F0C:
/* 80463F0C  7F E3 FB 78 */	mr r3, r31
/* 80463F10  4B BD 62 E5 */	bl isMsgDoor__13door_param2_cFP10fopAc_ac_c
/* 80463F14  2C 03 00 00 */	cmpwi r3, 0
/* 80463F18  40 82 00 5C */	bne lbl_80463F74
/* 80463F1C  7F E3 FB 78 */	mr r3, r31
/* 80463F20  4B BD 62 ED */	bl getEventNo2__13door_param2_cFP10fopAc_ac_c
/* 80463F24  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80463F28  28 00 00 FF */	cmplwi r0, 0xff
/* 80463F2C  41 82 00 48 */	beq lbl_80463F74
/* 80463F30  7F E3 FB 78 */	mr r3, r31
/* 80463F34  4B BD 62 D9 */	bl getEventNo2__13door_param2_cFP10fopAc_ac_c
/* 80463F38  88 1F 06 CB */	lbz r0, 0x6cb(r31)
/* 80463F3C  7C 9F 02 14 */	add r4, r31, r0
/* 80463F40  98 64 06 B8 */	stb r3, 0x6b8(r4)
/* 80463F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80463F48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80463F4C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80463F50  7F E4 FB 78 */	mr r4, r31
/* 80463F54  88 1F 06 CB */	lbz r0, 0x6cb(r31)
/* 80463F58  7C BF 02 14 */	add r5, r31, r0
/* 80463F5C  88 A5 06 B8 */	lbz r5, 0x6b8(r5)
/* 80463F60  4B BE 37 39 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80463F64  88 1F 06 CB */	lbz r0, 0x6cb(r31)
/* 80463F68  54 00 08 3C */	slwi r0, r0, 1
/* 80463F6C  7C 9F 02 14 */	add r4, r31, r0
/* 80463F70  B0 64 06 92 */	sth r3, 0x692(r4)
lbl_80463F74:
/* 80463F74  88 BF 06 CB */	lbz r5, 0x6cb(r31)
/* 80463F78  7F E3 FB 78 */	mr r3, r31
/* 80463F7C  54 A0 08 3C */	slwi r0, r5, 1
/* 80463F80  7C 9F 02 14 */	add r4, r31, r0
/* 80463F84  A8 84 06 92 */	lha r4, 0x692(r4)
/* 80463F88  7C BF 2A 14 */	add r5, r31, r5
/* 80463F8C  88 A5 06 B8 */	lbz r5, 0x6b8(r5)
/* 80463F90  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80463F94  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80463F98  38 E0 00 00 */	li r7, 0
/* 80463F9C  39 00 00 01 */	li r8, 1
/* 80463FA0  4B BB 76 DD */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80463FA4  38 60 00 01 */	li r3, 1
/* 80463FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80463FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80463FB0  7C 08 03 A6 */	mtlr r0
/* 80463FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80463FB8  4E 80 00 20 */	blr 
