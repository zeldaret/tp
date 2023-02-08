lbl_80CFE154:
/* 80CFE154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFE158  7C 08 02 A6 */	mflr r0
/* 80CFE15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFE160  7C 65 1B 78 */	mr r5, r3
/* 80CFE164  A0 03 05 D0 */	lhz r0, 0x5d0(r3)
/* 80CFE168  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CFE16C  2C 04 00 FF */	cmpwi r4, 0xff
/* 80CFE170  40 82 00 0C */	bne lbl_80CFE17C
/* 80CFE174  38 60 00 00 */	li r3, 0
/* 80CFE178  48 00 00 24 */	b lbl_80CFE19C
lbl_80CFE17C:
/* 80CFE17C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFE180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFE184  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80CFE188  7C 05 07 74 */	extsb r5, r0
/* 80CFE18C  4B 33 71 D5 */	bl isSwitch__10dSv_info_cCFii
/* 80CFE190  30 03 FF FF */	addic r0, r3, -1
/* 80CFE194  7C 00 19 10 */	subfe r0, r0, r3
/* 80CFE198  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_80CFE19C:
/* 80CFE19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFE1A0  7C 08 03 A6 */	mtlr r0
/* 80CFE1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFE1A8  4E 80 00 20 */	blr 
