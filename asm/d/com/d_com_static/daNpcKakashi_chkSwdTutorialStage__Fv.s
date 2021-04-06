lbl_80031648:
/* 80031648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003164C  7C 08 02 A6 */	mflr r0
/* 80031650  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80031658  3B E0 00 00 */	li r31, 0
/* 8003165C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80031660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80031664  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80031668  3C 80 80 38 */	lis r4, d_com_d_com_static__stringBase0@ha /* 0x803790B0@ha */
/* 8003166C  38 84 90 B0 */	addi r4, r4, d_com_d_com_static__stringBase0@l /* 0x803790B0@l */
/* 80031670  48 33 73 25 */	bl strcmp
/* 80031674  2C 03 00 00 */	cmpwi r3, 0
/* 80031678  40 82 00 18 */	bne lbl_80031690
/* 8003167C  38 60 00 00 */	li r3, 0
/* 80031680  4B FF B2 FD */	bl getLayerNo__14dComIfG_play_cFi
/* 80031684  2C 03 00 08 */	cmpwi r3, 8
/* 80031688  40 82 00 08 */	bne lbl_80031690
/* 8003168C  3B E0 00 01 */	li r31, 1
lbl_80031690:
/* 80031690  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80031694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80031698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003169C  7C 08 03 A6 */	mtlr r0
/* 800316A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800316A4  4E 80 00 20 */	blr 
