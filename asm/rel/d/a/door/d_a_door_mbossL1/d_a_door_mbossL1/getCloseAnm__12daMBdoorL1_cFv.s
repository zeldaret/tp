lbl_80673048:
/* 80673048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067304C  7C 08 02 A6 */	mflr r0
/* 80673050  90 01 00 14 */	stw r0, 0x14(r1)
/* 80673054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80673058  7C 7F 1B 78 */	mr r31, r3
/* 8067305C  4B FF FF 29 */	bl getDoorType__12daMBdoorL1_cFv
/* 80673060  2C 03 00 01 */	cmpwi r3, 1
/* 80673064  40 82 00 14 */	bne lbl_80673078
/* 80673068  3C 60 80 67 */	lis r3, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 8067306C  38 63 76 60 */	addi r3, r3, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 80673070  38 63 01 90 */	addi r3, r3, 0x190
/* 80673074  48 00 00 24 */	b lbl_80673098
lbl_80673078:
/* 80673078  7F E3 FB 78 */	mr r3, r31
/* 8067307C  4B FF FF 09 */	bl getDoorType__12daMBdoorL1_cFv
/* 80673080  2C 03 00 00 */	cmpwi r3, 0
/* 80673084  38 60 00 00 */	li r3, 0
/* 80673088  40 82 00 10 */	bne lbl_80673098
/* 8067308C  3C 60 80 67 */	lis r3, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 80673090  38 63 76 60 */	addi r3, r3, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 80673094  38 63 01 A2 */	addi r3, r3, 0x1a2
lbl_80673098:
/* 80673098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067309C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806730A0  7C 08 03 A6 */	mtlr r0
/* 806730A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806730A8  4E 80 00 20 */	blr 
