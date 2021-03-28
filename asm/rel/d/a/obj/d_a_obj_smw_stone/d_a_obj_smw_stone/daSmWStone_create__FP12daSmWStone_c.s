lbl_80CDEE28:
/* 80CDEE28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDEE2C  7C 08 02 A6 */	mflr r0
/* 80CDEE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDEE34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDEE38  7C 7F 1B 78 */	mr r31, r3
/* 80CDEE3C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CDEE40  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CDEE44  40 82 00 1C */	bne lbl_80CDEE60
/* 80CDEE48  28 1F 00 00 */	cmplwi r31, 0
/* 80CDEE4C  41 82 00 08 */	beq lbl_80CDEE54
/* 80CDEE50  4B FF F6 E9 */	bl __ct__12daSmWStone_cFv
lbl_80CDEE54:
/* 80CDEE54  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CDEE58  60 00 00 08 */	ori r0, r0, 8
/* 80CDEE5C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CDEE60:
/* 80CDEE60  7F E3 FB 78 */	mr r3, r31
/* 80CDEE64  4B FF F7 B1 */	bl create__12daSmWStone_cFv
/* 80CDEE68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDEE6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDEE70  7C 08 03 A6 */	mtlr r0
/* 80CDEE74  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDEE78  4E 80 00 20 */	blr 
