lbl_800DF798:
/* 800DF798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DF79C  7C 08 02 A6 */	mflr r0
/* 800DF7A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DF7A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DF7A8  7C 7F 1B 78 */	mr r31, r3
/* 800DF7AC  4B FF F2 3D */	bl checkBowAnime__9daAlink_cCFv
/* 800DF7B0  2C 03 00 00 */	cmpwi r3, 0
/* 800DF7B4  41 82 00 1C */	beq lbl_800DF7D0
/* 800DF7B8  7F E3 FB 78 */	mr r3, r31
/* 800DF7BC  4B FF F9 01 */	bl checkUpperItemActionBow__9daAlink_cFv
/* 800DF7C0  7F E3 FB 78 */	mr r3, r31
/* 800DF7C4  38 80 00 00 */	li r4, 0
/* 800DF7C8  4B FD BA E9 */	bl setBodyAngleXReadyAnime__9daAlink_cFi
/* 800DF7CC  48 00 00 34 */	b lbl_800DF800
lbl_800DF7D0:
/* 800DF7D0  7F E3 FB 78 */	mr r3, r31
/* 800DF7D4  4B FD 91 5D */	bl checkReadyItem__9daAlink_cFv
/* 800DF7D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DF7DC  41 82 00 24 */	beq lbl_800DF800
/* 800DF7E0  7F E3 FB 78 */	mr r3, r31
/* 800DF7E4  4B FD 2E 51 */	bl itemTrigger__9daAlink_cFv
/* 800DF7E8  2C 03 00 00 */	cmpwi r3, 0
/* 800DF7EC  41 82 00 14 */	beq lbl_800DF800
/* 800DF7F0  7F E3 FB 78 */	mr r3, r31
/* 800DF7F4  4B FF F6 E9 */	bl setBowReadyAnime__9daAlink_cFv
/* 800DF7F8  38 00 00 00 */	li r0, 0
/* 800DF7FC  B0 1F 30 1A */	sth r0, 0x301a(r31)
lbl_800DF800:
/* 800DF800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DF804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DF808  7C 08 03 A6 */	mtlr r0
/* 800DF80C  38 21 00 10 */	addi r1, r1, 0x10
/* 800DF810  4E 80 00 20 */	blr 
