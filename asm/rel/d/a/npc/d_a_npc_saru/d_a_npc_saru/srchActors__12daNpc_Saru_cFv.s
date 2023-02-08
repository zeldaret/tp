lbl_80AC1170:
/* 80AC1170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC1174  7C 08 02 A6 */	mflr r0
/* 80AC1178  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC117C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC1180  7C 7F 1B 78 */	mr r31, r3
/* 80AC1184  88 03 0F 88 */	lbz r0, 0xf88(r3)
/* 80AC1188  2C 00 00 02 */	cmpwi r0, 2
/* 80AC118C  41 82 00 0C */	beq lbl_80AC1198
/* 80AC1190  40 80 00 30 */	bge lbl_80AC11C0
/* 80AC1194  48 00 00 2C */	b lbl_80AC11C0
lbl_80AC1198:
/* 80AC1198  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80AC119C  4B 68 45 6D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80AC11A0  28 03 00 00 */	cmplwi r3, 0
/* 80AC11A4  40 82 00 1C */	bne lbl_80AC11C0
/* 80AC11A8  7F E3 FB 78 */	mr r3, r31
/* 80AC11AC  38 80 00 1C */	li r4, 0x1c
/* 80AC11B0  4B 68 AC 7D */	bl getNearestActorP__8daNpcT_cFs
/* 80AC11B4  7C 64 1B 78 */	mr r4, r3
/* 80AC11B8  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80AC11BC  4B 68 45 25 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80AC11C0:
/* 80AC11C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC11C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC11C8  7C 08 03 A6 */	mtlr r0
/* 80AC11CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC11D0  4E 80 00 20 */	blr 
