lbl_800F10F8:
/* 800F10F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F10FC  7C 08 02 A6 */	mflr r0
/* 800F1100  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F1104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F1108  93 C1 00 08 */	stw r30, 8(r1)
/* 800F110C  7C 7E 1B 78 */	mr r30, r3
/* 800F1110  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F1114  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F1118  83 E4 5D B8 */	lwz r31, 0x5db8(r4)
/* 800F111C  4B FF C9 09 */	bl setSyncRidePos__9daAlink_cFv
/* 800F1120  2C 03 00 00 */	cmpwi r3, 0
/* 800F1124  40 82 00 0C */	bne lbl_800F1130
/* 800F1128  38 60 00 01 */	li r3, 1
/* 800F112C  48 00 00 44 */	b lbl_800F1170
lbl_800F1130:
/* 800F1130  38 60 00 00 */	li r3, 0
/* 800F1134  88 1F 16 B4 */	lbz r0, 0x16b4(r31)
/* 800F1138  28 00 00 05 */	cmplwi r0, 5
/* 800F113C  40 82 00 14 */	bne lbl_800F1150
/* 800F1140  A8 1F 17 1A */	lha r0, 0x171a(r31)
/* 800F1144  2C 00 00 00 */	cmpwi r0, 0
/* 800F1148  40 82 00 08 */	bne lbl_800F1150
/* 800F114C  38 60 00 01 */	li r3, 1
lbl_800F1150:
/* 800F1150  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F1154  41 82 00 10 */	beq lbl_800F1164
/* 800F1158  7F C3 F3 78 */	mr r3, r30
/* 800F115C  48 00 00 2D */	bl procHorseLandInit__9daAlink_cFv
/* 800F1160  48 00 00 0C */	b lbl_800F116C
lbl_800F1164:
/* 800F1164  7F C3 F3 78 */	mr r3, r30
/* 800F1168  4B FF C9 11 */	bl setHorseTurnAnime__9daAlink_cFv
lbl_800F116C:
/* 800F116C  38 60 00 01 */	li r3, 1
lbl_800F1170:
/* 800F1170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F1174  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F1178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F117C  7C 08 03 A6 */	mtlr r0
/* 800F1180  38 21 00 10 */	addi r1, r1, 0x10
/* 800F1184  4E 80 00 20 */	blr 
