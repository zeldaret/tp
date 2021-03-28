lbl_800F22A8:
/* 800F22A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F22AC  7C 08 02 A6 */	mflr r0
/* 800F22B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F22B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F22B8  7C 7F 1B 78 */	mr r31, r3
/* 800F22BC  38 80 00 12 */	li r4, 0x12
/* 800F22C0  4B FC 0F 91 */	bl setDoStatus__9daAlink_cFUc
/* 800F22C4  7F E3 FB 78 */	mr r3, r31
/* 800F22C8  4B FF B7 5D */	bl setSyncRidePos__9daAlink_cFv
/* 800F22CC  2C 03 00 00 */	cmpwi r3, 0
/* 800F22D0  40 82 00 0C */	bne lbl_800F22DC
/* 800F22D4  38 60 00 01 */	li r3, 1
/* 800F22D8  48 00 00 48 */	b lbl_800F2320
lbl_800F22DC:
/* 800F22DC  7F E3 FB 78 */	mr r3, r31
/* 800F22E0  4B FF BA 8D */	bl checkHorseSpecialProc__9daAlink_cFv
/* 800F22E4  2C 03 00 00 */	cmpwi r3, 0
/* 800F22E8  41 82 00 0C */	beq lbl_800F22F4
/* 800F22EC  38 60 00 01 */	li r3, 1
/* 800F22F0  48 00 00 30 */	b lbl_800F2320
lbl_800F22F4:
/* 800F22F4  7F E3 FB 78 */	mr r3, r31
/* 800F22F8  4B FF CA A1 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F22FC  7F E3 FB 78 */	mr r3, r31
/* 800F2300  4B FE CB 1D */	bl cancelBowMove__9daAlink_cFv
/* 800F2304  7F E3 FB 78 */	mr r3, r31
/* 800F2308  4B FF D1 49 */	bl checkNextActionHorse__9daAlink_cFv
/* 800F230C  2C 03 00 00 */	cmpwi r3, 0
/* 800F2310  40 82 00 0C */	bne lbl_800F231C
/* 800F2314  7F E3 FB 78 */	mr r3, r31
/* 800F2318  4B FF CD 39 */	bl setBodyAngleRideReadyAnime__9daAlink_cFv
lbl_800F231C:
/* 800F231C  38 60 00 01 */	li r3, 1
lbl_800F2320:
/* 800F2320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2328  7C 08 03 A6 */	mtlr r0
/* 800F232C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2330  4E 80 00 20 */	blr 
