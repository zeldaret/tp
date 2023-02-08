lbl_80CB8C44:
/* 80CB8C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8C48  7C 08 02 A6 */	mflr r0
/* 80CB8C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8C54  7C 7F 1B 78 */	mr r31, r3
/* 80CB8C58  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB8C5C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB8C60  40 82 00 1C */	bne lbl_80CB8C7C
/* 80CB8C64  28 1F 00 00 */	cmplwi r31, 0
/* 80CB8C68  41 82 00 08 */	beq lbl_80CB8C70
/* 80CB8C6C  4B FF FA 0D */	bl __ct__14daObjRCircle_cFv
lbl_80CB8C70:
/* 80CB8C70  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CB8C74  60 00 00 08 */	ori r0, r0, 8
/* 80CB8C78  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CB8C7C:
/* 80CB8C7C  7F E3 FB 78 */	mr r3, r31
/* 80CB8C80  4B FF FC A9 */	bl create__14daObjRCircle_cFv
/* 80CB8C84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB8C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8C8C  7C 08 03 A6 */	mtlr r0
/* 80CB8C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8C94  4E 80 00 20 */	blr 
