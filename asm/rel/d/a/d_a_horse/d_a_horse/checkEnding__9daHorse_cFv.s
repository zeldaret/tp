lbl_8083940C:
/* 8083940C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80839410  7C 08 02 A6 */	mflr r0
/* 80839414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80839418  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8083941C  3B E0 00 00 */	li r31, 0
/* 80839420  3C 60 80 84 */	lis r3, stringBase0@ha
/* 80839424  38 63 58 5C */	addi r3, r3, stringBase0@l
/* 80839428  4B 86 46 38 */	b checkStageName__9daAlink_cFPCc
/* 8083942C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80839430  41 82 00 14 */	beq lbl_80839444
/* 80839434  38 60 00 00 */	li r3, 0
/* 80839438  4B 7F 35 44 */	b getLayerNo__14dComIfG_play_cFi
/* 8083943C  2C 03 00 04 */	cmpwi r3, 4
/* 80839440  41 82 00 3C */	beq lbl_8083947C
lbl_80839444:
/* 80839444  3C 60 80 84 */	lis r3, stringBase0@ha
/* 80839448  38 63 58 5C */	addi r3, r3, stringBase0@l
/* 8083944C  38 63 00 08 */	addi r3, r3, 8
/* 80839450  4B 86 46 10 */	b checkStageName__9daAlink_cFPCc
/* 80839454  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80839458  41 82 00 28 */	beq lbl_80839480
/* 8083945C  38 60 00 00 */	li r3, 0
/* 80839460  4B 7F 35 1C */	b getLayerNo__14dComIfG_play_cFi
/* 80839464  2C 03 00 0C */	cmpwi r3, 0xc
/* 80839468  40 82 00 18 */	bne lbl_80839480
/* 8083946C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80839470  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80839474  2C 00 00 01 */	cmpwi r0, 1
/* 80839478  40 82 00 08 */	bne lbl_80839480
lbl_8083947C:
/* 8083947C  3B E0 00 01 */	li r31, 1
lbl_80839480:
/* 80839480  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80839484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80839488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083948C  7C 08 03 A6 */	mtlr r0
/* 80839490  38 21 00 10 */	addi r1, r1, 0x10
/* 80839494  4E 80 00 20 */	blr 
