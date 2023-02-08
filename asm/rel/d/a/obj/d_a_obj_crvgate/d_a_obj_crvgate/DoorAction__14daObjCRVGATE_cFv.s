lbl_80BD22C8:
/* 80BD22C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD22CC  7C 08 02 A6 */	mflr r0
/* 80BD22D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD22D4  88 03 05 AF */	lbz r0, 0x5af(r3)
/* 80BD22D8  2C 00 00 02 */	cmpwi r0, 2
/* 80BD22DC  41 82 00 34 */	beq lbl_80BD2310
/* 80BD22E0  40 80 00 14 */	bge lbl_80BD22F4
/* 80BD22E4  2C 00 00 00 */	cmpwi r0, 0
/* 80BD22E8  41 82 00 18 */	beq lbl_80BD2300
/* 80BD22EC  40 80 00 1C */	bge lbl_80BD2308
/* 80BD22F0  48 00 00 38 */	b lbl_80BD2328
lbl_80BD22F4:
/* 80BD22F4  2C 00 00 04 */	cmpwi r0, 4
/* 80BD22F8  41 82 00 2C */	beq lbl_80BD2324
/* 80BD22FC  48 00 00 2C */	b lbl_80BD2328
lbl_80BD2300:
/* 80BD2300  4B FF F5 E1 */	bl OpenAction__14daObjCRVGATE_cFv
/* 80BD2304  48 00 00 24 */	b lbl_80BD2328
lbl_80BD2308:
/* 80BD2308  4B FF EE 09 */	bl CloseAction__14daObjCRVGATE_cFv
/* 80BD230C  48 00 00 1C */	b lbl_80BD2328
lbl_80BD2310:
/* 80BD2310  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 80BD2314  28 00 00 01 */	cmplwi r0, 1
/* 80BD2318  40 82 00 10 */	bne lbl_80BD2328
/* 80BD231C  4B FF FE C9 */	bl HakaiMotion__14daObjCRVGATE_cFv
/* 80BD2320  48 00 00 08 */	b lbl_80BD2328
lbl_80BD2324:
/* 80BD2324  48 00 00 15 */	bl B_CloseAction__14daObjCRVGATE_cFv
lbl_80BD2328:
/* 80BD2328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD232C  7C 08 03 A6 */	mtlr r0
/* 80BD2330  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD2334  4E 80 00 20 */	blr 
