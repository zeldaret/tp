lbl_806769A4:
/* 806769A4  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 806769A8  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 806769AC  7C 00 07 74 */	extsb r0, r0
/* 806769B0  2C 00 00 33 */	cmpwi r0, 0x33
/* 806769B4  41 82 00 0C */	beq lbl_806769C0
/* 806769B8  2C 00 00 34 */	cmpwi r0, 0x34
/* 806769BC  40 82 00 0C */	bne lbl_806769C8
lbl_806769C0:
/* 806769C0  38 60 00 01 */	li r3, 1
/* 806769C4  4E 80 00 20 */	blr 
lbl_806769C8:
/* 806769C8  38 60 00 00 */	li r3, 0
/* 806769CC  4E 80 00 20 */	blr 
