lbl_800B9254:
/* 800B9254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B9258  7C 08 02 A6 */	mflr r0
/* 800B925C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B9260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B9264  93 C1 00 08 */	stw r30, 8(r1)
/* 800B9268  7C 7E 1B 78 */	mr r30, r3
/* 800B926C  3B E0 00 00 */	li r31, 0
/* 800B9270  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800B9274  28 00 FF FF */	cmplwi r0, 0xffff
/* 800B9278  41 82 00 38 */	beq lbl_800B92B0
/* 800B927C  28 00 02 3F */	cmplwi r0, 0x23f
/* 800B9280  41 82 00 30 */	beq lbl_800B92B0
/* 800B9284  48 00 01 15 */	bl checkWindDashAnime__9daAlink_cCFv
/* 800B9288  2C 03 00 00 */	cmpwi r3, 0
/* 800B928C  40 82 00 24 */	bne lbl_800B92B0
/* 800B9290  7F C3 F3 78 */	mr r3, r30
/* 800B9294  48 00 01 39 */	bl checkSwordTwirlAnime__9daAlink_cCFv
/* 800B9298  2C 03 00 00 */	cmpwi r3, 0
/* 800B929C  40 82 00 14 */	bne lbl_800B92B0
/* 800B92A0  7F C3 F3 78 */	mr r3, r30
/* 800B92A4  48 05 79 C9 */	bl checkKandelaarEquipAnime__9daAlink_cCFv
/* 800B92A8  2C 03 00 00 */	cmpwi r3, 0
/* 800B92AC  41 82 00 08 */	beq lbl_800B92B4
lbl_800B92B0:
/* 800B92B0  3B E0 00 01 */	li r31, 1
lbl_800B92B4:
/* 800B92B4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800B92B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B92BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B92C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B92C4  7C 08 03 A6 */	mtlr r0
/* 800B92C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800B92CC  4E 80 00 20 */	blr 
