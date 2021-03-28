lbl_8021CA04:
/* 8021CA04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021CA08  7C 08 02 A6 */	mflr r0
/* 8021CA0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021CA10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021CA14  38 60 00 00 */	li r3, 0
/* 8021CA18  4B E1 28 F9 */	bl dComIfGs_setWarpMarkFlag__FUc
/* 8021CA1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021CA20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021CA24  38 00 FF FF */	li r0, -1
/* 8021CA28  98 03 00 98 */	stb r0, 0x98(r3)
/* 8021CA2C  3B E3 00 9C */	addi r31, r3, 0x9c
/* 8021CA30  7F E3 FB 78 */	mr r3, r31
/* 8021CA34  38 80 00 12 */	li r4, 0x12
/* 8021CA38  38 A0 00 01 */	li r5, 1
/* 8021CA3C  4B E1 65 F5 */	bl getItem__17dSv_player_item_cCFib
/* 8021CA40  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8021CA44  28 00 00 EC */	cmplwi r0, 0xec
/* 8021CA48  41 82 00 14 */	beq lbl_8021CA5C
/* 8021CA4C  7F E3 FB 78 */	mr r3, r31
/* 8021CA50  38 80 00 12 */	li r4, 0x12
/* 8021CA54  38 A0 00 25 */	li r5, 0x25
/* 8021CA58  4B E1 65 61 */	bl setItem__17dSv_player_item_cFiUc
lbl_8021CA5C:
/* 8021CA5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021CA60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021CA64  7C 08 03 A6 */	mtlr r0
/* 8021CA68  38 21 00 10 */	addi r1, r1, 0x10
/* 8021CA6C  4E 80 00 20 */	blr 
