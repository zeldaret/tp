lbl_80028FB4:
/* 80028FB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80028FB8  7C 08 02 A6 */	mflr r0
/* 80028FBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80028FC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80028FC4  48 33 92 19 */	bl _savegpr_29
/* 80028FC8  7C 7D 1B 78 */	mr r29, r3
/* 80028FCC  7C 9E 23 78 */	mr r30, r4
/* 80028FD0  7C BF 2B 78 */	mr r31, r5
/* 80028FD4  4B FF FB E1 */	bl isDrawOutSideTrim__15renderingAmap_cFv
/* 80028FD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80028FDC  41 82 00 28 */	beq lbl_80029004
/* 80028FE0  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 80028FE4  2C 00 00 02 */	cmpwi r0, 2
/* 80028FE8  41 82 00 1C */	beq lbl_80029004
/* 80028FEC  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80028FF0  54 04 10 3A */	slwi r4, r0, 2
/* 80028FF4  3C 60 80 38 */	lis r3, colorTable@ha /* 0x80378EF8@ha */
/* 80028FF8  38 03 8E F8 */	addi r0, r3, colorTable@l /* 0x80378EF8@l */
/* 80028FFC  7C 60 22 14 */	add r3, r0, r4
/* 80029000  48 00 00 20 */	b lbl_80029020
lbl_80029004:
/* 80029004  7F A3 EB 78 */	mr r3, r29
/* 80029008  7F C4 F3 78 */	mr r4, r30
/* 8002900C  7F E5 FB 78 */	mr r5, r31
/* 80029010  81 9D 00 00 */	lwz r12, 0(r29)
/* 80029014  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80029018  7D 89 03 A6 */	mtctr r12
/* 8002901C  4E 80 04 21 */	bctrl 
lbl_80029020:
/* 80029020  39 61 00 20 */	addi r11, r1, 0x20
/* 80029024  48 33 92 05 */	bl _restgpr_29
/* 80029028  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002902C  7C 08 03 A6 */	mtlr r0
/* 80029030  38 21 00 20 */	addi r1, r1, 0x20
/* 80029034  4E 80 00 20 */	blr 
