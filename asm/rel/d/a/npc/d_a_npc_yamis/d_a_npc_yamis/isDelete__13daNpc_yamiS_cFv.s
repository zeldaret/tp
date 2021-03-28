lbl_80B46FB8:
/* 80B46FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B46FBC  7C 08 02 A6 */	mflr r0
/* 80B46FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B46FC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B46FC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B46FCC  7C 7E 1B 78 */	mr r30, r3
/* 80B46FD0  3B E0 00 00 */	li r31, 0
/* 80B46FD4  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B46FD8  2C 00 00 02 */	cmpwi r0, 2
/* 80B46FDC  40 80 00 48 */	bge lbl_80B47024
/* 80B46FE0  2C 00 00 00 */	cmpwi r0, 0
/* 80B46FE4  40 80 00 08 */	bge lbl_80B46FEC
/* 80B46FE8  48 00 00 3C */	b lbl_80B47024
lbl_80B46FEC:
/* 80B46FEC  38 60 02 3A */	li r3, 0x23a
/* 80B46FF0  4B 60 5A BC */	b daNpcT_chkEvtBit__FUl
/* 80B46FF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B46FF8  40 82 00 2C */	bne lbl_80B47024
/* 80B46FFC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B47000  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B47004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B47008  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4700C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B47010  7C 05 07 74 */	extsb r5, r0
/* 80B47014  4B 4E E3 4C */	b isSwitch__10dSv_info_cCFii
/* 80B47018  2C 03 00 00 */	cmpwi r3, 0
/* 80B4701C  40 82 00 08 */	bne lbl_80B47024
/* 80B47020  3B E0 00 01 */	li r31, 1
lbl_80B47024:
/* 80B47024  7F E3 FB 78 */	mr r3, r31
/* 80B47028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4702C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B47030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B47034  7C 08 03 A6 */	mtlr r0
/* 80B47038  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4703C  4E 80 00 20 */	blr 
