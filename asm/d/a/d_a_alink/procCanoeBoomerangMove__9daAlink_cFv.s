lbl_800F715C:
/* 800F715C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F7160  7C 08 02 A6 */	mflr r0
/* 800F7164  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F716C  7C 7F 1B 78 */	mr r31, r3
/* 800F7170  4B FC 01 75 */	bl checkItemActorPointer__9daAlink_cFv
/* 800F7174  2C 03 00 00 */	cmpwi r3, 0
/* 800F7178  40 82 00 0C */	bne lbl_800F7184
/* 800F717C  38 60 00 01 */	li r3, 1
/* 800F7180  48 00 00 74 */	b lbl_800F71F4
lbl_800F7184:
/* 800F7184  38 60 00 00 */	li r3, 0
/* 800F7188  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F718C  28 00 00 40 */	cmplwi r0, 0x40
/* 800F7190  41 82 00 0C */	beq lbl_800F719C
/* 800F7194  28 00 01 02 */	cmplwi r0, 0x102
/* 800F7198  40 82 00 14 */	bne lbl_800F71AC
lbl_800F719C:
/* 800F719C  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800F71A0  28 00 00 54 */	cmplwi r0, 0x54
/* 800F71A4  40 82 00 08 */	bne lbl_800F71AC
/* 800F71A8  38 60 00 01 */	li r3, 1
lbl_800F71AC:
/* 800F71AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F71B0  41 82 00 10 */	beq lbl_800F71C0
/* 800F71B4  7F E3 FB 78 */	mr r3, r31
/* 800F71B8  38 80 00 12 */	li r4, 0x12
/* 800F71BC  4B FB C0 95 */	bl setDoStatus__9daAlink_cFUc
lbl_800F71C0:
/* 800F71C0  7F E3 FB 78 */	mr r3, r31
/* 800F71C4  4B FF D6 15 */	bl canoeCommon__9daAlink_cFv
/* 800F71C8  2C 03 00 00 */	cmpwi r3, 0
/* 800F71CC  41 82 00 0C */	beq lbl_800F71D8
/* 800F71D0  38 60 00 01 */	li r3, 1
/* 800F71D4  48 00 00 20 */	b lbl_800F71F4
lbl_800F71D8:
/* 800F71D8  7F E3 FB 78 */	mr r3, r31
/* 800F71DC  4B FF D7 49 */	bl checkNextActionCanoe__9daAlink_cFv
/* 800F71E0  2C 03 00 00 */	cmpwi r3, 0
/* 800F71E4  40 82 00 0C */	bne lbl_800F71F0
/* 800F71E8  7F E3 FB 78 */	mr r3, r31
/* 800F71EC  4B FF 7E 65 */	bl setBodyAngleRideReadyAnime__9daAlink_cFv
lbl_800F71F0:
/* 800F71F0  38 60 00 01 */	li r3, 1
lbl_800F71F4:
/* 800F71F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F71F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F71FC  7C 08 03 A6 */	mtlr r0
/* 800F7200  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7204  4E 80 00 20 */	blr 
