lbl_80294F40:
/* 80294F40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80294F44  7C 08 02 A6 */	mflr r0
/* 80294F48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80294F4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80294F50  48 0C D2 8D */	bl _savegpr_29
/* 80294F54  7C 7D 1B 78 */	mr r29, r3
/* 80294F58  7C 9E 23 78 */	mr r30, r4
/* 80294F5C  83 E5 00 04 */	lwz r31, 4(r5)
/* 80294F60  80 05 00 00 */	lwz r0, 0(r5)
/* 80294F64  2C 00 00 0B */	cmpwi r0, 0xb
/* 80294F68  41 82 00 08 */	beq lbl_80294F70
/* 80294F6C  48 00 00 14 */	b lbl_80294F80
lbl_80294F70:
/* 80294F70  7F E5 FB 78 */	mr r5, r31
/* 80294F74  4B FF F0 55 */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80294F78  7C C3 00 D0 */	neg r6, r3
/* 80294F7C  48 00 00 0C */	b lbl_80294F88
lbl_80294F80:
/* 80294F80  38 60 00 00 */	li r3, 0
/* 80294F84  48 00 00 18 */	b lbl_80294F9C
lbl_80294F88:
/* 80294F88  7F A3 EB 78 */	mr r3, r29
/* 80294F8C  7F C4 F3 78 */	mr r4, r30
/* 80294F90  7F E5 FB 78 */	mr r5, r31
/* 80294F94  4B FF EE 31 */	bl writeReg__12JASSeqParserFP8JASTrackUlUl
/* 80294F98  38 60 00 00 */	li r3, 0
lbl_80294F9C:
/* 80294F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80294FA0  48 0C D2 89 */	bl _restgpr_29
/* 80294FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80294FA8  7C 08 03 A6 */	mtlr r0
/* 80294FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80294FB0  4E 80 00 20 */	blr 
