lbl_80499FBC:
/* 80499FBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80499FC0  7C 08 02 A6 */	mflr r0
/* 80499FC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80499FC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80499FCC  4B EC 82 04 */	b _savegpr_26
/* 80499FD0  7C 7A 1B 78 */	mr r26, r3
/* 80499FD4  3B 60 00 00 */	li r27, 0
/* 80499FD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80499FDC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80499FE0  3B E0 00 00 */	li r31, 0
/* 80499FE4  48 00 00 44 */	b lbl_8049A028
lbl_80499FE8:
/* 80499FE8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80499FEC  38 63 02 10 */	addi r3, r3, 0x210
/* 80499FF0  80 9A 09 7C */	lwz r4, 0x97c(r26)
/* 80499FF4  4B BB 19 24 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80499FF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80499FFC  41 82 00 28 */	beq lbl_8049A024
/* 8049A000  8B 9E 00 BB */	lbz r28, 0xbb(r30)
/* 8049A004  28 1C 00 33 */	cmplwi r28, 0x33
/* 8049A008  40 81 00 18 */	ble lbl_8049A020
/* 8049A00C  7F 43 D3 78 */	mr r3, r26
/* 8049A010  48 00 00 3D */	bl setBlur__9daArrow_cFv
/* 8049A014  38 1C FF CD */	addi r0, r28, -51
/* 8049A018  98 1E 00 BB */	stb r0, 0xbb(r30)
/* 8049A01C  48 00 00 08 */	b lbl_8049A024
lbl_8049A020:
/* 8049A020  9B FE 00 BB */	stb r31, 0xbb(r30)
lbl_8049A024:
/* 8049A024  3B 7B 00 01 */	addi r27, r27, 1
lbl_8049A028:
/* 8049A028  88 1A 09 46 */	lbz r0, 0x946(r26)
/* 8049A02C  7C 1B 00 00 */	cmpw r27, r0
/* 8049A030  41 80 FF B8 */	blt lbl_80499FE8
/* 8049A034  39 61 00 20 */	addi r11, r1, 0x20
/* 8049A038  4B EC 81 E4 */	b _restgpr_26
/* 8049A03C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049A040  7C 08 03 A6 */	mtlr r0
/* 8049A044  38 21 00 20 */	addi r1, r1, 0x20
/* 8049A048  4E 80 00 20 */	blr 
