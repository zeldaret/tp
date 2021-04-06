lbl_80672FE4:
/* 80672FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80672FE8  7C 08 02 A6 */	mflr r0
/* 80672FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80672FF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80672FF4  7C 7F 1B 78 */	mr r31, r3
/* 80672FF8  4B FF FF 8D */	bl getDoorType__12daMBdoorL1_cFv
/* 80672FFC  2C 03 00 01 */	cmpwi r3, 1
/* 80673000  40 82 00 14 */	bne lbl_80673014
/* 80673004  3C 60 80 67 */	lis r3, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 80673008  38 63 76 60 */	addi r3, r3, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 8067300C  38 63 01 72 */	addi r3, r3, 0x172
/* 80673010  48 00 00 24 */	b lbl_80673034
lbl_80673014:
/* 80673014  7F E3 FB 78 */	mr r3, r31
/* 80673018  4B FF FF 6D */	bl getDoorType__12daMBdoorL1_cFv
/* 8067301C  2C 03 00 00 */	cmpwi r3, 0
/* 80673020  38 60 00 00 */	li r3, 0
/* 80673024  40 82 00 10 */	bne lbl_80673034
/* 80673028  3C 60 80 67 */	lis r3, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 8067302C  38 63 76 60 */	addi r3, r3, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 80673030  38 63 01 81 */	addi r3, r3, 0x181
lbl_80673034:
/* 80673034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80673038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067303C  7C 08 03 A6 */	mtlr r0
/* 80673040  38 21 00 10 */	addi r1, r1, 0x10
/* 80673044  4E 80 00 20 */	blr 
