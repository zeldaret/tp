lbl_80512CBC:
/* 80512CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80512CC0  7C 08 02 A6 */	mflr r0
/* 80512CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80512CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80512CCC  7C 7F 1B 78 */	mr r31, r3
/* 80512CD0  4B B0 60 11 */	bl fopAc_IsActor__FPv
/* 80512CD4  2C 03 00 00 */	cmpwi r3, 0
/* 80512CD8  41 82 00 24 */	beq lbl_80512CFC
/* 80512CDC  A8 1F 00 08 */	lha r0, 8(r31)
/* 80512CE0  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 80512CE4  40 82 00 18 */	bne lbl_80512CFC
/* 80512CE8  88 1F 0A FB */	lbz r0, 0xafb(r31)
/* 80512CEC  7C 00 07 75 */	extsb. r0, r0
/* 80512CF0  41 82 00 0C */	beq lbl_80512CFC
/* 80512CF4  38 00 00 00 */	li r0, 0
/* 80512CF8  98 1F 0A FB */	stb r0, 0xafb(r31)
lbl_80512CFC:
/* 80512CFC  38 60 00 00 */	li r3, 0
/* 80512D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80512D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80512D08  7C 08 03 A6 */	mtlr r0
/* 80512D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80512D10  4E 80 00 20 */	blr 
