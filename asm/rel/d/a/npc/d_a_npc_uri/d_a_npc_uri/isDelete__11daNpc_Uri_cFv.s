lbl_80B27260:
/* 80B27260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B27264  7C 08 02 A6 */	mflr r0
/* 80B27268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2726C  88 03 0F 84 */	lbz r0, 0xf84(r3)
/* 80B27270  2C 00 00 03 */	cmpwi r0, 3
/* 80B27274  41 82 00 48 */	beq lbl_80B272BC
/* 80B27278  40 80 00 1C */	bge lbl_80B27294
/* 80B2727C  2C 00 00 01 */	cmpwi r0, 1
/* 80B27280  41 82 00 2C */	beq lbl_80B272AC
/* 80B27284  40 80 00 30 */	bge lbl_80B272B4
/* 80B27288  2C 00 00 00 */	cmpwi r0, 0
/* 80B2728C  40 80 00 18 */	bge lbl_80B272A4
/* 80B27290  48 00 00 4C */	b lbl_80B272DC
lbl_80B27294:
/* 80B27294  2C 00 00 05 */	cmpwi r0, 5
/* 80B27298  41 82 00 3C */	beq lbl_80B272D4
/* 80B2729C  40 80 00 40 */	bge lbl_80B272DC
/* 80B272A0  48 00 00 2C */	b lbl_80B272CC
lbl_80B272A4:
/* 80B272A4  38 60 00 00 */	li r3, 0
/* 80B272A8  48 00 00 38 */	b lbl_80B272E0
lbl_80B272AC:
/* 80B272AC  38 60 00 00 */	li r3, 0
/* 80B272B0  48 00 00 30 */	b lbl_80B272E0
lbl_80B272B4:
/* 80B272B4  38 60 00 00 */	li r3, 0
/* 80B272B8  48 00 00 28 */	b lbl_80B272E0
lbl_80B272BC:
/* 80B272BC  48 00 16 21 */	bl chkPlayerGetWoodShield__11daNpc_Uri_cFv
/* 80B272C0  7C 60 00 34 */	cntlzw r0, r3
/* 80B272C4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B272C8  48 00 00 18 */	b lbl_80B272E0
lbl_80B272CC:
/* 80B272CC  38 60 00 00 */	li r3, 0
/* 80B272D0  48 00 00 10 */	b lbl_80B272E0
lbl_80B272D4:
/* 80B272D4  38 60 00 00 */	li r3, 0
/* 80B272D8  48 00 00 08 */	b lbl_80B272E0
lbl_80B272DC:
/* 80B272DC  38 60 00 00 */	li r3, 0
lbl_80B272E0:
/* 80B272E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B272E4  7C 08 03 A6 */	mtlr r0
/* 80B272E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B272EC  4E 80 00 20 */	blr 
