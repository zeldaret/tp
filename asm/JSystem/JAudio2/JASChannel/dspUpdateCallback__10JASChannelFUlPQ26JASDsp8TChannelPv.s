lbl_8029AF78:
/* 8029AF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029AF7C  7C 08 02 A6 */	mflr r0
/* 8029AF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029AF84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029AF88  7C BF 2B 78 */	mr r31, r5
/* 8029AF8C  2C 03 00 01 */	cmpwi r3, 1
/* 8029AF90  41 82 00 2C */	beq lbl_8029AFBC
/* 8029AF94  40 80 00 10 */	bge lbl_8029AFA4
/* 8029AF98  2C 03 00 00 */	cmpwi r3, 0
/* 8029AF9C  40 80 00 14 */	bge lbl_8029AFB0
/* 8029AFA0  48 00 00 4C */	b lbl_8029AFEC
lbl_8029AFA4:
/* 8029AFA4  2C 03 00 04 */	cmpwi r3, 4
/* 8029AFA8  40 80 00 44 */	bge lbl_8029AFEC
/* 8029AFAC  48 00 00 1C */	b lbl_8029AFC8
lbl_8029AFB0:
/* 8029AFB0  7F E3 FB 78 */	mr r3, r31
/* 8029AFB4  48 00 03 71 */	bl updateDSPChannel__10JASChannelFPQ26JASDsp8TChannel
/* 8029AFB8  48 00 00 38 */	b lbl_8029AFF0
lbl_8029AFBC:
/* 8029AFBC  7F E3 FB 78 */	mr r3, r31
/* 8029AFC0  48 00 00 45 */	bl initialUpdateDSPChannel__10JASChannelFPQ26JASDsp8TChannel
/* 8029AFC4  48 00 00 2C */	b lbl_8029AFF0
lbl_8029AFC8:
/* 8029AFC8  80 7F 00 08 */	lwz r3, 8(r31)
/* 8029AFCC  48 00 23 55 */	bl free__13JASDSPChannelFv
/* 8029AFD0  38 00 00 00 */	li r0, 0
/* 8029AFD4  90 1F 00 08 */	stw r0, 8(r31)
/* 8029AFD8  7F E3 FB 78 */	mr r3, r31
/* 8029AFDC  38 80 00 01 */	li r4, 1
/* 8029AFE0  4B FF F9 39 */	bl __dt__10JASChannelFv
/* 8029AFE4  38 60 FF FF */	li r3, -1
/* 8029AFE8  48 00 00 08 */	b lbl_8029AFF0
lbl_8029AFEC:
/* 8029AFEC  38 60 00 00 */	li r3, 0
lbl_8029AFF0:
/* 8029AFF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029AFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029AFF8  7C 08 03 A6 */	mtlr r0
/* 8029AFFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029B000  4E 80 00 20 */	blr 
