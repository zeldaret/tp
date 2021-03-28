lbl_80035590:
/* 80035590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035594  7C 08 02 A6 */	mflr r0
/* 80035598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003559C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800355A0  93 C1 00 08 */	stw r30, 8(r1)
/* 800355A4  7C 7E 1B 78 */	mr r30, r3
/* 800355A8  7C 9F 23 78 */	mr r31, r4
/* 800355AC  2C 1F FF FF */	cmpwi r31, -1
/* 800355B0  41 82 00 0C */	beq lbl_800355BC
/* 800355B4  2C 1F 00 FF */	cmpwi r31, 0xff
/* 800355B8  40 82 00 0C */	bne lbl_800355C4
lbl_800355BC:
/* 800355BC  38 60 00 00 */	li r3, 0
/* 800355C0  48 00 00 6C */	b lbl_8003562C
lbl_800355C4:
/* 800355C4  2C 1F 00 80 */	cmpwi r31, 0x80
/* 800355C8  40 80 00 10 */	bge lbl_800355D8
/* 800355CC  38 7E 09 78 */	addi r3, r30, 0x978
/* 800355D0  4B FF F6 A5 */	bl isItem__12dSv_danBit_cCFi
/* 800355D4  48 00 00 58 */	b lbl_8003562C
lbl_800355D8:
/* 800355D8  2C 1F 00 A0 */	cmpwi r31, 0xa0
/* 800355DC  40 80 00 14 */	bge lbl_800355F0
/* 800355E0  38 7E 09 58 */	addi r3, r30, 0x958
/* 800355E4  38 9F FF 80 */	addi r4, r31, -128
/* 800355E8  4B FF F3 05 */	bl isItem__12dSv_memBit_cCFi
/* 800355EC  48 00 00 40 */	b lbl_8003562C
lbl_800355F0:
/* 800355F0  7C A3 2B 78 */	mr r3, r5
/* 800355F4  4B FF 83 BD */	bl getZoneNo__20dStage_roomControl_cFi
/* 800355F8  2C 1F 00 C0 */	cmpwi r31, 0xc0
/* 800355FC  40 80 00 1C */	bge lbl_80035618
/* 80035600  54 63 28 34 */	slwi r3, r3, 5
/* 80035604  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 80035608  7C 7E 1A 14 */	add r3, r30, r3
/* 8003560C  38 9F FF 60 */	addi r4, r31, -160
/* 80035610  4B FF F8 41 */	bl isItem__13dSv_zoneBit_cCFi
/* 80035614  48 00 00 18 */	b lbl_8003562C
lbl_80035618:
/* 80035618  54 63 28 34 */	slwi r3, r3, 5
/* 8003561C  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 80035620  7C 7E 1A 14 */	add r3, r30, r3
/* 80035624  38 9F FF 40 */	addi r4, r31, -192
/* 80035628  4B FF F8 71 */	bl isOneItem__13dSv_zoneBit_cCFi
lbl_8003562C:
/* 8003562C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035630  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035638  7C 08 03 A6 */	mtlr r0
/* 8003563C  38 21 00 10 */	addi r1, r1, 0x10
/* 80035640  4E 80 00 20 */	blr 
