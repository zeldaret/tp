lbl_80030FCC:
/* 80030FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030FD0  7C 08 02 A6 */	mflr r0
/* 80030FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030FD8  7C 65 1B 78 */	mr r5, r3
/* 80030FDC  88 03 00 01 */	lbz r0, 1(r3)
/* 80030FE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80030FE4  41 82 00 24 */	beq lbl_80031008
/* 80030FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80030FEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80030FF0  88 85 00 02 */	lbz r4, 2(r5)
/* 80030FF4  88 A5 00 00 */	lbz r5, 0(r5)
/* 80030FF8  7C A5 07 74 */	extsb r5, r5
/* 80030FFC  48 00 43 65 */	bl isSwitch__10dSv_info_cCFii
/* 80031000  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80031004  48 00 00 24 */	b lbl_80031028
lbl_80031008:
/* 80031008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003100C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80031010  88 85 00 02 */	lbz r4, 2(r5)
/* 80031014  88 A5 00 00 */	lbz r5, 0(r5)
/* 80031018  7C A5 07 74 */	extsb r5, r5
/* 8003101C  48 00 43 45 */	bl isSwitch__10dSv_info_cCFii
/* 80031020  7C 60 00 34 */	cntlzw r0, r3
/* 80031024  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
lbl_80031028:
/* 80031028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003102C  7C 08 03 A6 */	mtlr r0
/* 80031030  38 21 00 10 */	addi r1, r1, 0x10
/* 80031034  4E 80 00 20 */	blr 
