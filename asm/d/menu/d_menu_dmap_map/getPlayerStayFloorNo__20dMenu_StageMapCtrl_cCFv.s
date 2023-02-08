lbl_801C22F8:
/* 801C22F8  38 60 00 00 */	li r3, 0
/* 801C22FC  88 0D 88 E0 */	lbz r0, mNowStayFloorNoDecisionFlg__10dMapInfo_c(r13)
/* 801C2300  28 00 00 00 */	cmplwi r0, 0
/* 801C2304  4D 82 00 20 */	beqlr 
/* 801C2308  38 00 00 00 */	li r0, 0
/* 801C230C  41 82 00 08 */	beq lbl_801C2314
/* 801C2310  88 0D 88 D8 */	lbz r0, mNowStayFloorNo__10dMapInfo_c(r13)
lbl_801C2314:
/* 801C2314  7C 03 03 78 */	mr r3, r0
/* 801C2318  4E 80 00 20 */	blr 
