lbl_8098FF30:
/* 8098FF30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098FF34  7C 08 02 A6 */	mflr r0
/* 8098FF38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098FF3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098FF40  3B E0 00 00 */	li r31, 0
/* 8098FF44  80 04 00 00 */	lwz r0, 0(r4)
/* 8098FF48  2C 00 00 14 */	cmpwi r0, 0x14
/* 8098FF4C  41 82 00 28 */	beq lbl_8098FF74
/* 8098FF50  40 80 00 10 */	bge lbl_8098FF60
/* 8098FF54  2C 00 00 0A */	cmpwi r0, 0xa
/* 8098FF58  41 82 00 14 */	beq lbl_8098FF6C
/* 8098FF5C  48 00 00 58 */	b lbl_8098FFB4
lbl_8098FF60:
/* 8098FF60  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8098FF64  41 82 00 3C */	beq lbl_8098FFA0
/* 8098FF68  48 00 00 4C */	b lbl_8098FFB4
lbl_8098FF6C:
/* 8098FF6C  38 60 00 01 */	li r3, 1
/* 8098FF70  48 00 00 4C */	b lbl_8098FFBC
lbl_8098FF74:
/* 8098FF74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098FF78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8098FF7C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8098FF80  4B 69 CC 5C */	b getTimerPtr__14dComIfG_play_cFv
/* 8098FF84  28 03 00 00 */	cmplwi r3, 0
/* 8098FF88  41 82 00 30 */	beq lbl_8098FFB8
/* 8098FF8C  38 60 00 06 */	li r3, 6
/* 8098FF90  38 80 00 00 */	li r4, 0
/* 8098FF94  4B 69 F5 98 */	b dComIfG_TimerStart__Fis
/* 8098FF98  3B E0 00 01 */	li r31, 1
/* 8098FF9C  48 00 00 1C */	b lbl_8098FFB8
lbl_8098FFA0:
/* 8098FFA0  4B 8D 12 50 */	b dTimer_isStart__Fv
/* 8098FFA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8098FFA8  41 82 00 10 */	beq lbl_8098FFB8
/* 8098FFAC  3B E0 00 01 */	li r31, 1
/* 8098FFB0  48 00 00 08 */	b lbl_8098FFB8
lbl_8098FFB4:
/* 8098FFB4  3B E0 00 01 */	li r31, 1
lbl_8098FFB8:
/* 8098FFB8  7F E3 FB 78 */	mr r3, r31
lbl_8098FFBC:
/* 8098FFBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098FFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098FFC4  7C 08 03 A6 */	mtlr r0
/* 8098FFC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8098FFCC  4E 80 00 20 */	blr 
