lbl_800F6E44:
/* 800F6E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6E48  7C 08 02 A6 */	mflr r0
/* 800F6E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6E54  7C 7F 1B 78 */	mr r31, r3
/* 800F6E58  38 80 00 12 */	li r4, 0x12
/* 800F6E5C  4B FB C3 F5 */	bl setDoStatus__9daAlink_cFUc
/* 800F6E60  7F E3 FB 78 */	mr r3, r31
/* 800F6E64  4B FF D9 75 */	bl canoeCommon__9daAlink_cFv
/* 800F6E68  2C 03 00 00 */	cmpwi r3, 0
/* 800F6E6C  41 82 00 0C */	beq lbl_800F6E78
/* 800F6E70  38 60 00 01 */	li r3, 1
/* 800F6E74  48 00 00 28 */	b lbl_800F6E9C
lbl_800F6E78:
/* 800F6E78  7F E3 FB 78 */	mr r3, r31
/* 800F6E7C  4B FE 7F A1 */	bl cancelBowMove__9daAlink_cFv
/* 800F6E80  7F E3 FB 78 */	mr r3, r31
/* 800F6E84  4B FF DA A1 */	bl checkNextActionCanoe__9daAlink_cFv
/* 800F6E88  2C 03 00 00 */	cmpwi r3, 0
/* 800F6E8C  40 82 00 0C */	bne lbl_800F6E98
/* 800F6E90  7F E3 FB 78 */	mr r3, r31
/* 800F6E94  4B FF 81 BD */	bl setBodyAngleRideReadyAnime__9daAlink_cFv
lbl_800F6E98:
/* 800F6E98  38 60 00 01 */	li r3, 1
lbl_800F6E9C:
/* 800F6E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F6EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F6EA4  7C 08 03 A6 */	mtlr r0
/* 800F6EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800F6EAC  4E 80 00 20 */	blr 
